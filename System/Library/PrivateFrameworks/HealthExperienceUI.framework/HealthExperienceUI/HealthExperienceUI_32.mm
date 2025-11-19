uint64_t sub_1BA2697E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B9F0AD9C(a1, &v19);
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v3 = v17;
  }

  else
  {
    v3 = 0;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_1BA4A2758();

  v6 = sub_1BA1591A8(v5);

  if (!v6)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v7 = [v6 hk_localizedName];

  if (!v7)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v9 = v8;

LABEL_10:
  v18 = v6;
  sub_1B9F232F8(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v10 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v10);

  MEMORY[0x1BFAF1350](8250, 0xE200000000000000);
  if (v3)
  {
    v11 = v3;
    v12 = sub_1BA4A2648();

    if (v12)
    {
      v13 = [v12 categoryName];

      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    }
  }

  v14 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v14);

  v16 = v20;
  *a2 = v19;
  a2[1] = v16;
  return result;
}

id SummarySharingProfileGradientsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SummarySharingProfileGradientsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummarySharingProfileGradientsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA269AC0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BA4A82B8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for CategoryMetadata();
        v6 = sub_1BA4A6B98();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for CategoryMetadata() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BA26A0B0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BA269BEC(0, v2, 1, a1);
  }
}

void sub_1BA269BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1B9F47F74(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = sub_1BA4A1728();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v65 = &v48 - v17;
  v67 = type metadata accessor for CategoryMetadata();
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v48 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v68 = &v48 - v23;
  v50 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v25 = *(v22 + 72);
    v61 = (v14 + 48);
    v62 = v24;
    v57 = (v14 + 8);
    v58 = (v14 + 32);
    v26 = v24 + v25 * (a3 - 1);
    v27 = -v25;
    v28 = a1 - a3;
    v49 = v25;
    v29 = v24 + v25 * a3;
    v59 = v12;
    v55 = -v25;
LABEL_7:
    v53 = v26;
    v54 = a3;
    v51 = v29;
    v52 = v28;
    v31 = v28;
    v32 = v66;
    while (1)
    {
      v33 = v68;
      sub_1BA26C478(v29, v68);
      sub_1BA26C478(v26, v32);
      v34 = *(v32 + 8);
      v35 = *(v33 + 8);
      if (v34 == v35)
      {
        sub_1BA246A0C(v32 + *(v67 + 24), v12);
        v36 = *v61;
        if ((*v61)(v12, 1, v13) == 1)
        {
          v30 = v12;
LABEL_5:
          sub_1BA05DB44(v30);
          sub_1BA26C4DC(v66);
          sub_1BA26C4DC(v68);
LABEL_6:
          a3 = v54 + 1;
          v26 = v53 + v49;
          v28 = v52 - 1;
          v29 = v51 + v49;
          if (v54 + 1 == v50)
          {
            return;
          }

          goto LABEL_7;
        }

        v64 = v31;
        v37 = *v58;
        (*v58)(v65, v12, v13);
        v38 = v60;
        sub_1BA246A0C(v68 + *(v67 + 24), v60);
        if (v36(v38, 1, v13) == 1)
        {
          (*v57)(v65, v13);
          v30 = v38;
          v12 = v59;
          goto LABEL_5;
        }

        v39 = v65;
        v40 = v56;
        v37(v56, v38, v13);
        v41 = sub_1BA4A16D8();
        v42 = *v57;
        v43 = v40;
        v44 = v39;
        v27 = v55;
        (*v57)(v43, v13);
        v42(v44, v13);
        v12 = v59;
        v32 = v66;
        v31 = v64;
      }

      else
      {
        v41 = v34 < v35;
      }

      sub_1BA26C4DC(v32);
      sub_1BA26C4DC(v68);
      if ((v41 & 1) == 0)
      {
        goto LABEL_6;
      }

      if (!v62)
      {
        __break(1u);
        return;
      }

      v45 = v63;
      sub_1BA26C538(v29, v63);
      swift_arrayInitWithTakeFrontToBack();
      v46 = v45;
      v32 = v66;
      sub_1BA26C538(v46, v26);
      v26 += v27;
      v29 += v27;
      if (__CFADD__(v31++, 1))
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_1BA26A0B0(uint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v190 = a1;
  sub_1B9F47F74(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v216 = &v183 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v183 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v183 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v183 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v183 - v21;
  v23 = sub_1BA4A1728();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v208 = &v183 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v221 = &v183 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v193 = &v183 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v199 = &v183 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v184 = &v183 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v185 = &v183 - v35;
  v214 = type metadata accessor for CategoryMetadata();
  v203 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v197 = &v183 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v219 = &v183 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v222 = &v183 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v223 = &v183 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v198 = &v183 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v207 = &v183 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v187 = &v183 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v188 = &v183 - v50;
  v205 = a3;
  v51 = a3[1];
  if (v51 < 1)
  {
    v54 = MEMORY[0x1E69E7CC0];
LABEL_124:
    v56 = *v190;
    if (!*v190)
    {
      goto LABEL_162;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v206;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_126:
      v224 = v54;
      v179 = *(v54 + 2);
      if (v179 >= 2)
      {
        while (*v205)
        {
          v180 = *&v54[16 * v179];
          v181 = *&v54[16 * v179 + 24];
          sub_1BA26B178(*v205 + *(v203 + 72) * v180, *v205 + *(v203 + 72) * *&v54[16 * v179 + 16], *v205 + *(v203 + 72) * v181, v56);
          if (v58)
          {
            goto LABEL_134;
          }

          if (v181 < v180)
          {
            goto LABEL_149;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1BA442D80(v54);
          }

          if (v179 - 2 >= *(v54 + 2))
          {
            goto LABEL_150;
          }

          v182 = &v54[16 * v179];
          *v182 = v180;
          *(v182 + 1) = v181;
          v224 = v54;
          sub_1BA442CF4(v179 - 1);
          v54 = v224;
          v179 = *(v224 + 2);
          if (v179 <= 1)
          {
            goto LABEL_134;
          }
        }

        goto LABEL_160;
      }

LABEL_134:

      return;
    }

LABEL_156:
    v54 = sub_1BA442D80(v54);
    goto LABEL_126;
  }

  v52 = 0;
  v213 = (v24 + 48);
  v210 = (v24 + 8);
  v211 = (v24 + 32);
  v189 = a4;
  v209 = v8;
  v53 = v216;
  v192 = v13;
  v196 = v16;
  v183 = v19;
  v186 = v22;
  v215 = v23;
  v54 = MEMORY[0x1E69E7CC0];
  v55 = v214;
  v56 = v222;
LABEL_5:
  v57 = v52;
  v58 = v52 + 1;
  v212 = v54;
  if (v52 + 1 >= v51)
  {
    goto LABEL_44;
  }

  v202 = v51;
  v59 = *v205;
  v60 = *(v203 + 72);
  v61 = v188;
  sub_1BA26C478(*v205 + v60 * v58, v188);
  v191 = v57;
  v218 = v60;
  v62 = v59 + v60 * v57;
  v63 = v187;
  sub_1BA26C478(v62, v187);
  v64 = *(v63 + 8);
  v65 = *(v61 + 8);
  if (v64 == v65)
  {
    v204 = v58;
    sub_1BA246A0C(v63 + *(v55 + 24), v22);
    v66 = *v213;
    v67 = v215;
    if ((*v213)(v22, 1, v215) == 1)
    {
      v68 = v22;
    }

    else
    {
      v220 = *v211;
      v220(v185, v22, v67);
      v69 = v183;
      sub_1BA246A0C(v188 + *(v55 + 24), v183);
      v70 = v66(v69, 1, v67);
      if (v70 != 1)
      {
        v71 = v184;
        v220(v184, v69, v67);
        v72 = v185;
        LODWORD(v217) = sub_1BA4A16D8();
        v73 = *v210;
        (*v210)(v71, v67);
        v73(v72, v67);
        goto LABEL_15;
      }

      (*v210)(v185, v67);
      v68 = v69;
    }

    sub_1BA05DB44(v68);
    LODWORD(v217) = 0;
LABEL_15:
    v63 = v187;
    v58 = v204;
    goto LABEL_16;
  }

  LODWORD(v217) = v64 < v65;
LABEL_16:
  sub_1BA26C4DC(v63);
  sub_1BA26C4DC(v188);
  v74 = (v191 + 2);
  v75 = v218 * (v191 + 2);
  v76 = v59 + v75;
  v77 = v218 * v58;
  v78 = v59 + v218 * v58;
  v79 = v198;
  do
  {
    v82 = v74;
    v83 = v58;
    v84 = v77;
    v85 = v75;
    v220 = v74;
    if (v74 >= v202)
    {
      break;
    }

    v86 = v207;
    sub_1BA26C478(v76, v207);
    sub_1BA26C478(v78, v79);
    v87 = *(v79 + 8);
    v88 = *(v86 + 8);
    if (v87 == v88)
    {
      v89 = v79;
      v90 = v214;
      v91 = v196;
      sub_1BA246A0C(v89 + *(v214 + 24), v196);
      v92 = *v213;
      if ((*v213)(v91, 1, v215) == 1)
      {
        v93 = v91;
        goto LABEL_25;
      }

      v94 = v91;
      v95 = v215;
      v204 = *v211;
      v204(v199, v94, v215);
      v96 = v207 + *(v90 + 24);
      v97 = v192;
      sub_1BA246A0C(v96, v192);
      if (v92(v97, 1, v95) == 1)
      {
        (*v210)(v199, v215);
        v93 = v97;
LABEL_25:
        sub_1BA05DB44(v93);
        v80 = 0;
      }

      else
      {
        v98 = v97;
        v99 = v215;
        v204(v193, v98, v215);
        v80 = sub_1BA4A16D8();
        v100 = *v210;
        (*v210)(v193, v99);
        v100(v199, v99);
      }

      v54 = v212;
      v56 = v222;
      v79 = v198;
      goto LABEL_18;
    }

    v80 = v87 < v88;
LABEL_18:
    sub_1BA26C4DC(v79);
    sub_1BA26C4DC(v207);
    v81 = v80 & 1;
    v82 = v220;
    v74 = (v220 + 1);
    v76 += v218;
    v78 += v218;
    v58 = v83 + 1;
    v77 = v84 + v218;
    v75 = v85 + v218;
  }

  while ((v217 & 1) == v81);
  if ((v217 & 1) == 0)
  {
    goto LABEL_42;
  }

  v101 = v191;
  a4 = v189;
  if (v82 < v191)
  {
    goto LABEL_153;
  }

  if (v191 >= v82)
  {
    v58 = v82;
    v55 = v214;
    v53 = v216;
    v57 = v191;
  }

  else
  {
    v102 = v191 * v218;
    do
    {
      if (v101 != v83)
      {
        v104 = *v205;
        if (!*v205)
        {
          goto LABEL_159;
        }

        sub_1BA26C538(v104 + v102, v197);
        if (v102 < v84 || v104 + v102 >= (v104 + v85))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v102 != v84)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_1BA26C538(v197, v104 + v84);
        v82 = v220;
      }

      ++v101;
      v84 -= v218;
      v85 -= v218;
      v102 += v218;
    }

    while (v101 < v83--);
LABEL_42:
    v58 = v82;
    a4 = v189;
    v55 = v214;
    v53 = v216;
    v57 = v191;
  }

LABEL_44:
  v105 = v205[1];
  if (v58 >= v105)
  {
    goto LABEL_69;
  }

  if (__OFSUB__(v58, v57))
  {
    goto LABEL_152;
  }

  if (v58 - v57 >= a4)
  {
LABEL_69:
    if (v58 < v57)
    {
      goto LABEL_151;
    }

    goto LABEL_70;
  }

  if (__OFADD__(v57, a4))
  {
    goto LABEL_154;
  }

  if (v57 + a4 >= v105)
  {
    v106 = v205[1];
  }

  else
  {
    v106 = (v57 + a4);
  }

  if (v106 < v57)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v58 == v106)
  {
    goto LABEL_69;
  }

  v107 = *v205;
  v108 = *(v203 + 72);
  v109 = *v205 + v108 * (v58 - 1);
  v217 = -v108;
  v191 = v57;
  v110 = (v57 - v58);
  v194 = v108;
  v218 = v107;
  v111 = v107 + v58 * v108;
  v195 = v106;
  while (2)
  {
    v204 = v58;
    v200 = v111;
    v201 = v110;
    v113 = v110;
    v202 = v109;
LABEL_58:
    v114 = v223;
    sub_1BA26C478(v111, v223);
    sub_1BA26C478(v109, v56);
    v115 = *(v56 + 8);
    v116 = *(v114 + 8);
    if (v115 == v116)
    {
      v117 = v54;
      sub_1BA246A0C(v56 + *(v55 + 24), v53);
      v118 = v55;
      v119 = *v213;
      v120 = v215;
      if ((*v213)(v53, 1, v215) == 1)
      {
        v112 = v53;
        v54 = v117;
      }

      else
      {
        v220 = v113;
        v121 = *v211;
        v122 = v221;
        (*v211)(v221, v53, v120);
        v123 = v223 + *(v118 + 24);
        v124 = v209;
        sub_1BA246A0C(v123, v209);
        if (v119(v124, 1, v120) != 1)
        {
          v125 = v208;
          v121(v208, v124, v120);
          v126 = sub_1BA4A16D8();
          v127 = *v210;
          (*v210)(v125, v120);
          v127(v221, v120);
          v53 = v216;
          v54 = v212;
          v55 = v214;
          v56 = v222;
          v113 = v220;
          goto LABEL_63;
        }

        (*v210)(v122, v120);
        v112 = v124;
        v53 = v216;
        v54 = v212;
      }

      sub_1BA05DB44(v112);
      v56 = v222;
      sub_1BA26C4DC(v222);
      sub_1BA26C4DC(v223);
      v55 = v214;
LABEL_56:
      v58 = v204 + 1;
      v109 = v202 + v194;
      v110 = v201 - 1;
      v111 = v200 + v194;
      if (v204 + 1 != v195)
      {
        continue;
      }

      v58 = v195;
      v57 = v191;
      if (v195 < v191)
      {
        goto LABEL_151;
      }

LABEL_70:
      v204 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1BA27F470(0, *(v54 + 2) + 1, 1, v54);
      }

      v131 = *(v54 + 2);
      v130 = *(v54 + 3);
      v132 = v131 + 1;
      if (v131 >= v130 >> 1)
      {
        v54 = sub_1BA27F470((v130 > 1), v131 + 1, 1, v54);
      }

      *(v54 + 2) = v132;
      v133 = &v54[16 * v131];
      v134 = v204;
      *(v133 + 4) = v57;
      *(v133 + 5) = v134;
      if (!*v190)
      {
        goto LABEL_161;
      }

      if (!v131)
      {
        v53 = v216;
LABEL_4:
        v52 = v204;
        v51 = v205[1];
        a4 = v189;
        v22 = v186;
        if (v204 >= v51)
        {
          goto LABEL_124;
        }

        goto LABEL_5;
      }

      v58 = *v190;
      v53 = v216;
      while (2)
      {
        v135 = v132 - 1;
        if (v132 >= 4)
        {
          v140 = &v54[16 * v132 + 32];
          v141 = *(v140 - 64);
          v142 = *(v140 - 56);
          v146 = __OFSUB__(v142, v141);
          v143 = v142 - v141;
          if (v146)
          {
            goto LABEL_138;
          }

          v145 = *(v140 - 48);
          v144 = *(v140 - 40);
          v146 = __OFSUB__(v144, v145);
          v138 = v144 - v145;
          v139 = v146;
          if (v146)
          {
            goto LABEL_139;
          }

          v147 = &v54[16 * v132];
          v149 = *v147;
          v148 = *(v147 + 1);
          v146 = __OFSUB__(v148, v149);
          v150 = v148 - v149;
          if (v146)
          {
            goto LABEL_141;
          }

          v146 = __OFADD__(v138, v150);
          v151 = v138 + v150;
          if (v146)
          {
            goto LABEL_144;
          }

          if (v151 >= v143)
          {
            v169 = &v54[16 * v135 + 32];
            v171 = *v169;
            v170 = *(v169 + 1);
            v146 = __OFSUB__(v170, v171);
            v172 = v170 - v171;
            if (v146)
            {
              goto LABEL_148;
            }

            if (v138 < v172)
            {
              v135 = v132 - 2;
            }
          }

          else
          {
LABEL_90:
            if (v139)
            {
              goto LABEL_140;
            }

            v152 = &v54[16 * v132];
            v154 = *v152;
            v153 = *(v152 + 1);
            v155 = __OFSUB__(v153, v154);
            v156 = v153 - v154;
            v157 = v155;
            if (v155)
            {
              goto LABEL_143;
            }

            v158 = &v54[16 * v135 + 32];
            v160 = *v158;
            v159 = *(v158 + 1);
            v146 = __OFSUB__(v159, v160);
            v161 = v159 - v160;
            if (v146)
            {
              goto LABEL_146;
            }

            if (__OFADD__(v156, v161))
            {
              goto LABEL_147;
            }

            if (v156 + v161 < v138)
            {
              goto LABEL_104;
            }

            if (v138 < v161)
            {
              v135 = v132 - 2;
            }
          }
        }

        else
        {
          if (v132 == 3)
          {
            v136 = *(v54 + 4);
            v137 = *(v54 + 5);
            v146 = __OFSUB__(v137, v136);
            v138 = v137 - v136;
            v139 = v146;
            goto LABEL_90;
          }

          v162 = &v54[16 * v132];
          v164 = *v162;
          v163 = *(v162 + 1);
          v146 = __OFSUB__(v163, v164);
          v156 = v163 - v164;
          v157 = v146;
LABEL_104:
          if (v157)
          {
            goto LABEL_142;
          }

          v165 = &v54[16 * v135];
          v167 = *(v165 + 4);
          v166 = *(v165 + 5);
          v146 = __OFSUB__(v166, v167);
          v168 = v166 - v167;
          if (v146)
          {
            goto LABEL_145;
          }

          if (v168 < v156)
          {
            goto LABEL_4;
          }
        }

        v173 = v135 - 1;
        if (v135 - 1 >= v132)
        {
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
          goto LABEL_155;
        }

        if (!*v205)
        {
          goto LABEL_158;
        }

        v174 = *&v54[16 * v173 + 32];
        v175 = *&v54[16 * v135 + 40];
        v176 = v206;
        sub_1BA26B178(*v205 + *(v203 + 72) * v174, *v205 + *(v203 + 72) * *&v54[16 * v135 + 32], *v205 + *(v203 + 72) * v175, v58);
        v206 = v176;
        if (v176)
        {
          goto LABEL_134;
        }

        if (v175 < v174)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_1BA442D80(v54);
        }

        if (v173 >= *(v54 + 2))
        {
          goto LABEL_137;
        }

        v177 = &v54[16 * v173];
        *(v177 + 4) = v174;
        *(v177 + 5) = v175;
        v224 = v54;
        sub_1BA442CF4(v135);
        v54 = v224;
        v132 = *(v224 + 2);
        v53 = v216;
        if (v132 <= 1)
        {
          goto LABEL_4;
        }

        continue;
      }
    }

    break;
  }

  v126 = v115 < v116;
LABEL_63:
  sub_1BA26C4DC(v56);
  sub_1BA26C4DC(v223);
  if ((v126 & 1) == 0)
  {
    goto LABEL_56;
  }

  if (v218)
  {
    v128 = v219;
    sub_1BA26C538(v111, v219);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BA26C538(v128, v109);
    v109 += v217;
    v111 += v217;
    v129 = __CFADD__(v113++, 1);
    v56 = v222;
    if (v129)
    {
      goto LABEL_56;
    }

    goto LABEL_58;
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
}

