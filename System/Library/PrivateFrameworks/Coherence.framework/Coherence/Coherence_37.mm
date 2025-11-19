uint64_t sub_1AE1710B0(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v174 = a6;
  v173 = a5;
  v170 = a4;
  v169 = a3;
  v191 = *v6;
  v8 = v191[10];
  v9 = v191[11];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v168 = *(TupleTypeMetadata2 - 8);
  v11 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v177 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v172 = &v167 - v14;
  v15 = sub_1AE23C12C();
  v16 = *(v15 - 8);
  v217 = v15;
  v218 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v203 = &v167 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v210 = &v167 - v20;
  v216 = type metadata accessor for Timestamp(0);
  v175 = *(v216 - 8);
  v21 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v216);
  v207 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v167 - v24;
  v202 = sub_1AE23D7CC();
  v26 = *(v202 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v176 = &v167 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v184 = &v167 - v30;
  v183 = *(v9 - 8);
  v31 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v196 = &v167 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v167 - v35;
  v219 = v8;
  v182 = *(v8 - 8);
  v37 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v195 = &v167 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v194 = &v167 - v41;
  v189 = sub_1AE23D7CC();
  v42 = *(v189 - 1);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v189);
  v178 = &v167 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v188 = &v167 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v187 = &v167 - v48;
  swift_beginAccess();
  v179 = a1;
  v49 = *(a1 + 40);
  if ((v49 & 0xC000000000000001) != 0)
  {
    if (v49 < 0)
    {
      v50 = *(a1 + 40);
    }

    v51 = sub_1AE23DC1C();
    v193 = 0;
    v52 = 0;
    v53 = 0;
    v192 = v51 | 0x8000000000000000;
  }

  else
  {
    v54 = -1 << *(v49 + 32);
    v52 = ~v54;
    v55 = *(v49 + 64);
    v193 = v49 + 64;
    v56 = -v54;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    else
    {
      v57 = -1;
    }

    v53 = v57 & v55;
    v192 = v49;
  }

  v167 = v52;

  swift_beginAccess();
  v190 = v6;
  result = swift_beginAccess();
  v213 = (v182 + 32);
  v212 = (v183 + 32);
  v206 = (v168 + 56);
  v171 = (v52 + 64) >> 6;
  v181 = v182 + 16;
  v180 = v183 + 16;
  v186 = (v42 + 32);
  v205 = (v168 + 48);
  v201 = (v183 + 48);
  v200 = (v183 + 8);
  v199 = (v182 + 8);
  v59 = (v26 + 8);
  v60 = 0;
  v198 = v59;
  v214 = v218 + 8;
  v215 = v218 + 16;
  v211 = v9;
  v197 = TupleTypeMetadata2;
  v204 = v36;
  v61 = v191;
  v62 = v53;
  while (1)
  {
    v185 = v62;
    if ((v192 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1AE23DC3C())
    {
      v73 = v62;
      v68 = v61;
      v70 = v204;
      v71 = v194;
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      v64 = v60;
      v209 = v73;
      goto LABEL_23;
    }

    v76 = 1;
    v208 = v60;
    v209 = v62;
LABEL_26:
    v75 = v188;
    v77 = v204;
LABEL_27:
    v78 = *v206;
    (*v206)(v75, v76, 1, TupleTypeMetadata2);
    v79 = v187;
    (*v186)(v187, v75, v189);
    v80 = *v205;
    v81 = (*v205)(v79, 1, TupleTypeMetadata2);
    v82 = TupleTypeMetadata2;
    v83 = v196;
    v84 = v195;
    if (v81 == 1)
    {
      v189 = v80;
      v196 = v78;
      sub_1ADDDCE74();
      v110 = v190[5];
      if ((v110 & 0xC000000000000001) != 0)
      {
        if (v110 < 0)
        {
          v111 = v190[5];
        }

        v112 = 0;
        v113 = 0;
        v114 = 0;
        v115 = sub_1AE23DC1C() | 0x8000000000000000;
      }

      else
      {
        v116 = -1 << *(v110 + 32);
        v113 = ~v116;
        v112 = (v110 + 64);
        v117 = -v116;
        if (v117 < 64)
        {
          v118 = ~(-1 << v117);
        }

        else
        {
          v118 = -1;
        }

        v114 = v118 & *(v110 + 64);
        v115 = v190[5];
      }

      v119 = v172;
      v120 = v194;
      v187 = v113;

      result = swift_beginAccess();
      v121 = 0;
      v122 = (v113 + 64) >> 6;
      v190 = (v168 + 16);
      v188 = (v168 + 8);
      v195 = v112;
      v193 = v115;
      v192 = v122;
      v123 = v114;
      while (1)
      {
        if ((v115 & 0x8000000000000000) != 0)
        {
          if (!sub_1AE23DC3C())
          {
            (v196)(v178, 1, 1, v197);
            return sub_1ADDDCE74();
          }

          v129 = v119;
          sub_1AE23DFEC();
          swift_unknownObjectRelease();
          v131 = v120;
          v132 = v211;
          sub_1AE23DFEC();
          swift_unknownObjectRelease();
          v125 = v121;
          v210 = v123;
        }

        else
        {
          v124 = v123;
          v125 = v121;
          if (!v123)
          {
            if (v122 <= v121 + 1)
            {
              v126 = v121 + 1;
            }

            else
            {
              v126 = v122;
            }

            v127 = v126 - 1;
            v128 = v121;
            do
            {
              v125 = v128 + 1;
              if (__OFADD__(v128, 1))
              {
                goto LABEL_89;
              }

              if (v125 >= v122)
              {
                v209 = v127;
                v210 = 0;
                v136 = 1;
                v133 = v197;
                v135 = v178;
                goto LABEL_68;
              }

              v124 = *&v112[8 * v125];
              ++v128;
            }

            while (!v124);
          }

          v129 = v119;
          v210 = ((v124 - 1) & v124);
          v130 = __clz(__rbit64(v124)) | (v125 << 6);
          (*(v182 + 16))(v120, *(v115 + 48) + *(v182 + 72) * v130, v219);
          v131 = v120;
          v132 = v211;
          (*(v183 + 16))(v77, *(v115 + 56) + *(v183 + 72) * v130, v211);
        }

        v133 = v197;
        v134 = *(v197 + 48);
        v135 = v178;
        (*v213)(v178, v131, v219);
        (*v212)(&v135[v134], v77, v132);
        v136 = 0;
        v209 = v125;
        v119 = v129;
LABEL_68:
        (v196)(v135, v136, 1, v133);
        if (v189(v135, 1, v133) == 1)
        {
          return sub_1ADDDCE74();
        }

        v137 = *(v133 + 48);
        v138 = v219;
        (*v213)(v119, v135, v219);
        v139 = *v212;
        v208 = v137;
        v140 = v211;
        v139(&v119[v137], &v135[v137], v211);
        v141 = v119;
        v142 = v177;
        (*v190)(v177, v119, v133);
        v143 = v179;
        v144 = *(v179 + 40);

        v145 = v191;
        v146 = v191[13];
        v147 = v176;
        sub_1AE23CB7C();

        LODWORD(v144) = (*v201)(v147, 1, v140);
        v148 = *(v133 + 48);
        (*v198)(v147, v202);
        (*v200)(&v142[v148], v140);
        (*v199)(v142, v138);
        if (v144 == 1)
        {
          v149 = *(v143 + 24);
          v150 = *(v143 + 32);
          v151 = v145[14];
          v152 = *(v151 + 24);

          v153 = v152(v140, v151);
          v154 = *(v153 + 16);
          if (v154)
          {
            v155 = (*(v175 + 80) + 32) & ~*(v175 + 80);
            v208 = v153;
            v156 = v153 + v155;
            v157 = *(v175 + 72);
            while (1)
            {
              v158 = v207;
              sub_1ADDF8030(v156, v207, type metadata accessor for Timestamp);
              v159 = *(v158 + *(type metadata accessor for Replica() + 20)) ? v150 : v149;
              if (!*(v159 + 16))
              {
                break;
              }

              v160 = sub_1ADDD8A6C(v158);
              if ((v161 & 1) == 0)
              {

                break;
              }

              v163 = v217;
              v162 = v218;
              v164 = v203;
              (*(v218 + 16))(v203, *(v159 + 56) + *(v218 + 72) * v160, v217);

              v165 = *(v158 + *(v216 + 20));
              v166 = sub_1AE23C0CC();
              sub_1AE017AB8(v158);
              (*(v162 + 8))(v164, v163);
              if ((v166 & 1) == 0)
              {
                goto LABEL_84;
              }

              v156 += v157;
              if (!--v154)
              {

                v119 = v172;
                goto LABEL_85;
              }
            }

            sub_1AE017AB8(v158);
LABEL_84:

            v119 = v172;
            v169(v172);
          }

          else
          {
            v119 = v141;
          }

LABEL_85:
          result = (*v188)(v119, v197);
          v121 = v209;
          v123 = v210;
        }

        else
        {
          result = (*v188)(v141, v133);
          v121 = v209;
          v123 = v210;
          v119 = v141;
        }

        v77 = v204;
        v120 = v194;
        v112 = v195;
        v115 = v193;
        v122 = v192;
      }
    }

    v85 = v219;
    v86 = v82;
    v87 = *(v82 + 48);
    (*v213)(v195, v79, v219);
    v9 = v211;
    (*v212)(v83, &v79[v87], v211);
    v88 = v190;
    v89 = v190[5];

    v90 = v61[13];
    v91 = v184;
    sub_1AE23CB7C();

    if ((*v201)(v91, 1, v9) == 1)
    {
      (*v198)(v91, v202);
      v92 = v88[3];
      v93 = v88[4];
      v94 = v61[14];
      v95 = *(v94 + 24);

      v96 = v95(v9, v94);
      v97 = *(v96 + 16);
      if (v97)
      {
        v98 = (*(v175 + 80) + 32) & ~*(v175 + 80);
        v185 = v96;
        v99 = v96 + v98;
        v100 = *(v175 + 72);
        while (1)
        {
          sub_1ADDF8030(v99, v25, type metadata accessor for Timestamp);
          v101 = *&v25[*(type metadata accessor for Replica() + 20)] ? v93 : v92;
          if (!*(v101 + 16))
          {
            break;
          }

          v102 = sub_1ADDD8A6C(v25);
          if ((v103 & 1) == 0)
          {

            break;
          }

          v105 = v217;
          v104 = v218;
          v106 = v210;
          (*(v218 + 16))(v210, *(v101 + 56) + *(v218 + 72) * v102, v217);

          v107 = *&v25[*(v216 + 20)];
          v108 = sub_1AE23C0CC();
          sub_1AE017AB8(v25);
          (*(v104 + 8))(v106, v105);
          if ((v108 & 1) == 0)
          {
            goto LABEL_43;
          }

          v99 += v100;
          if (!--v97)
          {

            v61 = v191;
            TupleTypeMetadata2 = v197;
            goto LABEL_40;
          }
        }

        sub_1AE017AB8(v25);
LABEL_43:

        v9 = v211;
        (*v200)(v196, v211);
        result = (*v199)(v195, v219);
        v60 = v208;
        v62 = v209;
        v61 = v191;
        TupleTypeMetadata2 = v197;
      }

      else
      {

        TupleTypeMetadata2 = v197;
LABEL_40:
        v109 = v195;
        v173(v195);
        v9 = v211;
        (*v200)(v196, v211);
        result = (*v199)(v109, v219);
        v60 = v208;
        v62 = v209;
      }
    }

    else
    {
      (*v200)(v83, v9);
      (*v199)(v84, v85);
      result = (*v198)(v91, v202);
      v60 = v208;
      v62 = v209;
      TupleTypeMetadata2 = v86;
    }
  }

  v63 = v62;
  v64 = v60;
  if (v62)
  {
LABEL_20:
    v68 = v61;
    v209 = (v63 - 1) & v63;
    v69 = __clz(__rbit64(v63)) | (v64 << 6);
    v70 = v204;
    v71 = v194;
    v72 = v192;
    (*(v182 + 16))(v194, *(v192 + 48) + *(v182 + 72) * v69, v219);
    (*(v183 + 16))(v70, *(v72 + 56) + *(v183 + 72) * v69, v9);
LABEL_23:
    v74 = *(TupleTypeMetadata2 + 48);
    v75 = v188;
    (*v213)(v188, v71, v219);
    (*v212)(&v75[v74], v70, v9);
    v76 = 0;
    v208 = v64;
    v77 = v70;
    v61 = v68;
    goto LABEL_27;
  }

  if (v171 <= v60 + 1)
  {
    v65 = v60 + 1;
  }

  else
  {
    v65 = v171;
  }

  v66 = v65 - 1;
  v67 = v60;
  while (1)
  {
    v64 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v64 >= v171)
    {
      v208 = v66;
      v209 = 0;
      v76 = 1;
      goto LABEL_26;
    }

    v63 = *(v193 + 8 * v64);
    ++v67;
    if (v63)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_1AE17261C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = v1[3];
  v5 = v1[4];
  if (*(v5 + 16))
  {
    v6 = v1[6];
    v7 = qword_1ED96B308;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED96F2F8;
    v9 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    if (v6 != v14)
    {
      v10 = *(v8 + 40);
      sub_1AE23D6AC();
      sub_1ADDF8898(v14, v15, v16);
    }
  }

  else
  {
  }

  if (sub_1ADF637A8(v3, v5))
  {

    v11 = 0;
  }

  else
  {
    v12 = sub_1ADF637A8(v2, v4);

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_1AE1727BC(__int128 *a1)
{
  v2 = v1;
  v145 = *v2;
  v4 = v145;
  v5 = v145[11];
  v133 = sub_1AE23D7CC();
  v144 = *(v133 - 8);
  v6 = *(v144 + 8);
  MEMORY[0x1EEE9AC00](v133);
  v117 = v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v132 = v113 - v9;
  v121 = *(v5 - 8);
  v10 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v149 = v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v113 - v14;
  v16 = v4[10];
  v120 = *(v16 - 8);
  v17 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v115 = v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v143 = v113 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v148 = v113 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v146 = v113 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v135 = sub_1AE23D7CC();
  v138 = *(v135 - 8);
  v27 = v138[8];
  MEMORY[0x1EEE9AC00](v135);
  v139 = v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v134 = v113 - v30;
  v31 = a1[1];
  v157 = *a1;
  v158 = v31;
  v159 = a1[2];
  if (qword_1ED96B308 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v32 = qword_1ED96F2F8;
    v33 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    v34 = v152;
    swift_beginAccess();
    v35 = v2[4];
    v36 = *(v35 + 16);
    v147 = TupleTypeMetadata2;
    if (v36 && v2[6] != v34)
    {
      v37 = *(v32 + 40);
      sub_1AE23D6AC();
      v38 = v152;
      v39 = BYTE8(v152);
      v152 = 0uLL;
      sub_1AE173A7C(v38, v39, v153, 0, &v152);

      v35 = v2[4];
    }

    v2[6] = v34;
    v40 = v2[3];
    *v162 = v157;
    v41 = *(&v157 + 1);

    sub_1ADDD7B0C(v162, &v152);
    if (sub_1ADF637A8(v41, v35))
    {
      sub_1AE18009C(v162);

      return 0;
    }

    v43 = sub_1ADF637A8(v162[0], v40);
    sub_1AE18009C(v162);

    if (v43)
    {
      return 0;
    }

    v44 = v2[3];
    v45 = v2[4];
    v161 = v158;
    v46 = *(&v158 + 1);
    sub_1ADDD7B0C(&v161, &v152);
    sub_1ADDD7B0C(&v161, &v152);

    if ((sub_1ADF637A8(v46, v45) & 1) == 0)
    {
      break;
    }

    sub_1AE18009C(&v161);

LABEL_12:
    v130 = v15;
    v142 = v113;
    v160 = *(&v159 + 1);
    *&v152 = *(&v159 + 1);
    MEMORY[0x1EEE9AC00](v47);
    v113[-2] = v2;
    v113[-1] = &v157;
    MEMORY[0x1EEE9AC00](v49);
    v141 = &v113[-10];
    v113[-8] = v16;
    v113[-7] = v5;
    v50 = v145;
    v51 = v145[13];
    v126 = v145[12];
    v113[-6] = v126;
    v113[-5] = v51;
    v52 = v50[14];
    v113[-4] = v52;
    v113[-3] = sub_1AE1800F0;
    v113[-2] = v53;
    swift_getAssociatedTypeWitness();
    v128 = v51;
    v54 = sub_1AE23CB1C();

    v55 = swift_getTupleTypeMetadata2();
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    WitnessTable = swift_getWitnessTable();
    v58 = sub_1ADE08EB0(sub_1AE18010C, v141, v54, v55, v56, WitnessTable, MEMORY[0x1E69E7288], v150);
    v140 = v52;
    v59 = v58;
    (*(*(v54 - 8) + 8))(&v160, v54);
    *&v152 = v59;
    sub_1AE23D11C();
    swift_getWitnessTable();
    v156 = sub_1AE23CA4C();
    swift_beginAccess();
    v60 = v2[5];
    v113[1] = v2;
    if ((v60 & 0xC000000000000001) != 0)
    {
      v61 = sub_1AE23DC1C();
      v127 = 0;
      v62 = 0;
      v63 = 0;
      v129 = v61 | 0x8000000000000000;
    }

    else
    {
      v64 = -1 << *(v60 + 32);
      v62 = ~v64;
      v65 = *(v60 + 64);
      v127 = v60 + 64;
      v66 = -v64;
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      else
      {
        v67 = -1;
      }

      v63 = v67 & v65;
      v129 = v60;
    }

    v68 = v143;
    v69 = v146;
    TupleTypeMetadata2 = v147;
    v142 = (v120 + 32);
    v141 = (v121 + 32);
    v124 = v147 - 8;
    v113[0] = v62;
    v125 = (v62 + 64) >> 6;
    v2 = (v120 + 16);
    v122 = (v121 + 16);
    v123 = (v138 + 4);
    v137 = (v121 + 48);
    v119 = (v144 + 8);
    v116 = v140 + 40;
    v114 = (v121 + 56);
    v136 = (v121 + 8);
    v118 = (v120 + 8);

    v15 = 0;
    v138 = v2;
    v70 = v63;
    while (1)
    {
      v71 = v129;
      v131 = v70;
      if ((v129 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1AE23DC3C())
      {
        v69 = v146;
        sub_1AE23DFEC();
        swift_unknownObjectRelease();
        v79 = v130;
        sub_1AE23DFEC();
        swift_unknownObjectRelease();
        v73 = v15;
        v145 = v131;
        goto LABEL_35;
      }

      v81 = 1;
      v144 = v15;
      v145 = v131;
      TupleTypeMetadata2 = v147;
      v77 = v139;
LABEL_36:
      v82 = v134;
      v83 = *(TupleTypeMetadata2 - 8);
      (*(v83 + 56))(v77, v81, 1, TupleTypeMetadata2);
      (*v123)(v82, v77, v135);
      if ((*(v83 + 48))(v82, 1, TupleTypeMetadata2) == 1)
      {
        sub_1ADDDCE74();
        v152 = v161;

        sub_1AE16E2A4(v112, &v152);

        return 1;
      }

      v84 = *(TupleTypeMetadata2 + 48);
      v85 = v148;
      (*v142)(v148, v82, v16);
      (*v141)(v149, &v82[v84], v5);
      v86 = v132;
      v87 = v128;
      sub_1AE23CB7C();
      v88 = *v137;
      LODWORD(v84) = (*v137)(v86, 1, v5);
      (*v119)(v86, v133);
      if (v84 == 1)
      {
        v131 = v88;
        v89 = *v122;
        v90 = v130;
        (*v122)(v130, v149, v5);
        v150[0] = *v162;
        v91 = v16;
        v92 = v140;
        v93 = *(v140 + 40);
        sub_1ADDD7B0C(v162, &v152);
        v94 = v92;
        v16 = v91;
        v95 = v93(&v152, v5, v94);
        sub_1ADF7845C(v150);

        v95(&v152, 0);
        (*v138)(v146, v148, v91);
        v96 = v117;
        v89(v117, v90, v5);
        v88 = v131;
        v85 = v148;
        (*v114)(v96, 0, 1, v5);
        sub_1AE23CB1C();
        sub_1AE23CB8C();
        v97 = v90;
        v68 = v143;
        (*v136)(v97, v5);
      }

      *&v152 = v16;
      *(&v152 + 1) = v5;
      v153 = v126;
      v154 = v87;
      v155 = v140;
      type metadata accessor for CRSetRefMergeableDelta.RemovedVersion();
      sub_1AE23CB7C();
      v98 = *&v150[0];
      v2 = v138;
      if (*&v150[0] == 1)
      {
        (*v136)(v149, v5);
        (*v118)(v85, v16);
        v15 = v144;
        v70 = v145;
        goto LABEL_21;
      }

      v99 = *v138;
      if (*&v150[0])
      {
        v99(v68, v85, v16);
        sub_1AE23CB1C();
        v100 = v85;
        v101 = sub_1AE23CB6C();
        if (v88(v102, 1, v5))
        {
          sub_1AE180144(v98);
        }

        else
        {
          v110 = (*(v140 + 40))(v150, v5);
          sub_1ADF78130(v98);
          sub_1AE180144(v98);
          v110(v150, 0);
        }

        v101(&v152, 0);
        v111 = *v118;
        (*v118)(v68, v16);
        (*v136)(v149, v5);
        v111(v100, v16);
        v15 = v144;
        v70 = v145;
        v69 = v146;
        TupleTypeMetadata2 = v147;
      }

      else
      {
        v103 = v115;
        v99(v115, v85, v16);
        sub_1AE23CB1C();
        v104 = sub_1AE23CB6C();
        if (!v88(v105, 1, v5))
        {
          v151 = v161;
          v106 = v140;
          v107 = *(v140 + 40);
          sub_1ADDD7B0C(&v161, v150);
          v108 = v107(v150, v5, v106);
          sub_1ADF777D8(&v151);

          v108(v150, 0);
        }

        v104(&v152, 0);
        v109 = *v118;
        (*v118)(v103, v16);
        (*v136)(v149, v5);
        v109(v85, v16);
        v15 = v144;
        v70 = v145;
        v68 = v143;
LABEL_21:
        v69 = v146;
        TupleTypeMetadata2 = v147;
      }
    }

    v72 = v70;
    v73 = v15;
    if (v70)
    {
LABEL_32:
      v145 = ((v72 - 1) & v72);
      v78 = __clz(__rbit64(v72)) | (v73 << 6);
      (*(v120 + 16))(v69, *(v71 + 48) + *(v120 + 72) * v78, v16);
      v79 = v130;
      (*(v121 + 16))(v130, *(v71 + 56) + *(v121 + 72) * v78, v5);
LABEL_35:
      TupleTypeMetadata2 = v147;
      v80 = *(v147 + 48);
      v77 = v139;
      (*v142)(v139, v69, v16);
      (*v141)(&v77[v80], v79, v5);
      v81 = 0;
      v144 = v73;
      v68 = v143;
      goto LABEL_36;
    }

    if (v125 <= (v15 + 1))
    {
      v74 = v15 + 1;
    }

    else
    {
      v74 = v125;
    }

    v75 = v74 - 1;
    v76 = v15;
    v77 = v139;
    while (1)
    {
      v73 = (v76 + 1);
      if (__OFADD__(v76, 1))
      {
        break;
      }

      if (v73 >= v125)
      {
        v144 = v75;
        v145 = 0;
        v81 = 1;
        goto LABEL_36;
      }

      v72 = *(v127 + 8 * v73);
      ++v76;
      if (v72)
      {
        v71 = v129;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_53:
    swift_once();
  }

  v48 = sub_1ADF637A8(v161, v44);
  sub_1AE18009C(&v161);

  if (v48)
  {
    goto LABEL_12;
  }

  sub_1AE18009C(&v161);
  return 1;
}

uint64_t sub_1AE1738A8(void *a1)
{
  v2 = v1;
  if (*(v1 + 48) == a1[6])
  {
    swift_beginAccess();
    v4 = *(v1 + 24);
    v5 = *(v2 + 32);
    swift_beginAccess();
    v7 = a1[3];
    v6 = a1[4];

    if (sub_1ADF637A8(v5, v6))
    {

      v8 = 1;
    }

    else
    {
      v8 = sub_1ADF637A8(v4, v7);
    }
  }

  else
  {
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v9 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    sub_1AE16CB8C(v12, v13, v14);
    v10 = sub_1AE16CB8C(v12, v13, v14);

    v8 = sub_1AE1738A8(v10);
  }

  return v8 & 1;
}

uint64_t sub_1AE173A7C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t *a5)
{
  v11 = sub_1AE23C88C();
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1AE23C8CC();
  v54 = *(v56 - 8);
  v14 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v61 = &v49 - v27;
  v29 = *a5;
  v28 = a5[1];
  if (a4)
  {

    return sub_1AE177450(v29, v28, v5, a1, a2 & 1, a3);
  }

  else
  {
    v50 = v26;
    v51 = v25;
    sub_1ADDF5234(0, &aBlock);
    v60 = aBlock;
    sub_1AE177450(v29, v28, v5, a1, a2 & 1, a3);
    sub_1ADDF5234(0, &aBlock);
    v59 = aBlock;
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v31 = qword_1ED96F2F8;
    v32 = v5[2];
    v33 = qword_1ED967EE8;

    if (v33 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1ED96F1F8);
    v34 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    swift_beginAccess();
    v35 = v32 + v34;
    v36 = v61;
    sub_1ADDCEE40(v35, v61, &unk_1EB5B9E70, &unk_1AE240EC0);
    os_unfair_lock_unlock(&dword_1ED96F1F8);

    v37 = type metadata accessor for Replica();
    (*(*(v37 - 8) + 56))(v23, 1, 1, v37);
    v38 = *(*(&v60 + 1) + 16);
    v52 = *(&v59 + 1);
    if (v38 || *(v52 + 16))
    {
      v49 = *(v31 + 40);
      sub_1ADDCEE40(v36, v20, &unk_1EB5B9E70, &unk_1AE240EC0);
      v39 = v51;
      sub_1ADDCEE40(v23, v51, &unk_1EB5B9E70, &unk_1AE240EC0);
      v40 = v50[80];
      v41 = (v40 + 56) & ~v40;
      v50 = v23;
      v42 = (v17 + v40 + v41) & ~v40;
      v43 = swift_allocObject();
      v44 = v59;
      *(v43 + 16) = v60;
      *(v43 + 32) = v44;
      *(v43 + 48) = v31;
      sub_1ADDD2198(v20, v43 + v41, &unk_1EB5B9E70, &unk_1AE240EC0);
      sub_1ADDD2198(v39, v43 + v42, &unk_1EB5B9E70, &unk_1AE240EC0);
      v66 = sub_1ADE42B98;
      v67 = v43;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v64 = sub_1ADDD2200;
      v65 = &block_descriptor_11;
      v45 = _Block_copy(&aBlock);

      v46 = v53;
      sub_1AE23C8AC();
      v62 = MEMORY[0x1E69E7CC0];
      sub_1ADDCEF38(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
      sub_1ADDCC7D4(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
      v47 = v55;
      v48 = v58;
      sub_1AE23D8DC();
      MEMORY[0x1B26FBF60](0, v46, v47, v45);
      _Block_release(v45);

      (*(v57 + 8))(v47, v48);
      (*(v54 + 8))(v46, v56);
      sub_1ADDCEDE0(v50, &unk_1EB5B9E70, &unk_1AE240EC0);
      sub_1ADDCEDE0(v61, &unk_1EB5B9E70, &unk_1AE240EC0);
    }

    else
    {

      sub_1ADDCEDE0(v23, &unk_1EB5B9E70, &unk_1AE240EC0);
      return sub_1ADDCEDE0(v36, &unk_1EB5B9E70, &unk_1AE240EC0);
    }
  }
}

uint64_t sub_1AE1741D4(uint64_t a1)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_1AE23C88C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23C8CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v58 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v49 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v60 = v49 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v61 = v49 - v21;
  result = swift_beginAccess();
  v23 = *(v2 + 32);
  if (*(v23 + 16))
  {
    v50 = v12;
    v51 = v9;
    v52 = v7;
    v53 = v8;
    v54 = v4;
    v55 = v3;
    v24 = *(v2 + 24);
    v25 = qword_1ED96B308;

    v27 = v23;
    v56 = v24;
    if (v25 != -1)
    {
      v26 = swift_once();
      v24 = *(v2 + 24);
      v27 = *(v2 + 32);
    }

    v28 = qword_1ED96F2F8;
    v29 = *(qword_1ED96F2F8 + 40);
    MEMORY[0x1EEE9AC00](v26);
    v49[-4] = v24;
    v49[-3] = v27;
    v30 = v59;
    v49[-2] = v28;
    v49[-1] = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    v31 = aBlock;
    v32 = v64;
    v33 = v66;
    aBlock = v66;
    v64 = v67;
    sub_1AE173A7C(v31, v32, v65, 1, &aBlock);

    sub_1ADE42CB8(v33);
    v34 = *(v2 + 24);
    v35 = *(v2 + 32);
    v59 = v34;
    v36 = type metadata accessor for Replica();
    v37 = *(*(v36 - 8) + 56);
    v38 = v61;
    v37(v61, 1, 1, v36);
    v39 = v60;
    v37(v60, 1, 1, v36);
    if (*(v23 + 16) || *(v35 + 16))
    {
      v49[1] = *(v28 + 40);
      sub_1ADDCEE40(v38, v17, &unk_1EB5B9E70, &unk_1AE240EC0);
      v40 = v58;
      sub_1ADDCEE40(v39, v58, &unk_1EB5B9E70, &unk_1AE240EC0);
      v41 = *(v57 + 80);
      v42 = (v41 + 56) & ~v41;
      v43 = (v14 + v41 + v42) & ~v41;
      v44 = swift_allocObject();
      v44[2] = v56;
      v44[3] = v23;
      v44[4] = v59;
      v44[5] = v35;
      v44[6] = v28;
      sub_1ADDD2198(v17, v44 + v42, &unk_1EB5B9E70, &unk_1AE240EC0);
      sub_1ADDD2198(v40, v44 + v43, &unk_1EB5B9E70, &unk_1AE240EC0);
      v67 = sub_1ADE4315C;
      v68 = v44;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v65 = sub_1ADDD2200;
      v66 = &block_descriptor_53;
      v45 = _Block_copy(&aBlock);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v46 = v50;
      sub_1AE23C8AC();
      v62 = MEMORY[0x1E69E7CC0];
      sub_1ADDCEF38(&qword_1ED96AC40, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E80, &qword_1AE2521E0);
      sub_1ADDCC7D4(&qword_1ED96AA50, &unk_1EB5B9E80, &qword_1AE2521E0);
      v47 = v52;
      v48 = v55;
      sub_1AE23D8DC();
      MEMORY[0x1B26FBF60](0, v46, v47, v45);
      _Block_release(v45);

      (*(v54 + 8))(v47, v48);
      (*(v51 + 8))(v46, v53);
      sub_1ADDCEDE0(v60, &unk_1EB5B9E70, &unk_1AE240EC0);
      sub_1ADDCEDE0(v61, &unk_1EB5B9E70, &unk_1AE240EC0);
    }

    else
    {

      sub_1ADDCEDE0(v39, &unk_1EB5B9E70, &unk_1AE240EC0);
      return sub_1ADDCEDE0(v38, &unk_1EB5B9E70, &unk_1AE240EC0);
    }
  }

  return result;
}

uint64_t sub_1AE174904@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v64 = a6;
  v65 = a7;
  v63 = a5;
  v14 = a1[3];
  v15 = a1[4];
  v16 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  if (v14)
  {
    v18 = a1[4];
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v14);

  sub_1ADDD6748(v17, v18, a2, &v66);
  if (v8)
  {

    return sub_1ADFAECE8(a1);
  }

  else
  {
    v62 = v66;
    v60 = a8;
    v61 = v67;
    v21 = a1[8];
    v20 = a1[9];
    if (v21)
    {
      v22 = a1[8];
    }

    else
    {
      v22 = v16;
    }

    if (v21)
    {
      v16 = a1[9];
    }

    sub_1ADE42C78(v21);
    sub_1ADDD6748(v22, v16, a2, &v66);
    v56 = &v51;
    v57 = v67;
    v58 = v66;
    v74 = a1[1];
    v66 = v74;
    MEMORY[0x1EEE9AC00](v74);
    v45 = a3;
    v46 = a4;
    v47 = v63;
    v48 = v64;
    v59 = a1;
    v23 = a2;
    v24 = a4;
    v49 = v65;
    v50 = v23;

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BBB90, &unk_1AE24EC40);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v55 = a3;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    v28 = sub_1ADDCC7D4(qword_1ED969F40, qword_1EB5BBB90, &unk_1AE24EC40);
    v29 = sub_1ADE08EB0(sub_1AE17FFFC, v44, v25, TupleTypeMetadata2, v27, v28, MEMORY[0x1E69E7288], &v72);
    v51 = v28;
    v52 = v27;
    v30 = v63;
    v53 = v23;
    v31 = sub_1ADDCEDE0(&v74, qword_1EB5BBB90, &unk_1AE24EC40);
    v66 = v29;
    MEMORY[0x1EEE9AC00](v31);
    v45 = v55;
    v46 = v24;
    v56 = v24;
    v32 = v64;
    v47 = v30;
    v48 = v64;
    v49 = v65;
    sub_1AE23D11C();
    swift_getWitnessTable();
    v33 = sub_1AE23CB2C();
    AssociatedTypeWitness = &v51;
    v72 = v59[2];
    v73 = v72;
    MEMORY[0x1EEE9AC00](v72);
    v34 = v55;
    v35 = v56;
    v45 = v55;
    v46 = v56;
    v47 = v30;
    v48 = v32;
    v36 = v65;
    v49 = v65;
    v50 = v53;

    v66 = v34;
    v67 = v35;
    v68 = v30;
    v69 = v32;
    v70 = v36;
    type metadata accessor for CRSetRefMergeableDelta.RemovedVersion();
    v37 = swift_getTupleTypeMetadata2();
    v38 = sub_1ADE08EB0(sub_1AE180028, v44, v25, v37, v52, v51, MEMORY[0x1E69E7288], &v71);
    sub_1ADFAECE8(v59);
    v39 = sub_1ADDCEDE0(&v73, qword_1EB5BBB90, &unk_1AE24EC40);
    v66 = v38;
    MEMORY[0x1EEE9AC00](v39);
    v45 = v55;
    v46 = v56;
    v47 = v30;
    v48 = v32;
    v49 = v65;
    sub_1AE23D11C();
    swift_getWitnessTable();
    v40 = sub_1AE23CB2C();

    v41 = v57;
    v42 = v60;
    *v60 = v58;
    v42[1] = v41;
    v43 = v61;
    v42[2] = v62;
    v42[3] = v43;
    v42[4] = v40;
    v42[5] = v33;
  }

  return result;
}

uint64_t sub_1AE174F20@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v4;
  v58 = a3;
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 5);
  v61 = *(v3 + 4);
  v67 = v8;
  *v66 = *(a1 + 16);
  v10 = *(*(&v8 + 1) + 16);
  v11 = *(&v7 + 1);
  v12 = &unk_1ED96B000;
  v64 = a1;
  v85 = v9;
  *&v66[8] = v7;
  if (v10)
  {
    v13 = qword_1ED96B308;

    if (v13 != -1)
    {
      v14 = swift_once();
    }

    v15 = *(qword_1ED96F2F8 + 40);
    MEMORY[0x1EEE9AC00](v14);
    v54 = v67;
    v55 = v16;
    v56 = *v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    v17 = v77;
    v18 = v64;
    v9 = v85;
    v12 = &unk_1ED96B000;
  }

  else
  {
    v18 = a1;

    v17 = v67;
  }

  v75 = v17;
  v65 = sub_1ADDF5C7C(v18);
  *&v67 = v19;

  v20 = sub_1ADE42CB8(0);
  if (*(v11 + 16))
  {
    if (v12[97] != -1)
    {
      v20 = swift_once();
    }

    v21 = *(qword_1ED96F2F8 + 40);
    *&v22 = MEMORY[0x1EEE9AC00](v20);
    v54 = v22;
    v55 = v23;
    v56 = *v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();
    v63 = v5;

    v24 = *(&v77 + 1);
  }

  else
  {
    v63 = v5;
    v24 = *&v66[16];
  }

  *(&v75 + 1) = v24;
  *v66 = sub_1ADDF5C7C(v18);
  *&v66[8] = v25;

  v26 = sub_1ADE42CB8(0);
  v62 = &v57;
  *&v75 = v9;
  MEMORY[0x1EEE9AC00](v26);
  v27 = v18;
  v28 = a2[3];
  v52 = a2[2];
  v29 = v52;
  v53 = v28;
  v30 = a2[5];
  *&v54 = a2[4];
  *(&v54 + 1) = v30;
  v55 = a2[6];
  v31 = v55;
  v56 = v27;
  MEMORY[0x1EEE9AC00](v32);
  v51[2] = v52;
  v51[3] = v28;
  v59 = v33;
  v51[4] = v33;
  v51[5] = v30;
  v51[6] = v55;
  v51[7] = sub_1AE17FF60;
  v51[8] = v34;
  swift_getAssociatedTypeWitness();
  v35 = sub_1AE23CB1C();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  WitnessTable = swift_getWitnessTable();
  v60 = v36;
  v38 = v63;
  v39 = sub_1ADE08EB0(sub_1AE17FF84, v51, v35, &type metadata for Proto_Set.Element, v36, WitnessTable, MEMORY[0x1E69E7288], &v69);
  if (v38)
  {

    *&v75 = 0;
    *(&v75 + 1) = MEMORY[0x1E69E7CC0];
    v76 = MEMORY[0x1E69E7CC0];
    *&v77 = v65;
    v78 = 0;
    v79 = 0;
    *(&v77 + 1) = v67;
    v80 = 1;
    *v81 = v84[0];
    *&v81[3] = *(v84 + 3);
    v82 = *v66;
    v83 = *&v66[8];
    return sub_1ADFAECE8(&v75);
  }

  else
  {
    v40 = v39;

    v85 = v51;
    v74[1] = v61;
    MEMORY[0x1EEE9AC00](v41);
    v63 = &v51[-8];
    v51[-6] = v29;
    v51[-5] = v28;
    v42 = v59;
    v51[-4] = v59;
    v51[-3] = v30;
    v43 = v64;
    v51[-2] = v31;
    v51[-1] = v43;

    *&v75 = v29;
    *(&v75 + 1) = v28;
    v76 = v42;
    *&v77 = v30;
    *(&v77 + 1) = v31;
    type metadata accessor for CRSetRefMergeableDelta.RemovedVersion();
    v44 = sub_1AE23CB1C();
    v45 = swift_getWitnessTable();
    v47 = sub_1ADE08EB0(sub_1AE17FFBC, v63, v44, &type metadata for Proto_Set.Element, v60, v45, MEMORY[0x1E69E7288], v74);

    *&v69 = 0;
    *(&v69 + 1) = v40;
    *&v70 = v47;
    *(&v70 + 1) = v65;
    *&v72 = 0;
    v71 = v67;
    BYTE8(v72) = 1;
    *(&v72 + 9) = v84[0];
    HIDWORD(v72) = *(v84 + 3);
    v73 = *v66;
    *&v75 = 0;
    *(&v75 + 1) = v40;
    v76 = v47;
    *&v77 = v65;
    v78 = 0;
    v79 = 0;
    *(&v77 + 1) = v67;
    v80 = 1;
    *v81 = v84[0];
    *&v81[3] = *(v84 + 3);
    v82 = *v66;
    v83 = *&v66[8];
    sub_1ADFAEE10(&v69, &v68);
    result = sub_1ADFAECE8(&v75);
    v48 = v72;
    v49 = v58;
    v58[2] = v71;
    v49[3] = v48;
    v49[4] = v73;
    v50 = v70;
    *v49 = v69;
    v49[1] = v50;
  }

  return result;
}

uint64_t sub_1AE1755D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  v6 = *(v5(a2, a3) + 48);

  v7 = *(v5(a2, a3) + 48);

  if (v6 == v7)
  {
    return v5(a2, a3);
  }

  (*(a3 + 80))(a2, a3);
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v9 = *(qword_1ED96F2F8 + 40);
  sub_1AE23D6AC();
  v10 = v13;
  v11 = v14;
  v5(a2, a3);
  v12 = sub_1AE16CB8C(v13, v14, v15);

  v5(a2, a3);
  v13 = 0;
  v14 = 0;
  sub_1AE173A7C(v10, v11, v15, 0, &v13);

  return v12;
}

uint64_t CRSet.makeIterator()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = -1 << *(v4 + 32);
  v6 = ~v5;
  v7 = *(v4 + 64);
  v8 = -v5;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  *a1 = v4;
  a1[1] = v4 + 64;
  a1[2] = v6;
  a1[3] = 0;
  a1[4] = v9 & v7;
}

void CRSet.Iterator.next()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_1AE23D7CC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - v13;
  v15 = *v2;
  v16 = v2[1];
  v18 = v2[2];
  v17 = v2[3];
  v19 = v2[4];
  v20 = v17;
  v58 = a2;
  v59 = v4;
  v57 = v5;
  v65 = v22;
  v66 = v21;
  v63 = v17;
  v64 = v23;
  v61 = v18;
  v62 = v19;
  v60 = &v54 - v13;
  if (v19)
  {
LABEL_9:
    v56 = (v19 - 1) & v19;
    v28 = __clz(__rbit64(v19)) | (v20 << 6);
    (*(v5 + 16))(v8, *(v15 + 48) + *(v5 + 72) * v28, v4, v12);
    v29 = *(*(v15 + 56) + 8 * v28);
    v30 = v15;
    v31 = v8;
    v32 = TupleTypeMetadata2;
    v33 = *(TupleTypeMetadata2 + 48);
    (*(v5 + 32))(v14, v31, v4);
    *&v14[v33] = v29;
    v34 = *(v32 - 8);
    (*(v34 + 56))(v14, 0, 1, v32);

    v55 = v20;
LABEL_10:
    v35 = *v2;
    v36 = v2[1];
    v38 = v2[2];
    v37 = v2[3];
    v39 = v2[4];
    v40 = v30;
    v41 = v61;
    sub_1ADFAEBFC();
    sub_1ADDDCE74();
    *v2 = v40;
    v2[1] = v16;
    v43 = v55;
    v42 = v56;
    v2[2] = v41;
    v2[3] = v43;
    v2[4] = v42;
    v45 = v64;
    v44 = v65;
    v46 = v66;
    (*(v65 + 32))(v64, v60, v66);
    v47 = TupleTypeMetadata2;
    if ((*(v34 + 48))(v45, 1, TupleTypeMetadata2) == 1)
    {
      (*(v44 + 8))(v45, v46);
      v48 = 1;
      v50 = v58;
      v49 = v59;
      v51 = v57;
    }

    else
    {
      v52 = *(v45 + *(v47 + 48));

      v51 = v57;
      v50 = v58;
      v49 = v59;
      (*(v57 + 32))(v58, v45, v59);
      v48 = 0;
    }

    (*(v51 + 56))(v50, v48, 1, v49);
  }

  else
  {
    v24 = (v18 + 64) >> 6;
    if (v24 <= v17 + 1)
    {
      v25 = v17 + 1;
    }

    else
    {
      v25 = (v18 + 64) >> 6;
    }

    v26 = v25 - 1;
    v27 = v17;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v24)
      {
        v53 = *(TupleTypeMetadata2 - 8);
        v55 = v26;
        v34 = v53;
        (*(v53 + 56))(v14, 1, 1, TupleTypeMetadata2, v12);
        v56 = 0;
        v30 = v15;
        goto LABEL_10;
      }

      v19 = *(v16 + 8 * v20);
      ++v27;
      if (v19)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1AE175C68(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v4 = *a1;
  v5 = *a3;
  v7 = *a4;
  v8 = v5;
  return sub_1ADF772F0(&v8, v4, &v7);
}

uint64_t sub_1AE175CA0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  result = sub_1AE17F9B4(a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1AE175CD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = a1[2];
  v8 = a1[3];
  if (v7)
  {
    v9 = a1[2];
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    v10 = a1[3];
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(a1[2]);
  v11 = sub_1ADDF4A24(v9, v10, a2);
  v12 = *a1;
  if (v3)
  {
    v20 = *a1;
    sub_1ADDCEDE0(&v20, &qword_1EB5BBD18, &qword_1AE24F340);
    v19 = a1[1];
    sub_1ADDCEDE0(&v19, qword_1EB5BBD20, &unk_1AE253900);
    sub_1ADE42CB8(v7);
    v18 = a1[4];
    return sub_1ADDCEDE0(&v18, qword_1EB5BBD20, &unk_1AE253900);
  }

  else
  {
    v14 = v11;
    v17 = *a1;
    sub_1ADDCEDE0(&v17, &qword_1EB5BBD18, &qword_1AE24F340);
    v16 = a1[1];
    sub_1ADDCEDE0(&v16, qword_1EB5BBD20, &unk_1AE253900);
    sub_1ADE42CB8(v7);
    v15 = a1[4];
    result = sub_1ADDCEDE0(&v15, qword_1EB5BBD20, &unk_1AE253900);
    *a3 = v14;
  }

  return result;
}

uint64_t sub_1AE175E40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ADF78CAC(*(a1 + 16), *v2);
  sub_1ADF78ED0(v5, &v10);
  v6 = sub_1ADDF5C7C(a1);
  v8 = v7;

  *a2 = 0;
  a2[1] = 0;
  a2[2] = v6;
  a2[3] = v8;
  a2[4] = 0;
  return result;
}

uint64_t sub_1AE175ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CRSetRefMergeableDelta.RemovedVersion();
  swift_getTupleTypeMetadata2();
  v7 = sub_1AE23D05C();
  v8 = sub_1ADDEAF38(v7, a1, v6, a4);

  return v8;
}

uint64_t sub_1AE175F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v7 = sub_1AE23D05C();
  v8 = sub_1ADDEAF38(v7, a1, AssociatedTypeWitness, a4);

  return v8;
}

uint64_t sub_1AE176004(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = a1[1];
  v24 = *a1;
  v25 = v11;
  v26 = *(a1 + 4);
  if (v24)
  {
    inited = v24;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a2);

  v13 = *(*(a5 + 8) + 8);
  v14 = *(v13 + 8);

  v14(v15, a3, v13);
  if (v21)
  {

    *a8 = v21;
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v22 = *(swift_getTupleTypeMetadata2() + 48);
    v27 = *(&v24 + 1);
    v28 = v25;
    v29 = v26;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = *(AssociatedConformanceWitness + 16);

    sub_1ADDCEE40(&v27, v23, qword_1EB5BBD20, &unk_1AE253900);
    sub_1ADDCEE40(&v28, v23, &qword_1EB5BDA20, &qword_1AE253910);
    sub_1ADDCEE40(&v29, v23, qword_1EB5BBD20, &unk_1AE253900);
    v19(&v24, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t sub_1AE1762A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a6;
  v32 = a7;
  v30 = a4;
  v33 = a9;
  v36 = *(a3 - 8);
  v37 = a8;
  v12 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v15;
  v17 = v15[2];
  v34 = v15[3];
  v35 = v17;
  if (v16)
  {
    inited = v16;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a2);

  v19 = *(*(a5 + 8) + 8);
  v20 = *(v19 + 8);

  v22 = v43;
  v20(v21, a3, v19);
  if (v22)
  {

    *v37 = v22;
  }

  else
  {
    v24 = v35;
    if (v35)
    {

      v25 = v34;
      sub_1ADE42C78(v24);
      v26 = sub_1ADDF4A24(v24, v25, a2);
    }

    else
    {

      v26 = 0;
    }

    v38 = a3;
    v39 = v30;
    v40 = a5;
    v41 = v31;
    v42 = v32;
    type metadata accessor for CRSetRefMergeableDelta.RemovedVersion();
    v27 = *(swift_getTupleTypeMetadata2() + 48);
    v28 = v33;
    result = (*(v36 + 32))(v33, v14, a3);
    *(v28 + v27) = v26;
  }

  return result;
}

void *sub_1AE176518@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 24);
  v6 = swift_checkMetadataState();
  result = v5(v14, a1, v6, AssociatedConformanceWitness);
  if (!v2)
  {
    v15 = v14[0];
    v8 = v14[3];
    v11 = v14[1];
    v12 = v14[2];
    v9 = v14[4];
    MEMORY[0x1EEE9AC00](result);
    v10 = sub_1ADE6B938(sub_1AE180228);
    result = sub_1ADDCEDE0(&v15, &qword_1EB5BBD18, &qword_1AE24F340);
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v12;
    a2[3] = v8;
    a2[4] = v9;
  }

  return result;
}

double sub_1AE1766D8@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>, void *a4)
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  a2(v11, a1, a1 + *(TupleTypeMetadata2 + 48));
  if (v4)
  {
    *a4 = v4;
  }

  else
  {
    result = *v11;
    v10 = v11[1];
    *a3 = v11[0];
    *(a3 + 16) = v10;
    *(a3 + 32) = v12;
  }

  return result;
}

uint64_t sub_1AE1767AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  v32 = a8;
  v33 = a2;
  v31 = a9;
  *&v42 = a3;
  *(&v42 + 1) = a4;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  type metadata accessor for CRSetRefMergeableDelta.RemovedVersion();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v30 - v18;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v20 = a1;
  v21 = v33;
  v38 = a7;
  v39 = v20;
  v40 = v33;
  v22 = v46;
  result = sub_1ADE6B938(sub_1AE17FFE4);
  if (v22)
  {
    *v32 = v22;
  }

  else
  {
    v24 = result;
    v25 = v31;
    v46 = 0;
    (*(v16 + 16))(v19, v20, TupleTypeMetadata2);
    v26 = *&v19[*(TupleTypeMetadata2 + 48)];
    if (v26)
    {
      (*(*(a3 - 8) + 8))(v19, a3);
      v27 = sub_1ADF78CAC(*(v21 + 16), v26);

      sub_1ADF78ED0(v27, &v42);
      v41 = v42;
      v26 = sub_1ADDF5C7C(v21);
      v29 = v28;
    }

    else
    {
      result = (*(*(a3 - 8) + 8))(v19, a3);
      v29 = 0;
    }

    *v25 = v24;
    v25[1] = 0;
    v25[2] = v26;
    v25[3] = v29;
    v25[4] = 0;
  }

  return result;
}

uint64_t sub_1AE176A00(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1ADE0C750(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1AE176A68()
{
  v0 = swift_allocObject();
  sub_1ADDCC3B0();
  return v0;
}

uint64_t sub_1AE176AA0()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1ADDF5234(0, &v13);

  sub_1ADF8D974(v3);
  swift_bridgeObjectRelease_n();

  v4 = v0[2];
  v5 = qword_1ED967EE8;

  if (v5 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED96F1F8);
  v6 = sub_1AE1FEFC0(&dword_1ED96F1F8, v4);
  os_unfair_lock_unlock(&dword_1ED96F1F8);

  swift_beginAccess();
  v7 = v1[4];
  v12[0] = v1[3];
  v12[1] = v7;
  swift_beginAccess();
  v9 = v1[5];
  v8 = v1[6];
  v10 = *(v2 + 272);

  return v10(v6, v12, v9, v8);
}

BOOL sub_1AE176C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = v21 - v16;
  (*(*(a3 - 8) + 16))(v21 - v16, a1, a3, v15);
  (*(*(a4 - 8) + 16))(&v17[*(TupleTypeMetadata2 + 48)], a2, a4);
  v18 = (*(a7 + 24))(a4, a7);
  (*(v13 + 8))(v17, TupleTypeMetadata2);
  v19 = *(v18 + 16);

  return v19 != 0;
}