void sub_1BA26B178(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v99 = a4;
  sub_1B9F47F74(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v86 = (&v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v82 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v82 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v82 - v14;
  v16 = sub_1BA4A1728();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v82 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v82 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v92 = &v82 - v24;
  v25 = type metadata accessor for CategoryMetadata();
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v96 = (&v82 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v82 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v82 - v33;
  v36 = *(v35 + 72);
  if (!v36)
  {
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v89 = v16;
  v37 = a2;
  if (a2 - a1 == 0x8000000000000000 && v36 == -1)
  {
    goto LABEL_80;
  }

  v38 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v36 != -1)
  {
    v39 = (a2 - a1) / v36;
    v102 = a1;
    v101 = v99;
    v98 = v36;
    if (v39 < v38 / v36)
    {
      v97 = v25;
      v40 = v39 * v36;
      v95 = v17;
      if (v99 < a1 || a1 + v40 <= v99)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v99 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v43 = v99 + v40;
      v100 = v99 + v40;
      v44 = v40 < 1 || a2 >= a3;
      v45 = v89;
      if (!v44)
      {
        v96 = (v95 + 48);
        v86 = (v95 + 8);
        v87 = v30;
        v90 = (v95 + 32);
        v91 = v15;
        v82 = a3;
        v88 = v34;
        v93 = (v99 + v40);
        while (1)
        {
          sub_1BA26C478(a2, v34);
          sub_1BA26C478(v99, v30);
          v46 = *(v30 + 1);
          v47 = *(v34 + 1);
          if (v46 == v47)
          {
            sub_1BA246A0C(&v30[*(v97 + 24)], v15);
            v48 = *v96;
            v49 = (*v96)(v15, 1, v45);
            v50 = v15;
            if (v49 == 1)
            {
              goto LABEL_25;
            }

            v95 = a2;
            v51 = *v90;
            v52 = v92;
            (*v90)(v92, v15, v45);
            v53 = v94;
            sub_1BA246A0C(&v34[*(v97 + 24)], v94);
            if (v48(v53, 1, v45) == 1)
            {
              (*v86)(v52, v45);
              v50 = v53;
              a2 = v95;
              v15 = v91;
              v30 = v87;
              v34 = v88;
              v43 = v93;
LABEL_25:
              sub_1BA05DB44(v50);
              sub_1BA26C4DC(v30);
              sub_1BA26C4DC(v34);
LABEL_32:
              v55 = v98;
              v57 = v99 + v98;
              if (a1 < v99 || a1 >= v57)
              {
                swift_arrayInitWithTakeFrontToBack();
LABEL_37:
                v55 = v98;
              }

              else if (a1 != v99)
              {
                swift_arrayInitWithTakeBackToFront();
                goto LABEL_37;
              }

              v101 = v57;
              v99 = v57;
              goto LABEL_42;
            }

            v58 = v85;
            v51(v85, v53, v45);
            v54 = sub_1BA4A16D8();
            v59 = *v86;
            v60 = v58;
            a3 = v82;
            (*v86)(v60, v45);
            v59(v52, v45);
            a2 = v95;
            v15 = v91;
            v30 = v87;
            v34 = v88;
            v43 = v93;
          }

          else
          {
            v54 = v46 < v47;
          }

          sub_1BA26C4DC(v30);
          sub_1BA26C4DC(v34);
          if ((v54 & 1) == 0)
          {
            goto LABEL_32;
          }

          v55 = v98;
          v56 = a2 + v98;
          if (a1 < a2 || a1 >= v56)
          {
            break;
          }

          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_40:
            v55 = v98;
          }

          a2 = v56;
LABEL_42:
          a1 += v55;
          v102 = a1;
          if (v99 >= v43 || a2 >= a3)
          {
            goto LABEL_78;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_40;
      }

      goto LABEL_78;
    }

    v41 = v38 / v36 * v36;
    v94 = v32;
    if (v99 < a2 || a2 + v41 <= v99)
    {
      v42 = v17;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v42 = v17;
      if (v99 == v37)
      {
LABEL_48:
        v61 = v99 + v41;
        if (v41 >= 1)
        {
          v62 = -v36;
          v88 = (v42 + 48);
          v85 = (v42 + 32);
          v83 = (v42 + 8);
          v63 = v99 + v41;
          v64 = v93;
          v97 = v25;
          v98 = -v36;
          do
          {
            v82 = v61;
            v65 = v37;
            v37 += v62;
            v92 = v65;
            while (1)
            {
              if (v65 <= a1)
              {
                v102 = v65;
                v100 = v82;
                goto LABEL_78;
              }

              v67 = a3;
              v95 = v61;
              v68 = v25;
              v69 = v63 + v62;
              v70 = v96;
              sub_1BA26C478(v69, v96);
              v71 = v94;
              sub_1BA26C478(v37, v94);
              v72 = v71;
              v73 = *(v71 + 8);
              v74 = v70[1];
              if (v73 == v74)
              {
                v91 = v69;
                sub_1BA246A0C(v71 + *(v68 + 24), v64);
                v75 = *v88;
                v25 = v68;
                v76 = v89;
                if ((*v88)(v64, 1, v89) == 1)
                {
                  sub_1BA05DB44(v64);
                  v77 = 0;
                }

                else
                {
                  v87 = *v85;
                  (v87)(v90, v64, v76);
                  v78 = v96 + *(v25 + 24);
                  v79 = v86;
                  sub_1BA246A0C(v78, v86);
                  if (v75(v79, 1, v76) == 1)
                  {
                    (*v83)(v90, v76);
                    sub_1BA05DB44(v79);
                    v77 = 0;
                  }

                  else
                  {
                    v80 = v84;
                    (v87)(v84, v79, v76);
                    v77 = sub_1BA4A16D8();
                    v81 = *v83;
                    (*v83)(v80, v76);
                    v81(v90, v76);
                  }

                  v25 = v97;
                }

                v72 = v94;
                v69 = v91;
              }

              else
              {
                v77 = v73 < v74;
                v25 = v68;
              }

              a3 = &v67[v98];
              sub_1BA26C4DC(v72);
              sub_1BA26C4DC(v96);
              v61 = v95;
              if (v77)
              {
                break;
              }

              v61 = v69;
              if (v67 < v63 || a3 >= v63)
              {
                swift_arrayInitWithTakeFrontToBack();
                v64 = v93;
              }

              else
              {
                v64 = v93;
                if (v67 != v63)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v63 = v69;
              v66 = v69 > v99;
              v62 = v98;
              v65 = v92;
              if (!v66)
              {
                v37 = v92;
                goto LABEL_77;
              }
            }

            if (v67 < v92 || a3 >= v92)
            {
              swift_arrayInitWithTakeFrontToBack();
              v64 = v93;
              v62 = v98;
            }

            else
            {
              v64 = v93;
              v62 = v98;
              if (v67 != v92)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }
          }

          while (v63 > v99);
        }

LABEL_77:
        v102 = v37;
        v100 = v61;
LABEL_78:
        sub_1BA26BB80(&v102, &v101, &v100, type metadata accessor for CategoryMetadata);
        return;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v36 = v98;
    goto LABEL_48;
  }

LABEL_81:
  __break(1u);
}

uint64_t sub_1BA26BB80(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1BA26BC68(void *a1, void *a2)
{
  v64 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A6478();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A64C8();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();
  v12 = a2;
  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6FC8();

  v15 = os_log_type_enabled(v13, v14);
  v16 = MEMORY[0x1E69E7CA0];
  v63 = ObjectType;
  if (v15)
  {
    v17 = swift_slowAlloc();
    v62 = v8;
    v18 = v17;
    v61 = swift_slowAlloc();
    aBlock[0] = v61;
    *v18 = 136315394;
    v19 = sub_1BA4A85D8();
    v21 = sub_1B9F0B82C(v19, v20, aBlock);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = v12;
    v23 = [v22 description];
    v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v26 = v25;

    v27 = v24;
    v16 = MEMORY[0x1E69E7CA0];
    v28 = sub_1B9F0B82C(v27, v26, aBlock);

    *(v18 + 14) = v28;
    _os_log_impl(&dword_1B9F07000, v13, v14, "[%s] Creating gradient provider with predicate: %s", v18, 0x16u);
    v29 = v61;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v18, -1, -1);

    (*(v9 + 8))(v11, v62);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_1BA4A27B8();
  v30 = MEMORY[0x1BFAED110]();
  [v30 setPredicate_];
  v31 = MEMORY[0x1E69E6F90];
  sub_1B9F232F8(0, &unk_1EDC6B3F0, v16 + 8, MEMORY[0x1E69E6F90]);
  v32 = swift_allocObject();
  v33 = MEMORY[0x1E69E6158];
  *(v32 + 16) = xmmword_1BA4B5460;
  *(v32 + 32) = 0xD000000000000015;
  *(v32 + 40) = 0x80000001BA4EE050;
  *(v32 + 88) = v33;
  *(v32 + 56) = v33;
  *(v32 + 64) = 0x746E6176656C6572;
  *(v32 + 72) = 0xEF65746144646E45;
  v34 = sub_1BA4A6AE8();

  [v30 setPropertiesToFetch_];

  sub_1B9F232F8(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, v31);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1BA4B7510;
  v36 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v37 = sub_1BA4A6758();
  v38 = [v36 initWithKey:v37 ascending:0];

  *(v35 + 32) = v38;
  v39 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v40 = sub_1BA4A6758();
  v41 = [v39 initWithKey:v40 ascending:0];

  *(v35 + 40) = v41;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v42 = sub_1BA4A6AE8();

  [v30 setSortDescriptors_];

  v43 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v44 = v30;
  v45 = v64;
  v46 = sub_1BA4A6758();
  v47 = [v43 initWithFetchRequest:v44 managedObjectContext:v45 sectionNameKeyPath:v46 cacheName:0];

  v48 = v65;
  *&v65[OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingProfileGradientsProvider_fetchedResultsController] = v47;
  v49 = type metadata accessor for SummarySharingProfileGradientsProvider();
  v73.receiver = v48;
  v73.super_class = v49;
  v50 = objc_msgSendSuper2(&v73, sel_init);
  v51 = *&v50[OBJC_IVAR____TtC18HealthExperienceUI38SummarySharingProfileGradientsProvider_fetchedResultsController];
  v52 = v50;
  [v51 setDelegate_];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v53 = sub_1BA4A7308();
  v54 = swift_allocObject();
  v55 = v63;
  *(v54 + 16) = v52;
  *(v54 + 24) = v55;
  aBlock[4] = sub_1BA26C59C;
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_65;
  v56 = _Block_copy(aBlock);

  v57 = v66;
  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F47F74(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v58 = v69;
  v59 = v71;
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v57, v58, v56);
  _Block_release(v56);

  (*(v70 + 8))(v58, v59);
  (*(v67 + 8))(v57, v68);
  return v52;
}

uint64_t sub_1BA26C478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA26C4DC(uint64_t a1)
{
  v2 = type metadata accessor for CategoryMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA26C538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CategoryMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1BA26C5A4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1BA26CB64(a2, a3);

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5470;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  swift_getKeyPath();
  *(v8 + 32) = sub_1BA4A71B8();
  sub_1BA4A27B8();
  v9 = v7;
  v10 = sub_1BA4A26C8();

  v11 = sub_1BA4A6AE8();

  [v10 setSortDescriptors_];

  v12 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v10 managedObjectContext:a1 sectionNameKeyPath:0 cacheName:0];
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v32[4] = xmmword_1EDC6D3C8;
  v32[5] = unk_1EDC6D3D8;
  v32[6] = xmmword_1EDC6D3E8;
  v32[7] = unk_1EDC6D3F8;
  v32[0] = xmmword_1EDC6D388;
  v32[1] = xmmword_1EDC6D398;
  v32[2] = xmmword_1EDC6D3A8;
  v32[3] = xmmword_1EDC6D3B8;
  v22 = xmmword_1EDC6D388;
  v13 = *(&xmmword_1EDC6D398 + 1);
  v23 = xmmword_1EDC6D398;
  v15 = xmmword_1EDC6D3A8;
  v14 = xmmword_1EDC6D3B8;
  v27 = *(&xmmword_1EDC6D3C8 + 8);
  v28 = *&qword_1EDC6D3E0;
  v29 = *(&xmmword_1EDC6D3E8 + 8);
  v30 = qword_1EDC6D400;
  v26 = *(&xmmword_1EDC6D3B8 + 8);
  sub_1B9F1D9A4(v32, v31);
  sub_1B9F1DA18(v13, v15, *(&v15 + 1), v14);
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v24 = 0u;
  v25 = 0u;
  v16 = sub_1B9F293A8(&v22);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = (v4 + qword_1EDC61AF0);
  *v18 = sub_1BA064A10;
  v18[1] = v17;
  v19 = v16;
  v20 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v12);

  return v20;
}

uint64_t sub_1BA26C854@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 relevantEndDate];
  if (v3)
  {
    v4 = v3;
    sub_1BA4A16F8();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1BA4A1728();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1BA26C8F8(uint64_t a1, void **a2)
{
  sub_1B9F0CAA0(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1BA246A0C(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1BA4A1728();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1BA4A16B8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setRelevantEndDate_];
}

id sub_1BA26CAD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedProfileNoticesDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SharedProfileNoticesDataSource()
{
  result = qword_1EBBEF580;
  if (!qword_1EBBEF580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1BA26CB64(void *a1, uint64_t a2)
{
  v35 = a2;
  sub_1B9F0CAA0(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  sub_1BA4A27B8();
  v34 = MEMORY[0x1E69E6F90];
  sub_1B9F0CAA0(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v32 = v6;
  v7 = sub_1BA4A1C68();
  v8 = *(v7 - 8);
  v31 = *(v8 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v36 = xmmword_1BA4B5480;
  *(v10 + 16) = xmmword_1BA4B5480;
  v30 = *MEMORY[0x1E69A3B90];
  v29 = *(v8 + 104);
  v29(v10 + v9);
  v11 = sub_1BA4A0FA8();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v12 = swift_allocObject();
  *(v12 + 16) = v36;
  *(v12 + 32) = a1;
  v28 = a1;
  v33 = MEMORY[0x1BFAED020](v10, 0, v5, v12);

  sub_1B9F1C1B0(v5);
  v13 = swift_allocObject();
  *(v13 + 16) = v36;
  (v29)(v13 + v9, v30, v7);
  sub_1BA4A20E8();
  v14 = swift_allocObject();
  *(v14 + 16) = v36;
  *(v14 + 32) = a1;
  v15 = v28;
  v16 = sub_1BA4A2638();

  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  sub_1B9F0CAA0(0, &qword_1EDC6B410, sub_1BA06FAE4, v34);
  v17 = swift_allocObject();
  *(v17 + 16) = v36;
  *(v17 + 56) = MEMORY[0x1E69E6158];
  *(v17 + 64) = sub_1B9F1BE20();
  strcpy((v17 + 32), "hideInDiscover");
  *(v17 + 47) = -18;
  v18 = sub_1BA4A6EE8();
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B8B60;
  v20 = v33;
  *(v19 + 32) = v33;
  *(v19 + 40) = v16;
  *(v19 + 48) = v18;
  v37 = v19;
  v21 = v20;
  v22 = v16;
  v23 = v18;

  sub_1B9F33948(v24);
  v25 = sub_1BA4A6AE8();

  v26 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v26;
}

void *sub_1BA26CFFC(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = MEMORY[0x1E69E7CC0];
  for (i = a3 + 32; ; i += 40)
  {
    result = a1(&v17, i);
    if (v3)
    {

      return v5;
    }

    v8 = v17;
    v9 = *(v17 + 16);
    v10 = v5[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= v5[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_1B9F281E8(result, v12, 1, v5);
      v5 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((v5[3] >> 1) - v5[2] < v9)
        {
          goto LABEL_24;
        }

        sub_1B9F0D9AC(0, &qword_1EDC6AD50);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = v5[2];
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_25;
          }

          v5[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1BA26D188(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A1998();
  v65 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v60 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  v14 = sub_1BA4A3EA8();
  v63 = *(v14 - 8);
  v64 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v60 - v17;
  sub_1B9F12538();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BA4A1968();
  v24 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v20 + 16))(v22, v2 + v24, v19);
  v25 = sub_1BA4A4548();
  (*(v20 + 8))(v22, v19);
  if (v23 >= v25)
  {
    sub_1BA4A3D88();
    v30 = v65;
    v31 = *(v65 + 16);
    v31(v13, a1, v4);
    v31(v10, a1, v4);

    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FA8();

    v34 = v30;
    if (os_log_type_enabled(v32, v33))
    {
      v35 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v68 = v62;
      *v35 = 134218498;
      v36 = sub_1BA4A1968();
      v37 = *(v34 + 8);
      v37(v13, v4);
      *(v35 + 4) = v36;
      *(v35 + 12) = 2048;
      v38 = sub_1BA4A1958();
      v37(v10, v4);
      *(v35 + 14) = v38;
      *(v35 + 22) = 2080;
      v67 = v2;
      type metadata accessor for SearchSectionDataSource(0);

      v39 = sub_1BA4A6808();
      v41 = sub_1B9F0B82C(v39, v40, &v68);

      *(v35 + 24) = v41;
      _os_log_impl(&dword_1B9F07000, v32, v33, "The indexpath's section with section %ld and item %ld requested does not exist in the data source %s", v35, 0x20u);
      v42 = v62;
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v35, -1, -1);
    }

    else
    {
      v58 = *(v30 + 8);
      v58(v10, v4);
      v58(v13, v4);
    }

    (*(v63 + 8))(v66, v64);
  }

  else
  {
    v26 = v65;
    v27 = sub_1BA4A1958();
    v28 = sub_1BA4A1968();
    if (v27 < sub_1BA1BA9D0(v28))
    {
      return 1;
    }

    v43 = v62;
    sub_1BA4A3D88();
    v44 = *(v26 + 16);
    v45 = v60;
    v44(v60, a1, v4);
    v46 = v61;
    v44(v61, a1, v4);

    v47 = sub_1BA4A3E88();
    v48 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = v45;
      v50 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v68 = v66;
      *v50 = 134218498;
      v51 = sub_1BA4A1968();
      v52 = *(v26 + 8);
      v52(v49, v4);
      *(v50 + 4) = v51;
      *(v50 + 12) = 2048;
      v53 = sub_1BA4A1958();
      v52(v46, v4);
      *(v50 + 14) = v53;
      *(v50 + 22) = 2080;
      v67 = v2;
      type metadata accessor for SearchSectionDataSource(0);

      v54 = sub_1BA4A6808();
      v56 = sub_1B9F0B82C(v54, v55, &v68);

      *(v50 + 24) = v56;
      _os_log_impl(&dword_1B9F07000, v47, v48, "The indexpath's item with section %ld and item %ld requested does not exist in the data source %s", v50, 0x20u);
      v57 = v66;
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x1BFAF43A0](v57, -1, -1);
      MEMORY[0x1BFAF43A0](v50, -1, -1);

      (*(v63 + 8))(v62, v64);
    }

    else
    {
      v59 = *(v26 + 8);
      v59(v46, v4);
      v59(v45, v4);

      (*(v63 + 8))(v43, v64);
    }
  }

  return 0;
}

uint64_t SearchSectionDataSource.init(_:mode:)(void *a1, char a2)
{
  v3 = v2;
  *(v3 + qword_1EDC84BF8) = a2 & 1;
  sub_1B9F126E0();
  v6 = objc_allocWithZone(v5);
  v7 = a1;
  v8 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v7);
  v9 = sub_1B9F17A68(v8, sub_1B9F2860C, 0, 0);

  return v9;
}

uint64_t SearchSectionDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return v0;
}

void sub_1BA26D9E8(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v6) = a4;
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3D88();

  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6F88();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = v6;
    v6 = v17;
    aBlock[0] = v17;
    *v16 = 136315394;
    v18 = sub_1BA4A85D8();
    v20 = sub_1B9F0B82C(v18, v19, aBlock);
    v28 = v9;
    v21 = v20;

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1B9F0B82C(v27, a2, aBlock);
    _os_log_impl(&dword_1B9F07000, v13, v14, "%s SanpshotDidChange, dataSourceID: %s", v16, 0x16u);
    swift_arrayDestroy();
    v22 = v6;
    LOBYTE(v6) = v29;
    MEMORY[0x1BFAF43A0](v22, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);

    (*(v10 + 8))(v12, v28);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  swift_beginAccess();
  v23 = *(v5 + 16);
  v24 = swift_allocObject();
  *(v24 + 16) = v5;
  *(v24 + 24) = v6 & 1;
  aBlock[4] = sub_1BA271A78;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_26_0;
  v25 = _Block_copy(aBlock);
  v26 = v23;

  [v26 notifyObservers_];
  _Block_release(v25);
}

uint64_t sub_1BA26DD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(type metadata accessor for NoDataItem(0) + 28));
  v8[3] = sub_1BA4A27B8();
  v8[4] = sub_1B9F25478(&qword_1EDC6AD98, MEMORY[0x1E69A3DD0]);
  v8[0] = v4;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item;
  swift_beginAccess();
  v6 = v4;
  sub_1B9F63E74(v8, a1 + v5);
  swift_endAccess();
  sub_1BA218358();
  return sub_1BA271E30(v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA26DE14(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t SearchDataSource.State.SearchResults.pluginResult.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SearchDataSource.State.SearchResults(0) + 20);

  return sub_1BA271720(a1, v3);
}

uint64_t static SearchDataSource.State.SearchResults.== infix(_:_:)()
{
  sub_1B9F0ADF8(0, &qword_1EDC6E350);
  if ((sub_1BA4A7798() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SearchDataSource.State.SearchResults(0);

  return _s18HealthExperienceUI18DirectSearchResultV2eeoiySbAC_ACtFZ_0();
}

uint64_t sub_1BA26E03C()
{
  sub_1B9F0ADF8(0, &qword_1EDC6E350);
  if ((sub_1BA4A7798() & 1) == 0)
  {
    return 0;
  }

  return _s18HealthExperienceUI18DirectSearchResultV2eeoiySbAC_ACtFZ_0();
}

uint64_t sub_1BA26E0D0(uint64_t a1)
{
  v2 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12358(a1, v4, type metadata accessor for SearchDataSource.State);
  return sub_1BA26E1DC(v4);
}

uint64_t sub_1BA26E170@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDC84C78;
  swift_beginAccess();
  return sub_1B9F12358(v1 + v3, a1, type metadata accessor for SearchDataSource.State);
}

uint64_t sub_1BA26E1DC(uint64_t a1)
{
  v3 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &aBlock[-1] - v7;
  v9 = qword_1EDC84C78;
  swift_beginAccess();
  sub_1BA271A14(a1, v1 + v9);
  swift_endAccess();
  sub_1B9F12358(v1 + v9, v8, type metadata accessor for SearchDataSource.State);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v9) = _s18HealthExperienceUI16SearchDataSourceC5StateO2eeoiySbAE_AEtFZ_0(v8, v5);
  sub_1B9F299EC(v5, type metadata accessor for SearchDataSource.State);
  sub_1B9F299EC(v8, type metadata accessor for SearchDataSource.State);
  swift_beginAccess();
  v10 = *(v1 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v9 & 1;
  aBlock[4] = sub_1BA271A78;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F8A254;
  aBlock[3] = &block_descriptor_66;
  v12 = _Block_copy(aBlock);
  v13 = v10;

  [v13 notifyObservers_];
  _Block_release(v12);

  return sub_1B9F299EC(a1, type metadata accessor for SearchDataSource.State);
}

uint64_t sub_1BA26E408(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SearchDataSource.State.SearchResults(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  sub_1B9F12358(a1, &v39 - v11, type metadata accessor for SearchDataSource.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

      sub_1BA2717C8();
      sub_1BA271DAC(&v12[*(v14 + 48)], v6);
      sub_1BA4A27B8();
      v15 = sub_1BA4A2668();
      v16 = objc_opt_self();
      v40 = v16;
      v46 = [v16 notPredicateWithSubpredicate_];
      v17 = *(*(v2 + qword_1EDC68C00) + qword_1EDC84BB8);
      sub_1B9F109F8();
      v44 = v18;
      v19 = swift_allocObject();
      v43 = xmmword_1BA4B7510;
      *(v19 + 16) = xmmword_1BA4B7510;
      v20 = *v6;
      *(v19 + 32) = *v6;
      *(v19 + 40) = v15;
      v21 = sub_1B9F0ADF8(0, &qword_1EDC6B630);
      v45 = v4;
      v42 = v21;
      v41 = v20;
      v22 = v17;
      v47 = v15;
      v23 = sub_1BA4A6AE8();

      v24 = [v16 andPredicateWithSubpredicates_];

      v25 = qword_1EDC84AD8;
      swift_beginAccess();
      v26 = [*&v22[v25] fetchRequest];
      [v26 setPredicate_];

      sub_1B9F128B4();
      sub_1BA047948();

      v27 = *(*(v2 + qword_1EDC68C08) + qword_1EDC84BB8);
      v28 = swift_allocObject();
      *(v28 + 16) = v43;
      v29 = v46;
      *(v28 + 32) = v41;
      *(v28 + 40) = v29;
      v30 = v27;
      v31 = v29;
      v32 = sub_1BA4A6AE8();

      v33 = [v40 andPredicateWithSubpredicates_];

      v34 = qword_1EDC84AD8;
      swift_beginAccess();
      v35 = [*&v30[v34] fetchRequest];
      [v35 setPredicate_];

      sub_1B9F128B4();
      sub_1BA047948();

      v36 = v6 + *(v45 + 20);
      v37 = type metadata accessor for DirectSearchResult(0);
      sub_1BA0E7F10(*&v36[*(v37 + 20)], 1);

      sub_1B9F299EC(v6, type metadata accessor for SearchDataSource.State.SearchResults);
      goto LABEL_8;
    }

LABEL_7:
    sub_1BA26E8B4();
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1B9F299EC(v12, type metadata accessor for SearchDataSource.State);
    goto LABEL_7;
  }

  sub_1B9F299EC(v12, type metadata accessor for SearchDataSource.State);
  sub_1BA0E7F10(MEMORY[0x1E69E7CC0], 1);
LABEL_8:
  sub_1B9F12358(a1, v9, type metadata accessor for SearchDataSource.State);
  return sub_1BA26E1DC(v9);
}

uint64_t sub_1BA26E8B4()
{
  v1 = v0;
  v2 = *(*(v0 + qword_1EDC68C00) + qword_1EDC84BB8);
  sub_1BA4A27B8();
  v3 = v2;
  v4 = sub_1BA4A25B8();
  v5 = qword_1EDC84AD8;
  swift_beginAccess();
  v6 = [*&v3[v5] fetchRequest];
  [v6 setPredicate_];

  sub_1B9F128B4();
  sub_1BA047948();

  v7 = *(*(v1 + qword_1EDC68C08) + qword_1EDC84BB8);
  v8 = sub_1BA4A25B8();
  v9 = qword_1EDC84AD8;
  swift_beginAccess();
  v10 = [*&v7[v9] fetchRequest];
  [v10 setPredicate_];

  sub_1B9F128B4();
  sub_1BA047948();

  return sub_1BA0E7F10(MEMORY[0x1E69E7CC0], 1);
}

uint64_t SearchSectionDataSource.__allocating_init(_:mode:)(void *a1, char a2)
{
  *(swift_allocObject() + qword_1EDC84BF8) = a2 & 1;
  sub_1B9F126E0();
  v4 = objc_allocWithZone(v3);
  v5 = a1;
  v6 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v5);
  v7 = sub_1B9F17A68(v6, sub_1B9F2860C, 0, 0);

  return v7;
}

void sub_1BA26EAD8(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v9 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  v15 = qword_1EDC84C78;
  swift_beginAccess();
  sub_1B9F12358(v4 + v15, v14, type metadata accessor for SearchDataSource.State);
  swift_storeEnumTagMultiPayload();
  v16 = _s18HealthExperienceUI16SearchDataSourceC5StateO2eeoiySbAE_AEtFZ_0(v14, v11);
  sub_1B9F299EC(v11, type metadata accessor for SearchDataSource.State);
  sub_1B9F299EC(v14, type metadata accessor for SearchDataSource.State);
  sub_1BA26D9E8(a1, a2, a3, v16 & a4 & 1);
}

uint64_t sub_1BA26EC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v24 = a5;
  v6 = type metadata accessor for SearchDataSource.State(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23[-v10];
  sub_1B9F12538();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v19 = v18;
  sub_1BA4A45C8();
  v20 = qword_1EDC84C78;
  swift_beginAccess();
  sub_1B9F12358(a1 + v20, v11, type metadata accessor for SearchDataSource.State);
  swift_storeEnumTagMultiPayload();

  v21 = _s18HealthExperienceUI16SearchDataSourceC5StateO2eeoiySbAE_AEtFZ_0(v11, v8);
  sub_1B9F299EC(v8, type metadata accessor for SearchDataSource.State);
  sub_1B9F299EC(v11, type metadata accessor for SearchDataSource.State);
  sub_1BA26D9E8(v17, v19, v16, v21 & v24 & 1);

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1BA26EEA8()
{
  sub_1B9F299EC(v0 + qword_1EDC84C78, type metadata accessor for SearchDataSource.State);
}

uint64_t SearchDataSource.deinit()
{

  sub_1B9F299EC(v0 + qword_1EDC84C78, type metadata accessor for SearchDataSource.State);

  return v0;
}

uint64_t SearchDataSource.__deallocating_deinit()
{
  SearchDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t SearchSectionDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B9F18460(*(v0 + qword_1EDC64EB0), *(v0 + qword_1EDC64EB0 + 8), *(v0 + qword_1EDC64EB0 + 16));

  return swift_deallocClassInstance();
}

uint64_t SearchSectionDataSource.supplementaryItem(ofKind:at:)@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = *(v1 + qword_1EDC84BB8);
  v14 = qword_1EDC84AD8;
  swift_beginAccess();
  v15 = *(v13 + v14);
  v16 = sub_1BA4A18F8();
  v17 = [v15 objectAtIndexPath_];

  LODWORD(v15) = sub_1BA4A2708();
  v18 = sub_1BA4A1D18();
  v20 = v19;
  if (v15 == 6)
  {
    sub_1BA4A43F8();
  }

  else
  {
    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  }

  v21 = *(v4 + 16);
  v21(v9, v12, v3);
  v21(v6, v9, v3);
  v22 = type metadata accessor for HeaderItem();
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v18, v20, 0, 0, 0, 0, v6, 0, 0);
  v24 = v23;
  v25 = *(v4 + 8);
  v25(v9, v3);
  a1[3] = v22;
  a1[4] = sub_1B9F25478(&qword_1EDC69800, type metadata accessor for HeaderItem);
  *a1 = v24;
  return (v25)(v12, v3);
}

uint64_t sub_1BA26F3EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A4628();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A4638();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = *MEMORY[0x1E69DC178];
  v10 = *(v5 + 104);
  v10(v7, v9, v4);
  sub_1BA4A45F8();
  v10(v7, v9, v4);
  return sub_1BA4A4608();
}

void *SearchSectionDataSource.layout(for:)(uint64_t *a1)
{
  v4 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1998();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v12 = a1[1];
  MEMORY[0x1BFAEC360](0, v13, v9);
  if (sub_1BA26D188(v11))
  {
    v22 = v2;
    sub_1BA0797D8(v11, v20);
    sub_1B9F0D9AC(0, &qword_1EDC6AD50);
    sub_1B9F0D9AC(0, qword_1EDC66D98);
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(v18, v21);
      v14 = v22;
      v15 = sub_1BA26F828(v21, v13, v12);
      if (!v14)
      {
        v1 = v15;
      }

      __swift_destroy_boxed_opaque_existential_1(v21);
      (*(v8 + 8))(v11, v7);
      return v1;
    }

    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1BA271E30(v18, &qword_1EBBEF590, qword_1EDC66D98, &protocol descriptor for SearchSectionProviding);
  }

  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_1EDC6CBB8);
  sub_1B9F12358(v16, v6, type metadata accessor for ListLayoutConfiguration);
  sub_1B9F0E310(*(v6 + 16));
  *(v6 + 16) = sub_1BA26F3EC;
  *(v6 + 17) = 0;
  v1 = ListLayoutConfiguration.layout(for:)(v12);
  (*(v8 + 8))(v11, v7);
  sub_1B9F299EC(v6, type metadata accessor for ListLayoutConfiguration);
  return v1;
}

id sub_1BA26F828(void *a1, uint64_t a2, void *a3)
{
  v119 = a2;
  v121 = type metadata accessor for ListLayoutConfiguration();
  MEMORY[0x1EEE9AC00](v121);
  v7 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v118 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v120 = &v118 - v12;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 8))(v13, v14);
  if (v15 <= 5)
  {
    if (v15 <= 2)
    {
      if (v15)
      {
        if (v15 != 1)
        {
          if (qword_1EDC6D380 != -1)
          {
            swift_once();
          }

          v47 = &xmmword_1EDC6D388;
          goto LABEL_51;
        }

        if (qword_1EDC6CBB0 == -1)
        {
          goto LABEL_47;
        }

        goto LABEL_94;
      }

      static GridLayoutEngine.standard.getter(&v137);
      v51 = v119;
      v52 = sub_1BA1BA9D0(v119);
      v126 = v51;
      v127 = a3;
      v128 = v52;
      swift_unknownObjectRetain();
      v37 = GridLayoutEngine.layout(for:)(&v126);
      if (v3)
      {
        goto LABEL_92;
      }

LABEL_69:
      v55 = v37;
      swift_unknownObjectRelease();
      v131 = v139;
      v132 = v140;
      v133 = v141;
      v129 = v137;
      v130 = v138;
      sub_1B9F5A690(&v129);
      v84 = [objc_opt_self() estimatedDimension_];
      v85 = sub_1B9F5CA58(v84, 2);
      goto LABEL_70;
    }

    v28 = a3;
    if (v15 == 3)
    {
      if (qword_1EDC6CBB0 == -1)
      {
LABEL_47:
        v53 = __swift_project_value_buffer(v121, qword_1EDC6CBB8);
        v54 = v120;
        sub_1B9F12358(v53, v120, type metadata accessor for ListLayoutConfiguration);
        sub_1B9F0E310(*(v54 + 128));
        *(v54 + 128) = sub_1BA26F3EC;
        *(v54 + 136) = 0;
        v55 = ListLayoutConfiguration.layout(for:)(a3);
        v56 = v54;
LABEL_82:
        sub_1B9F299EC(v56, type metadata accessor for ListLayoutConfiguration);
        return v55;
      }

LABEL_94:
      swift_once();
      goto LABEL_47;
    }

    if (v15 == 4)
    {
      v29 = [a3 traitCollection];
      v30 = [v29 horizontalSizeClass];

      if (v30 != 1)
      {
        swift_beginAccess();
        v31 = *&qword_1EDC68DF0;
        v32 = sub_1B9F58798(&unk_1F37FC1F8);
        if (v31 <= 0.0)
        {
          goto LABEL_96;
        }

        v33 = v32;
        sub_1B9F0ADF8(0, &qword_1EDC5E2F0);
        v34 = sub_1BA4A7648();
        *&v137 = v31;
        *(&v137 + 1) = v33;
        v138 = 0uLL;
        *&v139 = 0x4049000000000000;
        v140 = 0uLL;
        *(&v139 + 1) = v34;
        *&v141 = sub_1B9F58BC4;
        *(&v141 + 1) = 0;
        v35 = v119;
        v36 = sub_1BA1BA9D0(v119);
        v123 = v35;
        v124 = a3;
        v125 = v36;
        swift_unknownObjectRetain();
        v37 = GridLayoutEngine.layout(for:)(&v123);
        if (v3)
        {
          goto LABEL_92;
        }

        goto LABEL_69;
      }
    }

    else
    {
      v39 = v3;
      if (*(v122 + qword_1EDC84BF8))
      {
        sub_1BA270BE8(&unk_1F37FC238);
        v66 = v65;
        v67 = [a3 traitCollection];
        v68 = [v67 horizontalSizeClass];

        if (v66)
        {
          if (v68 != 1)
          {
            swift_beginAccess();
            v104 = *&qword_1EDC68DF0;
            v105 = sub_1B9F58798(&unk_1F37FC1F8);
            if (v104 <= 0.0)
            {
              goto LABEL_96;
            }

            v106 = v105;
            sub_1B9F0ADF8(0, &qword_1EDC5E2F0);
            v107 = sub_1BA4A7648();
            *&v137 = v104;
            *(&v137 + 1) = v106;
            v138 = 0uLL;
            *&v139 = 0x4049000000000000;
            v140 = 0uLL;
            *(&v139 + 1) = v107;
            *&v141 = sub_1B9F58BC4;
            *(&v141 + 1) = 0;
            v108 = v119;
            v109 = sub_1BA1BA9D0(v119);
            v123 = v108;
            v124 = v28;
            v125 = v109;
            goto LABEL_61;
          }

          if (qword_1EDC6CB88 != -1)
          {
            swift_once();
          }

          v69 = qword_1EDC6CB90;
          goto LABEL_80;
        }

        if (v68 != 1)
        {
          swift_beginAccess();
          v110 = *&qword_1EDC68DF0;
          v111 = sub_1B9F58798(&unk_1F37FC1F8);
          if (v110 <= 0.0)
          {
            goto LABEL_96;
          }

          v112 = v111;
          sub_1B9F0ADF8(0, &qword_1EDC5E2F0);
          v113 = sub_1BA4A7648();
          *&v137 = v110;
          *(&v137 + 1) = v112;
          v138 = 0uLL;
          *&v139 = 0x4049000000000000;
          v140 = 0uLL;
          *(&v139 + 1) = v113;
          *&v141 = sub_1B9F58BC4;
          *(&v141 + 1) = 0;
          v114 = v119;
          v115 = sub_1BA1BA9D0(v119);
          v123 = v114;
          v124 = v28;
          v125 = v115;
          swift_unknownObjectRetain();
          v37 = GridLayoutEngine.layout(for:)(&v123);
          if (v3)
          {
            goto LABEL_92;
          }

          goto LABEL_69;
        }
      }

      else
      {
        v86 = [a3 traitCollection];
        v87 = [v86 horizontalSizeClass];

        if (v87 != 1)
        {
          swift_beginAccess();
          v88 = *&qword_1EDC68DF0;
          v89 = sub_1B9F58798(&unk_1F37FC1F8);
          if (v88 <= 0.0)
          {
            goto LABEL_96;
          }

          v90 = v89;
          sub_1B9F0ADF8(0, &qword_1EDC5E2F0);
          v91 = sub_1BA4A7648();
          *&v137 = v88;
          *(&v137 + 1) = v90;
          v138 = 0uLL;
          *&v139 = 0x4049000000000000;
          v140 = 0uLL;
          *(&v139 + 1) = v91;
          *&v141 = sub_1B9F58BC4;
          *(&v141 + 1) = 0;
          v92 = v119;
          v93 = sub_1BA1BA9D0(v119);
          v123 = v92;
          v124 = a3;
          v125 = v93;
          swift_unknownObjectRetain();
          v37 = GridLayoutEngine.layout(for:)(&v123);
          if (v3)
          {
            goto LABEL_92;
          }

          goto LABEL_69;
        }
      }
    }

    if (qword_1EDC6CBB0 != -1)
    {
      swift_once();
    }

    v69 = qword_1EDC6CBB8;
LABEL_80:
    v102 = __swift_project_value_buffer(v121, v69);
    v49 = v120;
    sub_1B9F12358(v102, v120, type metadata accessor for ListLayoutConfiguration);
    sub_1B9F12358(v49, v10, type metadata accessor for ListLayoutConfiguration);
    sub_1B9F0E310(*(v10 + 16));
    *(v10 + 16) = sub_1BA270AD0;
    *(v10 + 17) = 0;
    v50 = v28;
LABEL_81:
    v55 = ListLayoutConfiguration.layout(for:)(v50);
    sub_1B9F299EC(v49, type metadata accessor for ListLayoutConfiguration);
    v56 = v10;
    goto LABEL_82;
  }

  if (v15 < 9)
  {
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    (*(v18 + 8))(v17, v18);
    v19 = sub_1BA4A1D28();
    v20 = sub_1BA4A1D28();
    if (v19 == v20)
    {
      v20 = sub_1BA4A1BD8();
      if (v20)
      {
        v21 = a3;
        v22 = [a3 traitCollection];
        v23 = [v22 horizontalSizeClass];

        v24 = [a3 traitCollection];
        v25 = [v24 horizontalSizeClass];

        if (v25 == 1)
        {
          if (v23 == 2)
          {
            v26 = v120;
            if (qword_1EDC6CBB0 != -1)
            {
              swift_once();
            }

            v27 = qword_1EDC6CBB8;
          }

          else
          {
            v26 = v120;
            if (qword_1EDC6CB88 != -1)
            {
              swift_once();
            }

            v27 = qword_1EDC6CB90;
          }

          v103 = __swift_project_value_buffer(v121, v27);
          sub_1B9F12358(v103, v7, type metadata accessor for ListLayoutConfiguration);
          sub_1B9F12358(v7, v26, type metadata accessor for ListLayoutConfiguration);
          sub_1B9F0E310(*(v26 + 128));
          *(v26 + 128) = sub_1BA270AD0;
          *(v26 + 136) = 0;
          v55 = ListLayoutConfiguration.layout(for:)(v21);
          sub_1B9F299EC(v7, type metadata accessor for ListLayoutConfiguration);
          v56 = v26;
          goto LABEL_82;
        }

        swift_beginAccess();
        v95 = *&qword_1EDC68DF0;
        v96 = sub_1B9F58798(&unk_1F37FC1F8);
        if (v95 > 0.0)
        {
          v97 = v96;
          sub_1B9F0ADF8(0, &qword_1EDC5E2F0);
          v98 = sub_1BA4A7648();
          *&v137 = v95;
          *(&v137 + 1) = v97;
          v138 = 0uLL;
          *&v139 = 0x4049000000000000;
          v140 = 0uLL;
          *(&v139 + 1) = v98;
          *&v141 = sub_1B9F58BC4;
          *(&v141 + 1) = 0;
          v99 = v119;
          v100 = sub_1BA1BA9D0(v119);
          v123 = v99;
          v124 = a3;
          v125 = v100;
          swift_unknownObjectRetain();
          v101 = GridLayoutEngine.layout(for:)(&v123);
          if (v3)
          {
            goto LABEL_92;
          }

          v55 = v101;
          swift_unknownObjectRelease();
          v131 = v139;
          v132 = v140;
          v133 = v141;
          v129 = v137;
          v130 = v138;
          sub_1B9F5A690(&v129);
          if (v23 == 2)
          {
            v84 = [objc_opt_self() estimatedDimension_];
            v85 = sub_1B9F5CA58(v84, 2);
            goto LABEL_70;
          }

          return v55;
        }

LABEL_96:
        v117 = 0;
        v116 = 31;
        result = sub_1BA4A8018();
        __break(1u);
        return result;
      }
    }

    MEMORY[0x1EEE9AC00](v20);
    v116 = a1;
    v38 = sub_1BA09AE2C(sub_1BA271E10, (&v118 - 4), &unk_1F37FC260);
    v39 = v3;
    sub_1BA270BE8(v38);
    v41 = v40;

    v42 = [a3 traitCollection];
    v43 = [v42 horizontalSizeClass];

    if (v41)
    {
      if (v43 != 1)
      {
        swift_beginAccess();
        v70 = *&qword_1EDC68DF0;
        v71 = sub_1B9F58798(&unk_1F37FC1F8);
        if (v70 <= 0.0)
        {
          goto LABEL_96;
        }

        v72 = v71;
        sub_1B9F0ADF8(0, &qword_1EDC5E2F0);
        v73 = sub_1BA4A7648();
        *&v137 = v70;
        *(&v137 + 1) = v72;
        v138 = 0uLL;
        *&v139 = 0x4049000000000000;
        v140 = 0uLL;
        *(&v139 + 1) = v73;
        *&v141 = sub_1B9F58BC4;
        *(&v141 + 1) = 0;
        v74 = v119;
        v75 = sub_1BA1BA9D0(v119);
        v123 = v74;
        v124 = a3;
        v125 = v75;
LABEL_61:
        swift_unknownObjectRetain();
        v76 = GridLayoutEngine.layout(for:)(&v123);
        if (v39)
        {
          goto LABEL_92;
        }

        v55 = v76;
        swift_unknownObjectRelease();
        v131 = v139;
        v132 = v140;
        v133 = v141;
        v129 = v137;
        v130 = v138;
        sub_1B9F5A690(&v129);
        return v55;
      }

      if (qword_1EDC6CB88 != -1)
      {
        swift_once();
      }

      v44 = qword_1EDC6CB90;
    }

    else
    {
      if (v43 != 1)
      {
        swift_beginAccess();
        v77 = *&qword_1EDC68DF0;
        v78 = sub_1B9F58798(&unk_1F37FC1F8);
        if (v77 > 0.0)
        {
          v79 = v78;
          sub_1B9F0ADF8(0, &qword_1EDC5E2F0);
          v80 = sub_1BA4A7648();
          *&v137 = v77;
          *(&v137 + 1) = v79;
          v138 = 0uLL;
          *&v139 = 0x4049000000000000;
          v140 = 0uLL;
          *(&v139 + 1) = v80;
          *&v141 = sub_1B9F58BC4;
          *(&v141 + 1) = 0;
          v81 = v119;
          v82 = sub_1BA1BA9D0(v119);
          v123 = v81;
          v124 = a3;
          v125 = v82;
          swift_unknownObjectRetain();
          v83 = GridLayoutEngine.layout(for:)(&v123);
          if (!v3)
          {
            v55 = v83;
            swift_unknownObjectRelease();
            v131 = v139;
            v132 = v140;
            v133 = v141;
            v129 = v137;
            v130 = v138;
            sub_1B9F5A690(&v129);
            v84 = [objc_opt_self() estimatedDimension_];
            v85 = sub_1B9F5CA58(v84, 2);
LABEL_70:
            v94 = v85;

            return v94;
          }

          goto LABEL_92;
        }

        goto LABEL_96;
      }

      if (qword_1EDC6CBB0 != -1)
      {
        swift_once();
      }

      v44 = qword_1EDC6CBB8;
    }

    v48 = __swift_project_value_buffer(v121, v44);
    v49 = v120;
    sub_1B9F12358(v48, v120, type metadata accessor for ListLayoutConfiguration);
    sub_1B9F12358(v49, v10, type metadata accessor for ListLayoutConfiguration);
    sub_1B9F0E310(*(v10 + 16));
    *(v10 + 16) = sub_1BA270AD0;
    *(v10 + 17) = 0;
    v50 = a3;
    goto LABEL_81;
  }

  if (v15 > 10)
  {
    if (v15 != 11)
    {
      goto LABEL_35;
    }

    static GridLayoutEngine.articles.getter(&v137);
    v45 = v119;
    v46 = sub_1BA1BA9D0(v119);
    v126 = v45;
    v127 = a3;
    v128 = v46;
    swift_unknownObjectRetain();
    v37 = GridLayoutEngine.layout(for:)(&v126);
    if (!v3)
    {
      goto LABEL_69;
    }

LABEL_92:
    swift_unknownObjectRelease();
    v131 = v139;
    v132 = v140;
    v133 = v141;
    v129 = v137;
    v130 = v138;
    return sub_1B9F5A690(&v129);
  }

  if (v15 != 9)
  {
LABEL_35:
    if (qword_1EBBE8838 != -1)
    {
      swift_once();
    }

    v47 = &xmmword_1EBBF0B18;
LABEL_51:
    v57 = v47[5];
    v141 = v47[4];
    v142 = v57;
    v58 = v47[7];
    v143 = v47[6];
    v144 = v58;
    v59 = v47[1];
    v137 = *v47;
    v138 = v59;
    v60 = v47[3];
    v139 = v47[2];
    v140 = v60;
    sub_1B9F0ADF8(0, &qword_1EDC6B530);
    v61 = v47[5];
    v133 = v47[4];
    v134 = v61;
    v62 = v47[7];
    v135 = v47[6];
    v136 = v62;
    v63 = v47[1];
    v129 = *v47;
    v130 = v63;
    v64 = v47[3];
    v131 = v47[2];
    v132 = v64;
    sub_1B9F1D9A4(&v137, &v126);
    return sub_1B9F293A8(&v129);
  }

  if (qword_1EDC6CBB0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v121, qword_1EDC6CBB8);
  return ListLayoutConfiguration.layout(for:)(a3);
}

uint64_t sub_1BA270AD0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A4628();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A4638();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  (*(v5 + 104))(v7, *MEMORY[0x1E69DC188], v4);
  return sub_1BA4A4608();
}

void sub_1BA270BE8(uint64_t a1)
{
  sub_1B9F12538();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = *(a1 + 16);
  if (!v54)
  {
    return;
  }

  v48 = &v45 - v8;
  v49 = v7;
  v50 = v1;
  v9 = *(v1 + qword_1EDC84BB8);
  v51 = a1 + 32;
  v52 = qword_1EDC84AD8;
  v53 = v9;
  swift_beginAccess();
  v10 = 0;
  v46 = (v4 + 8);
  v47 = (v4 + 16);
  do
  {
    v55 = v10;
    LOWORD(v58) = sub_1BA4A1D28();
    v11 = sub_1BA4A82D8();
    v13 = v12;
    v14 = [*(v53 + v52) sections];
    if (v14)
    {
      v15 = v14;
      sub_1BA024D28();
      v16 = sub_1BA4A6B08();

      v56 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v16 >> 62)
      {
        v57 = sub_1BA4A7CC8();
      }

      else
      {
        v57 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = 0;
      v18 = 0;
      while (1)
      {
        if (v57 == v18)
        {

          break;
        }

        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1BFAF2860](v18, v16);
        }

        else
        {
          if (v18 >= *(v56 + 16))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          v19 = *(v16 + 8 * v18 + 32);
          swift_unknownObjectRetain();
        }

        v20 = [v19 name];
        v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v23 = v22;

        if (v21 == v11 && v23 == v13)
        {

          swift_unknownObjectRelease();
          goto LABEL_25;
        }

        v25 = sub_1BA4A8338();
        swift_unknownObjectRelease();

        if (v25)
        {

LABEL_25:

          v27 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
          v28 = v50;
          swift_beginAccess();
          v29 = v48;
          v30 = *v47;
          v31 = v49;
          (*v47)(v48, v28 + v27, v49);
          v32 = sub_1BA4A4548();
          v33 = *v46;
          (*v46)(v29, v31);
          if (v18 >= v32)
          {
            goto LABEL_5;
          }

          v35 = v49;
          v34 = v50;
          v36 = v48;
          v30(v48, v50 + v27, v49);
          v37 = v34 + v27;
          v38 = v45;
          v30(v45, v37, v35);
          v39 = v35;
          v40 = sub_1BA4A4578();
          v33(v38, v39);
          if (v18 < *(v40 + 16))
          {
            v41 = v40 + v17;
            v43 = *(v40 + v17 + 32);
            v42 = *(v41 + 40);

            v58 = v43;
            v59 = v42;
            v44 = sub_1BA4A44A8();
            v33(v36, v39);

            if (v44 < 1)
            {
              goto LABEL_5;
            }

            return;
          }

LABEL_33:
          __break(1u);
          return;
        }

        v17 += 16;
        if (__OFADD__(v18++, 1))
        {
          goto LABEL_32;
        }
      }
    }