uint64_t sub_1AE176DF8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5, __int128 *a6)
{
  v49 = a6;
  v57 = a4;
  v51 = a2;
  v52 = a1;
  v8 = *a5;
  v9 = *(*a5 + 88);
  v10 = sub_1AE23D7CC();
  v11 = *(v10 - 8);
  v59 = v10;
  v60 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v48 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  swift_beginAccess();
  v22 = a5[5];
  v23 = v8[10];
  v24 = v8[13];

  v53 = a3;
  v50 = v23;
  sub_1AE23CB7C();

  v25 = v8[14];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = *(AssociatedConformanceWitness + 32);
  v28 = swift_checkMetadataState();
  v56 = v18;
  v29 = v60;
  v27(v21, v28, AssociatedConformanceWitness);
  v30 = v54;
  v31 = *(v29 + 16);
  v57 = v21;
  v32 = v21;
  v33 = v59;
  v55 = v31;
  v31(v54, v32, v59);
  v34 = *(v9 - 8);
  v35 = *(v34 + 48);
  if (v35(v30, 1, v9) == 1)
  {
    (*(v29 + 8))(v30, v33);
    v36 = v29;
    v37 = v56;
  }

  else
  {
    v38 = v30;
    v39 = (*(v25 + 24))(v9, v25);
    (*(v34 + 8))(v38, v9);
    v64 = v39;
    v63 = *v49;
    *v61 = *v49;
    sub_1ADDD7B0C(&v63, v62);
    sub_1ADF7845C(v61);

    v37 = v56;
    if (!v35(v56, 1, v9))
    {
      v40 = v64;
      v41 = (*(v25 + 40))(v61, v9, v25);
      sub_1ADF77B64(v40);
      v41(v61, 0);
    }

    v33 = v59;
    v36 = v60;
  }

  v42 = v58;
  v55(v58, v37, v33);
  v43 = v42;
  v44 = v35(v42, 1, v9);
  v45 = *(v36 + 8);
  if (v44 == 1)
  {
    v45(v43, v33);
    sub_1ADE42E40();
    swift_allocError();
    *v46 = xmmword_1AE2530B0;
    *(v46 + 16) = 0;
    swift_willThrow();
    v45(v57, v33);
  }

  else
  {
    v45(v57, v33);
    (*(v34 + 32))(v51, v43, v9);
    (*(*(v50 - 8) + 16))(v52, v53);
  }

  return (v45)(v37, v33);
}

uint64_t sub_1AE177374@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>, void *a4)
{
  swift_getAssociatedTypeWitness();
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a3, a3 + *(TupleTypeMetadata2 + 48), a1, a1 + v8);
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_1AE177450(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v9 = a3;
  v49 = *a3;
  v12 = v49[10];
  v51 = *(v12 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v44 - v14;
  v15 = sub_1AE23D7CC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v44 - v17;
  v47 = a4;
  v46 = a6;
  swift_beginAccess();
  if (a1)
  {
    v19 = v9[3];
    v20 = v9[4];
    v9[3] = a1;
    v9[4] = a2;
  }

  else
  {
    sub_1ADDF8898(a4, a5 & 1, a6);
    swift_endAccess();
  }

  v45 = a5;
  swift_beginAccess();
  v21 = v9[5];
  v22 = v49[11];
  v56 = v49[13];
  v23 = v48;
  if ((v21 & 0xC000000000000001) != 0)
  {
    v24 = sub_1AE23DC1C();
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v24 | 0x8000000000000000;
  }

  else
  {
    v29 = -1 << *(v21 + 32);
    v26 = ~v29;
    v25 = v21 + 64;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v27 = v31 & *(v21 + 64);
    v28 = v21;
  }

  v59 = (v51 + 56);
  v44 = v26;
  v32 = (v26 + 64) >> 6;
  v50 = v51 + 16;
  v54 = (v51 + 32);
  v57 = v22;
  v53 = v22 - 8;
  v52 = (v51 + 8);

  v60 = 0;
  v55 = v28;
  v58 = v18;
  while ((v28 & 0x8000000000000000) != 0)
  {
    if (!sub_1AE23DC4C())
    {
LABEL_24:
      (*v59)(v18, 1, 1, v12);
      result = sub_1ADDDCE74();
      v9[6] = v47;
      return result;
    }

    sub_1AE23DFEC();
    swift_unknownObjectRelease();
LABEL_22:
    (*v59)(v18, 0, 1, v12);
    (*v54)(v23, v18, v12);
    v37 = sub_1AE16CB10();
    v38 = v57;
    sub_1AE23CB1C();
    v39 = sub_1AE23CB6C();
    if (!(*(*(v38 - 8) + 48))(v40, 1, v38))
    {
      v41 = (*(v49[14] + 40))(v61, v38);
      v42 = v9;
      v43 = v41;
      sub_1ADF7880C(v47, v45 & 1, v46);
      v43(v61, 0);
      v9 = v42;
      v23 = v48;
    }

    v39(v62, 0);
    (*v52)(v23, v12);
    result = (v37)(v63, 0);
    v18 = v58;
    v28 = v55;
  }

  v34 = v60;
  if (v27)
  {
    v35 = v60;
LABEL_19:
    v36 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    (*(v51 + 16))(v18, *(v28 + 48) + *(v51 + 72) * (v36 | (v35 << 6)), v12);
    goto LABEL_22;
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v32)
    {
      goto LABEL_24;
    }

    v27 = *(v25 + 8 * v35);
    ++v34;
    if (v27)
    {
      v60 = v35;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1779DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for Timestamp(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a6 + 24))(a3, a6);
  v14 = result;
  v15 = 0;
  v16 = *(result + 16);
  while (1)
  {
    v17 = v15;
    if (v16 == v15)
    {
LABEL_5:

      return v16 != v17;
    }

    if (v15 >= *(v14 + 16))
    {
      break;
    }

    sub_1ADDF8030(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15++, v12, type metadata accessor for Timestamp);
    v18 = *&v12[*(type metadata accessor for Replica() + 20)];
    result = sub_1AE017AB8(v12);
    if (v18)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t CRSet.version.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a1 = v4;
  a1[1] = v5;
}

uint64_t CRSet.insertionCount.getter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v7 = *(v3 + 40);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  sub_1AE23CB1C();

  swift_getWitnessTable();
  sub_1AE23CF2C();

  return v8;
}

uint64_t sub_1AE177C7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v19 - v11;
  v13 = *a1;
  (*(v14 + 16))(v19 - v11, a2, TupleTypeMetadata2, v10);
  v15 = *(*&v12[*(TupleTypeMetadata2 + 48)] + 16);

  v17 = __OFADD__(v13, v15);
  v18 = v13 + v15;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    result = (*(*(a3 - 8) + 8))(v12, a3);
    *a4 = v18;
  }

  return result;
}

void CRSet.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  CRSet.init()(&v4);

  *a2 = v4;
}

uint64_t CRSet.init<A>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, v16);
  CRSet.init<A>(_:)(v18, a3, a4, a5, a6, &v21);

  result = (*(v14 + 8))(a2, a4);
  *a7 = v21;
  return result;
}

uint64_t CRSet.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v52 = a6;
  v10 = *(a2 - 8);
  v57 = a5;
  v58 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v56 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v46 - v14;
  v15 = sub_1AE23D7CC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v46 - v17;
  v19 = *(a3 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = *(AssociatedTypeWitness - 8);
  v25 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v46 - v26;
  v59 = a2;
  v60 = &type metadata for CRSetElement;
  v61 = a4;
  v62 = v57;
  v63 = &off_1EE7B4A80;
  type metadata accessor for CRSetRef();
  v57 = swift_allocObject();
  sub_1ADDCC3B0();
  v49 = v19;
  v50 = a1;
  (*(v19 + 16))(v23, a1, a3);
  v28 = AssociatedTypeWitness;
  sub_1AE23CE7C();
  v29 = v27;
  v51 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1AE23D80C();
  v31 = v58;
  v32 = v47;
  v34 = v58 + 48;
  v33 = *(v58 + 48);
  if (v33(v18, 1, a2) != 1)
  {
    v35 = *(v31 + 32);
    v58 = v31 + 32;
    v54 = (v31 + 8);
    v55 = v35;
    v53 = v33;
    do
    {
      v55(v32, v18, a2);
      v36 = v29;
      v37 = v28;
      v38 = v56;
      sub_1ADE0FF20(v56, v32);
      v39 = v18;
      v40 = v34;
      v41 = AssociatedConformanceWitness;
      v42 = *v54;
      v43 = v38;
      v28 = v37;
      v29 = v36;
      (*v54)(v43, a2);
      v42(v32, a2);
      AssociatedConformanceWitness = v41;
      v34 = v40;
      v18 = v39;
      v44 = v53;
      sub_1AE23D80C();
    }

    while (v44(v18, 1, a2) != 1);
  }

  (*(v49 + 8))(v50, v51);
  result = (*(v48 + 8))(v29, v28);
  *v52 = v57;
  return result;
}

Swift::Void __swiftcall CRSet.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  v3 = v1;
  v5 = *v2;
  if (CRSet.count.getter(v1) >= 1)
  {
    sub_1ADE0FE78(v3);
    v4 = *v2;
    sub_1AE16DC4C();
  }
}

uint64_t CRSet.count.getter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);

  v7 = sub_1AE23CA7C();

  return v7;
}

uint64_t CRSet.subtract<A>(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  result = CRSet.count.getter(a2);
  if (result >= 1)
  {
    sub_1ADE0FE78(a2);
    v8 = *v3;
    return sub_1AE16DD98(a1, a3);
  }

  return result;
}

uint64_t CRSet.subtracting<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *v4;

  return CRSet.subtract<A>(_:)(a1, a2, a3);
}

uint64_t CRSet.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  if (*(*a1 + 16))
  {
    v28 = *v3;
    MEMORY[0x1EEE9AC00](a1);
    v8 = a2[3];
    v24 = a2[2];
    v7 = v24;
    v25 = v8;
    v26 = a2[4];
    v9 = v26;
    v27 = v10;
    WitnessTable = swift_getWitnessTable();
    v28 = sub_1ADE08EB0(sub_1ADF573E4, &v23, a2, v24, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);
    v13 = sub_1AE23D11C();
    swift_getWitnessTable();
    v14 = a3;
    v15 = v7;
    v16 = v13;
    v17 = v8;
    v18 = v9;
  }

  else
  {
    v28 = *v3;
    v19 = a2[2];
    v20 = a2[3];
    v21 = a2[4];

    swift_getWitnessTable();
    v14 = a3;
    v15 = v19;
    v16 = a2;
    v17 = v20;
    v18 = v21;
  }

  return CRSet.init<A>(_:)(&v28, v15, v16, v17, v18, v14);
}

uint64_t CRSet.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v7;

  CRSet.copy(renamingReferences:)(&v9, a2, a3);
}

uint64_t *CRSet.merge(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *result;
  if (*v3 == v21)
  {
    if (qword_1ED9670C0 != -1)
    {
      result = swift_once();
    }

    v15 = byte_1ED96F222;
    *a3 = word_1ED96F220;
    *(a3 + 2) = v15;
  }

  else
  {
    WitnessTable = swift_getWitnessTable();
    v7 = sub_1AE1755D4(&v21, a2, WitnessTable);
    v8 = *v3;
    swift_beginAccess();
    v9 = *(v8 + 24);
    v10 = *(v8 + 32);
    swift_beginAccess();
    v11 = v7[3];
    v12 = v7[4];
    v20 = 0;

    sub_1ADF6457C(v13, &v20, v10);
    sub_1ADF6457C(v11, &v20, v9);

    switch(v20)
    {
      case 1:

        v17 = *v3;

        *v3 = v7;
        if (qword_1EB5B9910 != -1)
        {
          swift_once();
        }

        v16 = &word_1EB5D750B;
        break;
      case 2:
        if (qword_1EB5B9908 != -1)
        {
          swift_once();
        }

        v16 = &word_1EB5D7508;
        break;
      case 3:
        sub_1ADE0FE78(a2);
        v14 = *v3;

        sub_1AE16F8E0(v7, a3);

      default:
        if (qword_1ED9670C0 != -1)
        {
          swift_once();
        }

        v16 = &word_1ED96F220;
        break;
    }

    v18 = *v16;
    v19 = *(v16 + 2);

    *a3 = v18;
    *(a3 + 2) = v19;
  }

  return result;
}

uint64_t CRSet.newRefs(from:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *v2;
  v5 = *(a2 + 16);
  if ((*(*(*(a2 + 24) + 8) + 80))())
  {
    return sub_1AE1705C0(v3);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t CRSet.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;

  v7 = sub_1ADDFB6C0();

  if (v7)
  {
    sub_1ADE0FE78(a2);
    v9 = *v3;
    return sub_1AE1741D4(a1);
  }

  return result;
}

uint64_t CRSet.description.getter(uint64_t a1)
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1AE23DA2C();
  v27 = v25;
  v28 = v26;
  MEMORY[0x1B26FB670](678716755, 0xE400000000000000);
  v9 = *(v8 + 16);
  v10 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  (*(v4 + 16))(v7, v9 + v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v12 = MEMORY[0x1E69E7508];
  v13 = MEMORY[0x1E69E7558];
  *(v11 + 56) = MEMORY[0x1E69E7508];
  *(v11 + 64) = v13;
  *(v11 + 32) = v14;
  sub_1AE23BFCC();
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  *(v11 + 72) = v15;
  v16 = sub_1AE23CD3C();
  v18 = v17;
  (*(v4 + 8))(v7, v3);
  MEMORY[0x1B26FB670](v16, v18);

  MEMORY[0x1B26FB670](0x6E6F697372657620, 0xEB000000005B203ALL);
  swift_beginAccess();
  v24 = *(v8 + 24);
  v19 = CRVersion.description.getter();
  MEMORY[0x1B26FB670](v19);

  MEMORY[0x1B26FB670](0x7265736E69202C5DLL, 0xEF203A736E6F6974);
  swift_beginAccess();
  v23[1] = *(v8 + 40);
  v20 = *(a1 + 16);
  v21 = *(a1 + 32);
  sub_1AE23CB1C();
  swift_getWitnessTable();
  sub_1AE23DFDC();
  MEMORY[0x1B26FB670](93, 0xE100000000000000);
  return v27;
}

uint64_t CRSet.actionUndoingDifference(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;
  v8 = a2[2];
  v9 = a2[4];
  v28 = sub_1AE23C9EC();
  v26 = v7;
  v27 = sub_1AE23C9EC();
  *&v24[0] = v6;

  WitnessTable = swift_getWitnessTable();
  v11 = sub_1AE1755D4(v24, a2, WitnessTable);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v12 = a2[3];
  v20 = v8;
  v21 = v12;
  v22 = v9;
  v23 = &v28;
  v18[2] = v8;
  v18[3] = v12;
  v18[4] = v9;
  v18[5] = &v27;
  sub_1AE1710B0(v11, v13, sub_1AE180218, v19, sub_1AE180218, v18);
  sub_1ADDCEDE0(v24, &qword_1EB5BAA40, &unk_1AE24EC50);
  v14 = v27;
  if (sub_1AE23D32C() < 1)
  {
    v15 = sub_1AE23D32C();

    if (v15 < 1)
    {

      *a3 = 0;
      a3[1] = 0;
      return result;
    }
  }

  else
  {
  }

  v16 = v28;

  *a3 = v16;
  a3[1] = v14;
  return result;
}

void CRSet.apply(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v58 = *(v5 - 8);
  v6 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v53 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1AE23D7CC();
  v8 = *(*(v54 - 1) + 64);
  MEMORY[0x1EEE9AC00](v54);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v49 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v49 - v15;
  v17 = *a1;
  if (!*a1)
  {
    return;
  }

  v51 = v14;
  v55 = v13;
  v18 = a1[1];
  sub_1ADE0FE78(a2);
  v59 = v2;
  v56 = a2;
  v50 = v18;
  if ((v17 & 0xC000000000000001) != 0)
  {

    sub_1AE23D93C();
    v19 = *(a2 + 32);
    sub_1AE23D36C();
    v17 = v61;
    v20 = v62;
    v21 = v63;
    v52 = v64;
    v22 = v65;
  }

  else
  {
    v23 = -1 << *(v17 + 32);
    v20 = v17 + 56;
    v21 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(v17 + 56);

    v52 = 0;
  }

  v60 = (v58 + 56);
  v49[1] = v21;
  v57 = v58 + 16;
  v26 = (v58 + 8);
  v27 = (v51 + 8);
  while (v17 < 0)
  {
    if (!sub_1AE23D9AC())
    {
      goto LABEL_21;
    }

    sub_1AE23DFEC();
    swift_unknownObjectRelease();
LABEL_11:
    (*v60)(v16, 0, 1, v5);
    CRSet.remove(_:)(v16, v56, v11);
    (*v26)(v16, v5);
    (*v27)(v11, v54);
  }

  if (v22)
  {
    v28 = v52;
LABEL_10:
    v29 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    (*(v58 + 16))(v16, *(v17 + 48) + *(v58 + 72) * (v29 | (v28 << 6)), v5);
    goto LABEL_11;
  }

  v30 = v52;
  while (1)
  {
    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v28 >= ((v21 + 64) >> 6))
    {
      break;
    }

    v22 = *(v20 + 8 * v28);
    ++v30;
    if (v22)
    {
      v52 = v28;
      goto LABEL_10;
    }
  }

LABEL_21:
  v54 = *v60;
  v54(v16, 1, 1, v5);
  sub_1ADDDCE74();
  v31 = v50;
  if ((v50 & 0xC000000000000001) != 0)
  {

    sub_1AE23D93C();
    v32 = v56;
    v33 = *(v56 + 32);
    sub_1AE23D36C();
    v31 = v66;
    v34 = v67;
    v35 = v68;
    v52 = v69;
    v36 = v70;
  }

  else
  {
    v37 = -1 << *(v50 + 32);
    v34 = v50 + 56;
    v35 = ~v37;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v36 = v39 & *(v50 + 56);

    v52 = 0;
    v32 = v56;
  }

  v51 = v35;
  v40 = (v35 + 64) >> 6;
  v41 = v31;
  while (2)
  {
    if (v31 < 0)
    {
      v48 = sub_1AE23D9AC();
      v46 = v55;
      if (!v48)
      {
LABEL_40:
        v54(v46, 1, 1, v5);
        sub_1ADDDCE74();
        return;
      }

      sub_1AE23DFEC();
      swift_unknownObjectRelease();
      goto LABEL_30;
    }

    v46 = v55;
    if (v36)
    {
      v42 = v52;
LABEL_29:
      v43 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      (*(v58 + 16))(v55, *(v31 + 48) + *(v58 + 72) * (v43 | (v42 << 6)), v5);
LABEL_30:
      v54(v46, 0, 1, v5);
      v44 = v53;
      CRSet.insert(_:)(v53, v46, v32);
      v45 = *v26;
      (*v26)(v46, v5);
      v45(v44, v5);
      v31 = v41;
      continue;
    }

    break;
  }

  v47 = v52;
  while (1)
  {
    v42 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v42 >= v40)
    {
      goto LABEL_40;
    }

    v36 = *(v34 + 8 * v42);
    ++v47;
    if (v36)
    {
      v52 = v42;
      goto LABEL_29;
    }
  }

LABEL_43:
  __break(1u);
}

uint64_t CRSet.hasDelta(from:)(void **a1)
{
  v2 = *a1;
  if (*v1 == v2)
  {
    return 0;
  }

  else
  {
    return sub_1AE1738A8(v2) & 1;
  }
}

double CRSet.delta(_:from:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = *v4;
  v19 = *a2;
  v20 = v8;

  CRSet.finalizeTimestamps(_:)(a1, a3);
  CRSet.finalizeTimestamps(_:)(a1, a3);
  v9 = v20;
  v18[3] = v20;
  CRSet.version.getter(v17);
  v10 = v17[0];
  v18[2] = v19;
  CRSet.version.getter(v18);
  v11 = v18[0];
  if (sub_1ADF637A8(*(&v10 + 1), v18[1]))
  {

LABEL_4:
    sub_1AE16B474(a1, v9, v17);
    v15 = v17[1];
    v16 = v17[0];
    v14 = v17[2];

    result = *&v15;
    *a4 = v16;
    a4[1] = v15;
    a4[2] = v14;
    return result;
  }

  v12 = sub_1ADF637A8(v10, v11);

  if (v12)
  {
    goto LABEL_4;
  }

  result = 0.0;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  return result;
}

uint64_t CRSet.canMerge(delta:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *v1;
  v5[0] = *a1;
  v5[1] = v2;

  LOBYTE(v3) = sub_1AE17261C(v5);

  return v3 & 1;
}

uint64_t CRSet.merge(delta:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];

  sub_1ADE0FE78(a2);
  v10 = *v2;
  *&v12 = v4;
  *(&v12 + 1) = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  LOBYTE(v10) = sub_1AE1727BC(&v12);

  return v10 & 1;
}