LABEL_5:
    v10 = v55 + 1;
  }

  while (v55 + 1 != v54);
}

BOOL sub_1BA27104C(uint64_t a1, void *a2)
{
  v3 = sub_1BA4A1D28();
  v4 = a2[3];
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(v5 + 8))(v4, v5);
  return v3 < sub_1BA4A1D28();
}

uint64_t sub_1BA271108(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, char a5, uint64_t (*a6)(void))
{
  result = a6();
  v68 = result;
  if (a5)
  {
    if (a5 != 1)
    {
      v45 = a3();

      return v45;
    }

    v67 = *(result + 16);
    if (v67)
    {
      v9 = 0;
      v10 = (result + 72);
      v11 = MEMORY[0x1E69E7CC0];
      while (v9 < *(result + 16))
      {
        v12 = *(v10 - 1);
        v13 = *v10;
        v15 = *(v10 - 3);
        v14 = *(v10 - 2);
        v16 = *(v10 - 4);
        v74[0] = *(v10 - 5);
        v74[1] = v16;
        v74[2] = v15;
        v74[3] = v14;
        v74[4] = v12;
        v74[5] = v13;

        (a3)(v75, v74);

        v17 = v75[0];
        v18 = v75[1];
        v70 = v76;
        v19 = v77;
        v20 = v78;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1B9F21540(0, *(v11 + 2) + 1, 1, v11);
        }

        v22 = *(v11 + 2);
        v21 = *(v11 + 3);
        if (v22 >= v21 >> 1)
        {
          v11 = sub_1B9F21540((v21 > 1), v22 + 1, 1, v11);
        }

        ++v9;
        *(v11 + 2) = v22 + 1;
        v23 = &v11[48 * v22];
        *(v23 + 4) = v17;
        *(v23 + 5) = v18;
        *(v23 + 3) = v70;
        *(v23 + 8) = v19;
        *(v23 + 9) = v20;
        v10 += 6;
        result = v68;
        if (v67 == v9)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_65;
    }

    v11 = MEMORY[0x1E69E7CC0];
LABEL_46:

    v46 = 0;
    v47 = *(v11 + 2);
    v48 = MEMORY[0x1E69E7CC0];
LABEL_47:
    v49 = &v11[48 * v46 + 16];
    while (v47 != v46)
    {
      if (v46 >= *(v11 + 2))
      {
        goto LABEL_64;
      }

      ++v46;
      v50 = (v49 + 48);
      v51 = *(v49 + 32);
      v49 += 48;
      if (*(v51 + 16))
      {
        v52 = *(v50 - 3);
        v69 = *(v50 - 4);
        v53 = *(v50 - 1);
        v54 = *v50;
        v55 = v50[1];

        result = swift_isUniquelyReferenced_nonNull_native();
        v75[0] = v48;
        v73 = v53;
        if ((result & 1) == 0)
        {
          result = sub_1B9F277B0(0, *(v48 + 16) + 1, 1);
          v48 = v75[0];
        }

        v57 = *(v48 + 16);
        v56 = *(v48 + 24);
        if (v57 >= v56 >> 1)
        {
          result = sub_1B9F277B0((v56 > 1), v57 + 1, 1);
          v48 = v75[0];
        }

        *(v48 + 16) = v57 + 1;
        v58 = (v48 + 48 * v57);
        v58[4] = v69;
        v58[5] = v52;
        v58[6] = v51;
        v58[7] = v73;
        v58[8] = v54;
        v58[9] = v55;
        goto LABEL_47;
      }
    }

    v59 = v48;
    goto LABEL_58;
  }

  v64 = *(result + 16);
  if (!v64)
  {
    v59 = MEMORY[0x1E69E7CC0];
LABEL_58:

    return v59;
  }

  v24 = 0;
  v63 = result + 32;
  v59 = MEMORY[0x1E69E7CC0];
  v62 = a2;
  while (1)
  {
    if (v24 >= *(result + 16))
    {
      goto LABEL_66;
    }

    v71 = v24;
    v25 = (v63 + 48 * v24);
    v26 = v25[2];
    v27 = v25[5];
    v60 = v25[4];
    v61 = *v25;
    v28 = *(v26 + 16);
    v66 = v25[1];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v65 = v27;
    result = swift_bridgeObjectRetain_n();
    if (v28)
    {
      break;
    }

    v31 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v24 = v71 + 1;

    v40 = Array<A>.identifierToIndexDict()(v31);

    if (v31[2] || (v62 & 1) != 0)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_1B9F21540(0, *(v59 + 2) + 1, 1, v59);
      }

      v41 = v59;
      v43 = *(v59 + 2);
      v42 = *(v59 + 3);
      if (v43 >= v42 >> 1)
      {
        v41 = sub_1B9F21540((v42 > 1), v43 + 1, 1, v59);
      }

      *(v41 + 2) = v43 + 1;
      v59 = v41;
      v44 = &v41[48 * v43];
      *(v44 + 4) = v61;
      *(v44 + 5) = v66;
      *(v44 + 6) = v31;
      *(v44 + 7) = v40;
      *(v44 + 8) = v60;
      *(v44 + 9) = v65;
    }

    else
    {

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
    }

    result = v68;
    if (v24 == v64)
    {
      goto LABEL_58;
    }
  }

  v29 = 0;
  v30 = v26 + 32;
  v31 = MEMORY[0x1E69E7CC0];
  while (v29 < *(v26 + 16))
  {
    sub_1B9F0A534(v30, v75);
    v32 = (a3)(v75);
    result = __swift_destroy_boxed_opaque_existential_1(v75);
    v33 = *(v32 + 16);
    v34 = v31[2];
    v35 = v34 + v33;
    if (__OFADD__(v34, v33))
    {
      goto LABEL_60;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v35 <= v31[3] >> 1)
    {
      if (*(v32 + 16))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v34 <= v35)
      {
        v36 = v34 + v33;
      }

      else
      {
        v36 = v34;
      }

      result = sub_1B9F281E8(result, v36, 1, v31);
      v31 = result;
      if (*(v32 + 16))
      {
LABEL_29:
        if ((v31[3] >> 1) - v31[2] < v33)
        {
          goto LABEL_62;
        }

        sub_1B9F0D9AC(0, &qword_1EDC6AD50);
        swift_arrayInitWithCopy();

        if (v33)
        {
          v37 = v31[2];
          v38 = __OFADD__(v37, v33);
          v39 = v37 + v33;
          if (v38)
          {
            goto LABEL_63;
          }

          v31[2] = v39;
        }

        goto LABEL_18;
      }
    }

    if (v33)
    {
      goto LABEL_61;
    }

LABEL_18:
    ++v29;
    v30 += 40;
    if (v28 == v29)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_1BA271720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectSearchResult(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1BA2717C8()
{
  if (!qword_1EDC5E738)
  {
    type metadata accessor for SearchDataSource.State.SearchResults(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC5E738);
    }
  }
}

uint64_t sub_1BA2718A0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, char a4)
{
  v5 = v4;
  v10 = v5 + qword_1EDC64EB0;
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  *(v5 + qword_1EDC84BB8) = a1;
  *(v5 + *(*v5 + 520)) = 0;
  sub_1B9F17BE8(a2, a3, a4);

  v12 = sub_1BA1E45B0(v11, 0, a2, a3, a4);
  sub_1B9F18460(a2, a3, a4);
  v13 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v14 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);

  MEMORY[0x1BFAF1350](v13, v14);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v15 = MutableArrayDataSource.init(arrangedSections:identifier:)(v12, 0x534464657070614DLL, 0xE90000000000003CLL);
  v16 = *(v15 + qword_1EDC84BB8);
  swift_beginAccess();
  [*(v16 + 16) registerObserver_];
  return v15;
}

uint64_t sub_1BA271A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchDataSource.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA271A9C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, char a4, uint64_t (*a5)(void))
{
  v7 = v5;
  v12 = v7 + qword_1EDC64EB0;
  *v12 = a2;
  *(v12 + 8) = a3;
  *(v12 + 16) = a4;
  *(v7 + qword_1EDC84BB8) = a1;
  *(v7 + *(*v7 + 520)) = 0;
  sub_1B9F17BE8(a2, a3, a4);

  v14 = sub_1BA271108(v13, 0, a2, a3, a4, a5);
  sub_1B9F18460(a2, a3, a4);
  v15 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v16 = *(a1 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);

  MEMORY[0x1BFAF1350](v15, v16);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v17 = MutableArrayDataSource.init(arrangedSections:identifier:)(v14, 0x534464657070614DLL, 0xE90000000000003CLL);
  v18 = *(v17 + qword_1EDC84BB8);
  swift_beginAccess();
  [*(v18 + 16) registerObserver_];
  return v17;
}

uint64_t sub_1BA271C18(void *a1, uint64_t (*a2)(void), uint64_t a3, char a4)
{
  v5 = v4;
  v10 = v5 + qword_1EDC64EB0;
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  *(v5 + qword_1EDC84BB8) = a1;
  *(v5 + *(*v5 + 520)) = 0;
  sub_1B9F17BE8(a2, a3, a4);
  v11 = a1;
  v12 = sub_1BA271108(v11, 0, a2, a3, a4, sub_1BA1F6C64);
  sub_1B9F18460(a2, a3, a4);
  v13 = *&v11[qword_1EDC84AD0];
  v14 = *&v11[qword_1EDC84AD0 + 8];

  MEMORY[0x1BFAF1350](v13, v14);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v15 = MutableArrayDataSource.init(arrangedSections:identifier:)(v12, 0x534464657070614DLL, 0xE90000000000003CLL);
  v16 = *(v15 + qword_1EDC84BB8);
  v17 = qword_1EBBEA528;
  swift_beginAccess();
  [*(v16 + v17) registerObserver_];
  return v15;
}