uint64_t CRSet.observableDifference(from:with:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v10 = a3[2];
  v11 = a3[3];
  v66 = *(v11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = sub_1AE23D7CC();
  v59 = *(v63 - 8);
  v12 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v14 = &v51 - v13;
  v67 = *(v10 - 8);
  v15 = v67[8];
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v57 = &v51 - v21;
  v22 = sub_1AE23D7CC();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v51 - v24;
  v26 = *a1;
  result = *v5;
  v64 = a2;
  if (!*(a2 + 24) && result == v26)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

  v52 = a4;
  v72[1] = result;
  v69 = v26;

  WitnessTable = swift_getWitnessTable();
  v29 = sub_1AE1755D4(&v69, a3, WitnessTable);
  v30 = a3[4];
  v72[0] = sub_1AE23C9EC();
  v71 = sub_1AE23C9EC();
  v70 = sub_1AE23C9EC();
  MEMORY[0x1EEE9AC00](v70);
  *(&v51 - 4) = v10;
  *(&v51 - 3) = v11;
  *(&v51 - 2) = v30;
  *(&v51 - 1) = v72;
  MEMORY[0x1EEE9AC00](v31);
  *(&v51 - 4) = v10;
  *(&v51 - 3) = v11;
  *(&v51 - 2) = v30;
  *(&v51 - 1) = &v71;
  v51 = v29;
  sub_1AE1710B0(v29, v32, sub_1AE180218, v33, sub_1AE17F888, (&v51 - 6));
  v68 = v26;
  v34 = v30;
  CRSet.makeIterator()(&v69);
  v35 = type metadata accessor for CRSet.Iterator();
  CRSet.Iterator.next()(v35, v25);
  v62 = v67[6];
  v36 = v62(v25, 1, v10);
  v37 = v57;
  if (v36 != 1)
  {
    v42 = v67[4];
    v60 = AssociatedTypeWitness - 8;
    v61 = v66 + 40;
    v59 += 8;
    v53 = (v67 + 2);
    v67 += 4;
    v58 = (v67 - 3);
    v54 = v42;
    v42(v57, v25, v10);
    while (1)
    {
      (*(v66 + 40))(v37, v64, v10);
      if ((*(*(AssociatedTypeWitness - 8) + 48))(v14, 1) == 1)
      {
        (*v58)(v37, v10);
        (*v59)(v14, v63);
      }

      else
      {
        (*v59)(v14, v63);
        (*v53)(v56, v37, v10);
        sub_1AE23D38C();
        v43 = v25;
        v44 = v14;
        v45 = v35;
        v46 = v34;
        v47 = v55;
        v42 = v54;
        sub_1AE23D33C();
        v48 = *v58;
        v49 = v47;
        v34 = v46;
        v35 = v45;
        v14 = v44;
        v25 = v43;
        v37 = v57;
        (*v58)(v49, v10);
        v48(v37, v10);
      }

      CRSet.Iterator.next()(v35, v25);
      if (v62(v25, 1, v10) == 1)
      {
        break;
      }

      v42(v37, v25, v10);
    }
  }

  sub_1ADDDCE74();
  v38 = v72[0];
  if (sub_1AE23D32C() > 0 || sub_1AE23D32C() > 0)
  {

    v39 = v52;
LABEL_8:
    v41 = v70;
    v40 = v71;

    *v39 = v38;
    v39[1] = v40;
    v39[2] = v41;
    return result;
  }

  v50 = sub_1AE23D32C();

  v39 = v52;
  if (v50 > 0)
  {
    goto LABEL_8;
  }

  *v39 = 0;
  v39[1] = 0;
  v39[2] = 0;
  return result;
}

uint64_t CRSet.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    sub_1ADE64CB8(a2, a3, a4, &v15);
    swift_setDeallocating();
    v12 = *(inited + 16);

    if (!v5)
    {
      *a5 = v15;
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v14 = 0xD000000000000014;
    *(v14 + 8) = 0x80000001AE25FB50;
    *(v14 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t CRSet.encode(to:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  result = sub_1ADDFCC74();
  if (!v3)
  {
    v10 = v5;
    v7 = a2[2];
    v8 = a2[3];
    v9 = a2[4];

    sub_1ADE6BC08(&v10);
  }

  return result;
}

void *sub_1AE17A0D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  return CRSet.init(defaultState:)(a2);
}

BOOL CRSet.isDefaultState.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return !*(*(v1 + 32) + 16) && *(*(v1 + 24) + 16) == 0;
}

uint64_t sub_1AE17A160(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CRSet.MutatingAction.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v56 = a4;
  if (*(a1 + 64))
  {
    v51 = a5;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    v52 = inited;
    v9 = *(sub_1ADDE78C8() + 16);
    if ((~v9 & 0xF000000000000007) != 0 && (v9 & 0xF000000000000000) == 0x1000000000000000)
    {
      v15 = (v9 & 0xFFFFFFFFFFFFFFFLL);
      v16 = v15[3];
      v17 = v15[4];
      v11 = v15[5];
      v18 = v15[6];
      v12 = v15[10];
      v19 = v15[11];
      v53 = a3;
      v55 = v16;

      sub_1ADE42C78(v11);
      sub_1ADE42C78(v12);
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v55 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42CB8(v11);
    v20 = sub_1ADE42CB8(v12);
    v58 = v55;
    MEMORY[0x1EEE9AC00](v20);
    v42 = a2;
    v43 = a3;
    v44 = v56;
    v45 = a1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BBB90, &unk_1AE24EC40);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    v23 = sub_1ADDCC7D4(qword_1ED969F40, qword_1EB5BBB90, &unk_1AE24EC40);
    v24 = v54;
    v25 = sub_1ADE08EB0(sub_1AE180278, v41, v21, a2, v22, v23, MEMORY[0x1E69E7288], &v57);
    if (v24)
    {
    }

    else
    {
      v26 = v25;
      v48 = v23;
      v49 = v22;
      v53 = a3;
      v54 = v21;

      v58 = v26;
      v27 = sub_1AE23D11C();
      WitnessTable = swift_getWitnessTable();
      v47 = v27;
      v55 = sub_1AE23D39C();
      v28 = 0;
      v29 = *(sub_1ADDE78C8() + 16);
      v50 = a2;
      if ((~v29 & 0xF000000000000007) != 0)
      {
        v30 = MEMORY[0x1E69E7CC0];
        v31 = 0;
        if ((v29 & 0xF000000000000000) == 0x1000000000000000)
        {
          v32 = (v29 & 0xFFFFFFFFFFFFFFFLL);
          v34 = v32[3];
          v33 = v32[4];
          v28 = v32[5];
          v35 = v32[6];
          v31 = v32[10];
          v36 = v32[11];

          v30 = v33;

          sub_1ADE42C78(v28);
          sub_1ADE42C78(v31);
        }
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
        v31 = 0;
      }

      sub_1ADE42CB8(v28);
      v37 = sub_1ADE42CB8(v31);
      v58 = v30;
      MEMORY[0x1EEE9AC00](v37);
      v42 = v50;
      v43 = v53;
      v44 = v56;
      v45 = a1;
      v38 = sub_1ADE08EB0(sub_1AE17F8C0, v41, v54, v50, v49, v48, MEMORY[0x1E69E7288], &v57);

      v58 = v38;
      v39 = sub_1AE23D39C();

      v40 = v51;
      *v51 = v55;
      v40[1] = v39;
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v13 = 0xD000000000000014;
    *(v13 + 8) = 0x80000001AE25FB50;
    *(v13 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1AE17A690(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*a1)
  {
    inited = *a1;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  v12 = sub_1ADE0262C(inited, a2);

  result = (*(*(*(a4 + 8) + 8) + 8))(v12, a3);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t CRSet.MutatingAction.encode(to:)(uint64_t a1, void *a2)
{
  v7 = *v2;
  v6 = v2[1];
  result = sub_1ADDFCC74();
  if (!v3)
  {
    v30 = v6;
    v53 = &v27;
    v32 = v7;
    MEMORY[0x1EEE9AC00](result);
    v9 = a2[3];
    v23 = a2[2];
    v10 = v23;
    v24 = v9;
    v27 = v9;
    v11 = a2[4];
    v25 = v11;
    v26 = a1;
    v31 = 0;
    v12 = sub_1AE23D38C();

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    WitnessTable = swift_getWitnessTable();
    v28 = v12;
    v15 = v12;
    v16 = WitnessTable;
    v29 = v13;
    v17 = v31;
    v18 = sub_1ADE08EB0(sub_1AE17F8E4, v22, v15, &type metadata for Proto_Set.Element, v13, WitnessTable, MEMORY[0x1E69E7288], &v43);
    if (v17)
    {

      v34 = 0;
      v35 = MEMORY[0x1E69E7CC0];
      v36 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v31 = v18;

      v43 = v30;
      MEMORY[0x1EEE9AC00](v19);
      v23 = v10;
      v24 = v27;
      v25 = v11;
      v26 = a1;

      v20 = sub_1ADE08EB0(sub_1AE17F910, v22, v28, &type metadata for Proto_Set.Element, v29, v16, MEMORY[0x1E69E7288], v33);

      v21 = v31;
      *&v45 = 0;
      *(&v45 + 1) = v31;
      v46 = v20;
      v47 = 0u;
      v48 = 0u;
      v49 = 1;
      *v50 = *v44;
      *&v50[3] = *&v44[3];
      v51 = 0;
      v52 = 0;
      swift_beginAccess();
      sub_1ADFAEE10(&v45, &v34);
      sub_1AE1B7950(&v45);
      swift_endAccess();

      v34 = 0;
      v35 = v21;
      v36 = v20;
    }

    v37 = 0u;
    v38 = 0u;
    v39 = 1;
    *v40 = *v44;
    *&v40[3] = *&v44[3];
    v41 = 0;
    v42 = 0;
    return sub_1ADFAECE8(&v34);
  }

  return result;
}

uint64_t sub_1AE17ABBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  (*(v4 + 16))(v7, v9);
  sub_1AE23D38C();
  sub_1AE23D33C();
  return (*(v4 + 8))(v11, a3);
}

uint64_t CRSet.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_1AE23D7CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  sub_1ADE0FE78(a2);
  v14 = *v3;
  sub_1AE16D8FC(a1, v13);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
  {
    (*(v10 + 8))(v13, v9);
    v15 = *(v7 - 8);
    v16 = 1;
  }

  else
  {
    v17 = *&v13[*(TupleTypeMetadata2 + 48)];

    v15 = *(v7 - 8);
    (*(v15 + 32))(a3, v13, v7);
    v16 = 0;
  }

  return (*(v15 + 56))(a3, v16, 1, v7);
}

double sub_1AE17AEEC@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  sub_1AE174904(a1, a2, a3, &type metadata for CRSetElement.Kind, a4, a5, &off_1EE7B4A80, v11);
  if (!v6)
  {
    result = *v11;
    v9 = v11[1];
    v10 = v11[2];
    *a6 = v11[0];
    a6[1] = v9;
    a6[2] = v10;
  }

  return result;
}

uint64_t CRSet.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    v12 = *(sub_1ADDE78C8() + 16);
    if ((~v12 & 0xF000000000000007) != 0 && (v12 & 0xF000000000000000) == 0x1000000000000000)
    {
      v22 = (v12 & 0xFFFFFFFFFFFFFFFLL);
      v23 = v22[3];
      *&v27[16] = v22[2];
      *&v27[32] = v23;
      v24 = v22[5];
      *&v27[48] = v22[4];
      v28 = v24;
      *v27 = v22[1];
      sub_1ADFAEE10(v27, &v26);

      v19 = v28;
      v18 = *&v27[40];
      v17 = v27[56];
      v16 = *&v27[24];
      v15 = *&v27[8];
      v14 = *v27;
    }

    else
    {

      v14 = 0;
      v15 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
      v16 = 0uLL;
      v17 = 1;
      v18 = 0uLL;
      v19 = 0uLL;
    }

    v27[0] = v17;
    v30 = v14;
    v31 = v15;
    v32 = v16;
    v33 = v18;
    v34 = v17;
    v35 = v19;
    sub_1AE17AEEC(&v30, a1, a2, a3, a4, v29);

    if (!v5)
    {
      v25 = v29[1];
      *a5 = v29[0];
      a5[1] = v25;
      a5[2] = v29[2];
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v20 = 0xD000000000000014;
    *(v20 + 8) = 0x80000001AE25FB50;
    *(v20 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

__n128 sub_1AE17B124@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v22 = a3;
  v15 = *v3;
  v16 = v3[1];
  v17 = v3[2];
  v18 = v3[3];
  v19 = v3[4];
  v20 = v3[5];
  v8 = *(a2 + 16);

  v14 = *(a2 + 24);
  v9 = type metadata accessor for CRSetRefMergeableDelta();
  sub_1AE174F20(a1, v9, v21);

  if (!v5)
  {
    v11 = v21[3];
    v12 = v21[4];
    v13 = v22;
    *(v22 + 32) = v21[2];
    *(v13 + 48) = v11;
    *(v13 + 64) = v12;
    result = v21[1];
    *v13 = v21[0];
    *(v13 + 16) = result;
  }

  return result;
}

uint64_t CRSet.Partial.encode(to:)(uint64_t a1, uint64_t a2)
{
  v8 = v2[1];
  v9 = *v2;
  v7 = v2[2];
  result = sub_1ADDFCC74();
  if (!v3)
  {

    sub_1AE17B124(a1, a2, v10);
    swift_beginAccess();
    sub_1AE1B7950(v10);
    swift_endAccess();
  }

  return result;
}

uint64_t CRSet.Partial.visitReferences(_:)(void *a1, uint64_t a2)
{
  v25 = a2;
  v4 = *(a2 + 16);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v24 - v10;
  v29 = v9;
  v11 = *(v2 + 40);
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v26 = v9 + 32;
  v27 = v9 + 16;
  v30 = (v9 + 8);
  v31 = v11;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      v21 = v28;
      v20 = v29;
      (*(v29 + 16))(v28, *(v31 + 48) + *(v29 + 72) * (__clz(__rbit64(v15)) | (v19 << 6)), v4);
      (*(v20 + 32))(v7, v21, v4);
      v22 = a1[3];
      v23 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v22);
      if ((*(v23 + 8))(v22, v23))
      {
        break;
      }

      v15 &= v15 - 1;
      (*(*(*(v25 + 24) + 8) + 48))(a1, v4);
      result = (*v30)(v7, v4);
      v18 = v19;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    (*v30)(v7, v4);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CRSet.union(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = sub_1AE23D7CC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v32 - v16;
  v18 = *a1;
  v39 = *v3;
  v19 = v39;
  v37 = v18;
  CRSet.makeIterator()(&v38);
  v20 = a2[3];
  v21 = a2[4];
  v22 = type metadata accessor for CRSet.Iterator();
  v23 = v19;

  CRSet.Iterator.next()(v22, v17);
  v24 = v8;
  v25 = *(v8 + 48);
  if (v25(v17, 1, v7) != 1)
  {
    v33 = a3;
    v36 = a2;
    v26 = v25;
    v27 = v22;
    v35 = *(v24 + 32);
    v28 = v34;
    v29 = (v24 + 8);
    do
    {
      v35(v13, v17, v7);
      CRSet.insert(_:)(v28, v13, v36);
      v30 = *v29;
      (*v29)(v28, v7);
      v30(v13, v7);
      CRSet.Iterator.next()(v27, v17);
    }

    while (v26(v17, 1, v7) != 1);
    v23 = v39;
    a3 = v33;
  }

  result = sub_1ADDDCE74();
  *a3 = v23;
  return result;
}

uint64_t CRSet.intersection(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1AE23D7CC();
  v43 = *(v45 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = *a1;
  v50 = *v3;
  v18 = v50;
  v48 = v50;
  CRSet.makeIterator()(&v49);
  v19 = a2[3];
  v20 = a2[4];
  v47 = a2;
  v21 = v18;
  v22 = type metadata accessor for CRSet.Iterator();

  CRSet.Iterator.next()(v22, v16);
  v23 = v8;
  v26 = *(v8 + 48);
  v24 = v8 + 48;
  v25 = v26;
  if (v26(v16, 1, v7) != 1)
  {
    v41 = a3;
    v29 = *(v23 + 32);
    v27 = v23 + 32;
    v28 = v29;
    v30 = (v27 - 24);
    v46 = v27;
    v42 = (v27 - 24);
    v43 += 8;
    v29(v11, v16, v7);
    while (1)
    {
      v48 = v17;
      if (!CRSet.contains(_:)(v11, v47))
      {
        v31 = v28;
        v32 = v16;
        v33 = v7;
        v34 = v25;
        v35 = v24;
        v36 = v22;
        v37 = v17;
        v38 = v44;
        CRSet.remove(_:)(v11, v47, v44);
        v39 = v38;
        v17 = v37;
        v22 = v36;
        v24 = v35;
        v25 = v34;
        v7 = v33;
        v16 = v32;
        v28 = v31;
        v30 = v42;
        (*v43)(v39, v45);
      }

      (*v30)(v11, v7);
      CRSet.Iterator.next()(v22, v16);
      if (v25(v16, 1, v7) == 1)
      {
        break;
      }

      v28(v11, v16, v7);
    }

    v21 = v50;
    a3 = v41;
  }

  result = sub_1ADDDCE74();
  *a3 = v21;
  return result;
}

uint64_t CRSet.subtracting(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1AE23D7CC();
  v38 = *(v41 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = *a1;
  v46 = *v3;
  v18 = v46;
  v44 = v46;
  CRSet.makeIterator()(&v45);
  v19 = a2[3];
  v20 = a2[4];
  v43 = a2;
  v21 = type metadata accessor for CRSet.Iterator();

  CRSet.Iterator.next()(v21, v16);
  v22 = v18;
  v23 = v8 + 6;
  v24 = v8[6];
  if (v24(v16, 1, v7) != 1)
  {
    v37 = a3;
    v25 = v8[4];
    v42 = v8 + 4;
    v26 = (v8 + 1);
    v38 += 8;
    v39 = v26;
    v25(v11, v16, v7);
    while (1)
    {
      v44 = v17;
      if (CRSet.contains(_:)(v11, v43))
      {
        v27 = v16;
        v28 = v7;
        v29 = v25;
        v30 = v24;
        v31 = v23;
        v32 = v21;
        v33 = v17;
        v34 = v40;
        CRSet.remove(_:)(v11, v43, v40);
        v35 = v34;
        v17 = v33;
        v21 = v32;
        v23 = v31;
        v24 = v30;
        v25 = v29;
        v7 = v28;
        v16 = v27;
        v26 = v39;
        (*v38)(v35, v41);
      }

      (*v26)(v11, v7);
      CRSet.Iterator.next()(v21, v16);
      if (v24(v16, 1, v7) == 1)
      {
        break;
      }

      v25(v11, v16, v7);
    }

    v22 = v46;
    a3 = v37;
  }

  result = sub_1ADDDCE74();
  *a3 = v22;
  return result;
}

uint64_t CRSet.symmetricDifference(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = a2[2];
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v38 = sub_1AE23D7CC();
  v14 = *(v38 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  v20 = *a1;
  v21 = *v3;
  v46 = *v3;
  v44 = v20;
  CRSet.makeIterator()(&v45);
  v22 = a2[3];
  v23 = a2[4];
  v24 = type metadata accessor for CRSet.Iterator();

  v43 = v24;
  CRSet.Iterator.next()(v24, v19);
  v41 = v8[6];
  v42 = v8 + 6;
  if (v41(v19, 1, v7) != 1)
  {
    v36 = a3;
    v25 = v8 + 4;
    v40 = v8[4];
    v26 = (v8 + 1);
    v27 = (v14 + 8);
    do
    {
      v29 = v25;
      v40(v13, v19, v7);
      v44 = v21;
      if (CRSet.contains(_:)(v13, a2))
      {
        v28 = v37;
        CRSet.remove(_:)(v13, a2, v37);
        (*v27)(v28, v38);
        (*v26)(v13, v7);
      }

      else
      {
        v30 = v21;
        v31 = v39;
        CRSet.insert(_:)(v39, v13, a2);
        v32 = *v26;
        v33 = v31;
        v21 = v30;
        (*v26)(v33, v7);
        v32(v13, v7);
      }

      CRSet.Iterator.next()(v43, v19);
      v25 = v29;
    }

    while (v41(v19, 1, v7) != 1);
    v21 = v46;
    a3 = v36;
  }

  result = sub_1ADDDCE74();
  *a3 = v21;
  return result;
}

uint64_t CRSet.formUnion(_:)(uint64_t *a1, void *a2)
{
  v4 = a2[2];
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = sub_1AE23D7CC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - v14;
  v26 = *a1;
  CRSet.makeIterator()(&v27);
  v16 = a2[3];
  v17 = a2[4];
  v25 = a2;
  v24 = type metadata accessor for CRSet.Iterator();
  CRSet.Iterator.next()(v24, v15);
  v18 = v5[6];
  if (v18(v15, 1, v4) != 1)
  {
    v19 = v5[4];
    v20 = (v5 + 1);
    do
    {
      v19(v11, v15, v4);
      CRSet.insert(_:)(v8, v11, v25);
      v21 = *v20;
      (*v20)(v8, v4);
      v21(v11, v4);
      CRSet.Iterator.next()(v24, v15);
    }

    while (v18(v15, 1, v4) != 1);
  }

  return sub_1ADDDCE74();
}

uint64_t CRSet.formIntersection(_:)(uint64_t *a1, void *a2)
{
  v5 = a2[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1AE23D7CC();
  v10 = *(v37 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = *a1;
  v38 = v2;
  v17 = *v2;
  v41 = v16;
  v42 = v17;
  CRSet.makeIterator()(&v43);
  v18 = a2[3];
  v19 = a2[4];
  v20 = a2;
  v40 = type metadata accessor for CRSet.Iterator();
  CRSet.Iterator.next()(v40, v15);
  v21 = v6;
  v24 = *(v6 + 48);
  v23 = v6 + 48;
  v22 = v24;
  if (v24(v15, 1, v5) != 1)
  {
    v26 = v21 + 32;
    v27 = *(v21 + 32);
    v35 = (v10 + 8);
    v39 = v26;
    v28 = (v26 - 24);
    v27(v9, v15, v5);
    while (1)
    {
      v42 = v41;
      if (!CRSet.contains(_:)(v9, v20))
      {
        v29 = v27;
        v30 = v22;
        v31 = v23;
        v32 = v36;
        CRSet.remove(_:)(v9, v20, v36);
        v33 = v32;
        v23 = v31;
        v22 = v30;
        v27 = v29;
        (*v35)(v33, v37);
      }

      (*v28)(v9, v5);
      CRSet.Iterator.next()(v40, v15);
      if (v22(v15, 1, v5) == 1)
      {
        break;
      }

      v27(v9, v15, v5);
    }
  }

  return sub_1ADDDCE74();
}

uint64_t CRSet.subtract(_:)(uint64_t *a1, void *a2)
{
  v5 = a2[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1AE23D7CC();
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = *a1;
  v35 = v2;
  v17 = *v2;
  v39 = v16;
  v40 = v17;
  CRSet.makeIterator()(&v41);
  v18 = a2[3];
  v19 = a2[4];
  v20 = a2;
  v38 = type metadata accessor for CRSet.Iterator();
  CRSet.Iterator.next()(v38, v15);
  v21 = v6;
  v24 = *(v6 + 48);
  v23 = v6 + 48;
  v22 = v24;
  if (v24(v15, 1, v5) != 1)
  {
    v36 = *(v21 + 32);
    v37 = v21 + 32;
    v26 = (v21 + 8);
    v27 = (v10 + 8);
    v36(v9, v15, v5);
    while (1)
    {
      v40 = v39;
      if (CRSet.contains(_:)(v9, v20))
      {
        v28 = v22;
        v29 = v23;
        v30 = v33;
        CRSet.remove(_:)(v9, v20, v33);
        v31 = v30;
        v23 = v29;
        v22 = v28;
        (*v27)(v31, v34);
      }

      (*v26)(v9, v5);
      CRSet.Iterator.next()(v38, v15);
      if (v22(v15, 1, v5) == 1)
      {
        break;
      }

      v36(v9, v15, v5);
    }
  }

  return sub_1ADDDCE74();
}

uint64_t CRSet.formSymmetricDifference(_:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v30 = sub_1AE23D7CC();
  v13 = *(v30 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  v36 = *a1;
  CRSet.makeIterator()(&v37);
  v19 = a2[3];
  v20 = a2[4];
  v35 = type metadata accessor for CRSet.Iterator();
  CRSet.Iterator.next()(v35, v18);
  v34 = v7[6];
  if (v34(v18, 1, v6) != 1)
  {
    v32 = v7[4];
    v33 = v7 + 4;
    v22 = (v7 + 1);
    v23 = (v13 + 8);
    v32(v12, v18, v6);
    while (1)
    {
      v36 = *v3;

      v25 = CRSet.contains(_:)(v12, a2);

      if (v25)
      {
        v24 = v29;
        CRSet.remove(_:)(v12, a2, v29);
        (*v23)(v24, v30);
        (*v22)(v12, v6);
      }

      else
      {
        v26 = v31;
        CRSet.insert(_:)(v31, v12, a2);
        v27 = *v22;
        (*v22)(v26, v6);
        v27(v12, v6);
      }

      CRSet.Iterator.next()(v35, v18);
      if (v34(v18, 1, v6) == 1)
      {
        break;
      }

      v32(v12, v18, v6);
    }
  }

  return sub_1ADDDCE74();
}

uint64_t CRSet.isEmpty.getter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);

  LOBYTE(v6) = MEMORY[0x1B26FB370](v7, v5, &type metadata for CRSetElement, v6);

  return v6 & 1;
}

uint64_t CRSet.filter(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = v5;
  v43 = a1;
  v44 = a2;
  v9 = a3[2];
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1AE23D7CC();
  v36 = *(v39 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v47 = *v4;
  v19 = v47;
  v45 = v47;
  CRSet.makeIterator()(&v46);
  v20 = a3[3];
  v21 = a3[4];
  v40 = a3;
  v22 = v19;
  v23 = type metadata accessor for CRSet.Iterator();

  v42 = v23;
  CRSet.Iterator.next()(v23, v18);
  v24 = v10;
  v26 = v10 + 48;
  v25 = *(v10 + 48);
  if (v25(v18, 1, v9) != 1)
  {
    v41 = *(v24 + 32);
    v35 = a4;
    v36 += 8;
    v27 = (v24 + 8);
    v37 = v18;
    do
    {
      v41(v13, v18, v9);
      v28 = v43(v13);
      if (v6)
      {
        (*v27)(v13, v9);
        sub_1ADDDCE74();
      }

      if ((v28 & 1) == 0)
      {
        v29 = v9;
        v30 = v26;
        v31 = v25;
        v32 = v38;
        CRSet.remove(_:)(v13, v40, v38);
        v33 = v32;
        v25 = v31;
        v26 = v30;
        v9 = v29;
        v6 = 0;
        v18 = v37;
        (*v36)(v33, v39);
      }

      (*v27)(v13, v9);
      CRSet.Iterator.next()(v42, v18);
    }

    while (v25(v18, 1, v9) != 1);
    v22 = v47;
    a4 = v35;
  }

  result = sub_1ADDDCE74();
  *a4 = v22;
  return result;
}

uint64_t sub_1AE17D08C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3[3];
  v5 = v3[4];
  return sub_1AE177C7C(a1, a2, v3[2], a3);
}

uint64_t sub_1AE17D0B0@<X0>(void *a1@<X8>)
{
  CRSet.makeIterator()(a1);
  v2 = *v1;
}

uint64_t sub_1AE17D0DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AE17D130()
{
  swift_getWitnessTable();
  v1 = sub_1AE23836C();
  v2 = *v0;

  return v1;
}

uint64_t CRSet.Index.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 16);
  v6 = *(a2 + 16);
  v7 = *(a2 + 32);
  return sub_1AE23CA6C();
}

uint64_t CRSet.Index.hashValue.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  sub_1AE23E31C();
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  sub_1AE23CA6C();
  return sub_1AE23E34C();
}

uint64_t sub_1AE17D2C8(uint64_t a1, uint64_t a2)
{
  sub_1AE23E31C();
  CRSet.Index.hash(into:)(v4, a2);
  return sub_1AE23E34C();
}

uint64_t sub_1AE17D34C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, ValueMetadata *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  swift_beginAccess();
  v8 = *(v7 + 40);
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);

  v12 = a2(v11, v9, &type metadata for CRSetElement, v10);
  v14 = v13;
  LOBYTE(v9) = v15;

  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 16) = v9 & 1;
  return result;
}

uint64_t CRSet.index(after:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = *v3;
  swift_beginAccess();
  v10 = *(v9 + 40);
  v11 = *(a2 + 16);
  v12 = *(a2 + 32);

  v13 = sub_1AE23CA8C();
  v15 = v14;
  LOBYTE(v7) = v16;

  *a3 = v13;
  *(a3 + 8) = v15;
  *(a3 + 16) = v7 & 1;
  return result;
}

void (*sub_1AE17D4B4(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1AE17D53C(v6, a2, a3);
  return sub_1ADDF195C;
}

void (*sub_1AE17D53C(void *a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  CRSet.subscript.getter(a2, a3);
  return sub_1ADE022F8;
}

uint64_t sub_1AE17D618(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v2 = v6[0];
  v6[1] = v3;
  v7 = v4;
  CRSet.index(after:)(v6, a2, a1);

  return sub_1ADDFFBC8(v2, v3, v4);
}

uint64_t sub_1AE17D67C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v63 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v56 - v13;
  v15 = sub_1AE23BFEC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v21 = *a1;
  v22 = *(a2 + 24);
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v21 >= v23;
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v25 = 0xD000000000000013;
    *(v25 + 8) = 0x80000001AE25FD70;
    *(v25 + 16) = 0;
    swift_willThrow();

    v26 = v65;
    return sub_1ADFAECE8(v26);
  }

  v60 = a4;
  v61 = a3;
  v59 = a6;
  (*(v16 + 16))(v20, v22 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v21, v15, v18);
  v27 = type metadata accessor for ReplicaState();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v32 = type metadata accessor for Replica();
  v33 = *(*(v32 - 8) + 56);
  v62 = a2;
  v33(v30 + v31, 1, 1, v32);
  (*(v16 + 32))(v30 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v20, v15);
  *(v30 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v30 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v33(v14, 1, 1, v32);
  v34 = v62;
  v35 = v65;
  swift_beginAccess();
  sub_1ADDD85E4(v14, v30 + v31);
  swift_endAccess();
  v36 = v35[3];
  v37 = v35[4];
  if (v36)
  {
    v38 = v35[3];
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  if (v36)
  {
    v39 = v35[4];
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v36);

  v40 = v64;
  sub_1ADDD6748(v38, v39, v34, &v66);
  if (v40)
  {

    v26 = v35;
    return sub_1ADFAECE8(v26);
  }

  v64 = v30;
  v58 = &v56;
  v56 = *(&v66 + 1);
  v57 = v66;
  v71 = v35[1];
  *&v66 = v71;
  MEMORY[0x1EEE9AC00](v71);
  v42 = v60;
  *(&v56 - 4) = v61;
  *(&v56 - 3) = v42;
  *(&v56 - 2) = v63;
  *(&v56 - 1) = v34;

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BBB90, &unk_1AE24EC40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  v46 = sub_1ADDCC7D4(qword_1ED969F40, qword_1EB5BBB90, &unk_1AE24EC40);
  v47 = sub_1ADE08EB0(sub_1AE1801EC, (&v56 - 6), v43, TupleTypeMetadata2, v45, v46, MEMORY[0x1E69E7288], &v70);
  v49 = v56;
  v48 = v57;
  sub_1ADFAECE8(v35);
  sub_1ADDCEDE0(&v71, qword_1EB5BBB90, &unk_1AE24EC40);
  *&v66 = v47;
  sub_1AE23D11C();
  v50 = v61;
  swift_getWitnessTable();
  v51 = v63;
  v52 = sub_1AE23CB2C();
  *&v66 = v50;
  *(&v66 + 1) = &type metadata for CRSetElement;
  v67 = v60;
  v68 = v51;
  v69 = &off_1EE7B4A80;
  type metadata accessor for CRSetRef();
  *&v66 = v48;
  *(&v66 + 1) = v49;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v53 = *(qword_1ED96F2F8 + 40);
  sub_1AE23D6AC();
  v54 = v70;
  v55 = swift_allocObject();
  sub_1ADE0C750(v64, &v66, v52, v54);

  *v59 = v55;
  return result;
}

uint64_t sub_1AE17DCC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v19 = a1[3];
  v20 = a1[2];
  if (*a1)
  {
    inited = *a1;
  }

  else
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();
  }

  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(inited, a2);

  v12 = *(*(a4 + 8) + 8);
  v13 = *(v12 + 8);

  v13(v14, a3, v12);
  if (v6)
  {

    *a5 = v6;
  }

  else
  {
    if (v20)
    {
      v15 = v20;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    if (v20)
    {
      v16 = v19;
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    sub_1ADE42C78(v20);
    v17 = sub_1ADDF4A24(v15, v16, a2);

    result = swift_getTupleTypeMetadata2();
    *(a6 + *(result + 48)) = v17;
  }

  return result;
}

uint64_t sub_1AE17DE98()
{
  sub_1ADE42E40();
  swift_allocError();
  *v0 = 0xD000000000000016;
  *(v0 + 8) = 0x80000001AE262900;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

__n128 sub_1AE17DF00@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = *a1;
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[2];
  v12 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  (*(v7 + 16))(v10, v11 + v12, v6);
  v13 = sub_1ADDF66A8(v10);
  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  v14 = a1[4];
  v42 = a1[3];
  v43 = v14;

  v15 = sub_1ADDF5C7C(a2);
  v17 = v16;

  sub_1ADE42CB8(0);
  swift_beginAccess();
  v53[1] = a1[5];
  v32 = v5[10];
  v33 = v5[12];
  v34 = v5[13];
  v35 = a2;
  v30[2] = v32;
  v30[3] = v33;
  v30[4] = v34;
  v30[5] = sub_1AE18017C;
  v30[6] = &v31;
  v18 = sub_1AE23CB1C();

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  WitnessTable = swift_getWitnessTable();
  v21 = v55;
  v22 = sub_1ADE08EB0(sub_1AE18019C, v30, v18, &type metadata for Proto_Set.Element, v19, WitnessTable, MEMORY[0x1E69E7288], v53);
  if (v21)
  {

    v42 = v13;
    v43 = MEMORY[0x1E69E7CC0];
    v44 = MEMORY[0x1E69E7CC0];
    v45 = v15;
    v47 = 0;
    v48 = 0;
    v46 = v17;
    v49 = 1;
    *v50 = v54[0];
    *&v50[3] = *(v54 + 3);
    v51 = 0;
    v52 = 0;
    sub_1ADFAECE8(&v42);
  }

  else
  {
    v24 = v22;
    v25 = MEMORY[0x1E69E7CC0];

    *&v37 = v13;
    *(&v37 + 1) = v24;
    v38.n128_u64[0] = v25;
    v38.n128_u64[1] = v15;
    *&v40 = 0;
    v39 = v17;
    BYTE8(v40) = 1;
    *(&v40 + 9) = v54[0];
    HIDWORD(v40) = *(v54 + 3);
    v41 = 0uLL;
    v42 = v13;
    v43 = v24;
    v44 = v25;
    v45 = v15;
    v47 = 0;
    v48 = 0;
    v46 = v17;
    v49 = 1;
    *v50 = v54[0];
    *&v50[3] = *(v54 + 3);
    v51 = 0;
    v52 = 0;
    sub_1ADFAEE10(&v37, &v36);
    sub_1ADFAECE8(&v42);
    v26 = v40;
    v27 = v29;
    *(v29 + 32) = v39;
    *(v27 + 48) = v26;
    *(v27 + 64) = v41;
    result = v38;
    *v27 = v37;
    *(v27 + 16) = result;
  }

  return result;
}

uint64_t sub_1AE17E2B0@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  result = sub_1ADE6B938(sub_1AE180240);
  if (!v2)
  {
    v6 = result;

    sub_1ADF78ED0(v7, &v11);
    v8 = sub_1ADDF5C7C(a1);
    v10 = v9;

    *a2 = v6;
    a2[1] = 0;
    a2[2] = v8;
    a2[3] = v10;
    a2[4] = 0;
  }

  return result;
}

double sub_1AE17E374@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t, void)@<X1>, void *a3@<X6>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  a2(v12, a1, *(a1 + *(TupleTypeMetadata2 + 48)));
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    result = *v12;
    v11 = v12[1];
    *a4 = v12[0];
    *(a4 + 16) = v11;
    *(a4 + 32) = v13;
  }

  return result;
}

uint64_t sub_1AE17E424@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, size_t *a5@<X4>, void *a6@<X8>)
{
  v112 = a5;
  v116 = a3;
  v117 = a1;
  v10 = type metadata accessor for Timestamp(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v107 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA270, &unk_1AE253920);
  v104 = *(v105 - 8);
  v13 = *(v104 + 64);
  v14 = MEMORY[0x1EEE9AC00](v105);
  v111 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = (&v92 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v92 - v19;
  v21 = sub_1AE23BFEC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 + 24);
  v27 = *(v26 + 16);
  if (!v27 || (v28 = *v117, *v117 >= v27))
  {
    sub_1ADE42E40();
    swift_allocError();
    *v45 = 0xD000000000000013;
    *(v45 + 8) = 0x80000001AE25FD70;
    *(v45 + 16) = 0;
    swift_willThrow();

    sub_1ADFAECE8(v117);
    goto LABEL_12;
  }

  v96 = a6;
  v106 = a4;
  (*(v22 + 16))(v25, v26 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v28, v21);
  v29 = type metadata accessor for ReplicaState();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v100 = a2;
  v33 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v34 = type metadata accessor for Replica();
  v35 = *(v34 - 8);
  v115 = v6;
  v36 = *(v35 + 56);
  v36(v32 + v33, 1, 1, v34);
  (*(v22 + 32))(v32 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v25, v21);
  *(v32 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v32 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v36(v20, 1, 1, v34);
  swift_beginAccess();
  v37 = v32 + v33;
  v38 = v100;
  sub_1ADDD85E4(v20, v37);
  swift_endAccess();
  v39 = v117[3];
  v40 = v117[4];
  v41 = MEMORY[0x1E69E7CC0];
  if (v39)
  {
    v42 = v117[3];
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  if (v39)
  {
    v43 = v117[4];
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
  }

  sub_1ADE42C78(v39);

  v44 = v115;
  sub_1ADDD6748(v42, v43, v38, v120);
  if (!v44)
  {
    v95 = v120[0];
    v94 = v120[1];
    v47 = v117;
    v121 = v117[1];
    v48 = v121;

    sub_1ADFAECE8(v47);
    v49 = *(v48 + 16);
    v50 = v116;
    if (v49)
    {
      v93 = v32;
      v119[0] = v41;
      sub_1ADE6F11C(0, v49, 0);
      v113 = 0;
      v51 = 0;
      v52 = *(v48 + 16);
      v109 = v119[0];
      if (v52 >= v49)
      {
        v52 = v49;
      }

      v99 = v52;
      v32 = (v48 + 64);
      v98 = v48;
      v97 = v49;
      while (v99 != v51)
      {
        if (v51 >= *(v48 + 16))
        {
          goto LABEL_45;
        }

        v53 = *(v32 - 4);
        v55 = *(v32 - 2);
        v54 = *(v32 - 1);
        v114 = *(v32 - 3);
        v115 = v54;
        v117 = *v32;
        v103 = v51;
        if (v53)
        {
          inited = v53;
          v57 = v53;
        }

        else
        {
          type metadata accessor for Proto_Value._StorageClass();
          inited = swift_initStaticObject();
          v57 = 0;
        }

        type metadata accessor for CRDecoder();
        swift_allocObject();

        v108 = v57;
        swift_retain_n();
        v58 = v115;
        sub_1ADE42C78(v55);

        sub_1ADE0262C(inited, v50);

        AnyCRValue.init(from:)(v59, v118);
        if (v55)
        {
          v60 = v55;
        }

        else
        {
          v60 = v41;
        }

        if (v55)
        {
          v61 = v58;
        }

        else
        {
          v61 = v41;
        }

        v102 = v55;
        sub_1ADE42C78(v55);

        v62 = sub_1ADDF4A24(v60, v61, v50);
        v63 = v118[0];
        v64 = v106;
        swift_beginAccess();
        v65 = *(v64 + 200);
        v66 = v103;
        if (v103 >= *(v65 + 16))
        {
          goto LABEL_46;
        }

        v67 = v65 + v113;
        v68 = *(v67 + 32);
        v69 = *(v67 + 40);

        v70 = v107;
        sub_1ADE017C0(v68, v69, v50, v107);
        v71 = v110;
        *v110 = v63;
        sub_1AE017B14(v70, v71 + *(v105 + 44));
        sub_1ADDCEE40(v71, v111, &qword_1EB5BA270, &unk_1AE253920);
        v72 = v112;
        v73 = *v112;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v72 = v73;
        v101 = v62;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v73 = sub_1ADE55474(0, v73[2] + 1, 1, v73);
          *v112 = v73;
        }

        v76 = v73[2];
        v75 = v73[3];
        if (v76 >= v75 >> 1)
        {
          v84 = sub_1ADE55474(v75 > 1, v76 + 1, 1, v73);
          *v112 = v84;
        }

        sub_1ADDCEDE0(v110, &qword_1EB5BA270, &unk_1AE253920);
        v77 = v111;
        v78 = *v112;
        *(v78 + 16) = v76 + 1;
        sub_1ADDD2198(v77, v78 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v76, &qword_1EB5BA270, &unk_1AE253920);

        sub_1ADE42CB8(v102);

        v79 = v109;
        v119[0] = v109;
        v81 = *(v109 + 16);
        v80 = *(v109 + 24);
        if (v81 >= v80 >> 1)
        {
          sub_1ADE6F11C((v80 > 1), v81 + 1, 1);
          v79 = v119[0];
        }

        v51 = v66 + 1;
        *(v79 + 16) = v81 + 1;
        v109 = v79;
        v82 = v79 + 16 * v81;
        v83 = v101;
        *(v82 + 32) = v63;
        *(v82 + 40) = v83;
        v113 += 16;
        v32 += 5;
        v50 = v116;
        v41 = MEMORY[0x1E69E7CC0];
        v48 = v98;
        if (v97 == v51)
        {
          sub_1ADDCEDE0(&v121, qword_1EB5BBB90, &unk_1AE24EC40);
          v32 = v93;
          v85 = v109;
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    else
    {
      sub_1ADDCEDE0(&v121, qword_1EB5BBB90, &unk_1AE24EC40);
      v85 = MEMORY[0x1E69E7CC0];
LABEL_39:
      v41 = MEMORY[0x1E69E7CC8];
      if (*(v85 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB828, &unk_1AE25AA30);
        v86 = sub_1AE23DCDC();
      }

      else
      {
        v86 = MEMORY[0x1E69E7CC8];
      }

      v119[0] = v86;
      sub_1AE17F328(v85, 1, v119);

      v50 = v119[0];
      if (qword_1ED96B308 == -1)
      {
        goto LABEL_43;
      }
    }

    swift_once();
LABEL_43:
    v87 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    v88 = v119[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDA30, &qword_1AE253930);
    v89 = swift_allocObject();
    v89[3] = v41;
    v89[4] = v41;
    v89[5] = v41;
    v89[6] = 0;
    v89[2] = v32;
    swift_beginAccess();
    v90 = v89[3];
    v91 = v89[4];
    v89[3] = v95;
    v89[4] = v94;

    swift_beginAccess();
    v89[5] = v50;
    v89[6] = v88;

    *v96 = v89;
  }

  sub_1ADFAECE8(v117);
LABEL_12:
}

uint64_t sub_1AE17EF48@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, _OWORD *)@<X1>, void *a3@<X6>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = *(a1 + 3);
  v12[0] = *(a1 + 1);
  v12[1] = v9;
  v13 = a1[5];
  result = a2(a4, v8, v12);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    v11 = result;
    result = swift_getTupleTypeMetadata2();
    *(a4 + *(result + 48)) = v11;
  }

  return result;
}

__n128 sub_1AE17F010@<Q0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v8 = *v3;
  v9 = *(a1 + 16);
  v10 = sub_1AE16CC2C();
  sub_1AE17F5B8(v10, a1, a2, v13);

  if (!v4)
  {
    v12 = v13[3];
    *(a3 + 32) = v13[2];
    *(a3 + 48) = v12;
    *(a3 + 64) = v13[4];
    result = v13[1];
    *a3 = v13[0];
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t CRSet<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v6 = *(a2 + 16);
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AE23D7CC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v22 - v12;
  v14 = *v3;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE23E3AC();
  v29[6] = v14;
  CRSet.makeIterator()(&v28);
  v16 = *(v26 + 24);
  v17 = *(v26 + 32);
  v26 = type metadata accessor for CRSet.Iterator();
  CRSet.Iterator.next()(v26, v13);
  v18 = v23;
  v24 = *(v23 + 48);
  v25 = v23 + 48;
  if (v24(v13, 1, v6) != 1)
  {
    v20 = *(v18 + 32);
    v19 = v18 + 32;
    v23 = v20;
    do
    {
      (v23)(v9, v13, v6);
      __swift_mutable_project_boxed_opaque_existential_1(v29, v29[3]);
      sub_1AE23DE6C();
      (*(v19 - 24))(v9, v6);
      if (v4)
      {
        break;
      }

      CRSet.Iterator.next()(v26, v13);
    }

    while (v24(v13, 1, v6) != 1);
  }

  sub_1ADDDCE74();
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

unint64_t sub_1AE17F328(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);

  if (!v8)
  {
    return result;
  }

  v9 = *a3;
  result = sub_1ADF4A434(v8);
  v11 = v9[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v15) = v10;
  if (v9[3] < v14)
  {
    sub_1ADF6A1CC(v14, v5 & 1);
    v16 = *a3;
    result = sub_1ADF4A434(v8);
    if ((v15 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    result = sub_1AE23E27C();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    v18 = *a3;
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v23 = result;
  sub_1ADF6FB38();
  result = v23;
  v18 = *a3;
  if ((v15 & 1) == 0)
  {
LABEL_12:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = v8;
    *(v18[7] + 8 * result) = v7;
    v24 = v18[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v18[2] = v25;
      v15 = v3 - 1;
      if (v3 == 1)
      {
        return result;
      }

      goto LABEL_15;
    }

LABEL_26:
    __break(1u);
    return result;
  }

LABEL_9:
  v19 = *(v18[7] + 8 * result);
  v20 = result;

  v21 = v18[7];
  v22 = *(v21 + 8 * v20);
  *(v21 + 8 * v20) = v19;

  v15 = v3 - 1;
  if (v3 == 1)
  {
    return result;
  }

LABEL_15:
  v5 = (v6 + 56);
  do
  {
    v7 = *(v5 - 1);
    v6 = *v5;

    if (!v7)
    {
      break;
    }

    v30 = *a3;
    result = sub_1ADF4A434(v7);
    v32 = v30[2];
    v33 = (v31 & 1) == 0;
    v13 = __OFADD__(v32, v33);
    v34 = v32 + v33;
    if (v13)
    {
      goto LABEL_25;
    }

    v8 = v31;
    if (v30[3] < v34)
    {
      sub_1ADF6A1CC(v34, 1);
      v35 = *a3;
      result = sub_1ADF4A434(v7);
      if ((v8 & 1) != (v36 & 1))
      {
        goto LABEL_6;
      }
    }

    v3 = *a3;
    if (v8)
    {
      v26 = *(v3[7] + 8 * result);
      v27 = result;

      v28 = v3[7];
      v29 = *(v28 + 8 * v27);
      *(v28 + 8 * v27) = v26;
    }

    else
    {
      v3[(result >> 6) + 8] |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      *(v3[7] + 8 * result) = v6;
      v37 = v3[2];
      v13 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v13)
      {
        goto LABEL_26;
      }

      v3[2] = v38;
    }

    v5 += 2;
    --v15;
  }

  while (v15);
  return result;
}

__n128 sub_1AE17F5B8@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v29 = a3;
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[2];
  v12 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  (*(v7 + 16))(v10, v11 + v12, v6);
  v13 = sub_1ADDF66A8(v10);
  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  v14 = a1[4];
  v36 = a1[3];
  v37 = v14;

  v15 = sub_1ADDF5C7C(a2);
  v17 = v16;

  sub_1ADE42CB8(0);
  swift_beginAccess();
  v18 = a1[5];

  v20 = v48;
  v21 = v29(v19);
  if (v20)
  {

    v36 = v13;
    v37 = MEMORY[0x1E69E7CC0];
    v38 = MEMORY[0x1E69E7CC0];
    v39 = v15;
    v41 = 0;
    v42 = 0;
    v40 = v17;
    v43 = 1;
    *v44 = v47[0];
    *&v44[3] = *(v47 + 3);
    v45 = 0;
    v46 = 0;
    sub_1ADFAECE8(&v36);
  }

  else
  {
    v23 = v21;
    v24 = MEMORY[0x1E69E7CC0];

    *&v31 = v13;
    *(&v31 + 1) = v23;
    v32.n128_u64[0] = v24;
    v32.n128_u64[1] = v15;
    *&v34 = 0;
    v33 = v17;
    BYTE8(v34) = 1;
    *(&v34 + 9) = v47[0];
    HIDWORD(v34) = *(v47 + 3);
    v35 = 0uLL;
    v36 = v13;
    v37 = v23;
    v38 = v24;
    v39 = v15;
    v41 = 0;
    v42 = 0;
    v40 = v17;
    v43 = 1;
    *v44 = v47[0];
    *&v44[3] = *(v47 + 3);
    v45 = 0;
    v46 = 0;
    sub_1ADFAEE10(&v31, &v30);
    sub_1ADFAECE8(&v36);
    v25 = v34;
    v26 = v28;
    *(v28 + 32) = v33;
    *(v26 + 48) = v25;
    *(v26 + 64) = v35;
    result = v32;
    *v26 = v31;
    *(v26 + 16) = result;
  }

  return result;
}

uint64_t sub_1AE17F888(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1AE17ABBC(a1, v1[5], v1[2]);
}

double sub_1AE17F93C@<D0>(void *a1@<X1>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  v7 = sub_1ADE6B938(a2);
  if (v4)
  {
    *a1 = v4;
  }

  else
  {
    *a3 = v7;
    result = 0.0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
  }

  return result;
}

uint64_t sub_1AE17F9B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *a1;
  v7 = v4;
  if ((sub_1ADF7974C(a2) & 1) == 0)
  {
    return 0;
  }

  v6 = v3;
  v7 = v4;

  sub_1ADF777D8(&v6);
  return a2;
}

uint64_t sub_1AE17FA7C(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1AE17FAE8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AE17FB78()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE17FBCC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE17FC20()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE17FC74()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE17FCBC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE17FD1C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE17FD58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1AE17FDA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AE17FE04()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE17FE40(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE17FE90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1AE17FEE4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void *sub_1AE17FF60@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_1AE176518(v1[7], a1);
}

double sub_1AE17FF84@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v9 = *(v3 + 64);
  return sub_1AE1766D8(a1, *(v3 + 56), a3, a2);
}

uint64_t sub_1AE18010C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v9 = *(v3 + 64);
  return sub_1AE177374(a1, *(v3 + 56), a3, a2);
}