uint64_t sub_1BA271DAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchDataSource.State.SearchResults(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA271E30(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F28AB0(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1BA271EC8(uint64_t a1)
{
  result = sub_1B9F25478(&qword_1EBBEF598, type metadata accessor for NoDataItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA271F48()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v90 = *(v2 - 8);
  v91 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v85 = &v80 - v6;
  v7 = sub_1BA4A41C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A4428();
  v86 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0D484(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v80 - v15;
  v17 = sub_1BA4A4168();
  v88 = *(v17 - 8);
  v89 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v1[v20], &v93);
  if (v95)
  {
    v84 = v11;
    sub_1B9FCD918();
    type metadata accessor for ManualDataSelectionNextButtonItem();
    if (swift_dynamicCast())
    {
      v21 = v19;
      v22 = v92;
      sub_1BA4A4158();
      v23 = objc_opt_self();
      v24 = [v23 systemBlueColor];
      sub_1BA4A4118();
      v25 = v88;
      v26 = *(v88 + 16);
      ObjectType = v21;
      v27 = v21;
      v28 = v89;
      v26(v16, v27, v89);
      (*(v25 + 56))(v16, 0, 1, v28);
      v29 = MEMORY[0x1BFAF1F10](v16);
      MEMORY[0x1BFAF2040](v29);

      sub_1BA4A43B8();
      (*(v8 + 104))(v10, *MEMORY[0x1E69DC100], v7);
      v30 = sub_1BA4A4238();
      sub_1BA4A4208();
      v30(&v93, 0);
      v31 = [v23 systemWhiteColor];
      v32 = sub_1BA4A4238();
      sub_1BA4A41F8();
      v32(&v93, 0);
      v33 = *MEMORY[0x1E69DDCF8];
      v34 = objc_opt_self();
      v35 = [v34 preferredFontDescriptorWithTextStyle:v33 compatibleWithTraitCollection:0];
      v36 = [v35 fontDescriptorWithSymbolicTraits_];

      if (v36)
      {
        v37 = [objc_opt_self() fontWithDescriptor:v36 size:0.0];
        v38 = ObjectType;
      }

      else
      {
        v51 = v85;
        sub_1BA4A3DD8();
        v52 = v33;
        v53 = sub_1BA4A3E88();
        v54 = sub_1BA4A6FB8();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v81 = v54;
          v56 = v55;
          v80 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v92 = v82;
          *v56 = 136315906;
          v57 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v59 = sub_1B9F0B82C(v57, v58, &v92);
          v83 = v22;
          v60 = v59;

          *(v56 + 4) = v60;
          *(v56 + 12) = 2080;
          v93 = 0;
          v94 = 1;
          sub_1B9F0D484(0, &qword_1EBBECB00, type metadata accessor for Weight);
          v61 = sub_1BA4A6808();
          v63 = sub_1B9F0B82C(v61, v62, &v92);

          *(v56 + 14) = v63;
          *(v56 + 22) = 2080;
          LODWORD(v93) = 2;
          type metadata accessor for SymbolicTraits(0);
          v64 = sub_1BA4A6808();
          v66 = sub_1B9F0B82C(v64, v65, &v92);

          *(v56 + 24) = v66;
          *(v56 + 32) = 2112;
          v67 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          *(v56 + 34) = v67;
          v68 = v80;
          *v80 = v67;
          _os_log_impl(&dword_1B9F07000, v53, v81, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v56, 0x2Au);
          sub_1B9F441D0(v68, &qword_1EDC6B490, sub_1BA0004FC);
          MEMORY[0x1BFAF43A0](v68, -1, -1);
          v69 = v82;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v69, -1, -1);
          MEMORY[0x1BFAF43A0](v56, -1, -1);
        }

        (*(v90 + 8))(v51, v91);
        v38 = ObjectType;
        v36 = [v34 preferredFontDescriptorWithTextStyle_];
        v37 = [objc_opt_self() fontWithDescriptor:v36 size:0.0];
      }

      v70 = v37;

      v71 = sub_1BA4A4238();
      sub_1BA4A41E8();
      v71(&v93, 0);
      v72 = v84;
      v95 = v84;
      v96 = MEMORY[0x1E69DC110];
      v73 = __swift_allocate_boxed_opaque_existential_1(&v93);
      v74 = v86;
      (*(v86 + 16))(v73, v13, v72);
      MEMORY[0x1BFAF1EF0](&v93);
      v75 = sub_1BA272CC4();
      v77 = v76;

      (*(v74 + 8))(v13, v72);
      (*(v88 + 8))(v38, v89);
      v78 = &v1[OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_didTapAction];
      v79 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_didTapAction];
      *v78 = v75;
      v78[1] = v77;
      return sub_1B9F0E310(v79);
    }
  }

  else
  {
    sub_1B9F441D0(&v93, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1BA4A3D88();
  v39 = v1;
  v40 = sub_1BA4A3E88();
  v41 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v92 = v43;
    *v42 = 136315394;
    v44 = sub_1BA4A85D8();
    v46 = sub_1B9F0B82C(v44, v45, &v92);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    sub_1B9F68124(&v1[v20], &v93);
    sub_1B9F0D484(0, &qword_1EDC6E1A0, sub_1B9FCD918);
    v47 = sub_1BA4A6808();
    v49 = sub_1B9F0B82C(v47, v48, &v92);

    *(v42 + 14) = v49;
    _os_log_impl(&dword_1B9F07000, v40, v41, "[%s] Item is not a ManualDataSelectionNextButtonItem: %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v43, -1, -1);
    MEMORY[0x1BFAF43A0](v42, -1, -1);
  }

  return (*(v90 + 8))(v4, v91);
}

id sub_1BA272A60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManualDataSelectionNextButtonCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA272B24@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA272B7C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA271F48();
  return sub_1B9F441D0(a1, &qword_1EDC6E1A0, sub_1B9FCD918);
}

uint64_t (*sub_1BA272C04(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA272C68;
}

uint64_t sub_1BA272C68(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA271F48();
  }

  return result;
}

void (*sub_1BA272CC4())(void *a1)
{
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[15];
  }

  else
  {
    v3 = *v0;
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v4 + 24) = v3;
    v2 = sub_1BA2738EC;
    v0[15] = sub_1BA2738EC;
    v0[16] = v4;

    sub_1B9F0E310(0);
  }

  sub_1B9F0F1B8(v1);
  return v2;
}

void sub_1BA272D94(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v79 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v79 - v17;
  type metadata accessor for SummarySharingDataTypeSelectionViewController(0);
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    sub_1BA4A3DD8();
    v37 = sub_1BA4A3E88();
    v38 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = v6;
      v41 = swift_slowAlloc();
      v92[0] = v41;
      *v39 = 136315138;
      v42 = sub_1BA4A85D8();
      v44 = sub_1B9F0B82C(v42, v43, v92);

      *(v39 + 4) = v44;
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      MEMORY[0x1BFAF43A0](v39, -1, -1);

      (*(v7 + 8))(v9, v40);
      return;
    }

    v54 = *(v7 + 8);
    v55 = v9;
LABEL_18:
    v54(v55, v6);
    return;
  }

  v20 = (v19 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact);
  v21 = *(v19 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContact);
  if (!v21)
  {
    v45 = a1;
    sub_1BA4A3DD8();
    v46 = sub_1BA4A3E88();
    v47 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = v6;
      v50 = swift_slowAlloc();
      v92[0] = v50;
      *v48 = 136315138;
      v51 = sub_1BA4A85D8();
      v53 = sub_1B9F0B82C(v51, v52, v92);

      *(v48 + 4) = v53;
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x1BFAF43A0](v50, -1, -1);
      MEMORY[0x1BFAF43A0](v48, -1, -1);

      (*(v7 + 8))(v12, v49);
      return;
    }

    v54 = *(v7 + 8);
    v55 = v12;
    goto LABEL_18;
  }

  v83 = a3;
  v84 = a2;
  v85 = v7;
  v22 = v20[1];
  v23 = v20[2];
  v24 = v20[3];
  v25 = v20[4];
  v92[0] = v21;
  v92[1] = v22;
  v92[2] = v23;
  v92[3] = v24;
  v92[4] = v25;
  v26 = *(v19 + OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedContactPhotoPublisher);
  if (v26)
  {
    v82 = v19;
    v80 = a1;
    v81 = v21;
    sub_1BA2738F4(v21);

    sub_1BA4A3D88();
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FC8();
    v29 = v26;
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v79 = v23;
      v32 = v31;
      v86 = v31;
      *v30 = 136315138;
      v33 = sub_1BA4A85D8();
      v35 = v6;
      v36 = sub_1B9F0B82C(v33, v34, &v86);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s] Presenting SummarySharingOnboardingKitSharingConfirmationViewController", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1BFAF43A0](v32, -1, -1);
      MEMORY[0x1BFAF43A0](v30, -1, -1);

      (*(v85 + 8))(v18, v35);
    }

    else
    {

      (*(v85 + 8))(v18, v6);
    }

    v65 = v84;
    v66 = type metadata accessor for SummarySharingOnboardingManualDataTypeSelectionViewController();
    memset(v91, 0, sizeof(v91));
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 9;
    v90 = 7;

    sub_1B9FEEC64(v66, v91, 0, &v86);

    sub_1B9FF3BFC(v86, v87, v88, v89);
    sub_1B9F23224(v91);
    v67 = OBJC_IVAR____TtC18HealthExperienceUI45SummarySharingDataTypeSelectionViewController_selectedDataTypesContext;
    v68 = v82;
    swift_beginAccess();
    v69 = *(v68 + v67);
    sub_1B9F0A534(v65 + 72, &v86);
    v70 = *(v65 + 112);
    v71 = *(v65 + 48);
    v72 = objc_allocWithZone(type metadata accessor for SummarySharingOnboardingKitSharingConfirmationViewController());

    v73 = v81;

    v74 = v70;

    v75 = sub_1BA313E58(v92, v29, v69, &v86, v74, v71);

    v76 = v80;
    v77 = [v80 navigationController];
    if (v77)
    {
      v78 = v77;
      [v77 showViewController:v75 sender:0];
    }
  }

  else
  {
    v56 = a1;
    sub_1BA2738F4(v21);
    sub_1BA4A3DD8();
    v57 = sub_1BA4A3E88();
    v58 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v84 = v6;
      v61 = v60;
      v86 = v60;
      *v59 = 136315138;
      v62 = sub_1BA4A85D8();
      v79 = v23;
      v64 = sub_1B9F0B82C(v62, v63, &v86);

      *(v59 + 4) = v64;
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x1BFAF43A0](v61, -1, -1);
      MEMORY[0x1BFAF43A0](v59, -1, -1);

      (*(v85 + 8))(v15, v84);
    }

    else
    {

      (*(v85 + 8))(v15, v6);
    }
  }
}

uint64_t sub_1BA273588()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  sub_1B9F0E310(*(v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t sub_1BA273614(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

unint64_t sub_1BA27367C()
{
  result = qword_1EBBEF5B0;
  if (!qword_1EBBEF5B0)
  {
    type metadata accessor for ManualDataSelectionNextButtonItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF5B0);
  }

  return result;
}

uint64_t sub_1BA2736D0(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI33ManualDataSelectionNextButtonCell_didTapAction);
  if (v8)
  {

    v8(a1);

    return sub_1B9F0E310(v8);
  }

  else
  {
    sub_1BA4A3DD8();
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v14 = sub_1BA4A85D8();
      v16 = sub_1B9F0B82C(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1B9F07000, v10, v11, "[%s] Did tap action was not set. This should not happen", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BA2738F4(uint64_t result)
{
  if (result)
  {
    v1 = result;

    v2 = v1;
  }

  return result;
}

uint64_t sub_1BA273964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BA4A8338();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BA2739F4(uint64_t a1)
{
  v2 = sub_1BA273BB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA273A30(uint64_t a1)
{
  v2 = sub_1BA273BB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKTypeGroupCategoryActionHandler.Data.encode(to:)(void *a1)
{
  sub_1BA273D90(0, &qword_1EDC5DD18, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA273BB8();
  sub_1BA4A8548();
  sub_1BA4A8248();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BA273BB8()
{
  result = qword_1EDC6BE10;
  if (!qword_1EDC6BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE10);
  }

  return result;
}

uint64_t HKTypeGroupCategoryActionHandler.Data.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BA273D90(0, &qword_1EDC5DE80, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA273BB8();
  sub_1BA4A8528();
  if (!v2)
  {
    v10 = sub_1BA4A8188();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1BA273D90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA273BB8();
    v7 = a3(a1, &type metadata for HKTypeGroupCategoryActionHandler.Data.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA273E0C(void *a1)
{
  sub_1BA273D90(0, &qword_1EDC5DD18, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA273BB8();
  sub_1BA4A8548();
  sub_1BA4A8248();
  return (*(v4 + 8))(v6, v3);
}

void sub_1BA273F58()
{
  v1 = *(v0 + 88);
  v2 = [v1 traitCollection];
  sub_1B9F3AEE8();
  sub_1BA4A7358();

  if (v6 == 10)
  {
    v3 = sub_1BA274048();
    [v1 showDetailViewController:v3 sender:0];
  }

  else
  {
    v4 = [v1 navigationController];
    if (!v4)
    {
      return;
    }

    v5 = v4;
    v3 = sub_1BA274048();
    [v5 pushViewController:v3 animated:1];
  }
}

char *sub_1BA274048()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[9];
  if (v7 >> 60 != 15)
  {
    v8 = v0[8];
    sub_1BA4A0EB8();
    swift_allocObject();
    sub_1B9F206D4(v8, v7);
    sub_1BA4A0EA8();
    sub_1BA276A34();
    sub_1BA4A0E98();

    v17 = v32;
    v18 = v33;
    if (qword_1EDC6EA18 != -1)
    {
      v28 = v32;
      swift_once();
      v17 = v28;
    }

    v19 = off_1EDC6EA20;
    if (*(off_1EDC6EA20 + 2))
    {
      v31 = v2;
      v30 = sub_1B9F24A34(v17, v18);
      v21 = v20;

      if (v21)
      {
        v22 = v19[7] + 48 * v30;
        v23 = *(v22 + 8);
        v24 = *(v22 + 32);
        v25 = *(v22 + 40);
        v32 = *v22;
        v33 = v23;
        v34 = *(v22 + 16);
        v35 = v24;
        v36 = v25;
        v26 = v1[10];

        v27 = HKTCategoryViewFactory.makeViewController(typeGroup:context:)(&v32, v26);
        sub_1B9F6AC8C(v8, v7);

        return v27;
      }

      sub_1B9F6AC8C(v8, v7);
    }

    else
    {
      sub_1B9F6AC8C(v8, v7);
    }
  }

  _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136315138;
    v13 = sub_1BA4A85D8();
    v15 = sub_1B9F0B82C(v13, v14, &v32);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1B9F07000, v9, v10, "%s: Unable to decode and find correct typeGroupIdentifier for sidebar category item", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  return [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
}

__n128 HKTypeGroupCategoryActionHandler.__allocating_init(content:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  result = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = result;
  return result;
}

_OWORD *HKTypeGroupCategoryActionHandler.init(content:)(_OWORD *a1)
{
  v2 = a1[3];
  v1[3] = a1[2];
  v1[4] = v2;
  v1[5] = a1[4];
  v3 = a1[1];
  v1[1] = *a1;
  v1[2] = v3;
  return v1;
}

uint64_t HKTypeGroupCategoryActionHandler.__deallocating_deinit()
{
  sub_1BA00D7E8(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t CategoryTileConfigurationProvider.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t CategoryTileConfigurationProvider.observedTraits.getter()
{
  sub_1BA276ABC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5460;
  v1 = sub_1BA4A4438();
  v2 = MEMORY[0x1E69DC130];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_1BA4A4858();
  v4 = MEMORY[0x1E69DC2B0];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

uint64_t CategoryTileConfigurationProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = *v0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  (*(*(*(v1 + 80) - 8) + 56))(v0 + *(v1 + 128), 1, 1);
  return v0;
}

uint64_t *CategoryTileConfigurationProvider.init()()
{
  v1 = *v0;
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  *(v0 + 3) = 0u;
  (*(*(*(v1 + 80) - 8) + 56))(v0 + *(v1 + 128), 1, 1);
  return v0;
}

void CategoryTileConfigurationProvider.makeContentConfiguration(viewModelState:viewContext:cellState:actionHandlerContent:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v109 = a3;
  v102 = a2;
  v113 = a4;
  v116 = *v4;
  v6 = v116;
  v100 = sub_1BA4A3EA8();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1BA4A4428();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v105 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1BA4A40C8();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = (&v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA276ABC(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v111 = &v98 - v11;
  v12 = *(v6 + 80);
  v13 = sub_1BA4A7AA8();
  v114 = *(v13 - 8);
  v115 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v98 - v14;
  v16 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v98 - v21;
  v23 = *(type metadata accessor for ViewModelState() + 28);
  v24 = *(v16 + 16);
  v24(v22, a1 + v23, v12);
  v117 = v22;
  v25 = v22;
  v26 = v110;
  v24(v15, v25, v12);
  v112 = v16;
  (*(v16 + 56))(v15, 0, 1, v12);
  v27 = *(*v26 + 128);
  swift_beginAccess();
  (*(v114 + 5))(&v26[v27], v15, v115);
  swift_endAccess();
  v24(v19, a1 + v23, v12);
  sub_1B9F0D950(0, qword_1EDC60950);
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v125, &v118);
    v28 = sub_1BA4A6C88();
    v29 = v111;
    (*(*(v28 - 8) + 56))(v111, 1, 1, v28);
    v30 = swift_allocObject();
    swift_weakInit();
    sub_1B9F0A534(&v118, v125);
    sub_1BA4A6C68();

    v31 = sub_1BA4A6C58();
    v32 = swift_allocObject();
    v33 = MEMORY[0x1E69E85E0];
    v32[2] = v31;
    v32[3] = v33;
    v32[4] = v12;
    v34 = v116;
    v32[5] = v116[11];
    v35 = *(v34 + 96);
    v32[6] = v35;
    v32[7] = *(v34 + 104);
    v32[8] = v30;
    sub_1B9F1134C(v125, (v32 + 9));

    sub_1BA0BF220(0, 0, v29, &unk_1BA4CA600, v32);

    __swift_destroy_boxed_opaque_existential_1(&v118);
  }

  else
  {
    v126 = 0;
    memset(v125, 0, sizeof(v125));
    sub_1BA27761C(v125, sub_1BA276B20);
    v35 = v116[12];
  }

  v36 = (*(v35 + 16))(v12, v35);
  v115 = v37;
  v111 = (*(v35 + 24))(v12, v35);
  v38 = *(v26 + 4);
  v39 = *(v26 + 5);
  v40 = *(v26 + 6);
  v41 = *(v26 + 7);
  if (v38)
  {
    v118 = *(v26 + 4);
    v119 = v39;
    v110 = v41;
    v114 = v40;
    v42 = v39;
    v116 = v38;
    v120 = v40;
  }

  else
  {
    (*(v35 + 32))(&v118, v12, v35);
    v42 = v119;
    v116 = v118;
    v114 = v120;
    v110 = v121;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA276B88(v38, v39);
  v43 = v106;
  v44 = v109;
  sub_1BA4A4F28();

  v45 = sub_1BA4A4098();
  (*(v107 + 8))(v43, v108);
  v46 = [v45 horizontalSizeClass];

  if (v46 != 1)
  {
    v118 = v36;
    v54 = v116;
    v119 = v115;
    v120 = v111;
    v121 = v116;
    v122 = v42;
    v123 = v114;
    v124 = v110;
    sub_1BA276BC8();
    v55 = v113;
    v113[3] = v56;
    v55[4] = sub_1BA277578(&qword_1EBBEF5F8, sub_1BA276BC8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
    sub_1BA275AFC(&v118, v102, v44, boxed_opaque_existential_1);
    (*(v112 + 8))(v117, v12);

    sub_1BA277094(v54, v42);
    return;
  }

  v47 = v105;
  sub_1BA4A43A8();

  sub_1BA4A43B8();
  v48 = *MEMORY[0x1E69DDCF8];
  v49 = objc_opt_self();
  v50 = [v49 preferredFontDescriptorWithTextStyle:v48 compatibleWithTraitCollection:0];
  v51 = [v50 fontDescriptorWithSymbolicTraits_];

  v109 = v48;
  if (v51)
  {
    v52 = v12;
    v53 = [objc_opt_self() fontWithDescriptor:v51 size:0.0];
  }

  else
  {
    v58 = v101;
    sub_1BA4A3DD8();
    v59 = v48;
    v60 = sub_1BA4A3E88();
    v61 = sub_1BA4A6FB8();
    v108 = v59;

    v52 = v12;
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *&v125[0] = v107;
      *v62 = 136315906;
      v63 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v65 = sub_1B9F0B82C(v63, v64, v125);

      *(v62 + 4) = v65;
      *(v62 + 12) = 2080;
      v118 = 0;
      LOBYTE(v119) = 1;
      sub_1BA276ABC(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v66 = sub_1BA4A6808();
      v68 = sub_1B9F0B82C(v66, v67, v125);

      *(v62 + 14) = v68;
      *(v62 + 22) = 2080;
      LODWORD(v118) = 32770;
      type metadata accessor for SymbolicTraits(0);
      v69 = sub_1BA4A6808();
      v71 = sub_1B9F0B82C(v69, v70, v125);

      *(v62 + 24) = v71;
      *(v62 + 32) = 2112;
      v72 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v62 + 34) = v72;
      v73 = v106;
      *v106 = v72;
      _os_log_impl(&dword_1B9F07000, v60, v61, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v62, 0x2Au);
      sub_1B9F8C6C8(v73);
      MEMORY[0x1BFAF43A0](v73, -1, -1);
      v74 = v107;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v74, -1, -1);
      v75 = v62;
      v47 = v105;
      MEMORY[0x1BFAF43A0](v75, -1, -1);

      (*(v99 + 8))(v101, v100);
    }

    else
    {

      (*(v99 + 8))(v58, v100);
    }

    v51 = [v49 preferredFontDescriptorWithTextStyle_];
    v53 = [objc_opt_self() fontWithDescriptor:v51 size:0.0];
  }

  v76 = v53;

  v77 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v77(&v118, 0);
  v78 = v117;
  if (!v116)
  {
    sub_1BA4A43D8();
    v80 = v52;
    goto LABEL_21;
  }

  v79 = v42;
  sub_1BA4A43D8();
  v80 = v52;
  if ((v114 & 0x8000000000000000) == 0)
  {
LABEL_21:
    v94 = MEMORY[0x1E69DC110];
    v95 = v113;
    v96 = v104;
    v113[3] = v104;
    v95[4] = v94;
    v97 = __swift_allocate_boxed_opaque_existential_1(v95);
    (*(v103 + 32))(v97, v47, v96);

    sub_1BA277094(v116, v42);
    (*(v112 + 8))(v78, v80);
    return;
  }

  if (v114)
  {
    v81 = [objc_opt_self() systemGroupedBackgroundColor];
    v82 = sub_1BA4A42D8();
    sub_1BA4A4278();
    v82(&v118, 0);
    v83 = sub_1BA4A42D8();
    sub_1BA4A4288();
    v83(&v118, 0);
    v84 = objc_allocWithZone(MEMORY[0x1E69DCA40]);
    v85 = [v84 initForTextStyle_];
    [v85 scaledValueForValue_];

    v86 = sub_1BA4A42D8();
    sub_1BA4A4298();
    v86(&v118, 0);
    v47 = v105;
  }

  v87 = objc_allocWithZone(MEMORY[0x1E69DCA40]);
  v88 = [v87 initForTextStyle_];
  [v88 scaledValueForValue_];

  v89 = sub_1BA4A42D8();
  sub_1BA4A4268();
  v89(&v118, 0);
  v90 = MEMORY[0x1E69DC110];
  v91 = v113;
  v92 = v104;
  v113[3] = v104;
  v91[4] = v90;
  v93 = __swift_allocate_boxed_opaque_existential_1(v91);
  (*(v103 + 32))(v93, v47, v92);

  sub_1BA277094(v116, v42);
  (*(v112 + 8))(v117, v52);
}

uint64_t sub_1BA275610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  sub_1BA4A6C68();
  v5[17] = sub_1BA4A6C58();
  v7 = sub_1BA4A6C28();
  v5[18] = v7;
  v5[19] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BA2756AC, v7, v6);
}

uint64_t sub_1BA2756AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = v0[16];
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v3);
    v12 = (*(v4 + 8) + **(v4 + 8));
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_1BA2758C8;

    return v12(v0 + 2, v3, v4);
  }

  else
  {

    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v8 = v7;
      swift_beginAccess();
      if (*(v8 + 16))
      {
        v9 = *(v8 + 24);
        swift_unknownObjectRetain();

        ObjectType = swift_getObjectType();
        (*(v9 + 8))(ObjectType, v9);
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1BA2758C8()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1BA2759E8, v3, v2);
}

uint64_t sub_1BA2759E8()
{
  v1 = *(v0 + 160);

  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 16);
  *(v1 + 48) = v4;
  sub_1BA277094(v2, v3);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    if (*(v6 + 16))
    {
      v7 = *(v6 + 24);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      (*(v7 + 8))(ObjectType, v7);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1BA275AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23[1] = a4;
  sub_1BA277468();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA276BC8();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v17;
  v24[2] = *(a1 + 32);
  v25 = *(a1 + 48);
  v18 = v17;
  v23[8] = v24;
  v23[9] = a2;
  v23[10] = a3;
  sub_1BA276CF8();
  sub_1BA276DC0();
  v20 = v19;
  v21 = sub_1BA276F2C(&qword_1EBBEF5D8, sub_1BA276DC0, sub_1BA276EE4, sub_1BA27700C);
  v23[12] = v20;
  v23[13] = v21;
  swift_getOpaqueTypeConformance2();
  sub_1BA4A59B8();
  v23[4] = a3;
  v23[5] = v18;
  type metadata accessor for CategoryTileBackgroundView();
  sub_1BA277578(&qword_1EBBEF5F0, type metadata accessor for CategoryTileBackgroundView);
  sub_1BA4A5998();
  (*(v9 + 8))(v11, v8);
  sub_1BA4A5B78();
  sub_1BA4A59A8();
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1BA275DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = *a1;
  v17 = *(a1 + 8);
  v18 = *(a1 + 48);
  v6 = sub_1BA4A5A48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 32);
  v16 = *(a1 + 16);
  v15 = v10;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v12 = *&v26[0];
  type metadata accessor for ObservableCellState(0);
  sub_1BA2775C0(a1, v26);
  sub_1BA277578(&qword_1EDC67D30, type metadata accessor for ObservableCellState);
  v13 = sub_1BA4A4D68();
  *&v20 = v5;
  *(&v20 + 1) = v17;
  v22 = v15;
  v21 = v16;
  *&v23 = v18;
  *(&v23 + 1) = KeyPath;
  *&v24 = v12;
  *(&v24 + 1) = v13;
  v25 = a2;

  sub_1BA4A5A38();
  sub_1BA276DC0();
  sub_1BA276F2C(&qword_1EBBEF5D8, sub_1BA276DC0, sub_1BA276EE4, sub_1BA27700C);
  sub_1BA4A5F88();
  (*(v7 + 8))(v9, v6);
  v26[3] = v23;
  v26[4] = v24;
  v27 = v25;
  v26[0] = v20;
  v26[1] = v21;
  v26[2] = v22;
  return sub_1BA27761C(v26, sub_1BA276DC0);
}

uint64_t sub_1BA2760AC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1BA276ABC(0, &qword_1EBBECFB8, sub_1BA175634, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for CategoryTileBackgroundView();
  v5 = *(v4 + 24);
  v6 = (a2 + *(v4 + 20));
  type metadata accessor for ObservableCellState(0);
  sub_1BA277578(&qword_1EDC67D30, type metadata accessor for ObservableCellState);

  *v6 = sub_1BA4A5348();
  v6[1] = v7;
  *(a2 + v5) = a1;
}

uint64_t CategoryTileConfigurationProvider.makeBackgroundConfiguration(cellState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BA4A4168();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t CategoryTileConfigurationProvider.makeAccessories(cellState:)()
{
  v1 = v0;
  v28 = *v0;
  v2 = v28;
  sub_1BA276ABC(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = &v27 - v4;
  v5 = sub_1BA4A3FB8();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BA4A3F18();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = sub_1BA4A40C8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  v17 = sub_1BA4A4098();
  (*(v14 + 8))(v16, v13);
  v18 = [v17 horizontalSizeClass];

  if (v18 != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = *(*v1 + 128);
  swift_beginAccess();
  if ((*(v9 + 48))(&v1[v19], 1, v8))
  {
    sub_1BA276ABC(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
    sub_1BA4A3FE8();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1BA4B5480;
    v22 = v29;
    v21 = v30;
    v23 = v32;
    (*(v30 + 104))(v29, *MEMORY[0x1E69DBF28], v32);
    v24 = sub_1BA4A3F48();
    (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
    v25 = v31;
    sub_1BA4A3FA8();
    sub_1BA4A3F78();
    (*(v34 + 8))(v25, v35);
    (*(v21 + 8))(v22, v23);
  }

  else
  {
    (*(v9 + 16))(v12, &v1[v19], v8);
    v20 = (*(*(v28 + 96) + 40))(v8);
    (*(v9 + 8))(v12, v8);
  }

  return v20;
}

uint64_t CategoryTileConfigurationProvider.deinit()
{
  swift_unknownObjectRelease();
  sub_1BA277094(*(v0 + 32), *(v0 + 40));
  v1 = *(*v0 + 128);
  v2 = sub_1BA4A7AA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CategoryTileConfigurationProvider.__deallocating_deinit()
{
  CategoryTileConfigurationProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA2768C0()
{
  sub_1BA276ABC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BA4B5460;
  v1 = sub_1BA4A4438();
  v2 = MEMORY[0x1E69DC130];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = sub_1BA4A4858();
  v4 = MEMORY[0x1E69DC2B0];
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

void (*sub_1BA2769C4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CategoryTileConfigurationProvider.delegate.modify();
  return sub_1B9FCDD98;
}

unint64_t sub_1BA276A34()
{
  result = qword_1EDC62AA8;
  if (!qword_1EDC62AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC62AA8);
  }

  return result;
}

void sub_1BA276ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BA276B20()
{
  if (!qword_1EDC60948)
  {
    sub_1B9F0D950(255, qword_1EDC60950);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC60948);
    }
  }
}

id sub_1BA276B88(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

void sub_1BA276BC8()
{
  if (!qword_1EBBEF5B8)
  {
    sub_1BA276CF8();
    type metadata accessor for CategoryTileBackgroundView();
    sub_1BA276DC0();
    sub_1BA276F2C(&qword_1EBBEF5D8, sub_1BA276DC0, sub_1BA276EE4, sub_1BA27700C);
    swift_getOpaqueTypeConformance2();
    sub_1BA277578(&qword_1EBBEF5F0, type metadata accessor for CategoryTileBackgroundView);
    v0 = sub_1BA4A59C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF5B8);
    }
  }
}

void sub_1BA276CF8()
{
  if (!qword_1EBBEF5C0)
  {
    sub_1BA276DC0();
    sub_1BA276F2C(&qword_1EBBEF5D8, sub_1BA276DC0, sub_1BA276EE4, sub_1BA27700C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EBBEF5C0);
    }
  }
}

void sub_1BA276DC0()
{
  if (!qword_1EBBEF5C8)
  {
    sub_1BA276E58();
    sub_1BA276ABC(255, &qword_1EDC5ECB0, sub_1B9F7F24C, MEMORY[0x1E6980A08]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF5C8);
    }
  }
}

void sub_1BA276E58()
{
  if (!qword_1EBBEF5D0)
  {
    sub_1B9F6A970(255, &qword_1EDC5EBF8, &qword_1EDC6B620, 0x1E696C1C0, MEMORY[0x1E6980A08]);
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF5D0);
    }
  }
}

uint64_t sub_1BA276F2C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BA276FB8()
{
  result = qword_1EBBEF5E8;
  if (!qword_1EBBEF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF5E8);
  }

  return result;
}

unint64_t sub_1BA27700C()
{
  result = qword_1EDC5ECB8;
  if (!qword_1EDC5ECB8)
  {
    sub_1BA276ABC(255, &qword_1EDC5ECB0, sub_1B9F7F24C, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5ECB8);
  }

  return result;
}

void sub_1BA277094(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_1BA2770D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[8];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA0C2E3C;

  return sub_1BA275610(a1, v4, v5, v6, (v1 + 9));
}

uint64_t sub_1BA277264()
{
  result = sub_1BA4A7AA8();
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

unint64_t sub_1BA277364()
{
  result = qword_1EBBEF600;
  if (!qword_1EBBEF600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEF600);
  }

  return result;
}

unint64_t sub_1BA2773BC()
{
  result = qword_1EDC6BE00;
  if (!qword_1EDC6BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE00);
  }

  return result;
}

unint64_t sub_1BA277414()
{
  result = qword_1EDC6BE08;
  if (!qword_1EDC6BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE08);
  }

  return result;
}

void sub_1BA277468()
{
  if (!qword_1EBBEF608)
  {
    sub_1BA276CF8();
    sub_1BA276DC0();
    sub_1BA276F2C(&qword_1EBBEF5D8, sub_1BA276DC0, sub_1BA276EE4, sub_1BA27700C);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1BA4A59C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEF608);
    }
  }
}

uint64_t sub_1BA277578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BA27761C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static Color.tertiary.getter()
{
  if (qword_1EDC5EBA0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1BA2776D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BA025290(a1, a2);
  *(a2 + 49) = 1;
  return result;
}

uint64_t sub_1BA277708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B9F0A534(a1, v6);
  sub_1B9F32244();
  v3 = type metadata accessor for SummarySharingSelectableDataTypeItem(0);
  v4 = swift_dynamicCast();
  return (*(*(v3 - 8) + 56))(a2, v4 ^ 1u, 1, v3);
}

uint64_t sub_1BA2777A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BA025290(a1, a2);
  *(a2 + 49) = 0;
  return result;
}

void sub_1BA2777D8(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_29:
    v4 = sub_1BA4A7CC8();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v42 = v3 & 0xFFFFFFFFFFFFFF8;
      v43 = v3 & 0xC000000000000001;
      v40 = v4;
      v41 = v3;
      do
      {
        if (v43)
        {
          v7 = MEMORY[0x1BFAF2860](v5, v3);
        }

        else
        {
          if (v5 >= *(v42 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v44 = v5;
        v46 = v5 + 1;
        v9 = [v7 label];
        if (v9)
        {
          v10 = v9;
          _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

          v11 = objc_opt_self();

          v12 = sub_1BA4A6758();
          v13 = [v11 localizedStringForLabel_];

          v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v16 = v15;
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v14 = 0;
          v16 = 0xE000000000000000;
        }

        v45 = v8;
        v17 = [v8 value];
        v18 = [v17 stringValue];

        v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v3 = v20;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *a2;
        v47 = *a2;
        v23 = a2;
        *a2 = 0x8000000000000000;
        v24 = v14;
        v25 = v14;
        v26 = v16;
        v28 = sub_1B9F24A34(v25, v16);
        v29 = v22[2];
        v30 = (v27 & 1) == 0;
        v31 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
          goto LABEL_27;
        }

        a2 = v27;
        if (v22[3] >= v31)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v34 = v47;
            if (v27)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1BA0F1474();
            v34 = v47;
            if (a2)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1B9F24AAC(v31, isUniquelyReferenced_nonNull_native);
          v32 = sub_1B9F24A34(v24, v26);
          if ((a2 & 1) != (v33 & 1))
          {
            sub_1BA4A83B8();
            __break(1u);
            return;
          }

          v28 = v32;
          v34 = v47;
          if (a2)
          {
LABEL_4:
            v6 = (v34[7] + 16 * v28);
            *v6 = v19;
            v6[1] = v3;

            goto LABEL_5;
          }
        }

        v34[(v28 >> 6) + 8] |= 1 << v28;
        v35 = (v34[6] + 16 * v28);
        *v35 = v24;
        v35[1] = v26;
        v36 = (v34[7] + 16 * v28);
        *v36 = v19;
        v36[1] = v3;
        v37 = v34[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_28;
        }

        v34[2] = v39;
LABEL_5:
        a2 = v23;
        *v23 = v34;

        v5 = v44 + 1;
        v3 = v41;
      }

      while (v46 != v40);
    }
  }
}

void sub_1BA277B1C(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
LABEL_29:
    v4 = sub_1BA4A7CC8();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v41 = v3 & 0xFFFFFFFFFFFFFF8;
      v42 = v3 & 0xC000000000000001;
      v39 = v4;
      v40 = v3;
      do
      {
        if (v42)
        {
          v7 = MEMORY[0x1BFAF2860](v5, v3);
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v43 = v5;
        v45 = v5 + 1;
        v9 = [v7 label];
        if (v9)
        {
          v10 = v9;
          _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

          v11 = objc_opt_self();

          v12 = sub_1BA4A6758();
          v13 = [v11 localizedStringForLabel_];

          v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v16 = v15;
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v14 = 0;
          v16 = 0xE000000000000000;
        }

        v44 = v8;
        v17 = [v8 value];
        v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v3 = v19;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *a2;
        v46 = *a2;
        v22 = a2;
        *a2 = 0x8000000000000000;
        v23 = v14;
        v24 = v14;
        v25 = v16;
        v27 = sub_1B9F24A34(v24, v16);
        v28 = v21[2];
        v29 = (v26 & 1) == 0;
        v30 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
          goto LABEL_27;
        }

        a2 = v26;
        if (v21[3] >= v30)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v33 = v46;
            if (v26)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1BA0F1474();
            v33 = v46;
            if (a2)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1B9F24AAC(v30, isUniquelyReferenced_nonNull_native);
          v31 = sub_1B9F24A34(v23, v25);
          if ((a2 & 1) != (v32 & 1))
          {
            sub_1BA4A83B8();
            __break(1u);
            return;
          }

          v27 = v31;
          v33 = v46;
          if (a2)
          {
LABEL_4:
            v6 = (v33[7] + 16 * v27);
            *v6 = v18;
            v6[1] = v3;

            goto LABEL_5;
          }
        }

        v33[(v27 >> 6) + 8] |= 1 << v27;
        v34 = (v33[6] + 16 * v27);
        *v34 = v23;
        v34[1] = v25;
        v35 = (v33[7] + 16 * v27);
        *v35 = v18;
        v35[1] = v3;
        v36 = v33[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_28;
        }

        v33[2] = v38;
LABEL_5:
        a2 = v22;
        *v22 = v33;

        v5 = v43 + 1;
        v3 = v40;
      }

      while (v45 != v39);
    }
  }
}

uint64_t sub_1BA277E40()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF610 = result;
  *algn_1EBBEF618 = v1;
  return result;
}

uint64_t sub_1BA277EFC()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  result = sub_1BA4A1318();
  qword_1EBBEF620 = result;
  *algn_1EBBEF628 = v1;
  return result;
}

id sub_1BA277FC8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI25DataTypeDetailMessageCell____lazy_storage___symbol;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25DataTypeDetailMessageCell____lazy_storage___symbol);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI25DataTypeDetailMessageCell____lazy_storage___symbol);
  }

  else
  {
    v4 = sub_1BA278028();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1BA278028()
{
  v0 = sub_1BA4A28B8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69A3120], v0, v2);
  v5 = sub_1BA4A2898();
  (*(v1 + 8))(v4, v0);
  v6 = (v5 & 1) == 0;
  if (v5)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v7 = 0x2E6567617373656DLL;
  }

  if (v6)
  {
    v8 = 0xEC0000006C6C6966;
  }

  else
  {
    v8 = 0x80000001BA4F2A00;
  }

  v9 = sub_1BA4A6758();

  v10 = [objc_opt_self() systemImageNamed_];

  if (v10)
  {

    return v10;
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v12 = 0xD00000000000001DLL;
    v13 = 0x80000001BA4F79A0;
    MEMORY[0x1BFAF1350](v7, v8);

    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

void sub_1BA27823C()
{
  v22 = objc_opt_self();
  sub_1B9F109F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1BA4B5890;
  v2 = sub_1BA0FD5B4();
  v3 = [v2 topAnchor];

  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:16.0];
  *(v1 + 32) = v6;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button;
  v8 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button] leadingAnchor];
  v9 = [v0 contentView];
  v10 = [v9 layoutMarginsGuide];

  v11 = [v10 leadingAnchor];
  v12 = [v8 constraintEqualToAnchor_];

  *(v1 + 40) = v12;
  v13 = [v0 contentView];
  v14 = [v13 layoutMarginsGuide];

  v15 = [v14 trailingAnchor];
  v16 = [*&v0[v7] trailingAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v1 + 48) = v17;
  v18 = [v0 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [*&v0[v7] bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:16.0];

  *(v1 + 56) = v21;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v23 = sub_1BA4A6AE8();

  [v22 activateConstraints_];
}

void *sub_1BA27853C()
{
  v25 = sub_1BA4A28B8();
  v0 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BA4A7938();
  v3 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A7838();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1BA4A79A8();
  v10 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  sub_1BA4A7998();
  (*(v7 + 104))(v9, *MEMORY[0x1E69DC4F8], v6);
  sub_1BA4A7848();
  (*(v3 + 104))(v5, *MEMORY[0x1E69DC558], v23);
  sub_1BA4A7828();
  v16 = v25;
  (*(v0 + 104))(v2, *MEMORY[0x1E69A3120], v25);
  LOBYTE(v6) = sub_1BA4A2898();
  (*(v0 + 8))(v2, v16);
  if (v6)
  {
    v17 = MEMORY[0x1E69DDDC8];
  }

  else
  {
    v17 = MEMORY[0x1E69DDCF8];
  }

  sub_1BA4A7858();
  v18 = [objc_opt_self() configurationWithTextStyle_];
  sub_1BA4A77F8();
  sub_1B9F0ADF8(0, &qword_1EDC5E0A0);
  v19 = v24;
  (*(v10 + 16))(v12, v15, v24);
  v20 = sub_1BA4A79B8();
  [v20 setRole_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  (*(v10 + 8))(v15, v19);
  return v20;
}

void sub_1BA278920()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &ObjectType - v7;
  v9 = sub_1BA4A28B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F65DE4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A4148();
  v16 = sub_1BA4A4168();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  MEMORY[0x1BFAF1F10](v15);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(&v17[v1], v76);
  if (!v77)
  {
LABEL_44:
    sub_1B9F7B644(v76);
    goto LABEL_45;
  }

  v72 = v2;
  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  type metadata accessor for DataTypeChartMessageItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_45:
    v76[0] = 0;
    v76[1] = 0xE000000000000000;
    sub_1BA4A7DF8();

    v74 = 0xD000000000000011;
    v75 = 0x80000001BA4F5100;
    sub_1B9F68124(&v17[v1], v76);
    sub_1B9F1B310(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6720]);
    v70 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v70);

    sub_1BA4A8018();
    __break(1u);
    return;
  }

  v17 = v74;
  v18 = [v1 contentView];
  v19 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_viewConfiguration;
  swift_beginAccess();
  v20 = *&v17[v19];
  [v18 setBackgroundColor_];

  (*(v10 + 104))(v12, *MEMORY[0x1E69A3120], v9);
  LOBYTE(v18) = sub_1BA4A2898();
  (*(v10 + 8))(v12, v9);
  if ((v18 & 1) == 0)
  {
    if (qword_1EBBE85C8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

  if (qword_1EBBE85D0 != -1)
  {
LABEL_31:
    swift_once();
  }

LABEL_7:

  sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BA4B5480;
  v22 = sub_1BA4A3348();
  v24 = v23;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1B9F1BE20();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  v25 = sub_1BA4A6768();
  v27 = v26;

  v28 = sub_1BA277FC8();
  sub_1BA0FEA50(v25, v27, v28, nullsub_1, 0, 1);

  sub_1BA00DD24(v76);
  v29 = v77;
  v30 = v78;
  __swift_project_boxed_opaque_existential_1(v76, v77);
  LOBYTE(v22) = (*(v30 + 8))(v29, v30);
  __swift_destroy_boxed_opaque_existential_1(v76);
  if (v22)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (sub_1BA27964C(Strong) >> 62)
    {
      sub_1B9F0ADF8(0, &qword_1EBBF3400);
      sub_1BA4A8028();
    }

    else
    {

      sub_1BA4A8358();
      sub_1B9F0ADF8(0, &qword_1EBBF3400);
    }

    sub_1B9F0ADF8(0, &qword_1EBBEDA10);
    v32 = sub_1BA4A76C8();

    v33 = [v32 children];
    sub_1B9F0ADF8(0, &qword_1EBBF3400);
    v34 = sub_1BA4A6B08();

    if (v34 >> 62)
    {
      v35 = sub_1BA4A7CC8();
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v35)
    {
      v36 = sub_1BA0FD5B4();
      [v36 setMenu_];

      v37 = [v32 children];
      v38 = sub_1BA4A6B08();

      if (v38 >> 62)
      {
        v39 = sub_1BA4A7CC8();
      }

      else
      {
        v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v39 != 1)
      {
        v62 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button];
        [v62 setShowsMenuAsPrimaryAction_];

        goto LABEL_29;
      }

      v40 = [v32 children];
      v41 = sub_1BA4A6B08();

      if (v41 >> 62)
      {
        if (sub_1BA4A7CC8())
        {
          goto LABEL_18;
        }
      }

      else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_18:
        if ((v41 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x1BFAF2860](0, v41);
LABEL_21:
          v43 = v42;

          objc_opt_self();
          v44 = swift_dynamicCastObjCClass();
          if (v44)
          {
            v45 = [v44 discoverabilityTitle];
            if (v45)
            {
              v46 = v45;
              v47 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
              v49 = v48;

              v50 = swift_allocObject();
              *(v50 + 2) = v17;
              *(v50 + 3) = v47;
              *(v50 + 4) = v49;
              v51 = &v1[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction];
              v52 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell_didTapAction];
              *v51 = sub_1BA27A1E4;
              v51[1] = v50;
              v17 = v17;
              sub_1B9F0E310(v52);
              v53 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI24ButtonCollectionViewCell____lazy_storage___button];
              [v53 addTarget:v1 action:sel_didTapButton_ forControlEvents:64];

LABEL_29:
              return;
            }
          }

          goto LABEL_38;
        }

        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v42 = *(v41 + 32);
          goto LABEL_21;
        }

        __break(1u);
        goto LABEL_44;
      }