uint64_t sub_1AE180144(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1AE18017C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1AE17E2B0(v1[5], a1);
}

double sub_1AE18019C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 48);
  return sub_1AE17E374(a1, *(v3 + 40), a2, a3);
}

uint64_t sub_1AE1801C4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 48);
  return sub_1AE17EF48(a1, *(v3 + 40), a2, a3);
}

uint64_t sub_1AE180290(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = a3;
  v36 = a1;
  v6 = a3[2];
  v5 = a3[3];
  v41 = a3[4];
  v42 = v5;
  v7 = type metadata accessor for TreeNode();
  v8 = sub_1AE23D7CC();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v31 - v10;
  v11 = sub_1AE23D7CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v39 = *v3;
  v45 = *(v3 + 1);
  v37 = v3[3];
  v18 = *(v6 - 8);
  v19 = *(v18 + 48);
  v20 = 1;
  if (v19(a2, 1, v6) == 1)
  {
    return v20 & 1;
  }

  v21 = *(v12 + 16);
  v34 = a2;
  v33 = v11;
  v31 = v21;
  v21(v17, a2, v11);
  v32 = v19;
  result = (v19)(v17, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v23 = v39;
    v51 = v39;
    v52 = v45;
    WitnessTable = swift_getWitnessTable();
    v46 = v6;
    *&v47 = v7;
    *(&v47 + 1) = v42;
    v48 = v41;
    v49 = &off_1F23C93F8;
    v50 = WitnessTable;
    v25 = type metadata accessor for CROrderedDictionary();
    v26 = v40;
    CROrderedDictionary.subscript.getter(v17, v25);
    v27 = (*(*(v7 - 8) + 48))(v26, 1, v7);
    (*(v43 + 8))(v26, v44);
    v28 = *(v18 + 8);
    v28(v17, v6);
    if (v27 == 1)
    {
      v20 = 0;
      return v20 & 1;
    }

    v46 = v23;
    v47 = v45;
    v29 = v38;
    v48 = v37;
    v31(v38, v34, v33);
    result = v32(v29, 1, v6);
    if (result != 1)
    {
      v30 = sub_1AE1857FC(v29, v36, v35);
      v28(v29, v6);
      v20 = !v30;
      return v20 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE18065C(void (*a1)(void, void), void *a2)
{
  v65 = a1;
  v4 = a2[2];
  v5 = sub_1AE23D7CC();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v53 - v7;
  v62 = *(v4 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[3];
  v12 = a2[4];
  v63 = a2;
  v13 = type metadata accessor for TreeNode();
  v59 = sub_1AE23D7CC();
  v14 = *(v59 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v17 = &v53 - v16;
  v18 = *(v13 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v55 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v53 - v26;
  v28 = *v2;
  v29 = v2[1];
  v64 = v2;
  v72 = v28;
  v73 = v29;
  WitnessTable = swift_getWitnessTable();
  v66 = v4;
  v67 = v13;
  v68 = v11;
  v69 = v12;
  v60 = v12;
  v70 = &off_1F23C93F8;
  v71 = WitnessTable;
  v31 = type metadata accessor for CROrderedDictionary();
  CROrderedDictionary.subscript.getter(v65, v31);
  if ((*(v18 + 48))(v17, 1, v13) == 1)
  {
    return (*(v14 + 8))(v17, v59);
  }

  (*(v18 + 32))(v27, v17, v13);
  (*(v18 + 16))(v24, v27, v13);
  v33 = sub_1AE23D11C();
  swift_getWitnessTable();
  sub_1AE23CB1C();
  v34 = sub_1AE23CB6C();
  v36 = *v35;
  v54 = v27;
  if (v36)
  {
    v37 = *(v60 + 8);
    v38 = v65;
    sub_1ADE5726C(v65, v33);
    v34(&v66, 0);
  }

  else
  {
    v34(&v66, 0);
    v38 = v65;
  }

  v39 = *(v18 + 8);
  v60 = v18 + 8;
  v65 = v39;
  v39(v24, v13);
  v40 = v4;
  v41 = sub_1AE23D38C();
  v42 = v64;
  sub_1ADFB1024(v38, v41);
  v43 = v42[1];
  v44 = v42[2];
  v45 = v42[3];
  v66 = *v42;
  v67 = v43;
  v68 = v44;
  v69 = v45;

  v46 = v61;
  v47 = v63;
  sub_1AE185AAC(v63, v61);
  v48 = v46;

  v49 = v62;
  if ((*(v62 + 48))(v46, 1, v40) == 1)
  {
    v65(v54, v13);
    return (*(v57 + 8))(v46, v58);
  }

  else
  {
    v50 = v56;
    (*(v49 + 32))(v56, v48, v40);
    v51 = v55;
    (*(v49 + 56))(v55, 1, 1, v40);
    sub_1ADE57398(v50, v51, v47);
    v52 = v65;
    v65(v51, v13);
    (*(v49 + 8))(v50, v40);
    return v52(v54, v13);
  }
}

uint64_t sub_1AE180C48(uint64_t a1, void *a2)
{
  v88 = a1;
  v4 = a2[2];
  v3 = a2[3];
  v71 = a2;
  v5 = a2[4];
  v87 = v3;
  v6 = type metadata accessor for TreeNode();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v75 = v68 - v9;
  v101 = v10;
  v11 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v102 = v68 - v14;
  v97 = *(v11 - 8);
  v15 = *(v97 + 8);
  MEMORY[0x1EEE9AC00](v16);
  v73 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v100 = v68 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v68 - v21;
  v76 = *(v4 - 8);
  v23 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v92 = v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v4;
  v70 = sub_1AE23D7CC();
  v26 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v28 = v68 - v27;
  v96 = v2;
  v29 = v2[3];
  v95 = v5;
  if ((v29 & 0xC000000000000001) != 0)
  {

    sub_1AE23D93C();
    result = sub_1AE23D36C();
    v29 = v113;
    v31 = v114;
    v32 = v115;
    v89 = v116;
    v33 = v117;
  }

  else
  {
    v34 = -1 << *(v29 + 32);
    v35 = ~v34;
    v36 = -v34;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v33 = v37 & *(v29 + 56);

    v32 = v35;
    v31 = v29 + 56;
    v89 = 0;
  }

  v74 = 0;
  v99 = (v76 + 56);
  v68[1] = v32;
  v38 = (v32 + 64) >> 6;
  v39 = (v76 + 16);
  v83 = (v76 + 32);
  v82 = (v7 + 56);
  v81 = (v97 + 16);
  v80 = (v7 + 48);
  v69 = (v7 + 32);
  v77 = (v7 + 8);
  v94 = (v97 + 8);
  v72 = (v12 + 8);
  v79 = (v76 + 8);
  v97 = v22;
  v40 = v92;
  v90 = v29;
  v91 = v31;
  v85 = v38;
  v86 = v28;
  v84 = (v76 + 16);
  v78 = v11;
  while (v29 < 0)
  {
    if (!sub_1AE23D9AC())
    {
LABEL_28:
      (*v99)(v28, 1, 1, v103);
      result = sub_1ADDDCE74();
      if (v74)
      {
        return sub_1ADE145CC(0, v71);
      }

      return result;
    }

    sub_1AE23DFEC();
    swift_unknownObjectRelease();
LABEL_22:
    v45 = *v99;
    v46 = v103;
    (*v99)(v28, 0, 1, v103);
    (*v83)(v40, v28, v46);
    v47 = v96[1];
    v111 = *v96;
    v112 = v47;
    v48 = v101;
    WitnessTable = swift_getWitnessTable();
    v105 = v46;
    v106 = v48;
    v107 = v87;
    v108 = v95;
    v109 = &off_1F23C93F8;
    v110 = WitnessTable;
    v50 = type metadata accessor for CROrderedDictionary();
    CROrderedDictionary.subscript.getter(v40, v50);
    v51 = v22;
    v52 = v100;
    (*v39)(v100, v88, v46);
    v93 = v45;
    v45(v52, 0, 1, v46);
    (*v82)(v52, 0, 1, v48);
    v53 = *(TupleTypeMetadata2 + 48);
    v54 = *v81;
    v55 = v102;
    v56 = v78;
    (*v81)(v102, v51, v78);
    v54(&v55[v53], v52, v56);
    v57 = *v80;
    if ((*v80)(v55, 1, v48) == 1)
    {
      v58 = *v94;
      (*v94)(v100, v56);
      v58(v51, v56);
      v59 = v57(&v102[v53], 1, v101);
      v39 = v84;
      if (v59 != 1)
      {
        goto LABEL_9;
      }

      v58(v102, v56);
      v40 = v92;
      v38 = v85;
LABEL_27:
      v74 = 1;
      v67 = v75;
      v93(v75, 1, 1, v103);
      sub_1ADE57398(v40, v67, v71);
      (*v77)(v67, v101);
      goto LABEL_10;
    }

    v60 = v101;
    v61 = v102;
    v62 = v73;
    v54(v73, v102, v56);
    if (v57(&v61[v53], 1, v60) == 1)
    {
      v41 = *v94;
      (*v94)(v100, v56);
      v41(v97, v56);
      (*v77)(v62, v60);
      v39 = v84;
LABEL_9:
      (*v72)(v102, TupleTypeMetadata2);
      v40 = v92;
      v38 = v85;
      goto LABEL_10;
    }

    v63 = v75;
    (*v69)(v75, &v61[v53], v60);
    swift_getWitnessTable();
    v104 = *(v95 + 8);
    swift_getWitnessTable();
    v64 = sub_1AE23E0AC();
    v65 = *v77;
    (*v77)(v63, v60);
    v66 = *v94;
    (*v94)(v100, v56);
    v66(v97, v56);
    v65(v62, v60);
    v66(v61, v56);
    v40 = v92;
    v38 = v85;
    v39 = v84;
    if (v64)
    {
      goto LABEL_27;
    }

LABEL_10:
    result = (*v79)(v40, v103);
    v22 = v97;
    v28 = v86;
    v29 = v90;
    v31 = v91;
  }

  if (v33)
  {
    v42 = v89;
LABEL_21:
    v44 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    (*(v76 + 16))(v28, *(v29 + 48) + *(v76 + 72) * (v44 | (v42 << 6)), v103);
    goto LABEL_22;
  }

  v43 = v89;
  while (1)
  {
    v42 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v42 >= v38)
    {
      goto LABEL_28;
    }

    v33 = *(v31 + 8 * v42);
    ++v43;
    if (v33)
    {
      v89 = v42;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t CROrderedTree.newRefs(from:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v5 = v2[1];
  v13[2] = v6;
  v13[3] = v5;
  v13[0] = v3;
  v13[1] = v4;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  v10 = type metadata accessor for CROrderedDictionary();
  v11 = CROrderedDictionary.newRefs(from:)(v13, v10);

  return v11;
}

uint64_t CROrderedTree.actionUndoingDifference(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v8 = *v3;
  v7 = v3[1];
  v15[2] = v8;
  v15[3] = v7;
  v15[0] = v5;
  v15[1] = v6;
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  v12 = type metadata accessor for CROrderedDictionary();
  CROrderedDictionary.actionUndoingDifference(from:)(v15, v12, &v16);

  if (v16 == 1)
  {
    v14 = 0uLL;
  }

  else
  {
    v14 = v17;
  }

  *a3 = v16;
  *(a3 + 8) = v14;
  return result;
}

void CROrderedTree.apply(_:)(uint64_t a1, void *a2)
{
  v2 = *a1;
  if (*a1 != 1)
  {
    v4 = *(a1 + 8);
    v3 = *(a1 + 16);
    v11 = *a1;
    v12 = v4;
    v13 = v3;
    sub_1ADF5C694(v2, v4, v3);
    sub_1ADE42C78(v2);
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[4];
    type metadata accessor for TreeNode();
    v9 = v3;
    swift_getWitnessTable();
    v10 = type metadata accessor for CROrderedDictionary();
    CROrderedDictionary.apply(_:)(&v11, v10);
    sub_1ADE24060(v11, v12, v13);
    sub_1ADE145CC(1, a2);
    sub_1ADE24060(v2, v4, v3);
  }
}

uint64_t CROrderedTree.hasDelta(from:)(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v5 = v2[1];
  v12[2] = v6;
  v12[3] = v5;
  v12[0] = v3;
  v12[1] = v4;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  v10 = type metadata accessor for CROrderedDictionary();
  LOBYTE(v3) = CROrderedDictionary.hasDelta(from:)(v12, v10);

  return v3 & 1;
}

uint64_t CROrderedTree.delta(_:from:)@<X0>(uint64_t *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v13 = *v3;
  v14 = v3[1];
  v11 = *a1;
  v12 = a1[1];
  v5 = a2[3];
  v6 = a2[4];
  v10 = a2[2];
  type metadata accessor for TreeNode();
  swift_getWitnessTable();
  type metadata accessor for CROrderedDictionary();
  CROrderedDictionary.delta(_:from:)(&v15);

  v8 = v16;
  if (v16)
  {
    v9 = v15;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  a3[1] = v8;
  return result;
}

uint64_t CROrderedTree.merge(delta:)(void *a1, void *a2)
{
  v2 = a1[1];
  v9[0] = *a1;
  v9[1] = v2;
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  v6 = type metadata accessor for CROrderedDictionary();
  v7 = CROrderedDictionary.merge(delta:)(v9, v6);

  return v7 & 1;
}

uint64_t CROrderedTree.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  v20 = v7;
  v21 = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = type metadata accessor for TreeNode();

  v14 = v8;
  v15 = v11;
  v16 = v9;
  v17 = v10;
  v18 = &off_1F23C93F8;
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for CROrderedDictionary();
  CROrderedDictionary.copy(renamingReferences:)(a1, v12, &v14);

  v20 = v14;
  v21 = v15;
  return sub_1ADE141D4(&v20, v8, v10, a3);
}

uint64_t CROrderedTree.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = *(v3 + 1);
  v8 = v3[3];
  if (!a1)
  {
    a1 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v10 = a1;

  CROrderedTree.copy(renamingReferences:)(&v10, a2, a3);
}

Swift::Bool __swiftcall CROrderedTree.needToFinalizeTimestamps()()
{
  v7 = *v1;
  v8 = v1[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  type metadata accessor for CROrderedDictionary();
  v5 = CROrderedDictionary.needToFinalizeTimestamps()();

  return v5;
}

uint64_t CROrderedTree.finalizeTimestamps(_:)(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v7 = a2[2];
  type metadata accessor for TreeNode();
  swift_getWitnessTable();
  v5 = type metadata accessor for CROrderedDictionary();
  return CROrderedDictionary.finalizeTimestamps(_:)(a1, v5);
}

uint64_t CROrderedTree.merge(_:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  v14[0] = *a1;
  v14[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for TreeNode();

  v13[0] = v6;
  v13[1] = v9;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = &off_1F23C93F8;
  v13[5] = swift_getWitnessTable();
  v10 = type metadata accessor for CROrderedDictionary();
  CROrderedDictionary.merge(_:)(v14, v10, v13);

  v11 = v13[0];
  LOBYTE(v5) = BYTE2(v13[0]);
  result = sub_1ADE145CC(1, a2);
  *a3 = v11;
  *(a3 + 2) = v5;
  return result;
}

uint64_t CROrderedTree.merge(_:)(uint64_t *a1, void *a2)
{
  v2 = a1[3];
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = v2;
  return CROrderedTree.merge(_:)(&v4, a2, v7);
}

uint64_t CROrderedTree.encode(to:)(uint64_t a1, void *a2)
{
  v9 = *v2;
  v10 = v2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  v7 = type metadata accessor for CROrderedDictionary();
  CROrderedDictionary.encode(to:)(a1, v7);
}

void CROrderedTree.minEncodingVersion.getter(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v7 = *v2;
  v8 = v2[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[2];
  type metadata accessor for TreeNode();
  swift_getWitnessTable();
  type metadata accessor for CROrderedDictionary();
  CROrderedDictionary.minEncodingVersion.getter(a2);
}

double CROrderedTree.init(defaultState:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  CROrderedTree.init()(a1, a2, &v6);
  v4 = v8;
  *a3 = v6;
  result = *&v7;
  *(a3 + 8) = v7;
  *(a3 + 24) = v4;
  return result;
}

uint64_t sub_1AE1823DC(uint64_t a1, char *a2, void *a3)
{
  v34 = a3;
  v35 = a1;
  v6 = a3[2];
  v5 = a3[3];
  v39 = a3[4];
  v40 = v5;
  v7 = type metadata accessor for TreeNode();
  v8 = sub_1AE23D7CC();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v29 - v10;
  v11 = sub_1AE23D7CC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v43 = *v3;
  v36 = *(v3 + 2);
  v18 = *(v6 - 8);
  v19 = *(v18 + 48);
  v20 = 1;
  if (v19(a2, 1, v6) == 1)
  {
    return v20 & 1;
  }

  v21 = *(v12 + 16);
  v32 = v11;
  v33 = a2;
  v30 = v21;
  v21(v17, a2, v11);
  v31 = v19;
  result = v19(v17, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v49 = v43;
    WitnessTable = swift_getWitnessTable();
    *&v44 = v6;
    *(&v44 + 1) = v7;
    v45 = v40;
    v46 = v39;
    v47 = &off_1F23C93F8;
    v48 = WitnessTable;
    type metadata accessor for CRDictionary();
    v24 = v38;
    CRDictionary.subscript.getter(v38);
    v25 = (*(*(v7 - 8) + 48))(v24, 1, v7);
    (*(v41 + 8))(v24, v42);
    v26 = *(v18 + 8);
    v26(v17, v6);
    if (v25 == 1)
    {
      v20 = 0;
      return v20 & 1;
    }

    v44 = v43;
    v27 = v37;
    v45 = v36;
    v30(v37, v33, v32);
    result = v31(v27, 1, v6);
    if (result != 1)
    {
      v28 = sub_1AE18B234(v27, v35, v34);
      v26(v27, v6);
      v20 = !v28;
      return v20 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE182774(void (*a1)(void, void), void *a2)
{
  v54 = a1;
  v3 = a2[2];
  v4 = sub_1AE23D7CC();
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v45 - v6;
  v52 = *(v3 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[3];
  v11 = a2[4];
  v50 = a2;
  v12 = type metadata accessor for TreeNode();
  v13 = sub_1AE23D7CC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v18 = *(v12 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v46 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v45 - v26;
  WitnessTable = swift_getWitnessTable();
  v55 = v3;
  v56 = v12;
  v57 = v10;
  v58 = v11;
  v59 = &off_1F23C93F8;
  v60 = WitnessTable;
  type metadata accessor for CRDictionary();
  CRDictionary.subscript.getter(v17);
  if ((*(v18 + 48))(v17, 1, v12) == 1)
  {
    return (*(v14 + 8))(v17, v13);
  }

  (*(v18 + 32))(v27, v17, v12);
  v30 = *(v18 + 16);
  v45 = v27;
  v30(v24, v27, v12);
  v31 = sub_1AE23D38C();
  swift_getWitnessTable();
  sub_1AE23CB1C();
  v32 = v53;
  v33 = sub_1AE23CB6C();
  v35 = v3;
  if (*v34)
  {
    v36 = v54;
    sub_1ADFB1024(v54, v31);
    v33(&v55, 0);
  }

  else
  {
    v33(&v55, 0);
    v36 = v54;
  }

  v54 = *(v18 + 8);
  v54(v24, v12);
  sub_1ADFB1024(v36, v31);
  v37 = v32[1];
  v38 = v32[2];
  v55 = *v32;
  v56 = v37;
  v57 = v38;

  v39 = v51;
  v40 = v50;
  sub_1AE18B4D8(v50, v51);

  v41 = v52;
  if ((*(v52 + 48))(v39, 1, v35) == 1)
  {
    v54(v45, v12);
    return (*(v48 + 8))(v39, v49);
  }

  else
  {
    v42 = v47;
    (*(v41 + 32))(v47, v39, v35);
    v43 = v46;
    (*(v41 + 56))(v46, 1, 1, v35);
    sub_1ADFB12F0(v42, v43, v40);
    v44 = v54;
    v54(v43, v12);
    (*(v41 + 8))(v42, v35);
    return v44(v45, v12);
  }
}

uint64_t sub_1AE182D10(uint64_t a1, void *a2)
{
  v90 = a1;
  v4 = a2[2];
  v3 = a2[3];
  v74 = a2;
  v5 = a2[4];
  v89 = v3;
  v6 = type metadata accessor for TreeNode();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v77 = v70 - v9;
  v104 = v10;
  v11 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v95 = v70 - v14;
  v15 = *(v11 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v100 = v70 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v103 = v70 - v23;
  v78 = *(v4 - 8);
  v24 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v4;
  v72 = sub_1AE23D7CC();
  v28 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v94 = v70 - v29;
  v99 = v2;
  v30 = *(v2 + 16);
  v97 = v5;
  if ((v30 & 0xC000000000000001) != 0)
  {

    sub_1AE23D93C();
    result = sub_1AE23D36C();
    v30 = v113;
    v32 = v114;
    v33 = v115;
    v91 = v116;
    v34 = v117;
  }

  else
  {
    v35 = -1 << *(v30 + 32);
    v36 = v15;
    v37 = ~v35;
    v38 = -v35;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v34 = v39 & *(v30 + 56);

    v33 = v37;
    v15 = v36;
    v32 = v30 + 56;
    v91 = 0;
  }

  v76 = 0;
  v102 = (v78 + 56);
  v70[1] = v33;
  v40 = (v33 + 64) >> 6;
  v41 = (v78 + 16);
  v85 = (v78 + 32);
  v84 = (v7 + 56);
  v83 = (v15 + 16);
  v82 = (v7 + 48);
  v71 = (v7 + 32);
  v80 = (v7 + 8);
  v96 = (v15 + 8);
  v75 = (v12 + 8);
  v81 = (v78 + 8);
  v79 = v19;
  v42 = v95;
  v43 = v103;
  v92 = v30;
  v93 = v32;
  v86 = v40;
  v98 = (v78 + 16);
  v88 = v27;
  v87 = v11;
  while (1)
  {
    v45 = v94;
    if ((v30 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_1AE23D9AC())
    {
LABEL_28:
      (*v102)(v45, 1, 1, v105);
      result = sub_1ADDDCE74();
      if (v76)
      {
        return sub_1AE189934(0, v74);
      }

      return result;
    }

    v46 = v27;
    sub_1AE23DFEC();
    swift_unknownObjectRelease();
    v48 = v98;
LABEL_22:
    v51 = *v102;
    v52 = v105;
    (*v102)(v45, 0, 1, v105);
    (*v85)(v46, v45, v52);
    v53 = v104;
    WitnessTable = swift_getWitnessTable();
    v107 = v52;
    v108 = v53;
    v109 = v89;
    v110 = v97;
    v111 = &off_1F23C93F8;
    v112 = WitnessTable;
    type metadata accessor for CRDictionary();
    CRDictionary.subscript.getter(v43);
    v55 = v100;
    (*v48)(v100, v90, v52);
    v95 = v51;
    v51(v55, 0, 1, v52);
    v56 = v55;
    (*v84)(v55, 0, 1, v53);
    v57 = *(TupleTypeMetadata2 + 48);
    v58 = *v83;
    v59 = v87;
    (*v83)(v42, v43, v87);
    v58(&v42[v57], v56, v59);
    v60 = *v82;
    if ((*v82)(v42, 1, v53) == 1)
    {
      v61 = *v96;
      (*v96)(v56, v59);
      v61(v43, v59);
      v62 = v60(&v42[v57], 1, v104);
      v40 = v86;
      if (v62 != 1)
      {
        goto LABEL_9;
      }

      v61(v42, v59);
      v27 = v88;
LABEL_27:
      v76 = 1;
      v69 = v77;
      (v95)(v77, 1, 1, v105);
      sub_1ADFB12F0(v27, v69, v74);
      (*v80)(v69, v104);
      goto LABEL_10;
    }

    v63 = v104;
    v64 = v79;
    v58(v79, v42, v59);
    v65 = v60(&v42[v57], 1, v63);
    v40 = v86;
    if (v65 == 1)
    {
      v44 = *v96;
      (*v96)(v100, v59);
      v44(v103, v59);
      (*v80)(v64, v63);
LABEL_9:
      (*v75)(v42, TupleTypeMetadata2);
      v27 = v88;
      goto LABEL_10;
    }

    v66 = v77;
    (*v71)(v77, &v42[v57], v63);
    swift_getWitnessTable();
    v106 = *(v97 + 8);
    swift_getWitnessTable();
    v73 = sub_1AE23E0AC();
    v67 = *v80;
    (*v80)(v66, v63);
    v68 = *v96;
    (*v96)(v100, v59);
    v68(v103, v59);
    v67(v79, v63);
    v68(v42, v59);
    v27 = v88;
    if (v73)
    {
      goto LABEL_27;
    }

LABEL_10:
    result = (*v81)(v27, v105);
    v43 = v103;
    v30 = v92;
    v32 = v93;
    v41 = v98;
  }

  if (v34)
  {
    v46 = v27;
    v47 = v91;
LABEL_21:
    v50 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v48 = v41;
    (*(v78 + 16))(v94, *(v30 + 48) + *(v78 + 72) * (v50 | (v47 << 6)), v105);
    goto LABEL_22;
  }

  v49 = v91;
  while (1)
  {
    v47 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v47 >= v40)
    {
      goto LABEL_28;
    }

    v34 = *(v32 + 8 * v47);
    ++v49;
    if (v34)
    {
      v46 = v27;
      v91 = v47;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t CRUnorderedTree.newRefs(from:)(uint64_t *a1, void *a2)
{
  v3 = *v2;
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  v7 = type metadata accessor for CRDictionary();
  v8 = CRDictionary.newRefs(from:)(v10, v7);

  return v8;
}

uint64_t CRUnorderedTree.actionUndoingDifference(from:)@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  v12[0] = *a1;
  v12[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  v9 = type metadata accessor for CRDictionary();
  CRDictionary.actionUndoingDifference(from:)(v12, v9, v13);

  if (v13[0])
  {
    v11 = v13[1];
  }

  else
  {
    v11 = 0;
  }

  *a3 = v13[0];
  a3[1] = v11;
  return result;
}

uint64_t *CRUnorderedTree.apply(_:)(uint64_t *result, void *a2)
{
  if (*result)
  {
    v2 = result[1];
    v8[0] = *result;
    v8[1] = v2;
    v3 = a2[2];
    v4 = a2[3];
    v5 = a2[4];
    type metadata accessor for TreeNode();

    swift_getWitnessTable();
    v7 = type metadata accessor for CRDictionary();
    CRDictionary.apply(_:)(v8, v7);
    sub_1ADE42CB8(v8[0]);
    return sub_1AE189934(1, a2);
  }

  return result;
}

uint64_t CRUnorderedTree.hasDelta(from:)(void **a1, void *a2)
{
  v3 = *v2;
  v9[0] = *a1;
  v9[1] = v3;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  type metadata accessor for CRDictionary();
  v7 = CRDictionary.hasDelta(from:)(v9);

  return v7 & 1;
}

uint64_t CRUnorderedTree.delta(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a1;
  v36 = a4;
  v5 = a3[2];
  v6 = a3[3];
  v7 = a3[4];
  v8 = type metadata accessor for TreeNode();
  WitnessTable = swift_getWitnessTable();
  v38 = v5;
  v39 = v8;
  v40 = v6;
  v41 = v7;
  v42 = &off_1F23C93F8;
  v43 = WitnessTable;
  v10 = type metadata accessor for CRDictionary.MergeableDelta();
  v11 = sub_1AE23D7CC();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - v13;
  v15 = *(v10 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v31 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  v22 = *a2;
  v23 = *v35;
  v37[0] = v22;
  v37[1] = v23;

  v35 = v5;
  v38 = v5;
  v39 = v8;
  v40 = v6;
  v41 = v7;
  v42 = &off_1F23C93F8;
  v43 = WitnessTable;
  v24 = type metadata accessor for CRDictionary();
  CRDictionary.delta(_:from:)(v34, v37, v24, v14);

  if ((*(v15 + 48))(v14, 1, v10) == 1)
  {
    (*(v32 + 8))(v14, v33);
    v25 = 1;
    v26 = v36;
  }

  else
  {
    v27 = *(v15 + 32);
    v27(v21, v14, v10);
    v28 = v31;
    v27(v31, v21, v10);
    v26 = v36;
    sub_1AE18ECF0(v28, v36);
    v25 = 0;
  }

  v29 = type metadata accessor for CRUnorderedTree.MergeableDelta();
  return (*(*(v29 - 8) + 56))(v26, v25, 1, v29);
}

uint64_t CRUnorderedTree.canMerge(delta:)(uint64_t *a1, void *a2)
{
  v8 = *v2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  type metadata accessor for CRDictionary();
  LOBYTE(a1) = CRDictionary.canMerge(delta:)(a1);

  return a1 & 1;
}

uint64_t CRUnorderedTree.merge(delta:)(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v7 = a2[2];
  type metadata accessor for TreeNode();
  swift_getWitnessTable();
  v5 = type metadata accessor for CRDictionary();
  return CRDictionary.merge(delta:)(a1, v5) & 1;
}

uint64_t CRUnorderedTree.copy(renamingReferences:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v12[6] = *v3;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for TreeNode();

  v12[0] = v6;
  v12[1] = v9;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = &off_1F23C93F8;
  v12[5] = swift_getWitnessTable();
  v10 = type metadata accessor for CRDictionary();
  CRDictionary.copy(renamingReferences:)(a1, v10, v12);

  return sub_1AE1897F0(v12, v6, v8, a3);
}

uint64_t CRUnorderedTree.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *v3;
  v7 = *(v3 + 2);
  if (!a1)
  {
    a1 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = a1;

  CRUnorderedTree.copy(renamingReferences:)(&v9, a2, a3);
}

uint64_t CRUnorderedTree.visitReferences(_:)(void *a1, void *a2)
{
  v9 = *v2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  v7 = type metadata accessor for CRDictionary();
  CRDictionary.visitReferences(_:)(a1, v7);
}

Swift::Bool __swiftcall CRUnorderedTree.needToFinalizeTimestamps()()
{
  v7 = *v1;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  type metadata accessor for CRDictionary();
  v5 = CRDictionary.needToFinalizeTimestamps()();

  return v5;
}

uint64_t CRUnorderedTree.finalizeTimestamps(_:)(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v7 = a2[2];
  type metadata accessor for TreeNode();
  swift_getWitnessTable();
  v5 = type metadata accessor for CRDictionary();
  return CRDictionary.finalizeTimestamps(_:)(a1, v5);
}

uint64_t CRUnorderedTree.merge(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *a1;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = type metadata accessor for TreeNode();

  v12[0] = v5;
  v12[1] = v8;
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = &off_1F23C93F8;
  v12[5] = swift_getWitnessTable();
  v9 = type metadata accessor for CRDictionary();
  CRDictionary.merge(_:)(&v13, v9, v12);

  v10 = v12[0];
  LOBYTE(v5) = BYTE2(v12[0]);
  result = sub_1AE189934(1, a2);
  *a3 = v10;
  *(a3 + 2) = v5;
  return result;
}

uint64_t CRUnorderedTree.merge(_:)(__int128 *a1, void *a2)
{
  v2 = *(a1 + 2);
  v4 = *a1;
  v5 = v2;
  return CRUnorderedTree.merge(_:)(&v4, a2, v6);
}

double CRUnorderedTree.init(from:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for TreeNode();

  swift_getWitnessTable();
  CRDictionary.init(from:)(a1, a2, v11, a3, a4, &off_1F23C93F8, &v17);
  if (v5)
  {
  }

  else
  {
    v14 = v17;
    sub_1AE1897F0(&v14, a2, a4, &v15);

    v13 = v16;
    result = *&v15;
    *a5 = v15;
    *(a5 + 16) = v13;
  }

  return result;
}

uint64_t CRUnorderedTree.encode(to:)(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  v8 = type metadata accessor for CRDictionary();
  CRDictionary.encode(to:)(a1, v8);
}

void CRUnorderedTree.minEncodingVersion.getter(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v7 = *v2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[2];
  type metadata accessor for TreeNode();
  swift_getWitnessTable();
  type metadata accessor for CRDictionary();
  CRDictionary.minEncodingVersion.getter(a2);
}

double CRUnorderedTree.init(defaultState:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  CRUnorderedTree.init()(a1, a2, &v6);
  v4 = v7;
  result = *&v6;
  *a3 = v6;
  *(a3 + 16) = v4;
  return result;
}

uint64_t sub_1AE1847AC(void (**a1)(char *, uint64_t, uint64_t), void *a2)
{
  v158 = a1;
  v3 = a2[2];
  v4 = a2[4];
  v148 = a2[3];
  v176 = v4;
  v5 = type metadata accessor for TreeNode();
  v6 = sub_1AE23D11C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v171 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v179 = &v137 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v170 = &v137 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v173 = &v137 - v17;
  v137 = v18;
  MEMORY[0x1EEE9AC00](v16);
  v147 = &v137 - v19;
  v144 = sub_1AE23D7CC();
  v174 = *(v144 - 8);
  v20 = *(v174 + 64);
  v21 = MEMORY[0x1EEE9AC00](v144);
  v155 = &v137 - v22;
  v23 = *(v5 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v21);
  v141 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v143 = &v137 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v142 = &v137 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v177 = &v137 - v31;
  v32 = swift_getTupleTypeMetadata2();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v32);
  v160 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = MEMORY[0x1EEE9AC00](v35);
  v157 = &v137 - v38;
  v138 = v39;
  MEMORY[0x1EEE9AC00](v37);
  v156 = &v137 - v40;
  swift_getTupleTypeMetadata2();
  v41 = sub_1AE23D05C();
  WitnessTable = swift_getWitnessTable();
  v181 = v5;
  v178 = v6;
  v164 = WitnessTable;
  v43 = sub_1ADDEAF38(v41, v5, v6, WitnessTable);

  v44 = *(v2 + 16);

  *(v2 + 16) = v43;
  v45 = v158;
  v46 = sub_1AE23D05C();
  v185 = v46;
  v47 = sub_1AE23D0AC();
  v172 = v2;
  v180 = v3;
  v166 = TupleTypeMetadata2;
  v161 = v8;
  if (!v47)
  {
    goto LABEL_21;
  }

  v48 = v8;
  v49 = 0;
  v154 = *(v32 + 48);
  v175 = (v33 + 16);
  v153 = v3 - 8;
  v165 = (v23 + 32);
  v152 = *(v2 + 24);
  v151 = (v48 + 48);
  v159 = (v23 + 8);
  v150 = (v33 + 8);
  v140 = (v174 + 8);
  v139 = v23;
  v145 = (v23 + 16);
  v50 = v157;
  v146 = v32;
  v149 = v33;
  while (1)
  {
    v69 = sub_1AE23D08C();
    sub_1AE23D00C();
    if ((v69 & 1) == 0)
    {
      break;
    }

    v70 = v45 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v49;
    v71 = v156;
    v174 = *(v33 + 16);
    (v174)(v156, v70, v32);
    v72 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_19;
    }

LABEL_8:
    v169 = v72;
    v73 = *(v32 + 48);
    v74 = *(v3 - 8);
    v75 = *(v74 + 32);
    v167 = (v74 + 32);
    v168 = v75;
    (v75)(v50, v71, v3);
    v76 = *v165;
    (*v165)(v50 + v73, &v71[v154], v181);
    if (sub_1AE23D37C())
    {
      (*(v74 + 56))(v177, 1, 1, v3);
    }

    else
    {
      v77 = v160;
      (v174)(v160, v50, v32);
      (v76)(v177, v77 + *(v32 + 48), v181);
      (*(v74 + 8))(v77, v3);
    }

    v184 = v185;
    v78 = sub_1AE23D11C();
    swift_getWitnessTable();
    v79 = v155;
    sub_1AE23CBEC();
    if ((*v151)(v79, 1, TupleTypeMetadata2) == 1)
    {
      v162 = v78;
      v163 = v49;
      (*v140)(v79, v144);
    }

    else
    {
      v80 = *&v79[*(TupleTypeMetadata2 + 48)];

      (v76)(v143, v79, v181);
      v81 = v142;
      v76();
      swift_getWitnessTable();
      sub_1AE23D7CC();
      v182 = *(v176 + 8);
      swift_getWitnessTable();
      if (sub_1AE23E0AC())
      {
        v82 = sub_1AE23D0AC();
        v83 = v82 - 1;
        if (__OFSUB__(v82, 1))
        {
          goto LABEL_40;
        }

        sub_1AE23D04C();
        v84 = v185;
        sub_1ADF86080(v83, v185);
        v85 = v84 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v83 + *(TupleTypeMetadata2 + 48);
        v86 = v157;
        sub_1ADE17700(v157, v178);
        v87 = *v159;
        v88 = v81;
        v50 = v86;
        v89 = v181;
        (*v159)(v88, v181);
        v87(v177, v89);
        (*v150)(v86, v32);
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v78, v90);
        goto LABEL_5;
      }

      v162 = v78;
      v163 = v49;
      (*v159)(v81, v181);
    }

    v51 = v180;
    v52 = sub_1ADE0FC48(v180, v180);
    v53 = *(v52 + 52);
    v54 = *(v74 + 72);
    v55 = (*(v74 + 80) + *(v52 + 48)) & ~*(v74 + 80);
    swift_allocObject();
    v56 = sub_1AE23CFFC();
    v58 = v57;
    v59 = v160;
    v60 = v157;
    v32 = v146;
    (v174)(v160, v157, v146);
    v61 = *(v32 + 48);
    (v168)(v58, v59, v51);
    sub_1ADE0FCBC();
    v62 = *v159;
    v63 = v181;
    (*v159)(v59 + v61, v181);
    v64 = v166;
    v65 = *(v166 + 48);
    v66 = v147;
    v67 = v177;
    (*v145)(v147, v177, v63);
    *&v66[v65] = v56;
    sub_1AE23D0CC();
    v62(v67, v63);
    TupleTypeMetadata2 = v64;
    v50 = v60;
    (*v150)(v60, v32);
    v49 = v163;
LABEL_5:
    v45 = v158;
    v68 = sub_1AE23D0AC();
    v49 = (v49 + 1);
    v3 = v180;
    v33 = v149;
    if (v169 == v68)
    {
      goto LABEL_20;
    }
  }

  v91 = sub_1AE23DAAC();
  if (v138 != 8)
  {
    goto LABEL_41;
  }

  v184 = v91;
  v71 = v156;
  v174 = *v175;
  (v174)(v156, &v184, v32);
  swift_unknownObjectRelease();
  v72 = v49 + 1;
  if (!__OFADD__(v49, 1))
  {
    goto LABEL_8;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v46 = v185;
  v23 = v139;
LABEL_21:
  v92 = sub_1AE23D0AC();
  v93 = v161;
  if (v92)
  {
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v165 = *(TupleTypeMetadata2 + 48);
    v177 = (v161 + 16);
    v163 = (v23 + 32);
    v158 = (v23 + 16);
    v160 = (v161 + 8);
    v159 = (v23 + 8);
    v162 = v46;
    while (1)
    {
      v174 = v95;
      v175 = v97;
      v102 = sub_1AE23D08C();
      sub_1AE23D00C();
      if (v102)
      {
        v103 = *(v93 + 16);
        v103(v173, v46 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v94, TupleTypeMetadata2);
        v104 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        v134 = sub_1AE23DAAC();
        if (v137 != 8)
        {
          goto LABEL_42;
        }

        v184 = v134;
        v103 = *v177;
        (*v177)(v173, &v184, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v104 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      v167 = v104;
      v168 = v94;
      v105 = *(v165 + v173);
      v169 = v96;
      v106 = *(TupleTypeMetadata2 + 48);
      v107 = v170;
      (*v163)(v170);
      *&v107[v106] = v105;
      v108 = v179;
      v103(v179, v107, TupleTypeMetadata2);
      v109 = *(v108 + *(TupleTypeMetadata2 + 48));

      v110 = swift_allocObject();
      v111 = v180;
      v112 = v148;
      v110[2] = v180;
      v110[3] = v112;
      v113 = v176;
      v110[4] = v176;
      sub_1ADDDCE80(v174);
      v114 = v171;
      v103(v171, v107, TupleTypeMetadata2);
      v184 = *&v114[*(TupleTypeMetadata2 + 48)];
      v115 = swift_allocObject();
      *(v115 + 16) = v111;
      *(v115 + 24) = v112;
      *(v115 + 32) = v113;
      *(v115 + 40) = sub_1ADE176F4;
      *(v115 + 48) = v110;
      sub_1ADDDCE80(v169);
      v116 = v172;
      v117 = *(v172 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      v118 = *(v116 + 16);
      v183 = v118;
      v119 = v108;
      v120 = v164;
      v121 = sub_1ADDFFB6C(v119, v181, v164);
      if (__OFADD__(*(v118 + 16), (v122 & 1) == 0))
      {
        break;
      }

      v123 = v121;
      v124 = v122;
      sub_1AE23DC0C();
      if (sub_1AE23DBEC())
      {
        v125 = sub_1ADDFFB6C(v179, v181, v120);
        TupleTypeMetadata2 = v166;
        v127 = v168;
        if ((v124 & 1) != (v126 & 1))
        {
          goto LABEL_43;
        }

        v123 = v125;
        v128 = v172;
      }

      else
      {
        v128 = v172;
        TupleTypeMetadata2 = v166;
        v127 = v168;
      }

      v129 = v183;
      *(v128 + 16) = v183;
      if ((v124 & 1) == 0)
      {
        v130 = *(v115 + 16);
        v131 = *(v115 + 24);
        v132 = *(v115 + 32);
        v133 = *(v115 + 48);
        sub_1ADE176C4(*(v115 + 40), &v183);
        (*v158)(v141, v179, v181);
        sub_1AE23DBFC();
      }

      v98 = *(v129 + 56) + 8 * v123;
      swift_getWitnessTable();
      sub_1AE23D0BC();
      (*v160)(v170, TupleTypeMetadata2);
      v99 = *v159;
      v100 = v181;
      (*v159)(v171, v181);
      v99(v179, v100);
      v46 = v162;
      v101 = sub_1AE23D0AC();
      v94 = v127 + 1;
      v96 = sub_1AE18F94C;
      v95 = sub_1ADE176F4;
      v97 = v115;
      v93 = v161;
      if (v167 == v101)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    result = sub_1AE23E27C();
    __break(1u);
  }

  else
  {
LABEL_37:
    v95 = 0;
    v96 = 0;
LABEL_38:
    v135 = v95;

    sub_1ADDDCE80(v135);
    return sub_1ADDDCE80(v96);
  }

  return result;
}

BOOL sub_1AE1857FC(char *a1, uint64_t a2, void *a3)
{
  v31 = a2;
  v35 = a3;
  v5 = a3[2];
  v6 = sub_1AE23D7CC();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = *(v5 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v34 = *v3;
  v33 = *(v3 + 1);
  v32 = v3[3];
  v18 = *(v10 + 16);
  v10 += 16;
  v29 = v18;
  v18(&v27 - v16, a1, v5);
  v19 = (v10 - 8);
  v20 = (v10 + 32);
  v30 = v10;
  v21 = (v10 + 16);
  while (1)
  {
    v36 = v34;
    v37 = v33;
    v38 = v32;
    CROrderedTree.parent(of:)(v17, v35, v9);
    v22 = *v19;
    (*v19)(v17, v5);
    v23 = (*v20)(v9, 1, v5);
    if (v23 == 1)
    {
      break;
    }

    (*v21)(v14, v9, v5);
    v29(v17, v14, v5);
    v24 = *(v35[4] + 8);
    v25 = sub_1AE23CCBC();
    v22(v14, v5);
    if (v25)
    {
      v22(v17, v5);
      return v23 != 1;
    }
  }

  (*(v27 + 8))(v9, v28);
  return v23 != 1;
}

uint64_t sub_1AE185AAC@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v69 = a2;
  v5 = a1[2];
  v6 = a1[4];
  v90 = a1[3];
  v102 = v6;
  v7 = type metadata accessor for TreeNode();
  v95 = *(v7 - 8);
  v8 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v67 - v9;
  v89 = v10;
  v11 = sub_1AE23D7CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v67 = *(TupleTypeMetadata2 - 8);
  v12 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v88 = &v67 - v13;
  v103 = v11;
  v14 = *(v11 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v67 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  v73 = sub_1AE23D7CC();
  v68 = *(v73 - 8);
  v23 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v25 = &v67 - v24;
  v26 = *(v5 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v104 = *v3;
  v105 = &v67 - v32;
  v101 = *(v3 + 1);
  v33 = v3[3];
  v34 = *(v26 + 16);
  v26 += 16;
  v97 = v34;
  v34();
  v35 = a1;
  v36 = (v26 - 8);
  v100 = (v26 + 32);
  v37 = (v26 + 16);
  v98 = v26;
  v93 = (v26 + 40);
  v84 = (v95 + 56);
  v83 = (v14 + 16);
  v82 = (v95 + 48);
  v70 = (v95 + 32);
  v72 = (v95 + 8);
  v85 = (v14 + 8);
  v81 = v101;
  v99 = v22;
  v91 = v5;
  v79 = v35;
  v78 = v25;
  v87 = v30;
  v86 = (v26 + 16);
  v77 = v33;
  v96 = (v26 - 8);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v38 = v105;
        v107 = v104;
        v108 = v101;
        v109 = v33;
        v39 = v35;
        CROrderedTree.parent(of:)(v105, v35, v25);
        v40 = *v36;
        (*v36)(v38, v5);
        if ((*v100)(v25, 1, v5) == 1)
        {
          (*(v68 + 8))(v25, v73);
          return (*v93)(v69, 1, 1, v5);
        }

        v41 = *v37;
        (*v37)(v30, v25, v5);
        (v97)(v105, v30, v5);
        v42 = v102;
        if (sub_1AE23D37C())
        {
          break;
        }

        v36 = v96;
        v40(v30, v5);
        v35 = v39;
      }

      v76 = v41;
      v112 = v104;
      v113 = v81;
      v43 = v89;
      WitnessTable = swift_getWitnessTable();
      v107 = v5;
      v108 = __PAIR128__(v90, v43);
      v109 = v42;
      v110 = &off_1F23C93F8;
      v111 = WitnessTable;
      v45 = type metadata accessor for CROrderedDictionary();
      v46 = v99;
      CROrderedDictionary.subscript.getter(v105, v45);
      v47 = v94;
      v75 = *v93;
      v75(v94, 1, 1, v5);
      (*v84)(v47, 0, 1, v43);
      v48 = *(TupleTypeMetadata2 + 48);
      v49 = *v83;
      v50 = v88;
      v51 = v103;
      (*v83)(v88, v46, v103);
      v95 = v48;
      v49(&v50[v48], v47, v51);
      v52 = *v82;
      if ((*v82)(v50, 1, v43) != 1)
      {
        break;
      }

      v53 = *v85;
      v54 = v47;
      v55 = v103;
      (*v85)(v54, v103);
      v53(v99, v55);
      v30 = v87;
      v36 = v96;
      v40(v87, v5);
      v56 = v52(&v50[v95], 1, v43) == 1;
      v57 = v50;
      if (!v56)
      {
        goto LABEL_14;
      }

      v53(v50, v103);
      v35 = v79;
      v25 = v78;
      v37 = v86;
      v5 = v91;
      v33 = v77;
    }

    v58 = v80;
    v49(v80, v50, v103);
    v59 = v95;
    if (v52(&v50[v95], 1, v43) == 1)
    {
      break;
    }

    v60 = v71;
    (*v70)(v71, &v50[v59], v43);
    swift_getWitnessTable();
    v106 = *(v102 + 8);
    swift_getWitnessTable();
    LODWORD(v95) = sub_1AE23E0AC();
    v74 = *v72;
    v74(v60, v43);
    v61 = *v85;
    v62 = v103;
    (*v85)(v94, v103);
    v61(v99, v62);
    v30 = v87;
    v5 = v91;
    v36 = v96;
    v40(v87, v91);
    v74(v80, v43);
    v61(v50, v62);
    v35 = v79;
    v25 = v78;
    v37 = v86;
    v33 = v77;
    if ((v95 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v64 = *v85;
  v65 = v103;
  (*v85)(v94, v103);
  v64(v99, v65);
  v40(v87, v91);
  (*v72)(v58, v43);
  v57 = v50;
LABEL_14:
  (*(v67 + 8))(v57, TupleTypeMetadata2);
  v5 = v91;
LABEL_15:
  v66 = v69;
  v76(v69, v105, v5);
  return v75(v66, 0, 1, v5);
}

BOOL CROrderedTree.contains(_:)(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for TreeNode();
  v8 = sub_1AE23D7CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  v13 = v2[1];
  v18[6] = *v2;
  v18[7] = v13;
  WitnessTable = swift_getWitnessTable();
  v18[0] = v4;
  v18[1] = v7;
  v18[2] = v5;
  v18[3] = v6;
  v18[4] = &off_1F23C93F8;
  v18[5] = WitnessTable;
  v15 = type metadata accessor for CROrderedDictionary();
  CROrderedDictionary.subscript.getter(a1, v15);
  v16 = (*(*(v7 - 8) + 48))(v12, 1, v7) != 1;
  (*(v9 + 8))(v12, v8);
  return v16;
}

uint64_t CROrderedTree.remove(_:)(uint64_t a1, void *a2)
{
  v67 = a1;
  v3 = a2[2];
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v56 = v6;
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AE23D7CC();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v66 = v53 - v10;
  v11 = a2[3];
  v12 = a2[4];
  v13 = type metadata accessor for TreeNode();
  v68 = sub_1AE23D7CC();
  v62 = *(v68 - 1);
  v14 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v16 = v53 - v15;
  v17 = *(v13 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v59 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v65 = v53 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v53 - v24;
  v26 = v69[1];
  v76 = *v69;
  v77 = v26;
  WitnessTable = swift_getWitnessTable();
  v70 = v3;
  v71 = v13;
  v60 = v12;
  v61 = v11;
  v72 = v11;
  v73 = v12;
  v28 = v17;
  v74 = &off_1F23C93F8;
  v75 = WitnessTable;
  v29 = type metadata accessor for CROrderedDictionary();
  CROrderedDictionary.subscript.getter(v67, v29);
  if ((*(v28 + 48))(v16, 1, v13) == 1)
  {
    return (*(v62 + 8))(v16, v68);
  }

  v54 = v29;
  v62 = v28;
  v31 = *(v28 + 32);
  v58 = v25;
  v55 = v13;
  v31(v25, v16, v13);
  v32 = *v69;
  v33 = v69[1];
  v34 = v69[2];
  v57 = v69 + 2;
  v35 = v69[3];
  v53[2] = v69 + 3;
  v70 = v32;
  v71 = v33;
  v72 = v34;
  v73 = v35;
  v36 = v66;
  v68 = *(v4 + 16);
  v68(v66, v67, v3);
  v37 = *(v4 + 56);
  v53[1] = v4 + 56;
  v53[0] = v37;
  v37(v36, 0, 1, v3);

  v38 = CROrderedTree.children(of:)(v36, a2);
  (*(v63 + 8))(v36, v64);

  if (sub_1AE23D0AC())
  {
    v39 = 0;
    do
    {
      v40 = sub_1AE23D08C();
      sub_1AE23D00C();
      if (v40)
      {
        v68(v7, v38 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v39, v3);
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = sub_1AE23DAAC();
        if (v56 != 8)
        {
          __break(1u);
          return result;
        }

        v70 = result;
        v68(v7, &v70, v3);
        swift_unknownObjectRelease();
        v41 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      CROrderedTree.remove(_:)(v7, a2);
      (*(v4 + 8))(v7, v3);
      ++v39;
    }

    while (v41 != sub_1AE23D0AC());
  }

  v42 = v55;
  (*(v62 + 16))(v65, v58, v55);
  v43 = sub_1AE23D11C();
  swift_getWitnessTable();
  v44 = sub_1AE23CB1C();
  v45 = sub_1AE23CB6C();
  v47 = *v46;
  v64 = v44;
  if (v47)
  {
    v48 = *(v60 + 8);
    v49 = v67;
    sub_1ADE5726C(v67, v43);
    v45(&v70, 0);
    v50 = v66;
  }

  else
  {
    v45(&v70, 0);
    v50 = v66;
    v49 = v67;
  }

  v51 = *(v62 + 8);
  v51(v65, v42);
  CROrderedDictionary.removeValue(forKey:)(v49, v54);
  v52 = sub_1AE23D38C();
  sub_1ADFB1024(v49, v52);
  v68(v50, v49, v3);
  (v53[0])(v50, 0, 1, v3);
  sub_1ADE1E114(v50, v3, v59);
  v70 = 0;
  sub_1AE23CB8C();
  return (v51)(v58, v42);
}

uint64_t CROrderedTree.parent(of:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = type metadata accessor for TreeNode();
  v10 = sub_1AE23D7CC();
  v24 = *(v10 - 8);
  v25 = v10;
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = *v3;
  v15 = v3[1];
  v16 = v3[3];
  if (sub_1AE23D37C())
  {
    v17 = *(*(v6 - 8) + 56);

    return v17(a3, 1, 1, v6);
  }

  else
  {
    v23 = a3;
    v32 = v14;
    v33 = v15;
    WitnessTable = swift_getWitnessTable();
    v26 = v6;
    v27 = v9;
    v28 = v7;
    v29 = v8;
    v30 = &off_1F23C93F8;
    v31 = WitnessTable;
    v20 = type metadata accessor for CROrderedDictionary();
    CROrderedDictionary.subscript.getter(a1, v20);
    v21 = *(v9 - 8);
    if ((*(v21 + 48))(v13, 1, v9) == 1)
    {
      (*(v24 + 8))(v13, v25);
      return (*(*(v6 - 8) + 56))(v23, 1, 1, v6);
    }

    else
    {
      sub_1ADE17570(v9, v23);
      return (*(v21 + 8))(v13, v9);
    }
  }
}

uint64_t sub_1AE18707C(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v65 = a2[4];
  v66 = v4;
  v6 = type metadata accessor for TreeNode();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v60 = &v48 - v12;
  v52 = *(v5 - 8);
  v13 = v52[8];
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1AE23D7CC();
  v15 = *(v67 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](v67);
  v64 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - v22;
  v24 = *v2;
  v62 = v2[1];
  v63 = v24;
  sub_1AE23DDAC();
  v25 = *(v7 + 72);
  v26 = v7;
  v27 = *(v7 + 80);
  swift_allocObject();
  v28 = sub_1AE23CFFC();
  v29 = *(v7 + 16);
  v29(v30, a1, v6);
  sub_1ADE0FCBC();
  v80 = v28;
  v61 = a1;
  v58 = v26 + 16;
  v57 = v29;
  v29(v23, a1, v6);
  v31 = *(v26 + 56);
  v56 = v26 + 56;
  v55 = v31;
  v31(v23, 0, 1, v6);
  v32 = v15[2];
  v54 = v15 + 2;
  v53 = v32;
  v32(v21, v23, v67);
  v68 = *(v26 + 48);
  v69 = v26 + 48;
  if (v68(v21, 1, v6) == 1)
  {
    v33 = v15[1];
LABEL_3:
    v34 = v67;
    v33(v23, v67);
    v33(v21, v34);
  }

  else
  {
    v51 = v52[6];
    v49 = (v52 + 4);
    v48 = v26;
    v35 = (v26 + 32);
    v50 = (v52 + 1);
    v52 = v15 + 1;
    while (1)
    {
      if (v51(v21, 1, v5) == 1)
      {
        (*v52)(v23, v67);
        (*(v48 + 8))(v21, v6);
        return v80;
      }

      v36 = v70;
      (*v49)(v70, v21, v5);
      v78 = v63;
      v79 = v62;
      WitnessTable = swift_getWitnessTable();
      v72 = v5;
      v73 = v6;
      v38 = v65;
      v74 = v66;
      v75 = v65;
      v76 = &off_1F23C93F8;
      v77 = WitnessTable;
      v39 = type metadata accessor for CROrderedDictionary();
      v40 = v64;
      CROrderedDictionary.subscript.getter(v36, v39);
      v41 = v40;
      if (v68(v40, 1, v6) == 1)
      {
        (*v50)(v70, v5);
        v45 = *v52;
        v46 = v67;
        (*v52)(v23, v67);
        v45(v40, v46);
        return v80;
      }

      v42 = *v35;
      v43 = v60;
      (*v35)(v60, v41, v6);
      swift_getWitnessTable();
      sub_1AE23D7CC();
      v71 = *(v38 + 8);
      swift_getWitnessTable();
      if (sub_1AE23E0AC())
      {
        break;
      }

      v57(v59, v43, v6);
      sub_1AE23D11C();
      sub_1AE23D0CC();
      (*v50)(v70, v5);
      v33 = *v52;
      v44 = v67;
      (*v52)(v23, v67);
      v42(v23, v43, v6);
      v55(v23, 0, 1, v6);
      v53(v21, v23, v44);
      if (v68(v21, 1, v6) == 1)
      {
        goto LABEL_3;
      }
    }

    (*(v48 + 8))(v43, v6);
    (*v50)(v70, v5);
    (*v52)(v23, v67);
  }

  return v80;
}

uint64_t sub_1AE1877E4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  v196 = *(v4 - 8);
  v5 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v154 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v147 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v149 = &v144 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v162 = &v144 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v152 = &v144 - v15;
  v16 = a2[2];
  v171 = sub_1AE23D7CC();
  v17 = *(v171 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v171);
  v169 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v176 = &v144 - v21;
  v146 = a2;
  v22 = a2[3];
  v23 = a2[4];
  v178 = v22;
  v24 = type metadata accessor for TreeNode();
  v25 = sub_1AE23D7CC();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v177 = &v144 - v28;
  v29 = *(v24 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v27);
  v168 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v180 = &v144 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v194 = &v144 - v36;
  v144 = v37;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v159 = &v144 - v39;
  v40 = *(v16 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v38);
  v157 = &v144 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v150 = &v144 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v167 = &v144 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v181 = &v144 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v179 = &v144 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v198 = &v144 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v158 = &v144 - v54;
  v199 = v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v56 = *(TupleTypeMetadata2 - 8);
  v145 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v174 = &v144 - v57;
  v200 = v16;
  v58 = v23;
  v210 = sub_1AE23C9EC();
  if (!sub_1AE23D0AC())
  {
  }

  v160 = v4;
  v59 = 0;
  v164 = *(TupleTypeMetadata2 + 48);
  v165 = v56;
  v166 = (v56 + 16);
  v193 = (v40 + 32);
  v186 = (v29 + 32);
  v190 = (v29 + 16);
  v182 = v40 + 16;
  v197 = v40 + 48;
  v156 = v40;
  v60 = (v40 + 8);
  v175 = (v29 + 48);
  v161 = v29;
  v61 = (v29 + 8);
  v170 = (v17 + 8);
  v148 = (v196 + 56);
  v153 = (v196 + 48);
  v62 = v180;
  v63 = v159;
  v64 = v158;
  v155 = a1;
  v163 = TupleTypeMetadata2;
  v172 = v60;
  v183 = v61;
  v195 = v58;
  while (1)
  {
    v66 = TupleTypeMetadata2;
    v67 = sub_1AE23D08C();
    sub_1AE23D00C();
    if (v67)
    {
      result = (*(v165 + 16))(v174, a1 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v59, v66);
    }

    else
    {
      result = sub_1AE23DAAC();
      if (v145 != 8)
      {
        goto LABEL_53;
      }

      v201 = result;
      (*v166)(v174, &v201, v66);
      result = swift_unknownObjectRelease();
    }

    v69 = __OFADD__(v59, 1);
    v70 = v59 + 1;
    v71 = v172;
    if (v69)
    {
      break;
    }

    v173 = v70;
    v72 = v174;
    v192 = *v193;
    (v192)(v64, v174, v200);
    v185 = *v186;
    v185(v63, &v72[v164], v199);
    v73 = v63;
    v187 = v189[3];
    if (sub_1AE23D37C())
    {
      (*v61)(v63, v199);
      (*v71)(v64, v200);
      goto LABEL_4;
    }

    v74 = *v190;
    v75 = v64;
    v76 = v194;
    v77 = v199;
    (*v190)(v194, v73, v199);
    v78 = v200;
    v79 = sub_1ADE0FC48(v200, v200);
    v80 = *(v79 + 52);
    v81 = v156;
    v82 = *(v156 + 72);
    v83 = (*(v156 + 80) + *(v79 + 48)) & ~*(v156 + 80);
    swift_allocObject();
    v84 = sub_1AE23CFFC();
    v184 = *(v81 + 16);
    v184(v85, v75, v78);
    sub_1ADE0FCBC();
    v201 = v84;
    sub_1AE23D11C();
    swift_getWitnessTable();
    v209 = sub_1AE23D39C();
    v188 = v74;
    v74(v62, v76, v77);
    v61 = v183;
    v196 = *(v81 + 48);
    if ((v196)(v62, 1, v78) == 1)
    {
      v86 = *v61;
LABEL_24:
      v112 = v199;
      v86(v194, v199);
      v63 = v159;
      v86(v159, v112);
      v64 = v158;
      (*v71)(v158, v200);

      v86(v62, v112);
      a1 = v155;
      goto LABEL_4;
    }

    v151 = v61 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v87 = v181;
    while (1)
    {
      (v192)(v198, v62, v200);
      if (sub_1AE23D37C())
      {
        v93 = *v71;
LABEL_22:
        v108 = v200;
        v93(v198, v200);
        v109 = *v61;
        v110 = v199;
        (*v61)(v194, v199);
        v111 = v159;
        v109(v159, v110);
        v63 = v111;
        v64 = v158;
        v93(v158, v108);

        a1 = v155;
        goto LABEL_23;
      }

      v89 = v200;
      v90 = v184;
      v184(v87, v198, v200);
      sub_1AE23D38C();
      v91 = v179;
      v92 = sub_1AE23D33C();
      v93 = *v71;
      (*v71)(v91, v89);
      if ((v92 & 1) == 0)
      {
        v61 = v183;
        goto LABEL_22;
      }

      v95 = v199;
      v94 = v200;
      v90(v87, v198, v200);
      sub_1AE23D33C();
      v191 = v93;
      v93(v91, v94);
      v96 = v189[1];
      v207 = *v189;
      v208 = v96;
      WitnessTable = swift_getWitnessTable();
      v201 = v94;
      v202 = v95;
      v203 = v178;
      v204 = v195;
      v205 = &off_1F23C93F8;
      v206 = WitnessTable;
      v98 = type metadata accessor for CROrderedDictionary();
      v99 = v177;
      CROrderedDictionary.subscript.getter(v198, v98);
      result = (*v175)(v99, 1, v95);
      if (result == 1)
      {
        goto LABEL_52;
      }

      v61 = v183;
      v86 = *v183;
      v100 = v194;
      v101 = v199;
      (*v183)(v194, v199);
      v185(v100, v99, v101);
      v102 = v176;
      sub_1ADE17570(v101, v176);
      if ((v196)(v102, 1, v94) != 1)
      {
        break;
      }

      v191(v198, v200);
      (*v170)(v102, v171);
LABEL_13:
      v62 = v180;
      v188(v180, v194, v199);
      v88 = (v196)(v62, 1, v200);
      v87 = v181;
      if (v88 == 1)
      {
        goto LABEL_24;
      }
    }

    v103 = v167;
    (v192)(v167, v102, v200);
    v104 = v209;
    v105 = sub_1AE23D37C();
    v106 = v191;
    if ((v105 & 1) == 0)
    {
      v107 = v200;
      v191(v103, v200);
      v106(v198, v107);
      goto LABEL_13;
    }

    v113 = *v189;
    v185 = v189[1];
    v115 = v189[2];
    v114 = v189[3];
    v187 = v113;
    v201 = v113;
    v202 = v185;
    v203 = v115;
    v204 = v114;

    v116 = sub_1AE18707C(v194, v146);

    v184(v150, v103, v200);
    v185 = *v148;
    (v185)(v152, 1, 1, v160);
    v117 = sub_1AE23D0AC();
    v184 = v104;
    if (v117)
    {
      v118 = 0;
      do
      {
        v119 = sub_1AE23D08C();
        sub_1AE23D00C();
        if (v119)
        {
          result = (v188)(v168, v116 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v118, v199);
          v120 = v162;
        }

        else
        {
          result = sub_1AE23DAAC();
          v120 = v162;
          if (v144 != 8)
          {
            goto LABEL_54;
          }

          v201 = result;
          v188(v168, &v201, v199);
          result = swift_unknownObjectRelease();
        }

        if (__OFADD__(v118, 1))
        {
          goto LABEL_51;
        }

        v187 = v118 + 1;
        v121 = v116;
        v122 = v199;
        v123 = v168;
        sub_1ADE17570(v199, v169);
        v124 = v169;
        v86(v123, v122);
        if ((v196)(v124, 1, v200) == 1)
        {
          (*v170)(v124, v171);
          v116 = v121;
        }

        else
        {
          v125 = v157;
          v192();
          v126 = v189[1];
          v201 = *v189;
          v202 = v126;
          sub_1ADE15AA0(v125, v98);
          v127 = *v153;
          v116 = v121;
          if ((*v153)(v120, 1, v160) == 1)
          {
            v106 = v191;
            v191(v125, v200);
            sub_1ADE1727C(v120);
          }

          else
          {
            sub_1ADE172E4(v120, v154);
            v128 = v152;
            v129 = v149;
            sub_1ADE17348(v152, v149);
            v130 = v160;
            v131 = v127(v129, 1, v160);
            sub_1ADE1727C(v129);
            v132 = v131 == 1;
            v106 = v191;
            if (!v132)
            {
              v135 = v147;
              sub_1ADE17348(v128, v147);
              result = v127(v135, 1, v130);
              if (result == 1)
              {
                goto LABEL_55;
              }

              v136 = *(v130 + 20);
              v137 = *(v135 + v136);
              v138 = *(v154 + v136);
              if (v137 == v138)
              {
                v139 = sub_1ADF5EB00();
                sub_1ADE173B8(v135);
                v128 = v152;
                if ((v139 & 1) == 0)
                {
                  goto LABEL_43;
                }
              }

              else
              {
                sub_1ADE173B8(v135);
                v128 = v152;
                if (v137 >= v138)
                {
LABEL_43:
                  sub_1ADE173B8(v154);
                  v106(v157, v200);
                  goto LABEL_28;
                }
              }
            }

            sub_1ADE1727C(v128);
            v133 = v150;
            v134 = v200;
            v106(v150, v200);
            sub_1ADE172E4(v154, v128);
            (v185)(v128, 0, 1, v160);
            (v192)(v133, v157, v134);
          }
        }

LABEL_28:
        ++v118;
      }

      while (v187 != sub_1AE23D0AC());
    }

    v140 = v150;
    sub_1ADE158F4(v150, v146);
    sub_1ADE1727C(v152);
    v141 = v200;
    v106(v140, v200);
    v106(v167, v141);
    v106(v198, v141);
    v142 = v199;
    v86(v194, v199);
    v63 = v159;
    v86(v159, v142);
    v143 = v158;
    v106(v158, v141);
    a1 = v155;
    v64 = v143;
LABEL_23:
    v62 = v180;
LABEL_4:
    TupleTypeMetadata2 = v163;
    v65 = sub_1AE23D0AC();
    v59 = v173;
    if (v173 == v65)
    {
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1AE188C74(uint64_t a1, void *a2)
{
  v22 = a2;
  v4 = a2[2];
  v23 = sub_1AE23D7CC();
  v5 = *(v23 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v20 - v7;
  v10 = *v2;
  v21 = v2[1];
  v9 = v21;
  v12 = v2[2];
  v11 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA1F8, &qword_1AE242320);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1AE2418F0;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1AE23DFCC();
  v14 = v31;
  *(v13 + 32) = v30;
  *(v13 + 40) = v14;
  v30 = v10;
  v31 = v9;
  v32 = v12;
  v33 = v11;
  v15 = *(v4 - 8);
  (*(v15 + 16))(v8, a1, v4);
  (*(v15 + 56))(v8, 0, 1, v4);
  v16 = v22;
  v17 = CROrderedTree.children(of:)(v8, v22);
  (*(v5 + 8))(v8, v23);
  v30 = v17;
  v24 = v4;
  v25 = *(v16 + 3);
  v26 = v10;
  v27 = v21;
  v28 = v12;
  v29 = v11;
  sub_1AE23D11C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
  swift_getWitnessTable();
  sub_1AE18F584(qword_1EB5BDA38);
  v18 = sub_1AE23CF3C();

  v30 = v13;
  sub_1ADFB6F58(v18);
  return v30;
}

uint64_t sub_1AE188F00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for CROrderedTree();
  v5 = sub_1AE188C74(a1, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1ADE0B11C(0, v6, 0);
    v7 = v15;
    v8 = (v5 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      MEMORY[0x1B26FB670](v9, v10);

      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1ADE0B11C((v11 > 1), v12 + 1, 1);
      }

      *(v15 + 16) = v12 + 1;
      v13 = v15 + 16 * v12;
      *(v13 + 32) = 8224;
      *(v13 + 40) = 0xE200000000000000;
      v8 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v7;
  return result;
}

uint64_t CROrderedTree.description.getter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = v1[3];
  sub_1AE23D38C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA250, &unk_1AE251E30);
  swift_getWitnessTable();
  sub_1AE18F584(qword_1EB5BDA38);
  sub_1AE23CF3C();

  sub_1AE18F584(&qword_1EB5B8C10);
  v2 = sub_1AE23CBFC();

  return v2;
}

uint64_t CROrderedTree.MergeableDelta.merge(delta:)(void *a1, void *a2)
{
  v2 = a1[1];
  v9[0] = *a1;
  v9[1] = v2;
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  v6 = type metadata accessor for CROrderedDictionary.MergeableDelta();
  v7 = CROrderedDictionary.MergeableDelta.merge(delta:)(v9, v6);

  return v7 & 1;
}

uint64_t CROrderedTree.MergeableDelta.visitReferences(_:)(void *a1, void *a2)
{
  v9 = *v2;
  v10 = v2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  v7 = type metadata accessor for CROrderedDictionary.MergeableDelta();
  CROrderedDictionary.MergeableDelta.visitReferences(_:)(a1, v7);
}

uint64_t CROrderedTree.MergeableDelta.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = type metadata accessor for TreeNode();
  WitnessTable = swift_getWitnessTable();
  result = CROrderedDictionary.MergeableDelta.init(from:)(a1, a2, v11, a3, a4, &off_1F23C93F8, WitnessTable, v15);
  if (!v5)
  {
    v14 = v15[1];
    *a5 = v15[0];
    a5[1] = v14;
  }

  return result;
}

uint64_t CROrderedTree.MergeableDelta.encode(to:)(uint64_t a1, void *a2)
{
  v9 = *v2;
  v10 = v2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  v7 = type metadata accessor for CROrderedDictionary.MergeableDelta();
  CROrderedDictionary.MergeableDelta.encode(to:)(a1, v7);
}

uint64_t CROrderedTree<>.encode(to:)(void *a1, void *a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  type metadata accessor for TreeNode();

  swift_getWitnessTable();
  v11 = type metadata accessor for CROrderedDictionary();
  WitnessTable = swift_getWitnessTable();
  CROrderedDictionary<>.encode(to:)(a1, v11, a3, WitnessTable);
}

uint64_t CRUnorderedTree.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for TreeNode();
  swift_getWitnessTable();
  CRDictionary.init()(&v14);
  *a3 = v14;
  v7 = sub_1AE23D05C();
  if (sub_1AE23D0AC())
  {
    v8 = sub_1AE18F13C(v7, a1, a2);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  a3[2] = v8;
  v9 = sub_1AE23D38C();
  swift_getTupleTypeMetadata2();
  v10 = sub_1AE23D05C();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1ADDEAF38(v10, v6, v9, WitnessTable);

  a3[1] = v12;
  return result;
}

uint64_t sub_1AE1897F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = *a1;
  v7 = sub_1AE23D05C();
  if (sub_1AE23D0AC())
  {
    v8 = sub_1AE18F13C(v7, a2, a3);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  a4[2] = v8;
  v9 = type metadata accessor for TreeNode();
  v10 = sub_1AE23D38C();
  swift_getTupleTypeMetadata2();
  v11 = sub_1AE23D05C();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1ADDEAF38(v11, v9, v10, WitnessTable);

  a4[1] = v13;
  v14 = type metadata accessor for CRUnorderedTree();
  return sub_1AE189934(1, v14);
}

uint64_t sub_1AE189934(int a1, void *a2)
{
  v3 = v2;
  v6 = a2[2];
  v5 = a2[3];
  v64 = a2;
  v7 = a2[4];
  v82 = v5;
  v8 = type metadata accessor for TreeNode();
  v63 = sub_1AE23D7CC();
  v83 = *(v63 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v55[-v10];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v73 = &v55[-v12];
  v65 = *(v8 - 8);
  v13 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v55[-v18];
  v66 = *(v6 - 8);
  v20 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v61 = &v55[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55[-v24];
  v26 = swift_getTupleTypeMetadata2();
  v80 = sub_1AE23D7CC();
  v84 = *(v80 - 8);
  v27 = v84[8];
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v55[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v78 = &v55[-v30];
  v57 = 0;
  v56 = a1;
  if ((a1 & 1) == 0)
  {
    v57 = v2[2];
  }

  v31 = sub_1AE23D05C();
  if (sub_1AE23D0AC())
  {
    v32 = sub_1AE18F13C(v31, v6, v7);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CD0];
  }

  v33 = v3[2];

  v3[2] = v32;
  v93 = sub_1AE23D05C();
  v91 = *v3;
  WitnessTable = swift_getWitnessTable();
  v85 = v6;
  v86 = v8;
  v87 = v82;
  v88 = v7;
  v89 = &off_1F23C93F8;
  v90 = WitnessTable;
  v77 = WitnessTable;
  v60 = type metadata accessor for CRDictionary();
  CRDictionary.makeIterator()(&v92);

  v76 = (v84 + 4);
  v75 = v26 - 8;
  v84 = (v66 + 32);
  v70 = (v65 + 32);
  v69 = (v66 + 16);
  v68 = (v65 + 16);
  v67 = (v66 + 48);
  v59 = (v65 + 48);
  v66 += 8;
  v65 += 8;
  v58 = (v83 + 8);
  v74 = v26;
  v72 = v7;
  v71 = v3;
  while (1)
  {
    v85 = v6;
    v86 = v8;
    v87 = v82;
    v88 = v7;
    v89 = &off_1F23C93F8;
    v90 = v77;
    v35 = type metadata accessor for CRDictionary.Iterator();
    v36 = v79;
    CRDictionary.Iterator.next()(v35, v79);
    v37 = v78;
    (*v76)(v78, v36, v80);
    if ((*(*(v26 - 8) + 48))(v37, 1, v26) == 1)
    {
      break;
    }

    v38 = v37;
    v39 = *(v26 + 48);
    v83 = *v84;
    (v83)(v25, v38, v6);
    (*v70)(v19, &v38[v39], v8);
    v40 = *(TupleTypeMetadata2 + 48);
    v41 = v16;
    v42 = v73;
    (*v69)(v73, v25, v6);
    v43 = *v68;
    (*v68)(&v42[v40], v19, v8);
    sub_1AE23D11C();
    v16 = v41;
    sub_1AE23D0CC();
    v43(v41, v19, v8);
    if ((*v67)(v41, 1, v6) == 1)
    {
      v3 = v71;
      sub_1ADFB14A8(v25, v64);
      (*v65)(v19, v8);
      (*v66)(v25, v6);
    }

    else
    {
      v44 = v25;
      v45 = v61;
      (v83)(v61, v16, v6);
      v46 = v62;
      v3 = v71;
      CRDictionary.subscript.getter(v62);
      if ((*v59)(v46, 1, v8) == 1)
      {
        (*v58)(v46, v63);
        sub_1ADFB14A8(v44, v64);
        v47 = *v66;
        v48 = v45;
        v25 = v44;
        (*v66)(v48, v6);
        (*v65)(v19, v8);
        v47(v44, v6);
      }

      else
      {
        v49 = v46;
        v50 = *v66;
        (*v66)(v45, v6);
        (*v65)(v19, v8);
        v25 = v44;
        v50(v44, v6);
        (*v58)(v49, v63);
      }
    }

    v7 = v72;
    v26 = v74;
  }

  sub_1ADDDCE74();
  sub_1AE18D284(v93, v64);
  if (v56)
  {

LABEL_18:
    v53 = sub_1AE23DB9C();

    sub_1AE18A294(v53, v64);
  }

  if (!v57)
  {
    goto LABEL_18;
  }

  v51 = v3[2];

  v52 = sub_1AE23D30C();

  swift_bridgeObjectRelease_n();
  if ((v52 & 1) == 0)
  {
    goto LABEL_18;
  }
}

uint64_t sub_1AE18A294(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a2[2];
  v6 = a2[4];
  v144 = a2[3];
  v7 = type metadata accessor for TreeNode();
  v134 = sub_1AE23D11C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v158 = *(TupleTypeMetadata2 - 8);
  v9 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v173 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v163 = &v131 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v165 = &v131 - v14;
  v131 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v142 = &v131 - v17;
  v139 = sub_1AE23D7CC();
  v166 = *(v139 - 8);
  v18 = *(v166 + 8);
  MEMORY[0x1EEE9AC00](v139);
  v153 = &v131 - v19;
  v20 = *(v7 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v137 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v138 = &v131 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v141 = &v131 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v171 = (&v131 - v29);
  v30 = swift_getTupleTypeMetadata2();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v157 = (&v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v155 = (&v131 - v35);
  v132 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v154 = &v131 - v38;
  v170 = v6;
  v39 = sub_1AE23D38C();
  swift_getTupleTypeMetadata2();
  v40 = sub_1AE23D05C();
  WitnessTable = swift_getWitnessTable();
  v168 = v39;
  v143 = WitnessTable;
  v42 = sub_1ADDEAF38(v40, v7, v39, WitnessTable);

  v43 = *(v3 + 8);

  *(v3 + 8) = v42;
  v172 = TupleTypeMetadata2;
  v44 = sub_1AE23D05C();
  v177 = v44;
  v45 = sub_1AE23D0AC();
  v164 = v3;
  v174 = v5;
  v169 = v7;
  v133 = v20;
  if (!v45)
  {
    goto LABEL_21;
  }

  v46 = 0;
  v151 = *(v30 + 48);
  v167 = (v31 + 16);
  v150 = v5 - 8;
  v152 = (v20 + 32);
  v149 = *(v3 + 16);
  v148 = (v158 + 48);
  v156 = (v20 + 8);
  v147 = (v31 + 8);
  v135 = (v166 + 8);
  v140 = (v20 + 16);
  v47 = v31;
  v145 = v31;
  v48 = v155;
  v146 = a1;
  v136 = v30;
  while (1)
  {
    v65 = sub_1AE23D08C();
    sub_1AE23D00C();
    v66 = v174;
    if ((v65 & 1) == 0)
    {
      break;
    }

    v67 = a1 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v46;
    v68 = *(v47 + 16);
    v69 = v154;
    v166 = v68;
    (v68)(v154, v67, v30);
    v70 = v152;
    v71 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_19;
    }

LABEL_8:
    v162 = v71;
    v72 = *(v30 + 48);
    v73 = *(v66 - 8);
    v74 = *(v73 + 32);
    v160 = (v73 + 32);
    v161 = v74;
    (v74)(v48, v69, v66);
    v75 = *v70;
    (*v70)(v48 + v72, &v69[v151], v7);
    if (sub_1AE23D37C())
    {
      (*(v73 + 56))(v171, 1, 1, v66);
    }

    else
    {
      v76 = v157;
      (v166)(v157, v48, v30);
      v75(v171, &v76[*(v30 + 48)], v7);
      (*(v73 + 8))(v76, v66);
    }

    v176 = v177;
    v77 = v172;
    v78 = sub_1AE23D11C();
    swift_getWitnessTable();
    v79 = v153;
    sub_1AE23CBEC();
    if ((*v148)(v79, 1, v77) == 1)
    {
      v159 = v78;
      (*v135)(v79, v139);
    }

    else
    {
      v80 = *&v79[*(v77 + 48)];

      v81 = v138;
      v82 = v79;
      v83 = v169;
      v75(v138, v82, v169);
      v84 = v141;
      v75(v141, v81, v83);
      swift_getWitnessTable();
      sub_1AE23D7CC();
      v175 = *(v170 + 8);
      swift_getWitnessTable();
      if (sub_1AE23E0AC())
      {
        v85 = sub_1AE23D0AC();
        v86 = v85 - 1;
        v30 = v136;
        if (__OFSUB__(v85, 1))
        {
          goto LABEL_40;
        }

        sub_1AE23D04C();
        v87 = v177;
        sub_1ADF86080(v86, v177);
        v88 = v87 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v86 + *(v77 + 48);
        v48 = v155;
        sub_1ADE17700(v155, v134);
        v89 = *v156;
        v7 = v169;
        (*v156)(v141, v169);
        v89(v171, v7);
        (*v147)(v48, v30);
        Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32(v78, v90);
        goto LABEL_5;
      }

      v159 = v78;
      (*v156)(v84, v83);
      v30 = v136;
    }

    v49 = v174;
    v50 = sub_1ADE0FC48(v174, v174);
    v51 = *(v50 + 52);
    v52 = *(v73 + 72);
    v53 = (*(v73 + 80) + *(v50 + 48)) & ~*(v73 + 80);
    swift_allocObject();
    v54 = sub_1AE23CFFC();
    v56 = v55;
    v57 = v157;
    v58 = v155;
    (v166)(v157, v155, v30);
    v59 = *(v30 + 48);
    (v161)(v56, v57, v49);
    sub_1ADE0FCBC();
    v60 = *v156;
    v7 = v169;
    (*v156)(v57 + v59, v169);
    v61 = v171;
    v62 = *(v172 + 48);
    v63 = v142;
    (*v140)(v142, v171, v7);
    *&v63[v62] = v54;
    v48 = v58;
    sub_1AE23D0CC();
    v60(v61, v7);
    (*v147)(v58, v30);
LABEL_5:
    a1 = v146;
    v64 = sub_1AE23D0AC();
    ++v46;
    v47 = v145;
    if (v162 == v64)
    {
      goto LABEL_20;
    }
  }

  v91 = sub_1AE23DAAC();
  v70 = v152;
  if (v132 != 8)
  {
    goto LABEL_41;
  }

  v176 = v91;
  v69 = v154;
  v166 = *v167;
  (v166)(v154, &v176, v30);
  swift_unknownObjectRelease();
  v71 = v46 + 1;
  if (!__OFADD__(v46, 1))
  {
    goto LABEL_8;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  v44 = v177;
LABEL_21:
  v92 = v172;
  if (sub_1AE23D0AC())
  {
    v93 = 0;
    v94 = 0;
    v171 = 0;
    v95 = *(v92 + 48);
    v167 = (v158 + 16);
    v160 = (v133 + 32);
    v161 = v95;
    v155 = (v133 + 16);
    v157 = (v133 + 8);
    v156 = (v158 + 8);
    v159 = v44;
    while (1)
    {
      v98 = sub_1AE23D08C();
      sub_1AE23D00C();
      if (v98)
      {
        v99 = v94;
        v100 = *(v158 + 16);
        (v100)(v165, v44 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v93, v92);
        v101 = (v93 + 1);
        if (__OFADD__(v93, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        v99 = v94;
        v129 = sub_1AE23DAAC();
        if (v131 != 8)
        {
          goto LABEL_42;
        }

        v176 = v129;
        v100 = *v167;
        (*v167)(v165, &v176, v92);
        swift_unknownObjectRelease();
        v101 = (v93 + 1);
        if (__OFADD__(v93, 1))
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      v166 = v101;
      v102 = *&v161[v165];
      v103 = *(v92 + 48);
      v104 = v163;
      (*v160)(v163);
      v162 = v102;
      *&v104[v103] = v102;
      v105 = v173;
      (v100)(v173, v104, v92);
      v106 = *(v105 + *(v92 + 48));

      v107 = swift_allocObject();
      v108 = v174;
      v109 = v144;
      v107[2] = v174;
      v107[3] = v109;
      v110 = v170;
      v107[4] = v170;
      sub_1ADDDCE80(v99);
      v111 = swift_allocObject();
      *(v111 + 16) = v108;
      *(v111 + 24) = v109;
      v112 = v169;
      *(v111 + 32) = v110;
      *(v111 + 40) = sub_1ADFB21B0;
      *(v111 + 48) = v107;
      sub_1ADDDCE80(v171);
      v113 = v164;
      v114 = *(v164 + 8);
      swift_isUniquelyReferenced_nonNull_native();
      v115 = *(v113 + 8);
      v176 = v115;
      v116 = v143;
      v117 = sub_1ADDFFB6C(v105, v112, v143);
      if (__OFADD__(*(v115 + 16), (v118 & 1) == 0))
      {
        break;
      }

      v119 = v117;
      v120 = v118;
      sub_1AE23DC0C();
      if (sub_1AE23DBEC())
      {
        v121 = v112;
        v122 = sub_1ADDFFB6C(v173, v112, v116);
        if ((v120 & 1) != (v123 & 1))
        {
          goto LABEL_43;
        }

        v119 = v122;
      }

      else
      {
        v121 = v112;
      }

      v124 = v176;
      *(v164 + 8) = v176;
      if ((v120 & 1) == 0)
      {
        v125 = *(v111 + 16);
        v126 = *(v111 + 24);
        v127 = *(v111 + 32);
        v128 = *(v111 + 48);
        sub_1ADFB1F18(*(v111 + 40), &v176);
        (*v155)(v137, v173, v121);
        sub_1AE23DBFC();
      }

      v96 = *(v124 + 56) + 8 * v119;
      sub_1ADFB10FC(v162, v168);
      (*v157)(v173, v121);
      v92 = v172;
      (*v156)(v163, v172);
      v44 = v159;
      v97 = sub_1AE23D0AC();
      ++v93;
      v171 = sub_1AE18F934;
      v94 = sub_1ADFB21B0;
      if (v166 == v97)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    result = sub_1AE23E27C();
    __break(1u);
  }

  else
  {
LABEL_37:
    v94 = 0;
    v171 = 0;
LABEL_38:

    sub_1ADDDCE80(v94);
    return sub_1ADDDCE80(v171);
  }

  return result;
}