LABEL_38:
      sub_1BA4A3DD8();
      v63 = sub_1BA4A3E88();
      v64 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v73 = v66;
        *v65 = 136315138;
        v67 = sub_1BA4A85D8();
        v69 = sub_1B9F0B82C(v67, v68, &v73);

        *(v65 + 4) = v69;
        _os_log_impl(&dword_1B9F07000, v63, v64, "[%s] Menu item is not UIAction.", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        MEMORY[0x1BFAF43A0](v66, -1, -1);
        MEMORY[0x1BFAF43A0](v65, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v8, v72);
      return;
    }
  }

  sub_1BA4A3DD8();
  v54 = sub_1BA4A3E88();
  v55 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v73 = v57;
    *v56 = 136315138;
    v58 = sub_1BA4A85D8();
    v60 = sub_1B9F0B82C(v58, v59, &v73);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_1B9F07000, v54, v55, "[%s] Menu is nil or has no children. Disabling the button.", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x1BFAF43A0](v57, -1, -1);
    MEMORY[0x1BFAF43A0](v56, -1, -1);
  }

  (*(v3 + 8))(v5, v72);
  v61 = sub_1BA0FD5B4();
  [v61 setEnabled_];

  [v1 setUserInteractionEnabled_];
}

id sub_1BA2795E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeDetailMessageCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA27964C(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v94 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v94 - v15;
  if (![objc_opt_self() canSendText])
  {
    sub_1BA4A3DD8();
    v24 = v2;
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v101[0] = v28;
      *v27 = 136315138;
      v98[0] = v24;
      type metadata accessor for DataTypeChartMessageItem();
      v29 = v24;
      v30 = sub_1BA4A6828();
      v32 = sub_1B9F0B82C(v30, v31, v101);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1B9F07000, v25, v26, "%s: MFMessageComposeViewController is not in the state to send text", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
    }

    (*(v5 + 8))(v16, v4);
    return MEMORY[0x1E69E7CC0];
  }

  if (!a1)
  {
    sub_1BA4A3DD8();
    v33 = v2;
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v101[0] = v37;
      *v36 = 136315138;
      v98[0] = v33;
      type metadata accessor for DataTypeChartMessageItem();
      v38 = v33;
      v39 = sub_1BA4A6828();
      v41 = sub_1B9F0B82C(v39, v40, v101);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1B9F07000, v34, v35, "%s: presentingViewController is nil so cannot send text", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
    }

    (*(v5 + 8))(v13, v4);
    return MEMORY[0x1E69E7CC0];
  }

  v104[0] = MEMORY[0x1E69E7CC8];
  v97 = a1;
  sub_1BA00DD24(v101);
  v17 = v102;
  v18 = v103;
  __swift_project_boxed_opaque_existential_1(v101, v102);
  v19 = (*(v18 + 56))(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v101);
  if (v19)
  {
    v20 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_contact;
    swift_beginAccess();
    v21 = [*&v2[v20] phoneNumbers];
    sub_1B9F0ADF8(0, &unk_1EBBEE300);
    v22 = sub_1BA4A6B08();

    v23 = 0;
    sub_1BA2777D8(v22, v104);
  }

  else
  {
    sub_1BA4A3E28();
    v43 = sub_1BA4A3E88();
    v44 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v101[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4E3AB0, v101);
      _os_log_impl(&dword_1B9F07000, v43, v44, "[%s] SMS is not available", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1BFAF43A0](v46, -1, -1);
      MEMORY[0x1BFAF43A0](v45, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    v23 = 0;
  }

  sub_1BA00DD24(v101);
  v47 = v102;
  v48 = v103;
  __swift_project_boxed_opaque_existential_1(v101, v102);
  if (((*(v48 + 8))(v47, v48) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v101);
    goto LABEL_20;
  }

  sub_1BA00DD24(v98);
  v49 = v99;
  v50 = v100;
  __swift_project_boxed_opaque_existential_1(v98, v99);
  v51 = (*(v50 + 64))(v49, v50);
  __swift_destroy_boxed_opaque_existential_1(v98);
  __swift_destroy_boxed_opaque_existential_1(v101);
  if ((v51 & 1) == 0)
  {
LABEL_20:
    sub_1BA4A3E28();
    v56 = sub_1BA4A3E88();
    v57 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v101[0] = v59;
      *v58 = 136315138;
      *(v58 + 4) = sub_1B9F0B82C(0xD000000000000018, 0x80000001BA4E3AB0, v101);
      _os_log_impl(&dword_1B9F07000, v56, v57, "[%s] iMessage is not available", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x1BFAF43A0](v59, -1, -1);
      MEMORY[0x1BFAF43A0](v58, -1, -1);
    }

    v60 = (*(v5 + 8))(v7, v4);
    v55 = v97;
    goto LABEL_50;
  }

  sub_1BA00DD24(v101);
  v52 = v102;
  v53 = v103;
  __swift_project_boxed_opaque_existential_1(v101, v102);
  v54 = (*(v53 + 56))(v52, v53);
  __swift_destroy_boxed_opaque_existential_1(v101);
  if (v54)
  {
    v55 = v97;
    goto LABEL_49;
  }

  v61 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_contact;
  swift_beginAccess();
  v62 = [*&v2[v61] phoneNumbers];
  sub_1B9F0ADF8(0, &unk_1EBBEE300);
  v63 = sub_1BA4A6B08();

  if (v63 >> 62)
  {
LABEL_47:
    v64 = sub_1BA4A7CC8();
    v94 = v23;
    if (v64)
    {
      goto LABEL_25;
    }

LABEL_48:

    v55 = v97;
    goto LABEL_49;
  }

  v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v94 = 0;
  if (!v64)
  {
    goto LABEL_48;
  }

LABEL_25:
  v65 = 0;
  v66 = &v2[OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_defaultICloudAccount];
  v95 = v63 & 0xFFFFFFFFFFFFFF8;
  v96 = v63 & 0xC000000000000001;
  while (1)
  {
    if (v96)
    {
      v67 = MEMORY[0x1BFAF2860](v65, v63);
    }

    else
    {
      if (v65 >= *(v95 + 16))
      {
        goto LABEL_46;
      }

      v67 = *(v63 + 8 * v65 + 32);
    }

    v68 = v67;
    v23 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v69 = [v67 value];
    v70 = [v69 stringValue];

    v71 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v73 = v72;

    v74 = *(v66 + 1);
    if (!v74)
    {

      goto LABEL_27;
    }

    if (v71 == *v66 && v74 == v73)
    {
      break;
    }

    v76 = sub_1BA4A8338();

    if (v76)
    {
      goto LABEL_41;
    }

LABEL_27:
    ++v65;
    if (v23 == v64)
    {
      goto LABEL_48;
    }
  }

LABEL_41:

  v77 = [v68 label];
  if (v77)
  {
    v78 = v77;
    v79 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v81 = v80;
  }

  else
  {
    v79 = 0;
    v81 = 0xE000000000000000;
  }

  v82 = [v68 value];
  v83 = [v82 stringValue];

  v84 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v86 = v85;

  v87 = v104[0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v98[0] = v87;
  sub_1B9F248E4(v84, v86, v79, v81, isUniquelyReferenced_nonNull_native);

  v104[0] = v98[0];
  v55 = v97;
LABEL_49:
  v89 = OBJC_IVAR____TtC18HealthExperienceUI24DataTypeChartMessageItem_contact;
  swift_beginAccess();
  v90 = [*&v2[v89] emailAddresses];
  sub_1B9F0ADF8(0, &unk_1EBBEE300);
  v91 = sub_1BA4A6B08();

  sub_1BA277B1C(v91, v104);

LABEL_50:
  v92 = v104[0];
  MEMORY[0x1EEE9AC00](v60);
  *(&v94 - 2) = v2;
  *(&v94 - 1) = v55;
  v93 = sub_1BA27A22C(v92, sub_1BA27A224);

  return v93;
}

uint64_t sub_1BA27A0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  sub_1B9F0ADF8(0, &unk_1EDC5E0B0);

  sub_1BA3BFC74();
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a6;
  swift_bridgeObjectRetain_n();
  v11 = a5;
  v12 = a6;
  return sub_1BA4A77E8();
}

uint64_t sub_1BA27A1E4(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = 0;
  return sub_1BA00E1FC(&v5, v2, v3, a1);
}

uint64_t sub_1BA27A22C(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1BA4A7F08();
    v5 = v2 + 64;
    result = sub_1BA4A7C48();
    v6 = result;
    v7 = 0;
    v8 = *(v2 + 36);
    v25 = v2 + 72;
    v26 = v3;
    v28 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      if (v8 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v29 = v7;
      v11 = v5;
      v12 = (*(v2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      v15 = (*(v2 + 56) + 16 * v6);
      v17 = *v15;
      v16 = v15[1];

      a2(v13, v14, v17, v16);

      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      v2 = v28;
      sub_1BA4A7F28();
      result = sub_1BA4A7EE8();
      v9 = 1 << *(v28 + 32);
      if (v6 >= v9)
      {
        goto LABEL_24;
      }

      v18 = *(v11 + 8 * v10);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (v8 != *(v28 + 36))
      {
        goto LABEL_26;
      }

      v5 = v11;
      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v9 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1BA0477A4(v6, v8, 0);
            v9 = __clz(__rbit64(v23)) + v20;
            goto LABEL_18;
          }
        }

        result = sub_1BA0477A4(v6, v8, 0);
LABEL_18:
        v2 = v28;
      }

      v7 = v29 + 1;
      v6 = v9;
      if (v29 + 1 == v26)
      {
        return v30;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BA27A4A0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v5 = 0;
  return sub_1BA00E1FC(&v5, v1, v2, v3);
}

uint64_t sub_1BA27A4DC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA27A534(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA27D72C();
  return sub_1B9F4422C(a1, sub_1B9F7B6F8);
}

uint64_t (*sub_1BA27A5B4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA27A618;
}

uint64_t sub_1BA27A618(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA27D72C();
  }

  return result;
}

uint64_t sub_1BA27A64C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v8);
  if (v8[3])
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
    sub_1B9F0D9AC(0, &qword_1EDC6CCF0);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        sub_1B9F1134C(&v9, v12);
        v5 = v13;
        v6 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v6 + 24))(a1, v5, v6);
        return __swift_destroy_boxed_opaque_existential_1(v12);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    sub_1B9F4422C(v8, sub_1B9F7B6F8);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  result = sub_1B9F4422C(&v9, sub_1B9F2F31C);
  *a2 = 2;
  return result;
}

id sub_1BA27A7D4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel);
  }

  else
  {
    v4 = [objc_opt_self() labelColor];
    v5 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
    v6 = [objc_allocWithZone(type metadata accessor for DynamicFontLabel()) initWithFrame_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = v6;
    [v7 setAdjustsFontForContentSizeCategory_];
    [v7 setText_];
    [v7 setFont_];
    [v7 setTextColor_];
    [v7 setLineBreakMode_];
    [v7 setNumberOfLines_];

    LODWORD(v8) = 1132068864;
    [v7 setContentHuggingPriority:0 forAxis:v8];
    LODWORD(v9) = 1132068864;
    [v7 setContentCompressionResistancePriority:0 forAxis:v9];

    v10 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1BA27A994()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel);
  }

  else
  {
    v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1D0))();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1BA27AA2C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1BA27AA70(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x160))(v4);
  if (*(v1 + v3) == 1)
  {
    return sub_1BA27B454();
  }

  else
  {
    return sub_1BA27BA50();
  }
}

void (*sub_1BA27AB20(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1BA27ABA8;
}

void sub_1BA27ABA8(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v3[4];
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x160))(v4);
    if (*(v5 + v6) == 1)
    {
      sub_1BA27B454();
    }

    else
    {
      sub_1BA27BA50();
    }
  }

  free(v3);
}

void sub_1BA27AC50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v6 = sub_1BA27A7D4();
    sub_1B9F2180C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BA4B5460;
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;
    *(v7 + 48) = 0x656C746954;
    *(v7 + 56) = 0xE500000000000000;

    v8 = sub_1BA4A6AE8();

    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v6 setAccessibilityIdentifier_];
    v10 = sub_1BA27A994();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BA4B5460;
    *(v11 + 32) = a1;
    *(v11 + 40) = a2;
    *(v11 + 48) = 0x6C6961746544;
    *(v11 + 56) = 0xE600000000000000;
    v12 = sub_1BA4A6AE8();

    v14 = HKUIJoinStringsForAutomationIdentifier();

    [v10 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v13 = sub_1BA27A7D4();
    [v13 setAccessibilityIdentifier_];

    v14 = sub_1BA27A994();
    [v14 setAccessibilityIdentifier_];
  }
}

void sub_1BA27AE60()
{
  v1 = v0;
  sub_1B9F2180C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B7510;
  *(inited + 32) = sub_1BA27A7D4();
  v3 = 0;
  *(inited + 40) = sub_1BA27A994();
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = v3;
  while ((inited & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1BFAF2860](v5, inited);
LABEL_6:
    v7 = v6;
    v3 = v5 + 1;
    v8 = [v6 text];
    if (v8)
    {
      v18 = v1;
      v9 = v8;
      v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v16 = v11;
      v17 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1BA27EE34(0, *(v4 + 2) + 1, 1, v4);
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        v4 = sub_1BA27EE34((v12 > 1), v13 + 1, 1, v4);
      }

      *(v4 + 2) = v13 + 1;
      v14 = &v4[16 * v13];
      *(v14 + 4) = v17;
      *(v14 + 5) = v16;
      v1 = v18;
      if (v5 == 1)
      {
LABEL_15:
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_1B9F2180C(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        sub_1B9F1D768();
        sub_1BA4A66D8();

        v15 = sub_1BA4A6758();

        [v1 setAccessibilityLabel_];

        return;
      }

      goto LABEL_2;
    }

    ++v5;
    if (v3 == 2)
    {
      goto LABEL_15;
    }
  }

  if (v5 < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(inited + 32 + 8 * v5);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1BA27B0C0()
{
  v1 = [v0 contentView];
  v2 = sub_1BA27A7D4();
  [v1 addSubview_];

  v3 = [v0 contentView];
  v4 = sub_1BA27A994();
  [v3 addSubview_];

  sub_1BA27B454();
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v0 setBackgroundView_];

  v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v0 setSelectedBackgroundView_];

  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);

  return v7();
}

id sub_1BA27B238()
{
  if (v0[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_forceVerticalLayout] & 1) != 0 || (v1 = [v0 traitCollection], v2 = objc_msgSend(v1, sel_preferredContentSizeCategory), v1, LOBYTE(v1) = sub_1BA4A74F8(), v2, (v1))
  {
    sub_1BA27C5A8();
  }

  else
  {
    sub_1BA27BE60();
  }

  return [v0 setNeedsLayout];
}

uint64_t sub_1BA27B2E0(uint64_t a1, uint64_t a2)
{
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x88))(v8);
  if (v8[3])
  {
    sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
    sub_1B9F0D9AC(0, &qword_1EDC6CCF0);
    if (swift_dynamicCast())
    {
      v5 = *(&v10 + 1);
      if (*(&v10 + 1))
      {
        v6 = v11;
        __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
        (*(v6 + 16))(a1, a2, v5, v6);
        return __swift_destroy_boxed_opaque_existential_1(&v9);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    sub_1B9F4422C(v8, sub_1B9F7B6F8);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  return sub_1B9F4422C(&v9, sub_1B9F2F31C);
}

uint64_t sub_1BA27B454()
{
  sub_1B9F1D1BC(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v39 = &v33 - v2;
  v40 = sub_1BA4A3FB8();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BA4A3F18();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1BA4A3ED8();
  v6 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v49 = sub_1BA4A3FE8();
  v11 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v41 = v0;
  v16 = sub_1BA4A75E8();
  v17 = 0;
  v50 = *(v16 + 16);
  v51 = v16;
  v45 = v11 + 16;
  v44 = *MEMORY[0x1E69DBEF0];
  v18 = (v6 + 8);
  v48 = v11;
  v42 = v11 + 8;
  v43 = (v6 + 104);
  v19 = v49;
  while (v50 != v17)
  {
    if (v17 >= *(v51 + 16))
    {
      __break(1u);
      goto LABEL_11;
    }

    v20 = v48;
    (*(v48 + 16))(v15, v51 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17++, v19);
    sub_1BA4A3F08();
    v22 = v46;
    v21 = v47;
    (*v43)(v46, v44, v47);
    v23 = MEMORY[0x1BFAEE900](v10, v22);
    v24 = *v18;
    (*v18)(v22, v21);
    v24(v10, v21);
    (*(v20 + 8))(v15, v19);
    if (v23)
    {
    }
  }

  v10 = sub_1BA4A75E8();
  v27 = v33;
  v26 = v34;
  v28 = v35;
  (*(v34 + 104))(v33, *MEMORY[0x1E69DBF28], v35);
  v29 = sub_1BA4A3F48();
  (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  v30 = v36;
  sub_1BA4A3FA8();
  v15 = v37;
  sub_1BA4A3F78();
  (*(v38 + 8))(v30, v40);
  (*(v26 + 8))(v27, v28);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_7;
  }

LABEL_11:
  v10 = sub_1BA2806AC(0, *(v10 + 2) + 1, 1, v10, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69DBF68]);
LABEL_7:
  v32 = *(v10 + 2);
  v31 = *(v10 + 3);
  if (v32 >= v31 >> 1)
  {
    v10 = sub_1BA2806AC(v31 > 1, v32 + 1, 1, v10, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69DBF68]);
  }

  *(v10 + 2) = v32 + 1;
  (*(v48 + 32))(&v10[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v32], v15, v49);
  return sub_1BA4A75F8();
}

uint64_t sub_1BA27BA50()
{
  v1 = sub_1BA4A3ED8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v46 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v45 = v32 - v5;
  v6 = sub_1BA4A3FE8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v44 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  v12 = sub_1BA4A75E8();
  v13 = *(v12 + 16);
  if (v13)
  {
    v32[1] = v0;
    v32[2] = v12;
    v15 = *(v7 + 16);
    v14 = v7 + 16;
    v42 = v15;
    v43 = v1;
    v34 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = v12 + v34;
    v17 = *(v14 + 56);
    v40 = *MEMORY[0x1E69DBEF0];
    v38 = (v2 + 8);
    v39 = (v2 + 104);
    v36 = (v14 + 16);
    v33 = (v14 - 8);
    v18 = MEMORY[0x1E69E7CC0];
    v35 = v6;
    v41 = v17;
    v37 = v14;
    v19 = v1;
    do
    {
      v47 = v18;
      v42(v11, v16, v6);
      v21 = v45;
      sub_1BA4A3F08();
      v22 = v11;
      v23 = v46;
      (*v39)(v46, v40, v19);
      v24 = MEMORY[0x1BFAEE900](v21, v23);
      v25 = v6;
      v26 = *v38;
      (*v38)(v23, v19);
      v26(v21, v19);
      if (v24)
      {
        (*v33)(v22, v25);
        v6 = v25;
        v11 = v22;
        v20 = v41;
        v18 = v47;
      }

      else
      {
        v27 = *v36;
        (*v36)(v44, v22, v25);
        v18 = v47;
        v11 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1BA2806AC(0, v18[2] + 1, 1, v18, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69DBF68]);
        }

        v29 = v18[2];
        v28 = v18[3];
        if (v29 >= v28 >> 1)
        {
          v18 = sub_1BA2806AC(v28 > 1, v29 + 1, 1, v18, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69DBF68]);
        }

        v18[2] = v29 + 1;
        v20 = v41;
        v30 = v18 + v34 + v29 * v41;
        v6 = v35;
        v27(v30, v44, v35);
      }

      v16 += v20;
      --v13;
    }

    while (v13);
  }

  return sub_1BA4A75F8();
}

void sub_1BA27BE60()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_currentLayoutConstraints;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);

  v4 = sub_1BA4A6AE8();

  v56 = v2;
  [v2 deactivateConstraints_];

  *&v1[v3] = MEMORY[0x1E69E7CC0];

  sub_1B9F2180C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5890;
  v6 = sub_1BA27A7D4();
  v7 = [v6 topAnchor];

  v8 = [v1 contentView];
  v9 = [v8 topAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:8.0];
  *(inited + 32) = v10;
  v57 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel;
  v11 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel] bottomAnchor];
  v12 = [v1 contentView];
  v13 = [v12 bottomAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:-8.0];
  *(inited + 40) = v14;
  v15 = sub_1BA27A994();
  v16 = [v15 topAnchor];

  v17 = [v1 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:8.0];
  *(inited + 48) = v19;
  v55 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel;
  v20 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel] bottomAnchor];
  v21 = [v1 contentView];
  v22 = [v21 bottomAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:-8.0];
  *(inited + 56) = v23;
  v24 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v24)
  {
    v25 = 0;
    do
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1BFAF2860](v25, inited);
      }

      else
      {
        if (v25 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v26 = *(inited + 8 * v25 + 32);
      }

      v27 = v26;
      ++v25;
      type metadata accessor for UILayoutPriority(0);
      sub_1B9F7A62C();
      sub_1BA4A3EB8();
      LODWORD(v28) = v58;
      [v27 setPriority_];
    }

    while (v24 != v25);
  }

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B79E0;
  v30 = [*&v1[v57] leadingAnchor];
  v31 = [v1 contentView];
  v32 = [v31 &selRef__totalDistance + 1];

  v33 = [v30 constraintEqualToAnchor:v32 constant:16.0];
  *(v29 + 32) = v33;
  v34 = [*&v1[v57] centerYAnchor];
  v35 = [v1 contentView];
  v36 = [v35 centerYAnchor];

  v37 = [v34 constraintEqualToAnchor_];
  *(v29 + 40) = v37;
  v38 = [*&v1[v55] centerYAnchor];
  v39 = [v1 contentView];
  v40 = [v39 centerYAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  *(v29 + 48) = v41;
  v42 = [*&v1[v55] trailingAnchor];
  v43 = [v1 contentView];
  v44 = [v43 trailingAnchor];

  v45 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
  swift_beginAccess();
  v46 = -16.0;
  if (v1[v45])
  {
    v46 = -8.0;
  }

  v47 = [v42 constraintEqualToAnchor:v44 constant:v46];

  *(v29 + 56) = v47;
  v48 = [*&v1[v55] leadingAnchor];
  v49 = [*&v1[v57] trailingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:8.0];

  *(v29 + 64) = v50;
  v51 = [v1 contentView];
  v52 = [v51 heightAnchor];

  v53 = [v52 constraintGreaterThanOrEqualToConstant_];
  *(v29 + 72) = v53;
  sub_1B9F73B50(inited);
  *&v1[v3] = v29;

  v54 = sub_1BA4A6AE8();

  [v56 activateConstraints_];
}

void sub_1BA27C5A8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_currentLayoutConstraints;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);

  v4 = sub_1BA4A6AE8();

  [v2 deactivateConstraints_];

  v82 = v3;
  *&v1[v3] = MEMORY[0x1E69E7CC0];

  v5 = sub_1BA27CF4C();
  v6 = sub_1BA27A994();
  v7 = v6;
  v83 = v2;
  if (!v5)
  {
    [v6 setHidden_];

    sub_1B9F2180C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BA4BBC90;
    v25 = sub_1BA27A7D4();
    v26 = [v25 topAnchor];

    v27 = [v1 contentView];
    v28 = [v27 topAnchor];

    v29 = [v26 constraintEqualToAnchor:v28 constant:8.0];
    *(v9 + 32) = v29;
    v30 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel;
    v31 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel] leadingAnchor];
    v32 = [v1 &selRef_fetchSources];
    v33 = [v32 &selRef__totalDistance + 1];

    v34 = [v31 constraintEqualToAnchor:v33 constant:16.0];
    *(v9 + 40) = v34;
    v35 = [*&v1[v30] trailingAnchor];
    v36 = [v1 &selRef_fetchSources];
    v37 = [v36 &selRef_cloudSyncObserverSyncCompleted_ + 4];

    v38 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
    swift_beginAccess();
    if (v1[v38])
    {
      v39 = -8.0;
    }

    else
    {
      v39 = -16.0;
    }

    v40 = [v35 constraintEqualToAnchor:v37 constant:v39];

    *(v9 + 48) = v40;
    v41 = [*&v1[v30] bottomAnchor];
    v42 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel;
    v43 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel] topAnchor];
    v44 = [v41 constraintEqualToAnchor:v43 constant:-8.0];

    *(v9 + 56) = v44;
    v45 = [*&v1[v42] bottomAnchor];
    v46 = [v1 contentView];
    v47 = [v46 bottomAnchor];

    v48 = [v45 constraintEqualToAnchor:v47 constant:-8.0];
    *(v9 + 64) = v48;
    v49 = [*&v1[v42] leadingAnchor];
    v50 = [v1 contentView];
    v51 = [v50 leadingAnchor];

    v52 = [v49 constraintEqualToAnchor:v51 constant:16.0];
    *(v9 + 72) = v52;
    v53 = [*&v1[v42] trailingAnchor];
    v54 = [v1 contentView];
    v55 = v83;
    v56 = [v54 trailingAnchor];

    if (v1[v38])
    {
      v57 = -8.0;
    }

    else
    {
      v57 = -16.0;
    }

    v58 = [v53 constraintEqualToAnchor:v56 constant:v57];

    *(v9 + 80) = v58;
    v59 = [v1 contentView];
    v60 = [v59 heightAnchor];

    v61 = [v60 constraintGreaterThanOrEqualToConstant_];
    *(v9 + 88) = v61;
    goto LABEL_20;
  }

  [v6 setHidden_];

  sub_1B9F2180C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v81 = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B7510;
  v10 = sub_1BA27A7D4();
  v11 = [v10 topAnchor];

  v12 = [v1 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor:v13 constant:8.0];
  *(v9 + 32) = v14;
  v15 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel;
  v16 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel] bottomAnchor];
  v17 = [v1 contentView];
  v18 = [v17 bottomAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:-8.0];
  *(v9 + 40) = v19;
  v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
LABEL_17:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5890;
    v63 = [*&v1[v15] leadingAnchor];
    v64 = [v1 contentView];
    v65 = [v64 leadingAnchor];

    v66 = [v63 constraintEqualToAnchor:v65 constant:16.0];
    *(inited + 32) = v66;
    v67 = [*&v1[v15] trailingAnchor];
    v68 = [v1 contentView];
    v69 = [v68 trailingAnchor];

    v70 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
    swift_beginAccess();
    v71 = -16.0;
    if (v1[v70])
    {
      v71 = -8.0;
    }

    v72 = [v67 constraintEqualToAnchor:v69 constant:{v71, v81}];

    *(inited + 40) = v72;
    v73 = [*&v1[v15] centerYAnchor];
    v74 = [v1 contentView];
    v75 = [v74 centerYAnchor];

    v76 = [v73 constraintEqualToAnchor_];
    *(inited + 48) = v76;
    v77 = [v1 contentView];
    v78 = [v77 heightAnchor];

    v79 = [v78 constraintGreaterThanOrEqualToConstant_];
    *(inited + 56) = v79;
    sub_1B9F73B50(inited);
    v55 = v83;
LABEL_20:
    *&v1[v82] = v9;

    v80 = sub_1BA4A6AE8();

    [v55 activateConstraints_];

    return;
  }

  v21 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1BFAF2860](v21, v9);
      goto LABEL_7;
    }

    if (v21 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v22 = *(v9 + 8 * v21 + 32);
LABEL_7:
    v24 = v22;
    ++v21;
    LODWORD(v23) = 1132068864;
    [v22 setPriority_];

    if (v20 == v21)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

BOOL sub_1BA27CF4C()
{
  v0 = sub_1BA27A7D4();
  v1 = [v0 text];

  if (!v1)
  {
    return 1;
  }

  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 1;
  }

  v6 = sub_1BA27A994();
  v7 = [v6 text];

  if (!v7)
  {
    return 1;
  }

  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return !v11;
}

id sub_1BA27D030()
{
  v0 = [objc_opt_self() secondaryLabelColor];
  v1 = sub_1B9F6B774(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
  v2 = [objc_allocWithZone(type metadata accessor for DynamicFontLabel()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = v2;
  [v3 setAdjustsFontForContentSizeCategory_];
  [v3 setText_];
  [v3 setFont_];
  [v3 setTextColor_];
  [v3 setLineBreakMode_];
  [v3 setNumberOfLines_];

  LODWORD(v4) = 1144750080;
  [v3 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1144750080;
  [v3 setContentCompressionResistancePriority:0 forAxis:v5];

  return v3;
}

uint64_t sub_1BA27D1B8()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))(v25);
  if (!v26)
  {
    sub_1B9F4422C(v25, sub_1B9F7B6F8);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    return sub_1B9F4422C(&v22, sub_1BA281078);
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
  sub_1B9F0D9AC(0, qword_1EDC62BD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    return sub_1B9F4422C(&v22, sub_1BA281078);
  }

  if (!*(&v23 + 1))
  {
    return sub_1B9F4422C(&v22, sub_1BA281078);
  }

  sub_1B9F1134C(&v22, v25);
  v3 = sub_1BA27A7D4();
  v4 = v26;
  v5 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v5 + 16))(v4, v5);
  if (v6)
  {
    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
  }

  [v3 setText_];

  v9 = sub_1BA27A994();
  v10 = v26;
  v11 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v11 + 24))(v10, v11);
  if (v12)
  {
    v13 = sub_1BA4A6758();
  }

  else
  {
    v13 = 0;
  }

  [v9 setText_];

  v14 = v26;
  v15 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v16 = (*(v15 + 32))(v14, v15);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
  v18 = swift_beginAccess();
  *(v1 + v17) = v16 & 1;
  v19 = *((*v2 & *v1) + 0x160);
  (v19)(v18);
  if (*(v1 + v17) == 1)
  {
    sub_1BA27B454();
  }

  else
  {
    sub_1BA27BA50();
  }

  v20 = v26;
  v21 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  *(v1 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_forceVerticalLayout) = (*(v21 + 40))(v20, v21) & 1;
  v19();
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

id NonInteractiveCollectionViewListDisclosureCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for NonInteractiveCollectionViewListDisclosureCell();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setUserInteractionEnabled_];
  return v9;
}

id NonInteractiveCollectionViewListDisclosureCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NonInteractiveCollectionViewListDisclosureCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id NonInteractiveCollectionViewListDisclosureCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NonInteractiveCollectionViewListDisclosureCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA27D72C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  (*((*v1 & *v0) + 0x148))(v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v3, v11);
  if (!v12)
  {
    sub_1B9F4422C(v11, sub_1B9F7B6F8);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
    goto LABEL_7;
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
  sub_1B9F0D9AC(0, qword_1EDC61778);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_7;
  }

  v4 = *(&v14 + 1);
  if (!*(&v14 + 1))
  {
LABEL_7:
    sub_1B9F4422C(&v13, sub_1BA281B2C);
    v9 = 0;
    v8 = 0;
    goto LABEL_8;
  }

  v5 = v15;
  __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(&v13);
  v9 = v6;
LABEL_8:
  (*((*v1 & *v0) + 0x138))(v9, v8);
}

uint64_t sub_1BA27D958(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
  v5 = swift_beginAccess();
  *(v3 + v4) = v2;
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x160))(v5);
  if (*(v3 + v4) == 1)
  {
    return sub_1BA27B454();
  }

  else
  {
    return sub_1BA27BA50();
  }
}

void *CollectionViewListDisclosureCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel] = 0;
  v4[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator] = 1;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_currentLayoutConstraints] = MEMORY[0x1E69E7CC0];
  v4[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_forceVerticalLayout] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation] = 0;
  v27.receiver = v4;
  v27.super_class = type metadata accessor for CollectionViewListDisclosureCell();
  v10 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x150);
  v13 = v10;
  v14 = v12();
  (*((*v11 & *v13) + 0x160))(v14);
  v15 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
  swift_beginAccess();
  if (*(v13 + v15) == 1)
  {
    sub_1BA27B454();
  }

  else
  {
    sub_1BA27BA50();
  }

  v26 = sub_1BA27A994();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_1BA4A14E8();

  v17 = *(v13 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation);
  *(v13 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation) = v16;

  sub_1B9F1D1BC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B9FD0;
  v19 = sub_1BA4A4438();
  v20 = MEMORY[0x1E69DC130];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = sub_1BA4A40D8();
  v22 = MEMORY[0x1E69DC0C8];
  *(v18 + 48) = v21;
  *(v18 + 56) = v22;
  v23 = sub_1BA4A4858();
  v24 = MEMORY[0x1E69DC2B0];
  *(v18 + 64) = v23;
  *(v18 + 72) = v24;
  MEMORY[0x1BFAF2130](v18, sel_traitCollectionDidChangeWithTraitEnvironment_previousTraitCollection_);

  swift_unknownObjectRelease();
  return v13;
}

id CollectionViewListDisclosureCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void *CollectionViewListDisclosureCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___textLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell____lazy_storage___detailTextLabel] = 0;
  v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator] = 1;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_currentLayoutConstraints] = MEMORY[0x1E69E7CC0];
  v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_forceVerticalLayout] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation] = 0;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for CollectionViewListDisclosureCell();
  v4 = objc_msgSendSuper2(&v21, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = MEMORY[0x1E69E7D40];
    v7 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x150))();
    (*((*v6 & *v5) + 0x160))(v7);
    v8 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_showDisclosureIndicator;
    swift_beginAccess();
    if (*(v5 + v8) == 1)
    {
      sub_1BA27B454();
    }

    else
    {
      sub_1BA27BA50();
    }

    v20 = sub_1BA27A994();
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = v5;
    v10 = sub_1BA4A14E8();

    v11 = *(v9 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation);
    *(v9 + OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation) = v10;

    sub_1B9F1D1BC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1BA4B9FD0;
    v13 = sub_1BA4A4438();
    v14 = MEMORY[0x1E69DC130];
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    v15 = sub_1BA4A40D8();
    v16 = MEMORY[0x1E69DC0C8];
    *(v12 + 48) = v15;
    *(v12 + 56) = v16;
    v17 = sub_1BA4A4858();
    v18 = MEMORY[0x1E69DC2B0];
    *(v12 + 64) = v17;
    *(v12 + 72) = v18;
    MEMORY[0x1BFAF2130](v12, sel_traitCollectionDidChangeWithTraitEnvironment_previousTraitCollection_);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v5;
}

id CollectionViewListDisclosureCell.__deallocating_deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI32CollectionViewListDisclosureCell_detailTextObservation];
  if (v3)
  {
    v4 = v3;
    sub_1BA4A13F8();

    v3 = *&v1[v2];
  }

  *&v1[v2] = 0;

  v6.receiver = v1;
  v6.super_class = type metadata accessor for CollectionViewListDisclosureCell();
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1BA27E474()
{
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](60, 0xE100000000000000);
  swift_getObjectType();
  sub_1BA16A6B4();
  v1 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v1);

  MEMORY[0x1BFAF1350](32, 0xE100000000000000);
  sub_1BA4A7FB8();
  MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4F79C0);
  v2 = sub_1BA27A7D4();
  v3 = [v2 text];

  if (v3)
  {
    v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_1B9F2180C(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v7 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v7);

  MEMORY[0x1BFAF1350](0xD000000000000018, 0x80000001BA4F79E0);
  v8 = sub_1BA27A994();
  v9 = [v8 text];

  if (v9)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  v10 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v10);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  return 0;
}

void sub_1BA27E6A8()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for CollectionViewListDisclosureCell();
  objc_msgSendSuper2(&v27, sel_didMoveToSuperview);
  v2 = [v0 viewController];
  if (v2)
  {
    v3 = v2;
    UIViewController.resolvedPresentation.getter(&v21);

    v4 = v21;
    if ((v21 | 8) == 0xC)
    {
      v5 = &selRef_tertiarySystemBackgroundColor;
    }

    else
    {
      v5 = &selRef_secondarySystemGroupedBackgroundColor;
    }
  }

  else
  {
    v4 = 0;
    v5 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v6 = [objc_opt_self() *v5];
  [v1 setBackgroundColor_];

  v7 = [v1 selectedBackgroundView];
  if (v7)
  {
    v8 = v7;
    if ((v4 - 6) < 2)
    {
      v15 = objc_opt_self();
      v16 = [v15 systemGray5Color];
      v17 = [v15 tertiarySystemGroupedBackgroundColor];
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = v17;
      v18[4] = 0;
      v18[5] = v16;
      v13 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v25 = sub_1B9FD7F54;
      v26 = v18;
      v21 = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v14 = &block_descriptor_67;
    }

    else
    {
      if (v4 != 4 && v4 != 12)
      {
        v20 = [objc_opt_self() systemGray5Color];
        goto LABEL_13;
      }

      v9 = objc_opt_self();
      v10 = [v9 systemGray5Color];
      v11 = [v9 systemGray4Color];
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = v11;
      v12[4] = 0;
      v12[5] = v10;
      v13 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v25 = sub_1B9FE1088;
      v26 = v12;
      v21 = MEMORY[0x1E69E9820];
      v22 = 1107296256;
      v14 = &block_descriptor_12_2;
    }

    v23 = sub_1B9F7EBBC;
    v24 = v14;
    v19 = _Block_copy(&v21);
    v20 = [v13 initWithDynamicProvider_];
    _Block_release(v19);

LABEL_13:
    [v8 setBackgroundColor_];
  }
}

void sub_1BA27EA08(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1BA27EA70(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1BA4A6758();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setText_];
}

void sub_1BA27EAE0()
{
  sub_1BA2818DC();
  sub_1BA4A14A8();
  sub_1BA4A1498();
  v0 = v7;
  v1 = v8;
  if (v6 == 1)
  {
    if (v8 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v8 == 1)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    if (!v8)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v8)
  {
LABEL_5:
    v0 = v5;
    v1 = v6;
LABEL_6:
    sub_1BA281958(v0, v1);
LABEL_7:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x160))();
    }

    return;
  }

  if (v5 == v7 && v6 == v8)
  {
    sub_1BA281958(v5, v6);
    sub_1BA281958(v5, v6);
    return;
  }

  v4 = sub_1BA4A8338();
  sub_1BA281958(v7, v8);
  sub_1BA281958(v5, v6);
  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }
}

void (*sub_1BA27ECB8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x98))();
  return sub_1B9FCDD98;
}

char *sub_1BA27EE34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9F2180C(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA27EFDC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9F2180C(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BA27F15C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9F1D1BC(0, &qword_1EBBEA8A0, sub_1B9F7B6F8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F7B6F8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BA27F2F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9F1D1BC(0, &qword_1EBBEF6E8, sub_1BA281AC0, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BA281AC0();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA27F490(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9F2180C(0, &qword_1EBBEAC90, &type metadata for ConfirmDetailsSection.Row, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA27F5FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9F2180C(0, &unk_1EDC5DC40, &type metadata for SummarySharingSelectionSuggestedCategory, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1BA27F708(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9F2180C(0, &unk_1EDC6B3F0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA27F848(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9F2180C(0, &qword_1EBBEF6F0, MEMORY[0x1E69A2B70], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA27F96C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9F2180C(0, &qword_1EBBEAC10, MEMORY[0x1E69E6370], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1BA27FB08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9F2180C(0, &qword_1EDC5DCA8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1BA27FCE8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1BA28196C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F2180C(0, &qword_1EBBEAC88, &type metadata for ConfirmDetailsSection.Row, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BA27FE5C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), void (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1B9F1D1BC(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1BA27FFD8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9F2180C(0, &qword_1EBBEF688, &type metadata for SampleDescriptionItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[22 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA280158(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9F2180C(0, &qword_1EDC5DB70, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA28027C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9F1D1BC(0, &qword_1EDC5DB90, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1BA2803A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B9F2180C(0, &qword_1EDC5DC88, &type metadata for CoreTextView.TypesettingResult.Column, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BA280530(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1B9F1D1BC(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

size_t sub_1BA2806AC(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B9F1D1BC(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}