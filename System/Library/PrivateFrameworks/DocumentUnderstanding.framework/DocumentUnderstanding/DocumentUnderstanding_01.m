uint64_t sub_232B1B934(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_232B124A8(&qword_27DDC64B0, &qword_232CF5D30);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v155 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v170 = &v148 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v150 = &v148 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v160 = &v148 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v163 = &v148 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v162 = &v148 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v153 = &v148 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v164 = &v148 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v156 = &v148 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v168 = &v148 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v157 = &v148 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v148 - v30;
  v32 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v148 = &v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v158 = &v148 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v149 = &v148 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v159 = &v148 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v151 = &v148 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v161 = &v148 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v152 = &v148 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v165 = &v148 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v154 = &v148 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v169 = &v148 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v148 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v148 - v57;
  v173 = *a1;
  v190 = v173;
  v59 = sub_232CEA720();
  v61 = v60;
  v190 = 0x746E635F65636166;
  v191 = 0xE90000000000005FLL;
  MEMORY[0x238391C30](v59);

  v166 = v190;
  v167 = v191;
  v62 = *(type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0) + 20);
  v171 = a2;
  v172 = v62;
  sub_232B2036C(a2 + v62, v31, &qword_27DDC64B0, &qword_232CF5D30);
  v63 = 0x27DDC6000uLL;
  if (sub_232B12480(v31, 1, v32) == 1)
  {
    sub_232CE9330();
    v61 = *(v32 + 20);
    if (qword_27DDC62E8 != -1)
    {
      swift_once();
    }

    *&v58[v61] = off_27DDC62F0;
    v64 = sub_232B12480(v31, 1, v32);

    if (v64 != 1)
    {
      sub_232B13790(v31, &qword_27DDC64B0, &qword_232CF5D30);
    }
  }

  else
  {
    sub_232B1F7F0(v31, v58, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  }

  v65 = *&v58[*(v32 + 20)];
  swift_beginAccess();
  v66 = *(v65 + 176);

  sub_232B1F798(v58, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  v67 = *(v66 + 16);

  v68 = 0.0;
  v69 = v173;
  if (v67 < v173)
  {
    goto LABEL_17;
  }

  v70 = v157;
  sub_232B2036C(v171 + v172, v157, &qword_27DDC64B0, &qword_232CF5D30);
  if (sub_232B12480(v70, 1, v32) != 1)
  {
    sub_232B1F7F0(v70, v56, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    goto LABEL_13;
  }

  sub_232CE9330();
  v71 = *(v32 + 20);
  if (qword_27DDC62E8 != -1)
  {
    goto LABEL_105;
  }

  while (1)
  {
    *&v56[v71] = off_27DDC62F0;
    v67 = v157;
    v72 = sub_232B12480(v157, 1, v32);

    if (v72 != 1)
    {
      sub_232B13790(v67, &qword_27DDC64B0, &qword_232CF5D30);
    }

LABEL_13:
    v73 = *&v56[*(v32 + 20)];
    swift_beginAccess();
    v74 = *(v73 + 176);

    sub_232B1F798(v56, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v75 = v69 - 1;
    if (__OFSUB__(v69, 1))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      swift_once();
      goto LABEL_19;
    }

    if ((v75 & 0x8000000000000000) != 0)
    {
      goto LABEL_92;
    }

    if (v75 >= *(v74 + 16))
    {
      goto LABEL_95;
    }

    v68 = *(v74 + 8 * v75 + 32);

LABEL_17:
    v61 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
    swift_beginAccess();
    v76 = *(a3 + v61);
    swift_isUniquelyReferenced_nonNull_native();
    v187 = *(a3 + v61);
    sub_232B1F66C(v166, v167, v68);
    *(a3 + v61) = v187;

    swift_endAccess();
    v188 = v69;
    v77 = sub_232CEA720();
    v188 = 0xD00000000000001ALL;
    v189 = 0x8000000232D029C0;
    MEMORY[0x238391C30](v77);

    v166 = v188;
    v167 = v189;
    v67 = v168;
    sub_232B2036C(v171 + v172, v168, &qword_27DDC64B0, &qword_232CF5D30);
    if (sub_232B12480(v67, 1, v32) != 1)
    {
      v56 = v169;
      sub_232B1F7F0(v67, v169, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      goto LABEL_22;
    }

    v56 = v169;
    sub_232CE9330();
    v69 = *(v32 + 20);
    if (qword_27DDC62E8 != -1)
    {
      goto LABEL_93;
    }

LABEL_19:
    *&v56[v69] = off_27DDC62F0;
    v78 = sub_232B12480(v67, 1, v32);

    if (v78 != 1)
    {
      sub_232B13790(v67, &qword_27DDC64B0, &qword_232CF5D30);
    }

LABEL_22:
    v79 = *&v56[*(v32 + 20)];
    swift_beginAccess();
    v80 = *(v79 + 184);

    sub_232B1F798(v56, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v81 = *(v80 + 16);

    v82 = 0.0;
    v83 = v81 < v173;
    v69 = v173;
    v84 = v171;
    if (!v83)
    {
      v63 = v171;
      v85 = v156;
      sub_232B2036C(v171 + v172, v156, &qword_27DDC64B0, &qword_232CF5D30);
      if (sub_232B12480(v85, 1, v32) == 1)
      {
        v67 = v154;
        sub_232CE9330();
        v86 = *(v32 + 20);
        if (qword_27DDC62E8 != -1)
        {
          swift_once();
        }

        *(v67 + v86) = off_27DDC62F0;
        v56 = v156;
        v87 = sub_232B12480(v156, 1, v32);

        v69 = v173;
        if (v87 != 1)
        {
          sub_232B13790(v56, &qword_27DDC64B0, &qword_232CF5D30);
        }
      }

      else
      {
        v67 = v154;
        sub_232B1F7F0(v85, v154, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      }

      v88 = *(v67 + *(v32 + 20));
      swift_beginAccess();
      v89 = *(v88 + 184);

      sub_232B1F798(v67, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      v90 = v69 - 1;
      if (v69 < 1)
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        swift_once();
        goto LABEL_34;
      }

      if (v90 >= *(v89 + 16))
      {
        goto LABEL_98;
      }

      v82 = *(v89 + 8 * v90 + 32);

      v84 = v63;
    }

    swift_beginAccess();
    v91 = *(a3 + v61);
    swift_isUniquelyReferenced_nonNull_native();
    v184 = *(a3 + v61);
    sub_232B1F66C(v166, v167, v82);
    *(a3 + v61) = v184;

    swift_endAccess();
    v185 = v69;
    v92 = sub_232CEA720();
    v185 = 0xD00000000000001CLL;
    v186 = 0x8000000232D029E0;
    MEMORY[0x238391C30](v92);

    v67 = v186;
    v169 = v185;
    v69 = v164;
    sub_232B2036C(v84 + v172, v164, &qword_27DDC64B0, &qword_232CF5D30);
    if (sub_232B12480(v69, 1, v32) != 1)
    {
      v56 = v165;
      sub_232B1F7F0(v69, v165, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      goto LABEL_37;
    }

    v63 = a3;
    a3 = v67;
    v56 = v165;
    sub_232CE9330();
    v67 = *(v32 + 20);
    if (qword_27DDC62E8 != -1)
    {
      goto LABEL_96;
    }

LABEL_34:
    *&v56[v67] = off_27DDC62F0;
    v93 = sub_232B12480(v69, 1, v32);

    v67 = a3;
    a3 = v63;
    if (v93 != 1)
    {
      sub_232B13790(v69, &qword_27DDC64B0, &qword_232CF5D30);
    }

LABEL_37:
    v94 = *&v56[*(v32 + 20)];
    swift_beginAccess();
    v95 = *(v94 + 192);

    sub_232B1F798(v56, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v96 = *(v95 + 16);

    v97 = 0.0;
    v98 = v173;
    if (v96 >= v173)
    {
      v99 = v153;
      sub_232B2036C(v171 + v172, v153, &qword_27DDC64B0, &qword_232CF5D30);
      if (sub_232B12480(v99, 1, v32) == 1)
      {
        v56 = v152;
        sub_232CE9330();
        v69 = *(v32 + 20);
        if (qword_27DDC62E8 != -1)
        {
          swift_once();
        }

        *&v56[v69] = off_27DDC62F0;
        v100 = sub_232B12480(v99, 1, v32);

        if (v100 != 1)
        {
          sub_232B13790(v99, &qword_27DDC64B0, &qword_232CF5D30);
        }
      }

      else
      {
        v56 = v152;
        sub_232B1F7F0(v99, v152, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      }

      v101 = *&v56[*(v32 + 20)];
      swift_beginAccess();
      v102 = *(v101 + 192);

      sub_232B1F798(v56, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      if (v173 - 1 >= *(v102 + 16))
      {
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        swift_once();
        goto LABEL_48;
      }

      v97 = *(v102 + 8 * (v173 - 1) + 32);

      v98 = v173;
    }

    swift_beginAccess();
    v103 = *(a3 + v61);
    swift_isUniquelyReferenced_nonNull_native();
    v181 = *(a3 + v61);
    sub_232B1F66C(v169, v67, v97);
    *(a3 + v61) = v181;

    swift_endAccess();
    v182 = v98;
    v104 = sub_232CEA720();
    v182 = 0xD00000000000001ALL;
    v183 = 0x8000000232D02A00;
    MEMORY[0x238391C30](v104);

    v71 = v183;
    v169 = v182;
    v56 = v162;
    sub_232B2036C(v171 + v172, v162, &qword_27DDC64B0, &qword_232CF5D30);
    if (sub_232B12480(v56, 1, v32) != 1)
    {
      v69 = v161;
      sub_232B1F7F0(v56, v161, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      v106 = v163;
      goto LABEL_51;
    }

    v168 = v61;
    v61 = a3;
    a3 = v71;
    v69 = v161;
    sub_232CE9330();
    v67 = *(v32 + 20);
    if (qword_27DDC62E8 != -1)
    {
      goto LABEL_99;
    }

LABEL_48:
    *(v69 + v67) = off_27DDC62F0;
    v105 = sub_232B12480(v56, 1, v32);

    v106 = v163;
    v71 = a3;
    a3 = v61;
    v61 = v168;
    if (v105 != 1)
    {
      sub_232B13790(v56, &qword_27DDC64B0, &qword_232CF5D30);
    }

LABEL_51:
    v107 = *(v69 + *(v32 + 20));
    swift_beginAccess();
    v108 = *(v107 + 200);

    sub_232B1F798(v69, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v109 = *(v108 + 16);

    v110 = 0.0;
    v111 = v109 >= v173;
    v112 = v173;
    if (v111)
    {
      sub_232B2036C(v171 + v172, v106, &qword_27DDC64B0, &qword_232CF5D30);
      if (sub_232B12480(v106, 1, v32) == 1)
      {
        v113 = v151;
        sub_232CE9330();
        v114 = *(v32 + 20);
        if (qword_27DDC62E8 != -1)
        {
          swift_once();
        }

        *(v113 + v114) = off_27DDC62F0;
        v115 = sub_232B12480(v106, 1, v32);

        v112 = v173;
        if (v115 != 1)
        {
          sub_232B13790(v106, &qword_27DDC64B0, &qword_232CF5D30);
        }
      }

      else
      {
        v113 = v151;
        sub_232B1F7F0(v106, v151, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      }

      v116 = *(v113 + *(v32 + 20));
      swift_beginAccess();
      v117 = *(v116 + 200);

      sub_232B1F798(v113, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      if ((v112 - 1) >= *(v117 + 16))
      {
        __break(1u);
LABEL_101:
        swift_once();
        goto LABEL_63;
      }

      v110 = *(v117 + 8 * (v112 - 1) + 32);
    }

    swift_beginAccess();
    v118 = *(a3 + v61);
    swift_isUniquelyReferenced_nonNull_native();
    v178 = *(a3 + v61);
    sub_232B1F66C(v169, v71, v110);
    *(a3 + v61) = v178;

    swift_endAccess();
    v179 = v112;
    v119 = sub_232CEA720();
    v179 = 0xD000000000000017;
    v180 = 0x8000000232D02A20;
    MEMORY[0x238391C30](v119);

    v120 = v179;
    v71 = v180;
    v113 = v160;
    sub_232B2036C(v171 + v172, v160, &qword_27DDC64B0, &qword_232CF5D30);
    v121 = sub_232B12480(v113, 1, v32);
    v169 = v120;
    if (v121 != 1)
    {
      v112 = v159;
      sub_232B1F7F0(v113, v159, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      goto LABEL_66;
    }

    v112 = v159;
    sub_232CE9330();
    v106 = *(v32 + 20);
    if (qword_27DDC62E8 != -1)
    {
      goto LABEL_101;
    }

LABEL_63:
    *(v112 + v106) = off_27DDC62F0;
    v122 = sub_232B12480(v113, 1, v32);

    if (v122 != 1)
    {
      sub_232B13790(v113, &qword_27DDC64B0, &qword_232CF5D30);
    }

LABEL_66:
    v123 = *(v112 + *(v32 + 20));
    swift_beginAccess();
    v124 = *(v123 + 312);

    sub_232B1F798(v112, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v125 = *(v124 + 16);

    v126 = 0.0;
    v127 = v173;
    v111 = v125 >= v173;
    v128 = v170;
    if (v111)
    {
      v129 = v150;
      sub_232B2036C(v171 + v172, v150, &qword_27DDC64B0, &qword_232CF5D30);
      if (sub_232B12480(v129, 1, v32) == 1)
      {
        v56 = v149;
        sub_232CE9330();
        v130 = *(v32 + 20);
        if (qword_27DDC62E8 != -1)
        {
          swift_once();
        }

        *&v56[v130] = off_27DDC62F0;
        v131 = sub_232B12480(v129, 1, v32);

        v128 = v170;
        if (v131 != 1)
        {
          sub_232B13790(v129, &qword_27DDC64B0, &qword_232CF5D30);
        }
      }

      else
      {
        v56 = v149;
        sub_232B1F7F0(v129, v149, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      }

      v132 = *&v56[*(v32 + 20)];
      swift_beginAccess();
      v133 = *(v132 + 312);

      sub_232B1F798(v56, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      if (v173 - 1 >= *(v133 + 16))
      {
        __break(1u);
LABEL_103:
        swift_once();
        goto LABEL_78;
      }

      v126 = *(v133 + 8 * (v173 - 1) + 32);

      v127 = v173;
    }

    swift_beginAccess();
    v134 = *(a3 + v61);
    swift_isUniquelyReferenced_nonNull_native();
    v175 = *(a3 + v61);
    sub_232B1F66C(v169, v71, v126);
    *(a3 + v61) = v175;

    swift_endAccess();
    v176 = v127;
    v135 = sub_232CEA720();
    v176 = 0xD00000000000001BLL;
    v177 = 0x8000000232D02A40;
    MEMORY[0x238391C30](v135);

    v56 = v176;
    v71 = v177;
    sub_232B2036C(v171 + v172, v128, &qword_27DDC64B0, &qword_232CF5D30);
    if (sub_232B12480(v128, 1, v32) != 1)
    {
      v129 = v158;
      sub_232B1F7F0(v128, v158, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
      goto LABEL_81;
    }

    v129 = v158;
    sub_232CE9330();
    v128 = *(v32 + 20);
    if (qword_27DDC62E8 != -1)
    {
      goto LABEL_103;
    }

LABEL_78:
    *(v129 + v128) = off_27DDC62F0;
    v136 = v170;
    v137 = sub_232B12480(v170, 1, v32);

    if (v137 != 1)
    {
      sub_232B13790(v136, &qword_27DDC64B0, &qword_232CF5D30);
    }

LABEL_81:
    v138 = *(v129 + *(v32 + 20));
    swift_beginAccess();
    v139 = *(v138 + 208);

    sub_232B1F798(v129, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    v69 = *(v139 + 16);

    v140 = 0.0;
    if (v69 < v173)
    {
      goto LABEL_90;
    }

    v141 = v155;
    sub_232B2036C(v171 + v172, v155, &qword_27DDC64B0, &qword_232CF5D30);
    if (sub_232B12480(v141, 1, v32) == 1)
    {
      v63 = v148;
      sub_232CE9330();
      v142 = *(v32 + 20);
      if (qword_27DDC62E8 != -1)
      {
        swift_once();
      }

      *(v63 + v142) = off_27DDC62F0;
      v69 = v155;
      v143 = sub_232B12480(v155, 1, v32);

      if (v143 != 1)
      {
        sub_232B13790(v69, &qword_27DDC64B0, &qword_232CF5D30);
      }
    }

    else
    {
      v63 = v148;
      sub_232B1F7F0(v141, v148, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    }

    v144 = *(v63 + *(v32 + 20));
    swift_beginAccess();
    v145 = *(v144 + 208);

    sub_232B1F798(v63, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
    if (v173 - 1 < *(v145 + 16))
    {
      break;
    }

    __break(1u);
LABEL_105:
    swift_once();
  }

  v140 = *(v145 + 8 * (v173 - 1) + 32);

LABEL_90:
  swift_beginAccess();
  v146 = *(a3 + v61);
  swift_isUniquelyReferenced_nonNull_native();
  v174 = *(a3 + v61);
  sub_232B1F66C(v56, v71, v140);
  *(a3 + v61) = v174;

  return swift_endAccess();
}

void sub_232B1D180(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  while (1)
  {
    v10 = a1;
    sub_232B1E3A4(&v10, a3, a4);
    if (v4 || a2 == a1)
    {
      break;
    }

    if (__OFADD__(a1++, 1))
    {
      __break(1u);
      break;
    }
  }
}

uint64_t sub_232B1D200(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v10 = a3;
    result = a1(&v10);
    if (v4 || a4 == a3)
    {
      break;
    }

    if (__OFADD__(a3++, 1))
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_232B1D268(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  for (i = a3; a4 != i; ++i)
  {
    if (a4 < a3)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return result;
    }

    if (i >= a4)
    {
      goto LABEL_9;
    }

    v9 = i;
    result = v7(&v9);
    if (v4)
    {
      return result;
    }
  }

  return result;
}

void sub_232B1D2E4(uint64_t a1@<X8>)
{
  v2 = v1;
  v209 = a1;
  v3 = type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0);
  v4 = sub_232B13F24(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_232B20714();
  v207 = v7;
  sub_232B20600();
  MEMORY[0x28223BE20](v8);
  v10 = &v206 - v9;
  v11 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  sub_232B20704();
  v16 = v15 - v14;
  sub_232CE9330();
  v206 = v12[7];
  sub_232B12504(v16 + v206, 1, 1, v3);
  v17 = v16 + v12[8];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v12[9];
  *(v16 + v18) = 2;
  v19 = (v16 + v12[10]);
  *v17 = *&v2[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_annotation];
  *(v17 + 8) = 0;
  *(v16 + v18) = v2[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_groundTruthAvailable];
  v20 = *&v2[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey + 8];
  *v19 = *&v2[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey];
  v19[1] = v20;

  sub_232CE9330();
  v208 = v3;
  v21 = *(v3 + 20);
  if (qword_27DDC62E8 != -1)
  {
    sub_232B20578();
  }

  *&v10[v21] = off_27DDC62F0;
  v22 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
  sub_232B13F74();
  v23 = *&v2[v22];

  v24 = sub_232B20798();
  sub_232B1DFEC(v24, v25, v23);
  v27 = v26;

  v28 = *&v10[v21];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *&v10[v21];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v31 = sub_232B2060C();
    sub_232B20650(v31);
  }

  sub_232B206A0();
  sub_232B13F5C();
  *(v30 + 16) = v27;
  *(v30 + 24) = 0;
  sub_232B208C8();
  v32 = sub_232B209B4();
  sub_232B1DFEC(v32, 0xEA0000000000746ELL, v30);
  sub_232B2066C();
  v33 = *&v10[v21];
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *&v10[v21];
  if ((v34 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v36 = sub_232B2060C();
    sub_232B20650(v36);
  }

  sub_232B206A0();
  sub_232B13F5C();
  *(v35 + 32) = v27;
  *(v35 + 40) = 0;
  sub_232B208C8();
  v37 = sub_232B20980();
  sub_232B1DFEC(v37, 0xE900000000000074, v35);
  sub_232B2066C();
  v38 = *&v10[v21];
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *&v10[v21];
  if ((v39 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v41 = sub_232B2060C();
    sub_232B20650(v41);
  }

  sub_232B206A0();
  sub_232B13F5C();
  *(v40 + 48) = v27;
  *(v40 + 56) = 0;
  sub_232B208C8();
  sub_232B20A6C(0xD000000000000012);
  sub_232B2066C();
  v42 = *&v10[v21];
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *&v10[v21];
  if ((v43 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v45 = sub_232B2060C();
    sub_232B20650(v45);
  }

  sub_232B206A0();
  sub_232B13F5C();
  *(v44 + 64) = "able";
  *(v44 + 72) = 0;
  sub_232B208C8();
  sub_232B20A6C(0xD000000000000013);
  sub_232B2066C();
  v46 = *&v10[v21];
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *&v10[v21];
  if ((v47 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v49 = sub_232B2060C();
    sub_232B20650(v49);
  }

  sub_232B206A0();
  sub_232B13F5C();
  *(v48 + 80) = "entity image ratio";
  *(v48 + 88) = 0;
  sub_232B208C8();
  v50 = sub_232B20838();
  sub_232B1DFEC(v50, v51, v48);
  sub_232B2066C();
  v52 = *&v10[v21];
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *&v10[v21];
  if ((v53 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v55 = sub_232B2060C();
    sub_232B20650(v55);
  }

  sub_232B206A0();
  sub_232B13F5C();
  *(v54 + 96) = "entity image ratio";
  *(v54 + 104) = 0;
  sub_232B208C8();
  v56 = sub_232B207EC();
  sub_232B1DFEC(v56, v57, v54);
  sub_232B2066C();
  v58 = *&v10[v21];
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *&v10[v21];
  if ((v59 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v61 = sub_232B2060C();
    sub_232B20650(v61);
  }

  sub_232B206A0();
  sub_232B13F5C();
  *(v60 + 112) = "entity image ratio";
  *(v60 + 120) = 0;
  sub_232B208C8();
  v62 = sub_232B20A6C(0xD000000000000011);
  v64 = v63;

  v65 = *&v10[v21];
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *&v10[v21];
  if ((v66 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v68 = sub_232B2060C();
    sub_232B20650(v68);
  }

  if (v64)
  {
    v69 = 0;
  }

  else
  {
    v69 = v62;
  }

  sub_232B13F5C();
  *(v67 + 128) = v69;
  *(v67 + 136) = 0;
  sub_232B208C8();
  v70 = sub_232B20728();
  v71 = sub_232B1DFEC(v70 & 0xFFFFFFFFFFFFLL | 0x6E20000000000000, 0xEC00000073656D61, v67);
  v73 = v72;

  v74 = *&v10[v21];
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *&v10[v21];
  if ((v75 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v77 = sub_232B2060C();
    sub_232B20650(v77);
  }

  if (v73)
  {
    v78 = 0;
  }

  else
  {
    v78 = v71;
  }

  sub_232B13F5C();
  *(v76 + 144) = v78;
  *(v76 + 152) = 0;
  sub_232B208C8();
  v79 = sub_232B20728();
  sub_232B1DFEC(v79 & 0xFFFFFFFFFFFFLL | 0x6620000000000000, 0xEC00000073656361, v76);
  sub_232B2066C();
  v80 = *&v10[v21];
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *&v10[v21];
  if ((v81 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v83 = sub_232B2060C();
    sub_232B20650(v83);
  }

  sub_232B206A0();
  sub_232B13F5C();
  *(v82 + 160) = v78;
  *(v82 + 168) = 0;
  sub_232B208C8();
  v84 = sub_232B20768();
  sub_232B1DFEC(v84, v85, v82);
  sub_232B2066C();
  v86 = *&v10[v21];
  v87 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *&v10[v21];
  if ((v87 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v89 = sub_232B2060C();
    sub_232B20650(v89);
  }

  sub_232B206A0();
  sub_232B13F5C();
  *(v88 + 296) = v78;
  *(v88 + 304) = 0;
  sub_232B208C8();
  sub_232B20A6C(0xD000000000000010);
  sub_232B2066C();
  v90 = *&v10[v21];
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *&v10[v21];
  if ((v91 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v93 = sub_232B2060C();
    sub_232B20650(v93);
  }

  sub_232B206A0();
  sub_232B13F5C();
  *(v92 + 280) = "mentions per name";
  *(v92 + 288) = 0;
  sub_232B208C8();
  v94 = sub_232B20818();
  sub_232B1DFEC(v94, v95, v92);
  sub_232B2066C();
  v96 = *&v10[v21];
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *&v10[v21];
  if ((v97 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v99 = sub_232B2060C();
    sub_232B20650(v99);
  }

  sub_232B206A0();
  sub_232B13F5C();
  *(v98 + 216) = "mentions per name";
  *(v98 + 224) = 0;
  sub_232B208C8();
  v100 = sub_232B209D4();
  sub_232B1DFEC(v100, 0xEA00000000007367, v98);
  sub_232B2066C();
  v101 = *&v10[v21];
  v102 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *&v10[v21];
  if ((v102 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v104 = sub_232B2060C();
    sub_232B20650(v104);
  }

  sub_232B206A0();
  sub_232B13F5C();
  *(v103 + 232) = "mentions per name";
  *(v103 + 240) = 0;
  v105 = *&v10[v21];
  v106 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *&v10[v21];
  if ((v106 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v108 = sub_232B2060C();
    sub_232B20650(v108);
  }

  sub_232B13F5C();
  v109 = *(v107 + 176);
  v110 = MEMORY[0x277D84F90];
  *(v107 + 176) = MEMORY[0x277D84F90];

  v111 = *&v10[v21];
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *&v10[v21];
  if ((v112 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v114 = sub_232B2060C();
    sub_232B20650(v114);
  }

  sub_232B13F5C();
  v115 = *(v113 + 184);
  *(v113 + 184) = v110;

  v116 = *&v10[v21];
  v117 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *&v10[v21];
  if ((v117 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v119 = sub_232B2060C();
    sub_232B20650(v119);
  }

  sub_232B13F5C();
  v120 = *(v118 + 192);
  *(v118 + 192) = v110;

  v121 = *&v10[v21];
  v122 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *&v10[v21];
  if ((v122 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v124 = sub_232B2060C();
    sub_232B20650(v124);
  }

  sub_232B13F5C();
  v125 = *(v123 + 200);
  *(v123 + 200) = v110;

  v126 = *&v10[v21];
  v127 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *&v10[v21];
  if ((v127 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v129 = sub_232B2060C();
    sub_232B20650(v129);
  }

  sub_232B13F5C();
  v130 = *(v128 + 312);
  *(v128 + 312) = v110;

  v131 = *&v10[v21];
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *&v10[v21];
  if ((v132 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v134 = sub_232B2060C();
    sub_232B20650(v134);
  }

  sub_232B13F5C();
  v135 = *(v133 + 208);
  *(v133 + 208) = v110;

  v136 = v2;
  v137 = 0;
  sub_232B1D180(1, 11, v10, v136);
  sub_232B13F74();
  sub_232B2075C();
  if (v138)
  {
    sub_232B20924();
    v139 = sub_232B1F160(0xD00000000000001DLL, 0x8000000000000000);
    if (v140)
    {
      v110 = *(*(v133 + 56) + 8 * v139);
    }
  }

  v141 = *&v10[v21];
  v142 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *&v10[v21];
  if ((v142 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v144 = sub_232B2060C();
    sub_232B20650(v144);
  }

  sub_232B13F5C();
  v145 = *(v143 + 248);
  *(v143 + 248) = v110;

  sub_232B2075C();
  if (v146)
  {
    sub_232B20924();
    v147 = sub_232B1F160(0xD00000000000001DLL, 0x8000000000000000);
    if (v148)
    {
      sub_232B206DC(v147);
    }

    else
    {
      v137 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v137 = MEMORY[0x277D84F90];
  }

  v149 = *&v10[v21];
  v150 = swift_isUniquelyReferenced_nonNull_native();
  v151 = *&v10[v21];
  if ((v150 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v152 = sub_232B2060C();
    sub_232B20650(v152);
  }

  sub_232B13F5C();
  v153 = *(v151 + 256);
  *(v151 + 256) = v137;

  sub_232B2075C();
  if (v154)
  {
    sub_232B20924();
    v155 = sub_232B1F160(0xD00000000000001CLL, v137 | 0x8000000000000000);
    if (v156)
    {
      sub_232B206DC(v155);
    }

    else
    {
      v137 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v137 = MEMORY[0x277D84F90];
  }

  v157 = *&v10[v21];
  v158 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *&v10[v21];
  if ((v158 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v160 = sub_232B2060C();
    sub_232B20650(v160);
  }

  sub_232B13F5C();
  v161 = *(v159 + 264);
  *(v159 + 264) = v137;

  sub_232B2075C();
  if (v162)
  {
    sub_232B20924();
    v163 = sub_232B1F160(0xD000000000000017, v137 | 0x8000000000000000);
    if (v164)
    {
      sub_232B206DC(v163);
    }

    else
    {
      v137 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v137 = MEMORY[0x277D84F90];
  }

  v165 = *&v10[v21];
  v166 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *&v10[v21];
  if ((v166 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v168 = sub_232B2060C();
    sub_232B20650(v168);
  }

  sub_232B13F5C();
  v169 = *(v167 + 272);
  *(v167 + 272) = v137;

  sub_232B2075C();
  if (v170)
  {
    sub_232B20924();
    v171 = sub_232B1F160(0xD000000000000019, v137 | 0x8000000000000000);
    if (v172)
    {
      sub_232B206DC(v171);
    }

    else
    {
      v137 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v137 = MEMORY[0x277D84F90];
  }

  v173 = *&v10[v21];
  v174 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *&v10[v21];
  if ((v174 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v176 = sub_232B2060C();
    sub_232B20650(v176);
  }

  sub_232B13F5C();
  v177 = *(v175 + 320);
  *(v175 + 320) = v137;

  sub_232B2075C();
  if (v178)
  {
    sub_232B20924();
    v179 = sub_232B1F160(0xD000000000000014, v137 | 0x8000000000000000);
    if (v180)
    {
      sub_232B206DC(v179);
    }

    else
    {
      v137 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v137 = MEMORY[0x277D84F90];
  }

  v181 = *&v10[v21];
  v182 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *&v10[v21];
  if ((v182 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v184 = sub_232B2060C();
    sub_232B20650(v184);
  }

  sub_232B13F5C();
  v185 = *(v183 + 328);
  *(v183 + 328) = v137;

  sub_232B2075C();
  if (v186)
  {
    sub_232B20924();
    v187 = sub_232B1F160(0xD000000000000019, v137 | 0x8000000000000000);
    if (v188)
    {
      sub_232B206DC(v187);
    }

    else
    {
      v137 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v137 = MEMORY[0x277D84F90];
  }

  v189 = *&v10[v21];
  v190 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *&v10[v21];
  if ((v190 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v192 = sub_232B2060C();
    sub_232B20650(v192);
  }

  sub_232B13F5C();
  v193 = *(v191 + 344);
  *(v191 + 344) = v137;

  sub_232B2075C();
  if (v194)
  {
    sub_232B20924();
    v195 = sub_232B1F160(0xD00000000000001CLL, v137 | 0x8000000000000000);
    if (v196)
    {
      sub_232B206DC(v195);
    }

    else
    {
      v137 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v137 = MEMORY[0x277D84F90];
  }

  v197 = *&v10[v21];
  v198 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *&v10[v21];
  if ((v198 & 1) == 0)
  {
    type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures._StorageClass();
    sub_232B207BC();
    v200 = sub_232B2060C();
    sub_232B20650(v200);
  }

  sub_232B13F5C();
  v201 = *(v199 + 336);
  *(v199 + 336) = v137;

  v202 = v207;
  sub_232B20458(v10, v207, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  v203 = v206;
  sub_232B13790(v16 + v206, &qword_27DDC64B0, &qword_232CF5D30);
  sub_232B20548();
  sub_232B1F7F0(v202, v16 + v203, v204);
  sub_232B12504(v16 + v203, 0, 1, v208);
  sub_232B206C4();
  sub_232B1F7F0(v16, v209, v205);
  sub_232B1F798(v10, type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures);
  sub_232B20A00();
}

uint64_t sub_232B1DFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_232B1F160(a1, a2);
  if (v4)
  {
    return sub_232B20948(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232B1E040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_232B1F160(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_232B20948(v3);
}

uint64_t sub_232B1E08C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_232B05178(a1);
    if (v3)
    {
      sub_232B20888(v2);
    }
  }

  return sub_232B2080C();
}

uint64_t sub_232B1E0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_232B1F160(a1, a2);
    if (v4)
    {
      sub_232B20888(v3);
    }
  }

  return sub_232B2080C();
}

double sub_232B1E114(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return sub_232B20994();
  }

  sub_232B1F1D8(a1);
  if ((v3 & 1) == 0)
  {
    return sub_232B20994();
  }

  v4 = sub_232B20904(v2);

  sub_232B204B4(v4, v5);
  return result;
}

double sub_232B1E16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return sub_232B20994();
  }

  v3 = sub_232B1F160(a1, a2);
  if ((v4 & 1) == 0)
  {
    return sub_232B20994();
  }

  v5 = sub_232B20904(v3);

  sub_232B204B4(v5, v6);
  return result;
}

void sub_232B1E1C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_232B1F160(a1, a2), (v7 & 1) != 0))
  {
    sub_232B2036C(*(a3 + 56) + 40 * v6, a4, &qword_27DDC6778, &unk_232CF7FB0);
  }

  else
  {
    sub_232B20994();
    *(a4 + 32) = -1;
  }
}

uint64_t sub_232B1E22C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_232B1F1D8(a1);
    if (v3)
    {
      sub_232B20888(v2);
    }
  }

  return sub_232B2080C();
}

uint64_t sub_232B1E270(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_232B05178(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_232B20948(v2);
}

void *sub_232B1E2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_232B1F160(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

void *sub_232B1E304(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_232B1F268(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

double sub_232B1E34C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return sub_232B20994();
  }

  v2 = sub_232B1F268(a1);
  if ((v3 & 1) == 0)
  {
    return sub_232B20994();
  }

  v4 = sub_232B20904(v2);

  sub_232B204B4(v4, v5);
  return result;
}

uint64_t sub_232B1E3A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = sub_232CEA720();
  MEMORY[0x238391C30](v6);

  v7 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
  swift_beginAccess();
  v8 = *(a3 + v7);
  if (*(v8 + 16) && (v9 = *(a3 + v7), , v10 = sub_232B1F160(0x746E635F65636166, 0xE90000000000005FLL), v12 = v11, , (v12 & 1) != 0))
  {
    v13 = *(*(v8 + 56) + 8 * v10);
  }

  else
  {

    v13 = 0;
  }

  v14 = *(type metadata accessor for DocumentUnderstanding_Autonaming_XGBoostModelFeatures(0) + 20);
  v15 = *(a2 + v14);
  swift_beginAccess();
  v16 = *(v15 + 176);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v69 = *(v16 + 16);
    sub_232B35ABC();
    v16 = v70;
  }

  v17 = *(v16 + 16);
  if (v17 >= *(v16 + 24) >> 1)
  {
    sub_232B35ABC();
    v16 = v71;
  }

  *(v16 + 16) = v17 + 1;
  *(v16 + 8 * v17 + 32) = v13;
  sub_232B0D2A4();
  v18 = sub_232CEA720();
  MEMORY[0x238391C30](v18);

  v19 = *(a3 + v7);
  if (*(v19 + 16) && (v20 = *(a3 + v7), , v21 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D029C0), v23 = v22, , (v23 & 1) != 0))
  {
    v24 = *(*(v19 + 56) + 8 * v21);
  }

  else
  {

    v24 = 0;
  }

  v25 = *(a2 + v14);
  swift_beginAccess();
  v26 = *(v25 + 184);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v72 = *(v26 + 16);
    sub_232B35ABC();
    v26 = v73;
  }

  v27 = *(v26 + 16);
  if (v27 >= *(v26 + 24) >> 1)
  {
    sub_232B35ABC();
    v26 = v74;
  }

  *(v26 + 16) = v27 + 1;
  *(v26 + 8 * v27 + 32) = v24;
  sub_232B0D30C();
  v28 = sub_232CEA720();
  MEMORY[0x238391C30](v28);

  v29 = *(a3 + v7);
  if (*(v29 + 16) && (v30 = *(a3 + v7), , v31 = sub_232B1F160(0xD00000000000001CLL, 0x8000000232D029E0), v33 = v32, , (v33 & 1) != 0))
  {
    v34 = *(*(v29 + 56) + 8 * v31);
  }

  else
  {

    v34 = 0;
  }

  v35 = *(a2 + v14);
  swift_beginAccess();
  v36 = *(v35 + 192);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v75 = *(v36 + 16);
    sub_232B35ABC();
    v36 = v76;
  }

  v37 = *(v36 + 16);
  if (v37 >= *(v36 + 24) >> 1)
  {
    sub_232B35ABC();
    v36 = v77;
  }

  *(v36 + 16) = v37 + 1;
  *(v36 + 8 * v37 + 32) = v34;
  sub_232B0D374();
  v38 = sub_232CEA720();
  MEMORY[0x238391C30](v38);

  v39 = *(a3 + v7);
  if (*(v39 + 16) && (v40 = *(a3 + v7), , v41 = sub_232B1F160(0xD00000000000001ALL, 0x8000000232D02A00), v43 = v42, , (v43 & 1) != 0))
  {
    v44 = *(*(v39 + 56) + 8 * v41);
  }

  else
  {

    v44 = 0;
  }

  v45 = *(a2 + v14);
  swift_beginAccess();
  v46 = *(v45 + 200);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v78 = *(v46 + 16);
    sub_232B35ABC();
    v46 = v79;
  }

  v47 = *(v46 + 16);
  if (v47 >= *(v46 + 24) >> 1)
  {
    sub_232B35ABC();
    v46 = v80;
  }

  *(v46 + 16) = v47 + 1;
  *(v46 + 8 * v47 + 32) = v44;
  sub_232B0D3DC();
  v48 = sub_232CEA720();
  MEMORY[0x238391C30](v48);

  v49 = *(a3 + v7);
  if (*(v49 + 16) && (v50 = *(a3 + v7), , v51 = sub_232B1F160(0xD000000000000017, 0x8000000232D02A20), v53 = v52, , (v53 & 1) != 0))
  {
    v54 = *(*(v49 + 56) + 8 * v51);
  }

  else
  {

    v54 = 0;
  }

  v55 = *(a2 + v14);
  swift_beginAccess();
  v56 = *(v55 + 312);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v81 = *(v56 + 16);
    sub_232B35ABC();
    v56 = v82;
  }

  v57 = *(v56 + 16);
  if (v57 >= *(v56 + 24) >> 1)
  {
    sub_232B35ABC();
    v56 = v83;
  }

  *(v56 + 16) = v57 + 1;
  *(v56 + 8 * v57 + 32) = v54;
  sub_232B0D4AC();
  v58 = sub_232CEA720();
  MEMORY[0x238391C30](v58);

  v59 = *(a3 + v7);
  if (*(v59 + 16) && (v60 = *(a3 + v7), , v61 = sub_232B1F160(0xD00000000000001BLL, 0x8000000232D02A40), v63 = v62, , (v63 & 1) != 0))
  {
    v64 = *(*(v59 + 56) + 8 * v61);
  }

  else
  {

    v64 = 0;
  }

  v65 = *(a2 + v14);
  swift_beginAccess();
  v66 = *(v65 + 208);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v84 = *(v66 + 16);
    sub_232B35ABC();
    v66 = v85;
  }

  v67 = *(v66 + 16);
  if (v67 >= *(v66 + 24) >> 1)
  {
    sub_232B35ABC();
    v66 = v86;
  }

  *(v66 + 16) = v67 + 1;
  *(v66 + 8 * v67 + 32) = v64;
  return sub_232B0D444();
}

uint64_t sub_232B1EBC8@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_Autonaming_TrainingData(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232B1D2E4(v5 - v4);
  v7 = sub_232B14100(v6);
  result = sub_232B124A8(&qword_27DDC66F0, &qword_232CF5D40);
  a1[3] = result;
  *a1 = v7;
  return result;
}

void sub_232B1ECC0(void *a1)
{
  type metadata accessor for AutonamingModelFeatures();
  sub_232B206AC();
  sub_232B1F9BC(v2, v3, v4);
  v5 = sub_232CE98A0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_232CE9D20();
    [a1 encodeObject:v6 forKey:v7];
  }
}

uint64_t AutonamingModelFeatures.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232B206AC();
  sub_232B1F9BC(v2, v3, v4);
  sub_232CE98B0();

  v5 = v7;
  if (!v7)
  {
LABEL_5:
    swift_getObjectType();
    sub_232B20A18();
    return 0;
  }

  swift_getObjectType();
  sub_232B20A18();
  return v5;
}

id AutonamingModelFeatures.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AutonamingModelFeatures.init()()
{
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_annotation] = -1;
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_featureMap;
  *&v0[v1] = sub_232CE9C60();
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_listFeatureMap;
  sub_232B124A8(&qword_27DDC6700, &qword_232CF5D48);
  *&v0[v2] = sub_232CE9C60();
  v0[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_groundTruthAvailable] = 0;
  v3 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding23AutonamingModelFeatures_cooccurrenceKey];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AutonamingModelFeatures();
  return objc_msgSendSuper2(&v5, sel_init);
}

id AutonamingModelFeatures.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutonamingModelFeatures();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B1F138@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B16C28(a1);
  *a2 = result;
  return result;
}

unint64_t sub_232B1F160(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_232CEA820();
  sub_232CE9E40();
  v6 = sub_232CEA850();

  return sub_232B1F2AC(a1, a2, v6);
}

void sub_232B1F1D8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_232CE9D50();
  sub_232CEA820();
  sub_232CE9E40();
  v4 = sub_232CEA850();

  sub_232B1F3C0(a1, v4);
}

unint64_t sub_232B1F268(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_232CEA470();

  return sub_232B1F4B0(a1, v5);
}

unint64_t sub_232B1F2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_232CEA750() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_232B1F360(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_232B1F3C0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_232CE9D50();
    v8 = v7;
    if (v6 == sub_232CE9D50() && v8 == v9)
    {

      break;
    }

    v11 = sub_232CEA750();

    if (v11)
    {
      break;
    }
  }

  sub_232B20A00();
}

unint64_t sub_232B1F4B0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_232B1FA04(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x238392210](v8, a1);
    sub_232B1FA60(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_232B1F574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_232B20858(a1, a2, a3);
  sub_232B205B8(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  sub_232B124A8(&qword_27DDC67B0, &unk_232CF5E10);
  if ((sub_232B208A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v6;
  v15 = sub_232B1F160(v5, v3);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_232CEA7A0();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  v17 = *v6;
  if (v13)
  {
    v18 = *(v17 + 56);
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = v4;
    sub_232B20A58();
  }

  else
  {
    sub_232B64770(v12, v5, v3, v4, v17);
    sub_232B20A58();
  }
}

uint64_t sub_232B1F66C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_232B1F160(a1, a2);
  sub_232B205B8(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v11;
  v15 = v12;
  sub_232B124A8(&qword_27DDC67B8, &unk_232CFE0C0);
  result = sub_232B20A38();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v4;
  result = sub_232B1F160(a1, a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = sub_232CEA7A0();
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v14) = a3;
  }

  else
  {
    sub_232B6479C(v14, a1, a2, v19);
  }

  return result;
}

uint64_t sub_232B1F798(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232B13F24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232B1F7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_232B13F24(v4);
  v6 = *(v5 + 32);
  v7 = sub_232B2080C();
  v8(v7);
  return a2;
}

unint64_t sub_232B1F870()
{
  result = qword_27DDC6E90;
  if (!qword_27DDC6E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC6E90);
  }

  return result;
}

uint64_t sub_232B1F9BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_232B1FAF0()
{
  sub_232B209A0();
  v6 = sub_232B20738(v3, v4, v5);
  v8 = sub_232B1F160(v6, v7);
  sub_232B205B8(v8, v9);
  if (v12)
  {
    __break(1u);
LABEL_14:
    result = sub_232CEA7A0();
    __break(1u);
    return result;
  }

  v13 = v10;
  v14 = v11;
  sub_232B124A8(&qword_27DDC6798, &qword_232CFAB80);
  sub_232B2074C();
  if (sub_232CEA5C0())
  {
    v15 = *v2;
    sub_232B1F160(v1, v0);
    sub_232B20914();
    if (!v17)
    {
      goto LABEL_14;
    }

    v13 = v16;
  }

  if (v14)
  {
    sub_232B209C8((*(*v2 + 56) + 16 * v13));
    sub_232B20A00();
  }

  else
  {
    sub_232B2096C();
    sub_232B647E0(v20, v21, v22, v23, v24, v25);
    sub_232B20A00();
  }
}

uint64_t sub_232B1FBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_232B20858(a1, a2, a3);
  sub_232B205B8(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_232CEA7A0();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_232B124A8(&qword_27DDC6770, &unk_232CF5DD0);
  if (sub_232B208A8())
  {
    v14 = *v6;
    sub_232B1F160(v5, v3);
    sub_232B20914();
    if (!v16)
    {
      goto LABEL_14;
    }

    v12 = v15;
  }

  v17 = *v6;
  if (v13)
  {
    v18 = *(v17 + 56);
    sub_232B20A58();

    return sub_232B202FC(v19, v20);
  }

  else
  {
    sub_232B6482C(v12, v5, v3, v4, v17);
    sub_232B20A58();
  }
}

id sub_232B1FD20()
{
  sub_232B209E8();
  v4 = v3;
  v30 = v6;
  v31 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v14 = sub_232B20738(v12, v13, v5);
  sub_232B1F1D8(v14);
  sub_232B205B8(v15, v16);
  if (v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v17;
  v21 = v18;
  sub_232B124A8(v10, v8);
  sub_232B2074C();
  if ((sub_232CEA5C0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v22 = *v0;
  sub_232B1F1D8(v31);
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_13:
    v30(0);
    result = sub_232CEA7A0();
    __break(1u);
    return result;
  }

  v20 = v23;
LABEL_5:
  v25 = *v11;
  if (v21)
  {
    sub_232B209C8((*(v25 + 56) + 16 * v20));
    sub_232B208EC();
  }

  else
  {
    v4(v20, v31, v2, v1, v25);
    sub_232B208EC();

    return v28;
  }
}

void sub_232B1FE44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_232B05178(a2);
  sub_232B205B8(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  sub_232B124A8(&qword_27DDC67A8, &qword_232CF5E08);
  if ((sub_232B20A38() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v3;
  v15 = sub_232B05178(a2);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    sub_232CEA7A0();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  if (v13)
  {
    v17 = *(*v3 + 56);
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
    sub_232B20A58();
  }

  else
  {
    sub_232B20A58();

    sub_232B648B0(v20, v21, v22, v23);
  }
}

uint64_t sub_232B1FF6C()
{
  sub_232B209E8();
  sub_232B209A0();
  v4 = v3;
  v8 = sub_232B20738(v5, v6, v7);
  v10 = sub_232B1F160(v8, v9);
  sub_232B205B8(v10, v11);
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  sub_232B124A8(&qword_27DDC6768, &qword_232CFE250);
  sub_232B2074C();
  if ((sub_232CEA5C0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v2;
  v18 = sub_232B1F160(v1, v0);
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_232CEA7A0();
    __break(1u);
    return result;
  }

  v15 = v18;
LABEL_5:
  if (v16)
  {
    sub_232B209C8((*(*v2 + 56) + 24 * v15));
    *(v20 + 16) = v4;
    sub_232B208EC();
  }

  else
  {
    sub_232B2096C();
    sub_232B648F0(v23, v24, v25, v26, v27, v28);
    sub_232B208EC();
  }
}

_OWORD *sub_232B20088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_232B1F160(a2, a3);
  sub_232B205B8(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  sub_232B124A8(&qword_27DDC6790, &unk_232CF5DF0);
  if ((sub_232B208A8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_232B1F160(a2, a3);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_232CEA7A0();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    sub_232B2040C((*(v19 + 56) + 32 * v14));
    sub_232B2080C();
    sub_232B20A58();

    return sub_232B20510(v20, v21);
  }

  else
  {
    sub_232B64990(v14, a2, a3, a1, v19);
    sub_232B20A58();
  }
}

void sub_232B201D0()
{
  sub_232B209E8();
  v30 = v1;
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *v0;
  v14 = sub_232B1F160(v9, v7);
  sub_232B205B8(v14, v15);
  if (v18)
  {
    __break(1u);
LABEL_14:
    sub_232CEA7A0();
    __break(1u);
    return;
  }

  v19 = v16;
  v20 = v17;
  sub_232B124A8(v5, v3);
  sub_232B2074C();
  if (sub_232CEA5C0())
  {
    v21 = *v6;
    sub_232B1F160(v10, v8);
    sub_232B20914();
    if (!v23)
    {
      goto LABEL_14;
    }

    v19 = v22;
  }

  v24 = *v6;
  if (v20)
  {
    v25 = *(v24 + 56);
    v26 = *(v25 + 8 * v19);
    *(v25 + 8 * v19) = v12;
    sub_232B208EC();
  }

  else
  {
    v30(v19, v10, v8, v12, v24);
    sub_232B208EC();
  }
}

uint64_t sub_232B202FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6778, &unk_232CF7FB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B2036C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_232B124A8(a3, a4);
  sub_232B13F24(v5);
  v7 = *(v6 + 16);
  v8 = sub_232B2080C();
  v9(v8);
  return a2;
}

void *sub_232B203C8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_232B2040C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_232B20458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_232B13F24(v4);
  v6 = *(v5 + 16);
  v7 = sub_232B2080C();
  v8(v7);
  return a2;
}

uint64_t sub_232B204B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_232B20510(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_232B20578()
{

  return swift_once();
}

uint64_t sub_232B205CC(uint64_t a1)
{
  sub_232B12480(a1, 1, v1);
}

uint64_t sub_232B2060C()
{

  return sub_232B0DEDC(v0);
}

uint64_t sub_232B20634()
{

  return sub_232B12480(v0, 1, v1);
}

uint64_t sub_232B2066C()
{
}

uint64_t sub_232B206DC(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8 * a1);
}

uint64_t sub_232B207BC()
{

  return swift_allocObject();
}

uint64_t sub_232B207D4()
{

  return swift_beginAccess();
}

unint64_t sub_232B20858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_232B1F160(a2, a3);
}

uint64_t sub_232B20888(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_232B208A8()
{

  return sub_232CEA5C0();
}

uint64_t sub_232B208C8()
{
  v3 = *(v0 + v1);
}

uint64_t sub_232B20924()
{
}

double sub_232B20994()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t sub_232B209C8@<X0>(void *a1@<X8>)
{
  result = a1[1];
  *a1 = v2;
  a1[1] = v1;
  return result;
}

uint64_t sub_232B20A18()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_232B20A38()
{

  return sub_232CEA5C0();
}

uint64_t sub_232B20A6C(uint64_t a1)
{

  return sub_232B1DFEC(a1, v2 | 0x8000000000000000, v1);
}

uint64_t sub_232B20A84()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse()
{
  result = qword_27DDC67D0;
  if (!qword_27DDC67D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B20B54()
{
  sub_232B20C50(319, &qword_27DDC67E0, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_232CE9340();
    if (v1 <= 0x3F)
    {
      sub_232B20C50(319, &qword_27DDC67E8, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232B20C50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_232B20CB4@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  v3 = a1 + *(v2 + 20);
  sub_232CE9330();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();

  return sub_232B12504(a1 + v4, 1, 1, v5);
}

uint64_t sub_232B20D24()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4E78);
  sub_232B135C4(v0, qword_27DDD4E78);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "categories";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "responseDebugInfo";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B20EEC()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_232B13EE0();
      sub_232B21000();
    }

    else if (result == 1)
    {
      sub_232B13EE0();
      sub_232B20F60();
    }
  }

  return result;
}

uint64_t sub_232B20F60()
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  sub_232B21CAC(&qword_27DDC6818, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
  return sub_232CE94B0();
}

uint64_t sub_232B21000()
{
  v0 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse() + 24);
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  sub_232B21CAC(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  return sub_232CE94C0();
}

uint64_t sub_232B210B4()
{
  if (!*(*v0 + 16) || (type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult(), sub_232B21CAC(&qword_27DDC6818, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult), result = sub_232CE95D0(), !v1))
  {
    result = sub_232B211C0(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse() + 20);
      return sub_232CE9320();
    }
  }

  return result;
}

uint64_t sub_232B211C0(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  sub_232B21B7C(a1 + *(v10 + 24), v5);
  if (sub_232B12480(v5, 1, v6) == 1)
  {
    return sub_232B13790(v5, &qword_27DDC67C8, &unk_232CF5E70);
  }

  sub_232B21BEC(v5, v9);
  sub_232B21CAC(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232CE95E0();
  return sub_232B21C50(v9);
}

uint64_t sub_232B21360(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v5 = sub_232B13F24(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - v12;
  v14 = sub_232B124A8(&qword_27DDC6828, &unk_232CF6030);
  v15 = sub_232B13F24(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = *a1;
  v21 = *a2;
  sub_232B3395C();
  if ((v22 & 1) == 0)
  {
    goto LABEL_24;
  }

  v23 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  v24 = *(v23 + 24);
  v25 = *(v14 + 48);
  sub_232B21B7C(a1 + v24, v19);
  sub_232B21B7C(a2 + v24, &v19[v25]);
  sub_232B13FF0(v19);
  if (v30)
  {
    sub_232B13FF0(&v19[v25]);
    if (v30)
    {
      sub_232B13790(v19, &qword_27DDC67C8, &unk_232CF5E70);
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  sub_232B21B7C(v19, v13);
  sub_232B13FF0(&v19[v25]);
  if (v30)
  {
    sub_232B21C50(v13);
LABEL_11:
    v31 = &qword_27DDC6828;
    v32 = &unk_232CF6030;
LABEL_23:
    sub_232B13790(v19, v31, v32);
LABEL_24:
    v29 = 0;
    return v29 & 1;
  }

  sub_232B21BEC(&v19[v25], v9);
  v33 = *(v4 + 20);
  v34 = &v13[v33];
  v35 = *&v13[v33 + 8];
  v36 = &v9[v33];
  v37 = *(v36 + 1);
  if (!v35)
  {
    if (!v37)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (!v37 || (*v34 == *v36 ? (v38 = v35 == v37) : (v38 = 0), !v38 && (sub_232CEA750() & 1) == 0))
  {
LABEL_22:
    sub_232B21C50(v9);
    sub_232B21C50(v13);
    v31 = &qword_27DDC67C8;
    v32 = &unk_232CF5E70;
    goto LABEL_23;
  }

LABEL_19:
  sub_232CE9340();
  sub_232B21CF4();
  sub_232B21CAC(v39, v40);
  v41 = sub_232CE9CF0();
  sub_232B21C50(v9);
  sub_232B21C50(v13);
  sub_232B13790(v19, &qword_27DDC67C8, &unk_232CF5E70);
  if ((v41 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_7:
  v26 = *(v23 + 20);
  sub_232CE9340();
  sub_232B21CF4();
  sub_232B21CAC(v27, v28);
  v29 = sub_232CE9CF0();
  return v29 & 1;
}

uint64_t sub_232B21664()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse();
  sub_232B21CAC(&qword_27DDC6800, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B2170C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_232B21780(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_232B217F4(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_232B21848(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B21CAC(&qword_27DDC6810, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B218C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6300 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4E78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B2196C(uint64_t a1)
{
  v2 = sub_232B21CAC(&qword_27DDC67F8, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B219DC()
{
  sub_232B21CAC(&qword_27DDC67F8, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryClassificationResponse);

  return sub_232CE9500();
}

uint64_t sub_232B21B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC67C8, &unk_232CF5E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B21BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B21C50(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232B21CAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult()
{
  result = qword_27DDC6830;
  if (!qword_27DDC6830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B21D80()
{
  sub_232CE9340();
  if (v0 <= 0x3F)
  {
    sub_232B21E3C(319, &qword_2814DFA10);
    if (v1 <= 0x3F)
    {
      sub_232B21E3C(319, &qword_27DDC6840);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232B21E3C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_232CEA350();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_232B21E88@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + *(result + 24);
  *v4 = 0;
  *(v4 + 8) = 1;
  return result;
}

uint64_t sub_232B21ED4()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4E90);
  sub_232B135C4(v0, qword_27DDD4E90);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF5E60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "categoryIdentifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "categoryConfidence";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B2209C()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_232B13EE0();
      sub_232B22174();
    }

    else if (result == 1)
    {
      sub_232B13EE0();
      sub_232B22110();
    }
  }

  return result;
}

uint64_t sub_232B221D8()
{
  v1 = sub_232B13EF4();
  result = sub_232B22230(v1);
  if (!v0)
  {
    v3 = sub_232B13EF4();
    sub_232B222A8(v3);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B22230(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B222A8(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_232CE95B0();
  }

  return result;
}

uint64_t sub_232B22320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = *(v4 + 24);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232B2290C(&qword_27DDC6590, MEMORY[0x277D216C8]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232B22430()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult();
  sub_232B2290C(&qword_27DDC6850, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B224D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_232CE9340();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_232B22540(uint64_t a1)
{
  v3 = sub_232CE9340();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_232B225D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B2290C(&qword_27DDC6860, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B22654@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6308 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4E90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B226FC(uint64_t a1)
{
  v2 = sub_232B2290C(&qword_27DDC6818, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B2276C()
{
  sub_232B2290C(&qword_27DDC6818, type metadata accessor for DocumentUnderstanding_ClientInterface_CategoryResult);

  return sub_232CE9500();
}

uint64_t sub_232B2290C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DUClient.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_identifier + 8);

  return v1;
}

id DUClient.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = &v2[OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_identifier];
  *v4 = a1;
  *(v4 + 1) = a2;
  if (qword_2814E13D0 != -1)
  {
    swift_once();
  }

  v5 = qword_2814E3EF0;
  v6 = qword_2814E1398;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_2814E3EE8;
  type metadata accessor for DUProcessingScheduler();
  sub_232B26D50();
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_scheduler] = sub_232BEF884(v5, v7);
  if (qword_2814E0D80 != -1)
  {
    swift_once();
  }

  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_topLevelSpecifications] = qword_2814E3EC8;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for DUClient();

  return objc_msgSendSuper2(&v9, sel_init);
}

id DURequest.init(client:contentType:strategies:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_client] = a1;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_contentType] = a2;
  *&v3[OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_strategies] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for DURequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_232B22E24()
{
  sub_232B26C44();
  v1[26] = v2;
  v1[27] = v0;
  v3 = sub_232CE9A30();
  v1[28] = v3;
  v4 = *(v3 - 8);
  v1[29] = v4;
  v5 = *(v4 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232B22EEC, 0, 0);
}

uint64_t sub_232B22EEC()
{
  v2 = v0[27];
  v0[32] = [objc_allocWithZone(type metadata accessor for DUResponse()) init];
  [*(v2 + OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_contentType) copy];
  sub_232CEA420();
  swift_unknownObjectRelease();
  v0[33] = type metadata accessor for DURequestContentType();
  if (!swift_dynamicCast())
  {
    v16 = v0[30];
    sub_232CE9A20();
    v17 = sub_232CE9A00();
    v18 = sub_232CEA1A0();
    v19 = sub_232B26D0C(v18);
    v21 = v0[29];
    v20 = v0[30];
    v22 = v0[28];
    if (v19)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_232B02000, v17, v1, "Failed to populate content type", v23, 2u);
      sub_232B26D28();
    }

    (*(v21 + 8))(v20, v22);
LABEL_25:
    v53 = v0[30];
    v52 = v0[31];

    sub_232B26D5C();
    sub_232B26CB4();

    __asm { BRAA            X2, X16 }
  }

  v3 = v0[27];
  v0[34] = v0[24];
  v4 = *(v3 + OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_strategies);
  if (!v4 || (result = sub_232B25E10(*(v3 + OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_strategies)), v3 = v0[27], !result))
  {
    v24 = v0[26];
    v6 = *(v3 + OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_client);
    v25 = *(v6 + OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_scheduler);
    type metadata accessor for DUProcessingRequest();
    swift_allocObject();
    v26 = v24;

    v15 = sub_232BEEA28(v24, v25);
    goto LABEL_12;
  }

  v6 = *(v3 + OBJC_IVAR____TtC21DocumentUnderstanding9DURequest_client);
  v7 = *(v6 + OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_scheduler);
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_32;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v4 + 32);
    v9 = *(v6 + OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_scheduler);

    for (i = v8; ; i = MEMORY[0x2383922C0](0, v4))
    {
      v11 = i;
      v12 = v0[26];
      v13 = OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_preprocess;
      sub_232B13F74();
      LOBYTE(v13) = v11[v13];

      type metadata accessor for DUProcessingRequest();
      swift_allocObject();
      v14 = v12;
      v15 = sub_232BEEAA8(v12, v7, v13);
LABEL_12:
      v0[35] = v15;
      v27 = *(v6 + OBJC_IVAR____TtC21DocumentUnderstanding8DUClient_topLevelSpecifications);
      v0[36] = v27;
      v28 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
      v0[37] = *(v27 + 16);
      v0[38] = v28;

      sub_232B13F74();
      v4 = 0;
      for (j = 32; ; j += 40)
      {
        v0[39] = v4;
        v7 = v0[36];
        if (v4 == v0[37])
        {
          v48 = v0[34];
          v47 = v0[35];

          goto LABEL_25;
        }

        if (v4 >= *(v7 + 16))
        {
          break;
        }

        v30 = v0[38];
        v31 = v0[34];
        sub_232B25E34(v7 + j, (v0 + 2));
        if (!*(v31 + v30))
        {
          v50 = v0[35];
          v49 = v0[36];
          v51 = v0[34];

          sub_232B2040C(v0 + 2);
          goto LABEL_25;
        }

        v32 = v0[33];
        v6 = v0[6];
        sub_232B203C8(v0 + 2, v0[5]);
        v33 = sub_232B26CD0();
        v35 = v34(v33);
        [v35 copy];

        sub_232CEA420();
        swift_unknownObjectRelease();
        if (swift_dynamicCast())
        {
          v36 = v0[34];
          v37 = v0[25];
          v0[40] = v37;
          DURequestContentType.formIntersection(_:)();
          v38 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
          sub_232B13F74();
          if (*&v37[v38])
          {
            v56 = v0[6];
            sub_232B203C8(v0 + 2, v0[5]);
            sub_232B26C88();
            v63 = v57 + *v57;
            v59 = *(v58 + 4);
            v60 = swift_task_alloc();
            v0[41] = v60;
            *v60 = v0;
            sub_232B26B4C(v60);
            sub_232B26CB4();

            __asm { BRAA            X4, X16 }
          }
        }

        else
        {
          v39 = v0[31];
          sub_232CE9A20();
          v40 = sub_232CE9A00();
          v41 = sub_232CEA1C0();
          if (sub_232B26D0C(v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&dword_232B02000, v40, v32, "Specification did not have an associated request type", v42, 2u);
            sub_232B26D28();
          }

          v43 = v0[31];
          v44 = v0[28];
          v45 = v0[29];

          v46 = *(v45 + 8);
          v6 = v45 + 8;
          v46(v43, v44);
        }

        sub_232B2040C(v0 + 2);
        ++v4;
      }

      __break(1u);
LABEL_32:
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232B23424()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 328);
  v3 = *v0;
  sub_232B26B3C();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_232B23510, 0, 0);
}

uint64_t sub_232B23510()
{
  v1 = v0[40];
  v2 = v0[34];
  DURequestContentType.formSymmetricDifference(_:)();

  result = sub_232B2040C(v0 + 2);
  v4 = v0[39];
  v5 = v4 + 1;
  for (i = 40 * v4 + 72; ; i += 40)
  {
    v0[39] = v5;
    v7 = v0[36];
    if (v5 == v0[37])
    {
      v26 = v0[34];
      v25 = v0[35];

      goto LABEL_14;
    }

    if (v5 >= *(v7 + 16))
    {
      break;
    }

    v8 = v0[38];
    v9 = v0[34];
    sub_232B25E34(v7 + i, (v0 + 2));
    if (!*(v9 + v8))
    {
      v28 = v0[35];
      v27 = v0[36];
      v29 = v0[34];

      sub_232B2040C(v0 + 2);
LABEL_14:
      v31 = v0[30];
      v30 = v0[31];

      sub_232B26D5C();
      sub_232B26CB4();

      __asm { BRAA            X2, X16 }
    }

    v10 = v0[33];
    v11 = v0[6];
    sub_232B203C8(v0 + 2, v0[5]);
    v12 = sub_232B26CD0();
    v14 = v13(v12);
    [v14 copy];

    sub_232CEA420();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      v15 = v0[34];
      v16 = v0[25];
      v0[40] = v16;
      DURequestContentType.formIntersection(_:)();
      v17 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
      sub_232B13F74();
      if (*&v16[v17])
      {
        v34 = v0[6];
        sub_232B203C8(v0 + 2, v0[5]);
        sub_232B26C88();
        v41 = v35 + *v35;
        v37 = *(v36 + 4);
        v38 = swift_task_alloc();
        v0[41] = v38;
        *v38 = v0;
        sub_232B26B4C();
        sub_232B26CB4();

        __asm { BRAA            X4, X16 }
      }
    }

    else
    {
      v18 = v0[31];
      sub_232CE9A20();
      v19 = sub_232CE9A00();
      v20 = sub_232CEA1C0();
      if (sub_232B26D0C(v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_232B02000, v19, v10, "Specification did not have an associated request type", v21, 2u);
        sub_232B26D28();
      }

      v22 = v0[31];
      v23 = v0[28];
      v24 = v0[29];

      (*(v24 + 8))(v22, v23);
    }

    result = sub_232B2040C(v0 + 2);
    ++v5;
  }

  __break(1u);
  return result;
}

BOOL DURequestContentType.isEmpty.getter()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  sub_232B26BFC();
  return *(v0 + v1) == 0;
}

uint64_t DURequestContentType.formIntersection(_:)()
{
  sub_232B26B88();
  result = sub_232B26BB4();
  *(v1 + v3) = *(v0 + v2) & v4;
  return result;
}

uint64_t DURequestContentType.formSymmetricDifference(_:)()
{
  sub_232B26B88();
  result = sub_232B26BB4();
  *(v1 + v3) = *(v0 + v2) ^ v4;
  return result;
}

uint64_t sub_232B23978(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_232B23A38;

  return sub_232B22E24();
}

uint64_t sub_232B23A38(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;
  sub_232B26B3C();
  *v10 = v9;

  v11 = *(v5 + 32);
  if (v3)
  {
    sub_232CE8B20();

    (v11)[2](v11, 0, a1);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 32), a1, 0);
    _Block_release(v11);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_232B23BE4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = sub_232CEA090();
  sub_232B12504(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v3;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v13 = a1;

  v14 = v3;
  sub_232B23FB4(0, 0, v10, &unk_232CF6208, v12);
}

uint64_t sub_232B23CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v8 = swift_task_alloc();
  v7[4] = v8;
  *v8 = v7;
  v8[1] = sub_232B23D88;

  return sub_232B22E24();
}

uint64_t sub_232B23D88()
{
  sub_232B26C7C();
  v3 = v2;
  sub_232B26C70();
  v5 = v4;
  v6 = *(v4 + 32);
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (v0)
  {
    v9 = sub_232B23F0C;
  }

  else
  {
    *(v5 + 48) = v3;
    v9 = sub_232B23EA0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_232B23EA0()
{
  sub_232B26C44();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  (*(v0 + 16))(v1, 0);

  sub_232B26CF4();

  return v3();
}

uint64_t sub_232B23F0C()
{
  sub_232B26C7C();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = [objc_allocWithZone(type metadata accessor for DUResponse()) init];
  v5 = v1;
  v3(v4, v1);

  sub_232B26CF4();

  return v6();
}

uint64_t sub_232B23FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_232B124A8(&qword_27DDC68A8, &qword_232CFA960);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_232B26744(a3, v26 - v11, &qword_27DDC68A8, &qword_232CFA960);
  v13 = sub_232CEA090();
  v14 = sub_232B12480(v12, 1, v13);

  if (v14 == 1)
  {
    sub_232B267AC(v12, &qword_27DDC68A8, &qword_232CFA960);
  }

  else
  {
    sub_232CEA080();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_232CEA050();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_232CE9DE0() + 32;
      sub_232B26D50();
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_232B267AC(a3, &qword_27DDC68A8, &qword_232CFA960);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_232B267AC(a3, &qword_27DDC68A8, &qword_232CFA960);
  sub_232B26D50();
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void sub_232B24330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_232CE8B20();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_232B24488()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_contentType;
  sub_232B26BFC();
  v2 = *(v0 + v1);

  return v2;
}

void sub_232B24528(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_contentType;
  sub_232B26C50();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_232B24600(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_232CE9D20();
  sub_232B26CE8();

  return a1;
}

uint64_t sub_232B2464C()
{
  v1 = (v0 + OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_modelIdentifier);
  sub_232B13F74();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_232B2470C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_modelIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_232B2476C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_232B2470C(v2, v3);
}

uint64_t sub_232B24820()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_preprocess;
  sub_232B26BFC();
  return *(v0 + v1);
}

uint64_t sub_232B2487C(char a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_preprocess;
  result = sub_232B26C50();
  *(v1 + v3) = a1;
  return result;
}

id DURequestStrategy.init(contentType:preferredModelIdentifier:preprocess:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v7 = a1;
  v8 = OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_preprocess;
  v5[OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_preprocess] = 0;
  *&v5[OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_contentType] = a1;
  v9 = &v5[OBJC_IVAR____TtC21DocumentUnderstanding17DURequestStrategy_modelIdentifier];
  *v9 = a2;
  v9[1] = a3;
  sub_232B25F64();
  v10 = type metadata accessor for DURequestContentType();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 2048;
  v17.receiver = v11;
  v17.super_class = v10;
  v12 = v7;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  LOBYTE(v7) = sub_232CEA310();

  if (v7)
  {
    swift_beginAccess();
    v5[v8] = a4 & 1;
  }

  v16.receiver = v5;
  v16.super_class = type metadata accessor for DURequestStrategy();
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

id DURequestStrategy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_232B24B78(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id DURequestContentType.__allocating_init(rawValue:)()
{
  v2 = objc_allocWithZone(sub_232B26D00());
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_232B24F84()
{
  v2 = objc_allocWithZone(sub_232B26D00());
  *&v2[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t DURequestContentType.rawValue.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  result = sub_232B26C50();
  *(v1 + v3) = a1;
  return result;
}

id DURequestContentType.init(rawValue:)()
{
  sub_232B26D00();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = v0;
  v4.receiver = v1;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t DURequestContentType.__allocating_init(abilitiesToUnion:)()
{
  v0 = objc_allocWithZone(sub_232B26D00());
  swift_getObjectType();
  v1 = sub_232B26CE8();
  sub_232B251DC(v1);
  v3 = v2;
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t DURequestContentType.init(abilitiesToUnion:)()
{
  sub_232B26CE8();
  swift_getObjectType();
  v1 = sub_232B26D70();
  sub_232B251DC(v1);
  sub_232B26CE8();
  swift_deallocPartialClassInstance();
  return v0;
}

void sub_232B251DC(unint64_t a1)
{
  v7[1] = [objc_allocWithZone(v1) init];
  v3 = sub_232B25E10(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2383922C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_232BECFE4(v7, v5);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t DURequestContentType.hash.getter()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  sub_232B26BFC();
  return *(v0 + v1);
}

BOOL DURequestContentType.isEqual(_:)()
{
  sub_232B26D70();
  swift_getObjectType();
  sub_232B26744(v1, v8, &qword_27DDC68C8, &qword_232CF6210);
  if (v9)
  {
    if (swift_dynamicCast())
    {
      v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
      sub_232B13F74();
      v3 = *(v0 + v2);
      v4 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
      sub_232B13F74();
      v5 = *&v7[v4];

      return v3 == v5;
    }
  }

  else
  {
    sub_232B267AC(v8, &qword_27DDC68C8, &qword_232CF6210);
  }

  return 0;
}

id DURequestContentType.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  sub_232B13F74();
  v5 = *(v1 + v4);
  v6 = objc_allocWithZone(ObjectType);
  *&v6[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = v5;
  v8.receiver = v6;
  v8.super_class = ObjectType;
  result = objc_msgSendSuper2(&v8, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t DURequestContentType.formUnion(_:)()
{
  sub_232B26B88();
  result = sub_232B26BB4();
  *(v1 + v3) = *(v0 + v2) | v4;
  return result;
}

id DURequestContentType.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232B256A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = DURequestContentType.__allocating_init(rawValue:)();
  *a2 = result;
  return result;
}

id sub_232B256CC@<X0>(void *a1@<X8>)
{
  result = DURequestStrategy.__allocating_init()();
  *a1 = result;
  return result;
}

void sub_232B256F4(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = sub_232C5A584();

  *a2 = v6;
}

void sub_232B2573C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = sub_232BECF48();

  *a2 = v6;
}

void sub_232B2577C(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = sub_232B257C4();

  *a2 = v6;
}

id sub_232B257C4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = objc_allocWithZone(ObjectType);
  *&v4[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = v3;
  v7.receiver = v4;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  DURequestContentType.formSymmetricDifference(_:)();
  return v5;
}

BOOL sub_232B2585C(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_232BECFE4(a1, *a2);

  return v3;
}

char *sub_232B25890@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  result = sub_232B258BC();
  *a2 = result;
  return result;
}

char *sub_232B258BC()
{
  v1 = *v0;
  v2 = sub_232BECF48();
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  swift_beginAccess();
  if (*&v2[v3])
  {
    v4 = sub_232B257C4();
    DURequestContentType.formIntersection(_:)();
  }

  else
  {

    return 0;
  }

  return v2;
}

void sub_232B25940(void **a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  v4 = sub_232B25980();

  *a2 = v4;
}

char *sub_232B25980()
{
  v1 = *v0;
  v2 = sub_232BECF48();
  DURequestContentType.formUnion(_:)();
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  swift_beginAccess();
  if (!*&v2[v3])
  {

    return 0;
  }

  return v2;
}

void sub_232B259F4(id *a1)
{
  v3 = *a1;
  v2 = *v1;
  DURequestContentType.formUnion(_:)();
}

uint64_t sub_232B25A3C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  return DURequestContentType.formIntersection(_:)();
}

void sub_232B25A64(id *a1)
{
  v3 = *a1;
  v2 = *v1;
  DURequestContentType.formSymmetricDifference(_:)();
}

void sub_232B25AAC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = sub_232B25AEC();

  *a2 = v6;
}

id sub_232B25AEC()
{
  v0 = sub_232B257C4();
  v1 = sub_232BECF48();

  return v1;
}

uint64_t sub_232B25B20(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  return sub_232B25B4C() & 1;
}

uint64_t sub_232B25B4C()
{
  swift_getObjectType();
  v0 = sub_232BECF48();
  v1 = sub_232CEA310();

  return v1 & 1;
}

BOOL sub_232B25BA4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  return sub_232B25BD0();
}

BOOL sub_232B25BD0()
{
  v0 = sub_232BECF48();
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue;
  swift_beginAccess();
  v2 = *&v0[v1];

  return v2 == 0;
}

uint64_t sub_232B25C28()
{
  sub_232B26D00();
  swift_getObjectType();
  sub_232B26D70();
  v0 = sub_232BECF48();
  v1 = sub_232CEA310();

  return v1 & 1;
}

void sub_232B25CC0()
{
  v1 = *v0;
  v2 = sub_232B257C4();
  DURequestContentType.formIntersection(_:)();
}

uint64_t sub_232B25D08@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = DURequestContentType.hash.getter();
  *a1 = result;
  return result;
}

uint64_t sub_232B25D34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_232B25D5C();
  *a1 = result;
  return result;
}

unint64_t sub_232B25DCC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_232B25DEC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_232B25E10(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_232CEA610();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_232B25E34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_232B25E98(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v7 = v1[7];
  v9 = swift_task_alloc();
  v10 = sub_232B26CA4(v9);
  *v10 = v11;
  v10[1] = sub_232B26B14;

  return sub_232B23CE8(a1, v3, v4, v5, v6, v8, v7);
}

unint64_t sub_232B25F64()
{
  result = qword_27DDC68C0;
  if (!qword_27DDC68C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC68C0);
  }

  return result;
}

uint64_t sub_232B2609C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DURequestContentType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of DURequest.executeWithResult(document:)()
{
  sub_232B26C7C();
  v3 = v2;
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_232B26260;

  return v8(v3);
}

uint64_t sub_232B26260()
{
  sub_232B26C44();
  v2 = v1;
  sub_232B26C70();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_232B26B3C();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_232B265B4()
{
  sub_232B26C7C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_232B26664;

  return sub_232B23978(v2, v3, v4);
}

uint64_t sub_232B26664()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_232B26B3C();
  *v4 = v3;

  sub_232B26CF4();

  return v5();
}

uint64_t sub_232B26744(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_232B124A8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_232B267AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_232B124A8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_232B2680C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232B26904;

  return v7(a1);
}

uint64_t sub_232B26904()
{
  sub_232B26C44();
  sub_232B26C70();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_232B26B3C();
  *v4 = v3;

  sub_232B26CF4();

  return v5();
}

uint64_t sub_232B269E8()
{
  sub_232B26C7C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_232B26CA4(v3);
  *v4 = v5;
  v6 = sub_232B26C24(v4);

  return v7(v6);
}

uint64_t sub_232B26A7C()
{
  sub_232B26C7C();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_232B26CA4(v3);
  *v4 = v5;
  v6 = sub_232B26C24(v4);

  return v7(v6);
}

uint64_t sub_232B26B4C(uint64_t a1)
{
  *(a1 + 8) = sub_232B23424;
  v2 = *(v1 + 280);
  return *(v1 + 256);
}

uint64_t sub_232B26B88()
{

  return swift_beginAccess();
}

uint64_t sub_232B26BB4()
{
  v4 = *(v0 + v2);
  v5 = *(v1 + 2200);

  return swift_beginAccess();
}

uint64_t sub_232B26BDC()
{

  return swift_beginAccess();
}

uint64_t sub_232B26BFC()
{

  return swift_beginAccess();
}

uint64_t sub_232B26C24(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_232B26C50()
{

  return swift_beginAccess();
}

uint64_t sub_232B26C88()
{
  result = v0 + 16;
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_232B26CF4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

BOOL sub_232B26D0C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_232B26D28()
{

  JUMPOUT(0x238393870);
}

uint64_t sub_232B26D7C(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    sub_232CE9890();
    v1 = sub_232CE9820();
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];

    sub_232B649F4(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      sub_232CEA4F0();

      MEMORY[0x238391C30](v4, v5);
      MEMORY[0x238391C30](34, 0xE100000000000000);

      v7 = *(v14 + 16);
      v6 = *(v14 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_232B649F4(v6 > 1, v7 + 1, 1);
      }

      *(v14 + 16) = v7 + 1;
      v8 = v14 + 16 * v7;
      *(v8 + 32) = 0xD000000000000016;
      *(v8 + 40) = 0x8000000232D03200;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
  }

  sub_232B124A8(&qword_27DDC6908, &unk_232CF64D0);
  sub_232B27E88();
  v9 = sub_232CE9CD0();
  v11 = v10;

  sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_232CF6460;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_232B27F34();
  *(v12 + 32) = v9;
  *(v12 + 40) = v11;
  return sub_232CE9D80();
}

uint64_t sub_232B26FA8()
{
  sub_232CEA4F0();
  MEMORY[0x238391C30](0xD00000000000005FLL, 0x8000000232D03130);
  v0 = sub_232CEA720();
  MEMORY[0x238391C30](v0);

  MEMORY[0x238391C30](0xD000000000000069, 0x8000000232D03190);
  v1 = sub_232CEA720();
  MEMORY[0x238391C30](v1);

  MEMORY[0x238391C30](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_232B270B8(uint64_t a1)
{
  v1 = sub_232B26D7C(a1);
  v2 = sub_232B26FA8();
  v4 = v3;
  MEMORY[0x238391C30](539371040, 0xE400000000000000);
  MEMORY[0x238391C30](v2, v4);

  return v1;
}

id sub_232B27148(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  [v2 setMaxCount_];
  v3 = sub_232CE9FD0();
  [v2 setFetchAttributes_];

  v4 = sub_232B270B8(0);
  v6 = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CC3498]);
  return sub_232C409AC(v4, v6, v2);
}

uint64_t sub_232B27210()
{
  sub_232B26C44();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 201) = v3;
  *(v1 + 200) = v4;
  *(v1 + 32) = v5;
  v6 = sub_232CE9A30();
  *(v1 + 56) = v6;
  sub_232B27FBC(v6);
  *(v1 + 64) = v7;
  v9 = *(v8 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  v10 = sub_232CEA160();
  *(v1 + 88) = v10;
  sub_232B27FBC(v10);
  *(v1 + 96) = v11;
  v13 = *(v12 + 64);
  *(v1 + 104) = sub_232B27FCC();
  v14 = *(*(sub_232B124A8(&qword_27DDC68F0, &qword_232CF6478) - 8) + 64);
  *(v1 + 112) = sub_232B27FCC();
  v15 = sub_232CEA180();
  *(v1 + 120) = v15;
  sub_232B27FBC(v15);
  *(v1 + 128) = v16;
  v18 = *(v17 + 64);
  *(v1 + 136) = sub_232B27FCC();
  v19 = sub_232CEA170();
  *(v1 + 144) = v19;
  sub_232B27FBC(v19);
  *(v1 + 152) = v20;
  v22 = *(v21 + 64);
  *(v1 + 160) = sub_232B27FCC();

  return MEMORY[0x2822009F8](sub_232B273F0, 0, 0);
}

uint64_t sub_232B273F0()
{
  sub_232CE9810();
  if (MEMORY[0x238391520]())
  {
    if (*(v0 + 200))
    {
      v1 = 128;
    }

    else
    {
      v1 = *(v0 + 32);
    }

    if ((*(v0 + 201) & 1) == 0)
    {
      v2 = *(v0 + 40);
    }

    v3 = sub_232B27148(v1);
    *(v0 + 168) = v3;
    if (v3)
    {
      v4 = *(v0 + 160);
      v6 = *(v0 + 128);
      v5 = *(v0 + 136);
      v7 = *(v0 + 120);
      v8 = MEMORY[0x277D84F90];
      *(v0 + 16) = MEMORY[0x277D84F90];
      sub_232CEA190();
      sub_232CEA140();
      (*(v6 + 8))(v5, v7);
      *(v0 + 176) = v8;
      sub_232B27BAC();
      v9 = *(MEMORY[0x277D856D0] + 4);
      v10 = swift_task_alloc();
      *(v0 + 184) = v10;
      *v10 = v0;
      v11 = sub_232B27F88(v10);

      return MEMORY[0x282200308](v11);
    }

    v21 = *(v0 + 80);
    sub_232CE9A20();
    v13 = sub_232CE9A00();
    v14 = sub_232CEA1A0();
    v22 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 80);
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    if (v22)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "CoreSpotlightUpdateFetcher failed retrieve a query";
      goto LABEL_15;
    }
  }

  else
  {
    v12 = *(v0 + 72);
    sub_232CE9A20();
    v13 = sub_232CE9A00();
    v14 = sub_232CEA1C0();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);
    v18 = *(v0 + 56);
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "DocumentUnderstanding: File ingest disabled, skipping fetch of documents from Spotlight";
LABEL_15:
      _os_log_impl(&dword_232B02000, v13, v14, v20, v19, 2u);
      MEMORY[0x238393870](v19, -1, -1);
    }
  }

  (*(v17 + 8))(v16, v18);
  v23 = *(v0 + 160);
  v24 = *(v0 + 136);
  v26 = *(v0 + 104);
  v25 = *(v0 + 112);
  v28 = *(v0 + 72);
  v27 = *(v0 + 80);

  v29 = *(v0 + 8);
  v30 = MEMORY[0x277D84F90];

  return v29(v30);
}

uint64_t sub_232B27684()
{
  sub_232B26C44();
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_232B2797C;
  }

  else
  {
    v3 = sub_232B27794;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232B27794()
{
  v1 = v0[14];
  v2 = v0[11];
  if (sub_232B12480(v1, 1, v2) == 1)
  {
    v3 = v0[21];
    (*(v0[19] + 8))(v0[20], v0[18]);

    v4 = v0[22];
    v5 = v0[20];
    v6 = v0[17];
    v8 = v0[13];
    v7 = v0[14];
    v10 = v0[9];
    v9 = v0[10];

    v11 = v0[1];

    return v11(v4);
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v1, v2);
    sub_232CEA150();
    MEMORY[0x238391D50]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_232CEA000();
    }

    v14 = v0[12];
    v13 = v0[13];
    v15 = v0[11];
    sub_232CEA020();
    (*(v14 + 8))(v13, v15);
    v0[22] = v0[2];
    sub_232B27BAC();
    v16 = *(MEMORY[0x277D856D0] + 4);
    v17 = swift_task_alloc();
    v0[23] = v17;
    *v17 = v0;
    v18 = sub_232B27F88();

    return MEMORY[0x282200308](v18);
  }
}

uint64_t sub_232B2797C()
{
  sub_232B26C44();
  v1 = v0[22];
  v0[3] = v0[24];
  sub_232B124A8(&qword_27DDC6900, &unk_232CF6480);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_232B27A18, 0, 0);
}

uint64_t sub_232B27A18()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);

  (*(v3 + 8))(v1, v2);

  v9 = *(v0 + 8);
  v10 = *(v0 + 192);

  return v9();
}

id CoreSpotlightiOSFileUpdateFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CoreSpotlightiOSFileUpdateFetcher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSpotlightiOSFileUpdateFetcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CoreSpotlightiOSFileUpdateFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSpotlightiOSFileUpdateFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_232B27BAC()
{
  result = qword_27DDC68F8;
  if (!qword_27DDC68F8)
  {
    sub_232CEA170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC68F8);
  }

  return result;
}

uint64_t dispatch thunk of CoreSpotlightiOSFileUpdateFetcher.fetchUpdatedDocumentsFromSpotlight(maxDocuments:currentAnalysisVersion:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x70);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_232B27D90;

  return (v14)(a1, a2 & 1, a3, a4 & 1);
}

uint64_t sub_232B27D90()
{
  sub_232B26C44();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4(v2);
}

unint64_t sub_232B27E88()
{
  result = qword_2814DF978;
  if (!qword_2814DF978)
  {
    sub_232B27EEC(&qword_27DDC6908, &unk_232CF64D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DF978);
  }

  return result;
}

uint64_t sub_232B27EEC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_232B27F34()
{
  result = qword_27DDC6918;
  if (!qword_27DDC6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC6918);
  }

  return result;
}

uint64_t sub_232B27F88(uint64_t a1)
{
  *(a1 + 8) = sub_232B27684;
  v2 = v1[20];
  v3 = v1[18];
  return v1[14];
}

uint64_t sub_232B27FCC()
{

  return swift_task_alloc();
}

uint64_t sub_232B27FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_232CE9A30();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232B280B4, 0, 0);
}

uint64_t sub_232B280B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14 + 200);
  sub_232CE9A20();
  v16 = sub_232CE9A00();
  v17 = sub_232CEA1A0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    sub_232B28888(&dword_232B02000, v19, v20, "CoreSpotlightOutputSink: Beginning writeTopicsAndClassesToSpotlight");
    MEMORY[0x238393870](v18, -1, -1);
  }

  v22 = *(v14 + 192);
  v21 = *(v14 + 200);
  v23 = *(v14 + 176);
  v24 = *(v14 + 184);
  v26 = *(v14 + 160);
  v25 = *(v14 + 168);
  v28 = *(v14 + 144);
  v27 = *(v14 + 152);

  v29 = *(v24 + 8);
  v29(v21, v23);
  v30 = v29;
  type metadata accessor for SpotlightOutputSinkCommonUtilities();
  sub_232C5C440(v28, v27, v26);
  sub_232CE9A20();
  v31 = sub_232CE9A00();
  v32 = sub_232CEA1A0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    sub_232B28888(&dword_232B02000, v34, v35, "CoreSpotlightOutputSink: Updated local CSSearchableItem, indexing to Spotlight");
    MEMORY[0x238393870](v33, -1, -1);
  }

  v37 = *(v14 + 184);
  v36 = *(v14 + 192);
  v38 = *(v14 + 176);
  v39 = *(v14 + 144);

  v30(v36, v38);
  v40 = [v39 protection];
  if (v40)
  {
    v41 = v40;
    v42 = sub_232CE9D50();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = sub_232C6EC18(*(v14 + 144));
  if (v46)
  {
    v53 = *(v14 + 144);
    v54 = objc_allocWithZone(MEMORY[0x277CC34A8]);
    v55 = sub_232B28768(0xD000000000000017, 0x8000000232D03260, v42, v44);
    *(v14 + 208) = v55;
    sub_232B124A8(&qword_27DDC6920, &qword_232CF6520);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_232CF64E0;
    *(v56 + 32) = v53;
    sub_232B2882C();
    v57 = v53;
    v58 = sub_232CE9FD0();
    *(v14 + 216) = v58;

    *(v14 + 16) = v14;
    *(v14 + 24) = sub_232B28420;
    v59 = swift_continuation_init();
    *(v14 + 136) = sub_232B124A8(&qword_27DDC6930, &qword_232CF6528);
    *(v14 + 80) = MEMORY[0x277D85DD0];
    *(v14 + 88) = 1107296256;
    *(v14 + 96) = sub_232B28648;
    *(v14 + 104) = &unk_284810B18;
    *(v14 + 112) = v59;
    [v55 indexSearchableItems:v58 completionHandler:v14 + 80];
    v45 = v14 + 16;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_232B28420()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_232B285B4;
  }

  else
  {
    v3 = sub_232B28530;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232B28530()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_232B285B4()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[28];

  return v6();
}

uint64_t sub_232B28648(uint64_t a1, void *a2)
{
  v3 = sub_232B203C8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_232BB7EF8(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

id sub_232B286B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSpotlightOutputSink();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_232B28710()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSpotlightOutputSink();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_232B28768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_232CE9D20();

  if (a4)
  {
    v7 = sub_232CE9D20();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_232CE9D20();

  v9 = [v4 initWithName:v6 protectionClass:v7 bundleIdentifier:v8];

  return v9;
}

unint64_t sub_232B2882C()
{
  result = qword_27DDC6928;
  if (!qword_27DDC6928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDC6928);
  }

  return result;
}

void sub_232B28888(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_232B288A8(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = v4;
  *(v5 + 49) = a4;
  *(v5 + 48) = a2;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_232B288D4, 0, 0);
}

uint64_t sub_232B288D4()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  v3 = *(*(v0 + 32) + OBJC_IVAR____TtC21DocumentUnderstanding26CoreSpotlightUpdateFetcher_iOSUpdateFetcher);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_232B28990;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  return sub_232B27210();
}

uint64_t sub_232B28990(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

id CoreSpotlightUpdateFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CoreSpotlightUpdateFetcher.init()()
{
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding26CoreSpotlightUpdateFetcher_iOSUpdateFetcher;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for CoreSpotlightiOSFileUpdateFetcher()) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CoreSpotlightUpdateFetcher();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CoreSpotlightUpdateFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreSpotlightUpdateFetcher();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of CoreSpotlightUpdateFetcher.fetchUpdatedDocumentsFromSpotlight(maxDocuments:currentAnalysisVersion:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_232B28D1C;

  return (v14)(a1, a2 & 1, a3, a4 & 1);
}

uint64_t sub_232B28D1C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo()
{
  result = qword_27DDC6940;
  if (!qword_27DDC6940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B28E8C()
{
  sub_232CE9340();
  if (v0 <= 0x3F)
  {
    sub_232B28F10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232B28F10()
{
  if (!qword_2814DFA10)
  {
    v0 = sub_232CEA350();
    if (!v1)
    {
      atomic_store(v0, &qword_2814DFA10);
    }
  }
}

uint64_t sub_232B28F60@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t sub_232B28F98()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4EA8);
  sub_232B135C4(v0, qword_27DDD4EA8);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF6460;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "debugString";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_232CE95F0();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_232CE9600();
}

uint64_t sub_232B29104()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_232B2916C();
    }
  }

  return result;
}

uint64_t sub_232B291D0()
{
  result = sub_232B29228(v0);
  if (!v1)
  {
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B29228(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B292A0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo() + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  if (v6)
  {
    if (v8)
    {
      v9 = *v5 == *v7 && v6 == v8;
      if (v9 || (sub_232CEA750() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    sub_232CE9340();
    sub_232B29784(&qword_27DDC6590, MEMORY[0x277D216C8]);
    return sub_232CE9CF0() & 1;
  }

  return 0;
}

uint64_t sub_232B29378()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo();
  sub_232B29784(&qword_27DDC6958, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B29450(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B29784(&qword_27DDC6968, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B294CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6310 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4EA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B29574(uint64_t a1)
{
  v2 = sub_232B29784(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B295E4()
{
  sub_232B29784(&qword_27DDC6820, type metadata accessor for DocumentUnderstanding_ClientInterface_DebugInfo);

  return sub_232CE9500();
}

uint64_t sub_232B29784(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232B297CC@<X0>(uint64_t a1@<X8>)
{
  sub_232CE9330();
  v2 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0) + 20);
  if (qword_2814E2300 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_2814E2308;
}

uint64_t sub_232B29848()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4EC0);
  sub_232B135C4(v0, qword_27DDD4EC0);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_232CF6730;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v5 = "headline";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_232CE95F0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "subHeadline";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "version";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "creator";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "abstract";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "comment";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "text";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "inLanguage";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "keywords";
  *(v23 + 1) = 8;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "identifier";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "url";
  *(v27 + 1) = 3;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "thumbnailUrl";
  *(v29 + 1) = 12;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "significantLink";
  *(v31 + 1) = 15;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "dateCreated";
  *(v33 + 1) = 11;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "dateModified";
  *(v35 + 1) = 12;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "documentUIElements";
  *(v37 + 1) = 18;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "documentHTMLData";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "documentMessageData";
  *(v41 + 1) = 19;
  v41[16] = 2;
  v8();
  return sub_232CE9600();
}

void *sub_232B29DCC()
{
  v0 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_232B29E0C();
  qword_2814E2308 = result;
  return result;
}

void *sub_232B29E0C()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  v0[14] = 0;
  v0[15] = 0xE000000000000000;
  v0[16] = 0;
  v0[17] = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  v0[18] = MEMORY[0x277D84F90];
  v0[19] = 0;
  v0[20] = 0xE000000000000000;
  v0[21] = 0;
  v0[22] = 0xE000000000000000;
  v0[23] = 0;
  v0[24] = 0xE000000000000000;
  v0[25] = 0;
  v0[26] = 0xE000000000000000;
  v0[27] = 0;
  v0[28] = 0;
  v0[29] = v1;
  v2 = OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentHtmldata;
  v3 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  sub_232B12504(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentMessageData;
  v5 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  sub_232B12504(v0 + v4, 1, 1, v5);
  return v0;
}

void *sub_232B29EB8(void *a1)
{
  v3 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  sub_232B2D120(v3);
  v5 = *(v4 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  sub_232B2D108();
  v7 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  sub_232B2D120(v7);
  v9 = *(v8 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v10);
  sub_232B2D108();
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v1[6] = 0;
  v1[5] = 0xE000000000000000;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[9] = 0xE000000000000000;
  v1[10] = 0;
  v1[12] = 0;
  v1[11] = 0xE000000000000000;
  v1[13] = 0xE000000000000000;
  v1[14] = 0;
  v1[15] = 0xE000000000000000;
  v1[16] = 0;
  v1[17] = 0xE000000000000000;
  v11 = MEMORY[0x277D84F90];
  v1[18] = MEMORY[0x277D84F90];
  v1[19] = 0;
  v1[20] = 0xE000000000000000;
  v1[21] = 0;
  v1[22] = 0xE000000000000000;
  v1[23] = 0;
  v1[24] = 0xE000000000000000;
  v1[25] = 0;
  v1[28] = 0;
  v1[27] = 0;
  v1[26] = 0xE000000000000000;
  v1[29] = v11;
  v12 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  sub_232B2D138(v12);
  v13 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  sub_232B2D138(v13);
  sub_232B13F74();
  v15 = a1[2];
  v14 = a1[3];
  sub_232B2D0EC();
  v1[2] = v15;
  v1[3] = v14;
  sub_232B13F74();
  v17 = a1[4];
  v16 = a1[5];
  sub_232B13F5C();
  v1[4] = v17;
  v1[5] = v16;

  sub_232B13F74();
  v19 = a1[6];
  v18 = a1[7];
  sub_232B13F5C();
  v20 = v1[7];
  v1[6] = v19;
  v1[7] = v18;

  sub_232B13F74();
  v22 = a1[8];
  v21 = a1[9];
  sub_232B13F5C();
  v23 = v1[9];
  v1[8] = v22;
  v1[9] = v21;

  sub_232B13F74();
  v25 = a1[10];
  v24 = a1[11];
  sub_232B13F5C();
  v26 = v1[11];
  v1[10] = v25;
  v1[11] = v24;

  sub_232B13F74();
  v28 = a1[12];
  v27 = a1[13];
  sub_232B2D0EC();
  v29 = v1[13];
  v1[12] = v28;
  v1[13] = v27;

  sub_232B13F74();
  v31 = a1[14];
  v30 = a1[15];
  sub_232B2D0EC();
  v32 = v1[15];
  v1[14] = v31;
  v1[15] = v30;

  sub_232B13F74();
  v34 = a1[16];
  v33 = a1[17];
  sub_232B2D0EC();
  v35 = v1[17];
  v1[16] = v34;
  v1[17] = v33;

  sub_232B13F74();
  v36 = a1[18];
  sub_232B13F5C();
  v37 = v1[18];
  v1[18] = v36;

  sub_232B13F74();
  v39 = a1[19];
  v38 = a1[20];
  sub_232B2D0EC();
  v40 = v1[20];
  v1[19] = v39;
  v1[20] = v38;

  sub_232B13F74();
  v42 = a1[21];
  v41 = a1[22];
  sub_232B2D0EC();
  v43 = v1[22];
  v1[21] = v42;
  v1[22] = v41;

  sub_232B13F74();
  v45 = a1[23];
  v44 = a1[24];
  sub_232B2D0EC();
  v46 = v1[24];
  v1[23] = v45;
  v1[24] = v44;

  sub_232B13F74();
  v48 = a1[25];
  v47 = a1[26];
  sub_232B2D0EC();
  v49 = v1[26];
  v1[25] = v48;
  v1[26] = v47;

  sub_232B13F74();
  v50 = a1[27];
  sub_232B13F5C();
  v1[27] = v50;
  sub_232B13F74();
  v51 = a1[28];
  sub_232B13F5C();
  v1[28] = v51;
  sub_232B13F74();
  v52 = a1[29];
  sub_232B13F5C();
  v53 = v1[29];
  v1[29] = v52;

  sub_232B13F74();
  sub_232B2CF64();
  swift_beginAccess();
  sub_232B2D074();
  swift_endAccess();
  sub_232B13F74();
  sub_232B2CF64();

  swift_beginAccess();
  sub_232B2D074();
  swift_endAccess();
  return v1;
}

void *sub_232B2A4D4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  v12 = v0[24];

  v13 = v0[26];

  v14 = v0[29];

  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentHtmldata, &qword_27DDC69B0, &qword_232CF6998);
  sub_232B13790(v0 + OBJC_IVAR____TtCV21DocumentUnderstanding53DocumentUnderstanding_DocumentRepresentation_DocumentP33_B25D73F1E23932B4C52C7495EED50DAA13_StorageClass__documentMessageData, &qword_27DDC69A0, &qword_232CF6990);
  return v0;
}

uint64_t sub_232B2A59C()
{
  v0 = sub_232B2A4D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_232B2A618()
{
  sub_232B2A758(319, qword_2814E1E78, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_232B2A758(319, qword_2814E1F18, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_232B2A758(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_232CEA350();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_232B2A7F4()
{
  result = sub_232CE9340();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_232B2A878()
{
  v1 = v0;
  v2 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    *(v1 + v2) = sub_232B29EB8(v5);
  }

  return sub_232B2A920();
}

uint64_t sub_232B2A920()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232B2AB88();
        break;
      case 2:
        sub_232B2AC0C();
        break;
      case 3:
        sub_232B2AC90();
        break;
      case 4:
        sub_232B2AD14();
        break;
      case 5:
        sub_232B2AD98();
        break;
      case 6:
        sub_232B2AE1C();
        break;
      case 7:
        sub_232B2AEA0();
        break;
      case 8:
        sub_232B2AF24();
        break;
      case 9:
        sub_232B2AFA8();
        break;
      case 10:
        sub_232B2B02C();
        break;
      case 11:
        sub_232B2B0B0();
        break;
      case 12:
        sub_232B2B134();
        break;
      case 13:
        sub_232B2B1B8();
        break;
      case 14:
        sub_232B2B23C();
        break;
      case 15:
        sub_232B2B2C0();
        break;
      case 16:
        sub_232B2B344();
        break;
      case 17:
        sub_232B2B410();
        break;
      case 18:
        sub_232B2B4EC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B2AB88()
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AC0C()
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AC90()
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AD14()
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AD98()
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AE1C()
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AEA0()
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AF24()
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2AFA8()
{
  swift_beginAccess();
  sub_232CE9460();
  return swift_endAccess();
}

uint64_t sub_232B2B02C()
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2B0B0()
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2B134()
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2B1B8()
{
  swift_beginAccess();
  sub_232CE94A0();
  return swift_endAccess();
}

uint64_t sub_232B2B23C()
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B2B2C0()
{
  swift_beginAccess();
  sub_232CE9480();
  return swift_endAccess();
}

uint64_t sub_232B2B344()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement();
  sub_232B2CE8C(&qword_27DDC6998, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement);
  sub_232CE94B0();
  return swift_endAccess();
}

uint64_t sub_232B2B410()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  sub_232B2CE8C(&qword_27DDC69B8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232B2B4EC()
{
  swift_beginAccess();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  sub_232B2CE8C(&qword_27DDC69A8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);
  sub_232CE94C0();
  return swift_endAccess();
}

uint64_t sub_232B2B5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  result = sub_232B2B634(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B2B634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v11 = *(a1 + 24);

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v12 = *(a1 + 40);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = *(a1 + 40);

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v15 = *(a1 + 56);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = *(a1 + 56);

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v18 = *(a1 + 72);
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = *(a1 + 72);

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v21 = *(a1 + 88);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = *(a1 + 88);

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v24 = *(a1 + 104);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v26 = *(a1 + 104);

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v27 = *(a1 + 120);
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v29 = *(a1 + 120);

    sub_232CE95C0();
    if (!v4)
    {

      goto LABEL_36;
    }
  }

LABEL_36:
  swift_beginAccess();
  v30 = *(a1 + 136);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    v32 = *(a1 + 136);

    sub_232CE95C0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(*(a1 + 144) + 16) || (v34 = *(a1 + 144), , sub_232CE95A0(), result = , !v4))
  {
    swift_beginAccess();
    v35 = *(a1 + 160);
    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = *(a1 + 152) & 0xFFFFFFFFFFFFLL;
    }

    if (!v36 || (v37 = *(a1 + 160), , sub_232CE95C0(), result = , !v4))
    {
      swift_beginAccess();
      v38 = *(a1 + 176);
      v39 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v39 = *(a1 + 168) & 0xFFFFFFFFFFFFLL;
      }

      if (!v39 || (v40 = *(a1 + 176), , sub_232CE95C0(), result = , !v4))
      {
        swift_beginAccess();
        v41 = *(a1 + 192);
        v42 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v42 = *(a1 + 184) & 0xFFFFFFFFFFFFLL;
        }

        if (!v42 || (v43 = *(a1 + 192), , sub_232CE95C0(), result = , !v4))
        {
          swift_beginAccess();
          v44 = *(a1 + 208);
          v45 = HIBYTE(v44) & 0xF;
          if ((v44 & 0x2000000000000000) == 0)
          {
            v45 = *(a1 + 200) & 0xFFFFFFFFFFFFLL;
          }

          if (!v45 || (v46 = *(a1 + 208), , sub_232CE95C0(), result = , !v4))
          {
            swift_beginAccess();
            if (*(a1 + 216) == 0.0 || (result = sub_232CE95B0(), !v4))
            {
              swift_beginAccess();
              if (*(a1 + 224) == 0.0 || (result = sub_232CE95B0(), !v4))
              {
                swift_beginAccess();
                if (!*(*(a1 + 232) + 16) || (type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement(), sub_232B2CE8C(&qword_27DDC6998, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentUIElement), , sub_232CE95D0(), result = , !v4))
                {
                  result = sub_232B2BCB4(a1, a2, a3, a4);
                  if (!v4)
                  {
                    return sub_232B2BE9C(a1, a2, a3, a4);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_232B2BCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC69B0, &qword_232CF6998);
  }

  sub_232B2CFC0();
  sub_232B2CE8C(&qword_27DDC69B8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
  sub_232CE95E0();
  return sub_232B2D01C(v11, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
}

uint64_t sub_232B2BE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v4 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_232B2CF64();
  if (sub_232B12480(v7, 1, v8) == 1)
  {
    return sub_232B13790(v7, &qword_27DDC69A0, &qword_232CF6990);
  }

  sub_232B2CFC0();
  sub_232B2CE8C(&qword_27DDC69A8, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);
  sub_232CE95E0();
  return sub_232B2D01C(v11, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);
}

uint64_t sub_232B2C084()
{
  sub_232B2D12C();
  v2 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0) + 20);
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_232B2C168(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_232CE9340();
  sub_232B2CE8C(&qword_27DDC6590, MEMORY[0x277D216C8]);
  return sub_232CE9CF0() & 1;
}

BOOL sub_232B2C168(uint64_t a1, uint64_t a2)
{
  v99 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData();
  v4 = sub_232B13F24(v99);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v95 = &v93[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = sub_232B124A8(&qword_27DDC69C0, &qword_232CF69A0);
  sub_232B13F24(v97);
  v9 = *(v8 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v10);
  sub_232B2D108();
  v100 = v11;
  v12 = sub_232B124A8(&qword_27DDC69A0, &qword_232CF6990);
  v13 = sub_232B2D120(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v96 = &v93[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v98 = &v93[-v18];
  v19 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData();
  v20 = sub_232B13F24(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v93[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_232B124A8(&qword_27DDC69C8, &qword_232CF69A8);
  sub_232B13F24(v25);
  v27 = *(v26 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v28);
  sub_232B2D108();
  v101 = v29;
  v30 = sub_232B124A8(&qword_27DDC69B0, &qword_232CF6998);
  v31 = sub_232B2D120(v30);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v93[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v38 = &v93[-v37];
  sub_232B13F74();
  v39 = *(a1 + 16);
  v40 = *(a1 + 24);
  sub_232B13F74();
  v41 = v39 == *(a2 + 16) && v40 == *(a2 + 24);
  if (!v41 && (sub_232B2D0D0() & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74();
  v42 = *(a1 + 32);
  v43 = *(a1 + 40);
  sub_232B13F74();
  v44 = v42 == *(a2 + 32) && v43 == *(a2 + 40);
  if (!v44 && (sub_232B2D0D0() & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74();
  v45 = *(a1 + 48);
  v46 = *(a1 + 56);
  sub_232B13F74();
  v47 = v45 == *(a2 + 48) && v46 == *(a2 + 56);
  if (!v47 && (sub_232B2D0D0() & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74();
  v48 = *(a1 + 64);
  v49 = *(a1 + 72);
  sub_232B13F74();
  v50 = v48 == *(a2 + 64) && v49 == *(a2 + 72);
  if (!v50 && (sub_232B2D0D0() & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74();
  v51 = *(a1 + 80);
  v52 = *(a1 + 88);
  sub_232B13F74();
  v53 = v51 == *(a2 + 80) && v52 == *(a2 + 88);
  if (!v53 && (sub_232B2D0D0() & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74();
  v54 = *(a1 + 96);
  v55 = *(a1 + 104);
  sub_232B13F74();
  v56 = v54 == *(a2 + 96) && v55 == *(a2 + 104);
  if (!v56 && (sub_232B2D0D0() & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74();
  v57 = *(a1 + 112);
  v58 = *(a1 + 120);
  sub_232B13F74();
  v59 = v57 == *(a2 + 112) && v58 == *(a2 + 120);
  if (!v59 && (sub_232B2D0D0() & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74();
  v60 = *(a1 + 128);
  v61 = *(a1 + 136);
  sub_232B13F74();
  v62 = v60 == *(a2 + 128) && v61 == *(a2 + 136);
  if (!v62 && (sub_232B2D0D0() & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74();
  v63 = *(a1 + 144);
  sub_232B13F74();
  if ((sub_232B32DC4(v63, *(a2 + 144)) & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74();
  v64 = *(a1 + 152);
  v65 = *(a1 + 160);
  sub_232B13F74();
  v66 = v64 == *(a2 + 152) && v65 == *(a2 + 160);
  if (!v66 && (sub_232B2D0D0() & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74();
  v67 = *(a1 + 168);
  v68 = *(a1 + 176);
  sub_232B13F74();
  v69 = v67 == *(a2 + 168) && v68 == *(a2 + 176);
  if (!v69 && (sub_232B2D0D0() & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74();
  v70 = *(a1 + 184);
  v71 = *(a1 + 192);
  sub_232B13F74();
  v72 = v70 == *(a2 + 184) && v71 == *(a2 + 192);
  if (!v72 && (sub_232B2D0D0() & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74();
  v73 = *(a1 + 200);
  v74 = *(a1 + 208);
  sub_232B13F74();
  v75 = v73 == *(a2 + 200) && v74 == *(a2 + 208);
  if (!v75 && (sub_232B2D0D0() & 1) == 0)
  {
    return 0;
  }

  sub_232B13F74();
  v76 = *(a1 + 216);
  sub_232B13F74();
  if (v76 != *(a2 + 216))
  {
    return 0;
  }

  sub_232B13F74();
  v77 = *(a1 + 224);
  sub_232B13F74();
  if (v77 != *(a2 + 224))
  {
    return 0;
  }

  sub_232B13F74();
  v78 = *(a1 + 232);
  sub_232B13F74();
  v79 = *(a2 + 232);

  sub_232B34390();
  v94 = v80;

  if ((v94 & 1) == 0)
  {
    goto LABEL_74;
  }

  sub_232B13F74();
  sub_232B2CF64();
  sub_232B13F74();
  v81 = *(v25 + 48);
  v82 = v101;
  sub_232B2CF64();
  sub_232B2CF64();
  sub_232B2D158(v82);
  if (v41)
  {
    sub_232B13790(v38, &qword_27DDC69B0, &qword_232CF6998);
    sub_232B2D158(v82 + v81);
    if (v41)
    {
      sub_232B13790(v82, &qword_27DDC69B0, &qword_232CF6998);
      goto LABEL_77;
    }

    goto LABEL_73;
  }

  sub_232B2CF64();
  sub_232B2D158(v82 + v81);
  if (v83)
  {
    sub_232B13790(v38, &qword_27DDC69B0, &qword_232CF6998);
    sub_232B2D01C(v36, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
LABEL_73:
    sub_232B13790(v82, &qword_27DDC69C8, &qword_232CF69A8);
LABEL_74:

    return 0;
  }

  sub_232B2CFC0();
  v85 = sub_232B38480(v36, v24);
  sub_232B2D01C(v24, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
  sub_232B13790(v38, &qword_27DDC69B0, &qword_232CF6998);
  sub_232B2D01C(v36, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentHTMLData);
  sub_232B13790(v82, &qword_27DDC69B0, &qword_232CF6998);
  if ((v85 & 1) == 0)
  {
    goto LABEL_74;
  }

LABEL_77:
  sub_232B13F74();
  v86 = v98;
  sub_232B2CF64();
  sub_232B13F74();
  v87 = *(v97 + 48);
  v88 = v100;
  sub_232B2CF64();
  sub_232B2CF64();
  v89 = v99;
  if (sub_232B12480(v88, 1, v99) != 1)
  {
    v90 = v96;
    sub_232B2CF64();
    if (sub_232B12480(v88 + v87, 1, v89) == 1)
    {

      sub_232B13790(v86, &qword_27DDC69A0, &qword_232CF6990);
      sub_232B2D01C(v90, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);
      goto LABEL_82;
    }

    v91 = v95;
    sub_232B2CFC0();
    v92 = sub_232B3D154(v90, v91);

    sub_232B2D01C(v91, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);
    sub_232B13790(v86, &qword_27DDC69A0, &qword_232CF6990);
    sub_232B2D01C(v90, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentMessageData);
    sub_232B13790(v88, &qword_27DDC69A0, &qword_232CF6990);
    return (v92 & 1) != 0;
  }

  sub_232B13790(v86, &qword_27DDC69A0, &qword_232CF6990);
  if (sub_232B12480(v88 + v87, 1, v89) != 1)
  {
LABEL_82:
    sub_232B13790(v88, &qword_27DDC69C0, &qword_232CF69A0);
    return 0;
  }

  sub_232B13790(v88, &qword_27DDC69A0, &qword_232CF6990);
  return 1;
}

uint64_t sub_232B2CB10()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document(0);
  sub_232B2CE8C(&qword_27DDC6980, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B2CBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B2CE8C(&qword_27DDC6990, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B2CC64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6318 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4EC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B2CD0C(uint64_t a1)
{
  v2 = sub_232B2CE8C(&qword_27DDC6978, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B2CD7C()
{
  sub_232B2CE8C(&qword_27DDC6978, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_Document);

  return sub_232CE9500();
}

uint64_t sub_232B2CE8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232B2CF64()
{
  sub_232B2D12C();
  v4 = sub_232B124A8(v2, v3);
  sub_232B13F24(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_232B2CFC0()
{
  sub_232B2D12C();
  v3 = v2(0);
  sub_232B13F24(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_232B2D01C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_232B13F24(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232B2D074()
{
  sub_232B2D12C();
  v4 = sub_232B124A8(v2, v3);
  sub_232B13F24(v4);
  (*(v5 + 40))(v0, v1);
  return v0;
}

uint64_t sub_232B2D0D0()
{

  return sub_232CEA750();
}

uint64_t sub_232B2D0EC()
{

  return swift_beginAccess();
}

uint64_t sub_232B2D138(uint64_t a1)
{

  return sub_232B12504(v1 + v2, 1, 1, a1);
}

uint64_t type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute()
{
  result = qword_27DDC69D0;
  if (!qword_27DDC69D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B2D1EC()
{
  sub_232CE9340();
  if (v0 <= 0x3F)
  {
    sub_232B28F10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_232B2D274()
{
  sub_232CE9330();
  v0 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  sub_232B2DF60(*(v0 + 20));
  sub_232B2DF60(*(v1 + 24));
  sub_232B2DF60(*(v2 + 28));
  sub_232B2DF60(*(v3 + 32));
}

uint64_t sub_232B2D2C0()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4ED8);
  sub_232B135C4(v0, qword_27DDD4ED8);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_232CF4C30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "attributeNamespace";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_232CE95F0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "attributeType";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "attributeId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "displayName";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_232CE9600();
}

uint64_t sub_232B2D500()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_232B13EE0();
        sub_232B2D5B0();
        break;
      case 2:
        sub_232B13EE0();
        sub_232B2D614();
        break;
      case 3:
        sub_232B13EE0();
        sub_232B2D678();
        break;
      case 4:
        sub_232B13EE0();
        sub_232B2D6DC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B2D740()
{
  v1 = sub_232B13EF4();
  result = sub_232B2D7B0(v1);
  if (!v0)
  {
    v3 = sub_232B13EF4();
    sub_232B2D828(v3);
    v4 = sub_232B13EF4();
    sub_232B2D8A0(v4);
    v5 = sub_232B13EF4();
    sub_232B2D918(v5);
    return sub_232CE9320();
  }

  return result;
}

uint64_t sub_232B2D7B0(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B2D828(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B2D8A0(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B2D918(uint64_t a1)
{
  result = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_232CE95C0();
  }

  return result;
}

uint64_t sub_232B2D990()
{
  v0 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  v1 = v0[5];
  sub_232B2DF3C();
  if (v4)
  {
    if (!v2)
    {
      return 0;
    }

    sub_232B2DF50(v3);
    v7 = v7 && v5 == v6;
    if (!v7 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  v8 = v0[6];
  sub_232B2DF3C();
  if (v11)
  {
    if (!v9)
    {
      return 0;
    }

    sub_232B2DF50(v10);
    v14 = v7 && v12 == v13;
    if (!v14 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v15 = v0[7];
  sub_232B2DF3C();
  if (v18)
  {
    if (!v16)
    {
      return 0;
    }

    sub_232B2DF50(v17);
    v21 = v7 && v19 == v20;
    if (!v21 && (sub_232CEA750() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v22 = v0[8];
  sub_232B2DF3C();
  if (v25)
  {
    if (v23)
    {
      sub_232B2DF50(v24);
      v28 = v7 && v26 == v27;
      if (v28 || (sub_232CEA750() & 1) != 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (!v23)
  {
LABEL_35:
    sub_232CE9340();
    sub_232B2DEF4(&qword_27DDC6590, MEMORY[0x277D216C8]);
    return sub_232CE9CF0() & 1;
  }

  return 0;
}

uint64_t sub_232B2DAE8()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  sub_232B2DEF4(&qword_27DDC69F0, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B2DBC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B2DEF4(&qword_27DDC6A00, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B2DC3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6320 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4ED8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B2DCE4(uint64_t a1)
{
  v2 = sub_232B2DEF4(&qword_27DDC69E8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B2DD54()
{
  sub_232B2DEF4(&qword_27DDC69E8, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);

  return sub_232CE9500();
}

uint64_t sub_232B2DEF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232B2DF50@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

void sub_232B2DF60(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData()
{
  result = qword_2814E1E10;
  if (!qword_2814E1E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B2DFE0()
{
  sub_232B2E0AC();
  if (v0 <= 0x3F)
  {
    sub_232B2E0FC();
    if (v1 <= 0x3F)
    {
      sub_232CE9340();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_232B2E0AC()
{
  if (!qword_2814DF980)
  {
    v0 = sub_232CEA030();
    if (!v1)
    {
      atomic_store(v0, &qword_2814DF980);
    }
  }
}

void sub_232B2E0FC()
{
  if (!qword_2814DFA20)
  {
    v0 = sub_232CE9C70();
    if (!v1)
    {
      atomic_store(v0, &qword_2814DFA20);
    }
  }
}

uint64_t sub_232B2E158@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  v2 = MEMORY[0x277D84F90];
  a1[8] = MEMORY[0x277D84F90];
  a1[9] = v2;
  a1[10] = v2;
  a1[11] = v2;
  a1[12] = v2;
  a1[13] = v2;
  a1[14] = 0;
  a1[15] = sub_232CE9C60();
  a1[16] = 0;
  a1[17] = 0xE000000000000000;
  v3 = a1 + *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData() + 68);
  return sub_232CE9330();
}

uint64_t sub_232B2E1D8()
{
  v0 = sub_232CE9610();
  sub_232B135FC(v0, qword_27DDD4EF0);
  sub_232B135C4(v0, qword_27DDD4EF0);
  sub_232B124A8(&qword_27DDC6580, &unk_232CF57C0);
  v1 = (sub_232B124A8(&qword_27DDC6588, &unk_232CF6720) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_232CF6B70;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v4 = "subject";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_232CE95F0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v32 + v3 + v2 + v1[14];
  *(v32 + v3 + v2) = 2;
  *v8 = "senderName";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v32 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "senderEmail";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v32 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "senderDomain";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v32 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "recipientNames";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v32 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "recipientEmails";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  v17 = (v32 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "ccNames";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  v19 = (v32 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "ccEmails";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v7();
  v21 = (v32 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "bccNames";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v7();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "bccEmails";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v7();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "dateReceived";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v7();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "headers";
  *(v28 + 1) = 7;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "text";
  *(v30 + 1) = 4;
  v30[16] = 2;
  v7();
  return sub_232CE9600();
}

uint64_t sub_232B2E638()
{
  while (1)
  {
    result = sub_232CE93A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 13:
        sub_232B2F148();
        sub_232CE94A0();
        break;
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        sub_232B2F148();
        sub_232CE9460();
        break;
      case 11:
        sub_232B2F148();
        sub_232CE9480();
        break;
      case 12:
        sub_232B2E748();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_232B2E7C0()
{
  v2 = v1;
  v3 = *v0;
  v4 = v0[1];
  sub_232B2F0F4();
  if (!v5 || (result = sub_232B2F128(), (v2 = v1) == 0))
  {
    v7 = v0[2];
    v8 = v0[3];
    sub_232B2F0F4();
    if (!v9 || (result = sub_232B2F128(), (v2 = v1) == 0))
    {
      v10 = v0[4];
      v11 = v0[5];
      sub_232B2F0F4();
      if (!v12 || (result = sub_232B2F128(), (v2 = v1) == 0))
      {
        v13 = v0[6];
        v14 = v0[7];
        sub_232B2F0F4();
        if (!v15 || (result = sub_232B2F128(), (v2 = v1) == 0))
        {
          if (!*(v0[8] + 16) || (result = sub_232B2F108(), (v2 = v1) == 0))
          {
            if (!*(v0[9] + 16) || (result = sub_232B2F108(), (v2 = v1) == 0))
            {
              if (!*(v0[10] + 16) || (result = sub_232B2F108(), (v2 = v1) == 0))
              {
                if (!*(v0[11] + 16) || (result = sub_232B2F108(), (v2 = v1) == 0))
                {
                  if (!*(v0[12] + 16) || (result = sub_232B2F108(), (v2 = v1) == 0))
                  {
                    if (!*(v0[13] + 16) || (result = sub_232B2F108(), (v2 = v1) == 0))
                    {
                      if (!v0[14] || (v1 = v2, sub_232B2F148(), result = sub_232CE95B0(), !v2))
                      {
                        if (!*(v0[15] + 16) || (sub_232CE9310(), v1 = v2, result = sub_232CE9520(), !v2))
                        {
                          v16 = v0[16];
                          v17 = v0[17];
                          sub_232B2F0F4();
                          if (!v18 || (result = sub_232B2F128(), !v1))
                          {
                            v19 = v0 + *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData() + 68);
                            sub_232B2F148();
                            return sub_232CE9320();
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
      }
    }
  }

  return result;
}

uint64_t sub_232B2E9D4(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v6 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  if (!v7 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  if ((sub_232B32DC4(*(a1 + 64), *(a2 + 64)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_232B32DC4(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_232B32DC4(*(a1 + 80), *(a2 + 80)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_232B32DC4(*(a1 + 88), *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_232B32DC4(*(a1 + 96), *(a2 + 96)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_232B32DC4(*(a1 + 104), *(a2 + 104)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 112) != *(a2 + 112))
  {
    return 0;
  }

  sub_232B3223C(*(a1 + 120), *(a2 + 120));
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136);
  if (!v9 && (sub_232CEA750() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData() + 68);
  sub_232CE9340();
  sub_232B2F0AC(&qword_27DDC6590, MEMORY[0x277D216C8]);
  return sub_232CE9CF0() & 1;
}

uint64_t sub_232B2EB94()
{
  sub_232CEA820();
  type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  sub_232B2F0AC(&qword_27DDC6A18, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
  sub_232CE9C90();
  return sub_232CEA850();
}

uint64_t sub_232B2EC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_232B2ECB0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 68);
  v5 = sub_232CE9340();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_232B2ED24(uint64_t a1, uint64_t a2))(void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 68);
  return result;
}

uint64_t sub_232B2ED78(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B2F0AC(&qword_27DDC6A28, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_232B2EDF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDC6328 != -1)
  {
    swift_once();
  }

  v2 = sub_232CE9610();
  v3 = sub_232B135C4(v2, qword_27DDD4EF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_232B2EE9C(uint64_t a1)
{
  v2 = sub_232B2F0AC(&qword_27DDC6A10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_232B2EF0C()
{
  sub_232B2F0AC(&qword_27DDC6A10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);

  return sub_232CE9500();
}

uint64_t sub_232B2F0AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232B2F108()
{

  return sub_232CE95A0();
}

uint64_t sub_232B2F128()
{

  return sub_232CE95C0();
}

id sub_232B2F200(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v4)
  {
    sub_232CE9D20();
    sub_232B26CE8();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

void sub_232B2F27C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_232CE9D50();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_232B2F310(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_232B2F514(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232B2F508(v4);
}

id sub_232B2F5A4(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a3())
  {
    sub_232CE9FD0();
    sub_232B26CE8();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

void sub_232B2F628(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = sub_232CE9FE0();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

uint64_t sub_232B2F6B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232B2F6AC(v4);
}

uint64_t sub_232B2F778(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232B2F76C(v4);
}

uint64_t sub_232B2F838(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232B2F82C(v4);
}

uint64_t sub_232B2F8F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232B2F8EC(v4);
}

uint64_t sub_232B2F9B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232B2F9AC(v4);
}

uint64_t sub_232B2FB28@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  sub_232B13F74();
  return sub_232B34D3C(v1 + v3, a1, &qword_27DDC6A80, &qword_232CF6D30);
}

uint64_t sub_232B2FC5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  swift_beginAccess();
  sub_232B2FCBC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_232B2FCBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_232B2FD2C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_232B34D3C(a1, &v10 - v6, &qword_27DDC6A80, &qword_232CF6D30);
  v8 = *a2;
  return sub_232B2FC5C(v7);
}

uint64_t sub_232B2FE9C(uint64_t *a1)
{
  v2 = *a1;
  sub_232B13F74();
  v3 = *(v1 + v2);
}

uint64_t sub_232B2FF64(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  sub_232B13F5C();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t sub_232B2FFB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_232B2FF58(v4);
}

uint64_t sub_232B3004C(void *a1)
{
  v2 = (v1 + *a1);
  sub_232B13F74();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_232B300BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  sub_232B13F5C();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

id DUDocumentEmailData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUDocumentEmailData.init()()
{
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail);
  sub_232B35214(OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails] = 0;
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  v2 = sub_232CE8D10();
  sub_232B12504(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers] = 0;
  v3 = &v0[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text];
  v4 = type metadata accessor for DUDocumentEmailData();
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t type metadata accessor for DUDocumentEmailData()
{
  result = qword_2814E1388;
  if (!qword_2814E1388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232B302F8(void *a1)
{
  type metadata accessor for DUDocumentEmailData();
  sub_232B35078();
  sub_232B34348(v2, v3);
  v4 = sub_232CE98A0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_232CE9D20();
    [a1 encodeObject:v5 forKey:v6];
  }
}

uint64_t DUDocumentEmailData.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232B26CE8();
  return DUDocumentEmailData.init(coder:)(v2);
}

uint64_t DUDocumentEmailData.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  sub_232B26CE8();
  swift_getObjectType();
  sub_232B35078();
  sub_232B34348(v4, v5);
  sub_232CE98B0();

  v6 = v12;
  if (!v12)
  {
LABEL_5:
    swift_getObjectType();
    v9 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v10 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  swift_getObjectType();
  v7 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v8 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_232B305F8@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  v3 = sub_232B2D120(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  sub_232B31BCC(v7 - v6);
  sub_232B3068C();
  v9 = v8;
  result = sub_232B124A8(&qword_27DDC6A90, &qword_232CF6D38);
  a1[3] = result;
  *a1 = v9;
  return result;
}

void sub_232B3068C()
{
  sub_232B35110();
  v2 = v1;
  v3 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v3);
  v5 = *(v4 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  sub_232B350B8();
  v7 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  v8 = sub_232B2D120(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v13 = (v12 - v11);
  v14 = [objc_allocWithZone(type metadata accessor for DUDocumentEmailData()) init];
  sub_232B34E54(v2, v13, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
  v16 = *v13;
  v15 = v13[1];
  sub_232B13F5C();
  sub_232B35134();

  v18 = v13[2];
  v17 = v13[3];
  sub_232B13F5C();
  sub_232B35134();

  v20 = v13[4];
  v19 = v13[5];
  sub_232B13F5C();
  sub_232B35134();

  v22 = v13[6];
  v21 = v13[7];
  sub_232B13F5C();
  sub_232B35134();

  v23 = v13[8];
  sub_232B13F5C();
  sub_232B350E8();

  v24 = v13[9];
  sub_232B13F5C();
  sub_232B350E8();

  v25 = v13[10];
  sub_232B13F5C();
  sub_232B350E8();

  v26 = v13[11];
  sub_232B13F5C();
  sub_232B350E8();

  v27 = v13[12];
  sub_232B13F5C();
  sub_232B350E8();

  v28 = v13[13];
  sub_232B13F5C();
  sub_232B350E8();

  v29 = v13[14];
  sub_232CE8CA0();
  sub_232B34DFC(v2, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
  sub_232CE8D10();
  sub_232B351FC();
  sub_232B12504(v30, v31, v32, v33);
  v34 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  swift_beginAccess();
  sub_232B2FCBC(v0, &v14[v34]);
  swift_endAccess();
  v35 = v13[15];
  v36 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
  sub_232B13F5C();
  v37 = *&v14[v36];
  *&v14[v36] = v35;

  v39 = v13[16];
  v38 = v13[17];

  sub_232B34DFC(v13, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
  v40 = &v14[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text];
  sub_232B13F5C();
  v41 = *(v40 + 1);
  *v40 = v39;
  *(v40 + 1) = v38;

  sub_232B20A00();
}

char *sub_232B309D4(uint64_t a1)
{
  v3 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v57[-v5];
  v7 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [objc_allocWithZone(v1) init];
  sub_232B34E54(a1, v10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
  v13 = *v10;
  v12 = v10[1];
  v14 = &v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject];
  swift_beginAccess();
  v15 = *(v14 + 1);
  *v14 = v13;
  *(v14 + 1) = v12;

  v17 = v10[2];
  v16 = v10[3];
  v18 = &v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName];
  swift_beginAccess();
  v19 = *(v18 + 1);
  *v18 = v17;
  *(v18 + 1) = v16;

  v21 = v10[4];
  v20 = v10[5];
  v22 = &v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail];
  swift_beginAccess();
  v23 = *(v22 + 1);
  *v22 = v21;
  *(v22 + 1) = v20;

  v25 = v10[6];
  v24 = v10[7];
  v26 = &v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain];
  swift_beginAccess();
  v27 = *(v26 + 1);
  *v26 = v25;
  *(v26 + 1) = v24;

  v28 = v10[8];
  v29 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames;
  swift_beginAccess();
  v30 = *&v11[v29];
  *&v11[v29] = v28;

  v31 = v10[9];
  v32 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails;
  swift_beginAccess();
  v33 = *&v11[v32];
  *&v11[v32] = v31;

  v34 = v10[10];
  v35 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames;
  swift_beginAccess();
  v36 = *&v11[v35];
  *&v11[v35] = v34;

  v37 = v10[11];
  v38 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails;
  swift_beginAccess();
  v39 = *&v11[v38];
  *&v11[v38] = v37;

  v40 = v10[12];
  v41 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames;
  swift_beginAccess();
  v42 = *&v11[v41];
  *&v11[v41] = v40;

  v43 = v10[13];
  v44 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails;
  swift_beginAccess();
  v45 = *&v11[v44];
  *&v11[v44] = v43;

  v46 = v10[14];
  sub_232CE8CA0();
  sub_232B34DFC(a1, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
  v47 = sub_232CE8D10();
  sub_232B12504(v6, 0, 1, v47);
  v48 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  swift_beginAccess();
  sub_232B2FCBC(v6, &v11[v48]);
  swift_endAccess();
  v49 = v10[15];
  v50 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
  swift_beginAccess();
  v51 = *&v11[v50];
  *&v11[v50] = v49;

  v53 = v10[16];
  v52 = v10[17];

  sub_232B34DFC(v10, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
  v54 = &v11[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text];
  swift_beginAccess();
  v55 = *(v54 + 1);
  *v54 = v53;
  *(v54 + 1) = v52;

  return v11;
}

void DUDocumentEmailData.__allocating_init<A>(proto:)()
{
  sub_232B35110();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v7);
  v9 = *(v8 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v10);
  sub_232B350B8();
  v11 = sub_232B124A8(&qword_27DDC6A98, &qword_232CF6D40);
  sub_232B2D120(v11);
  v13 = *(v12 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - v15;
  sub_232B350D8();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v21);
  sub_232B20704();
  v24 = v23 - v22;
  v25 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  v26 = sub_232B13F24(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  sub_232B20704();
  v31 = (v30 - v29);
  v32 = [objc_allocWithZone(v2) init];
  (*(v18 + 16))(v24, v6, v4);
  if (swift_dynamicCast())
  {
    sub_232B351FC();
    sub_232B12504(v33, v34, v35, v25);
    sub_232B35060();
    sub_232B34D9C(v16, v31, v36);
    v64 = v6;
    v37 = *v31;
    v38 = v31[1];
    sub_232B13F5C();
    sub_232B35150();

    v39 = v31[2];
    v40 = v31[3];
    sub_232B13F5C();
    sub_232B35150();

    v41 = v31[4];
    v42 = v31[5];
    sub_232B13F5C();
    sub_232B35150();

    v43 = v31[6];
    v44 = v31[7];
    sub_232B13F5C();
    sub_232B35150();

    v45 = v31[8];
    sub_232B13F5C();
    sub_232B3509C();

    v46 = v31[9];
    sub_232B13F5C();
    sub_232B3509C();

    v47 = v31[10];
    sub_232B13F5C();
    sub_232B3509C();

    v48 = v31[11];
    sub_232B13F5C();
    sub_232B3509C();

    v49 = v31[12];
    sub_232B13F5C();
    sub_232B3509C();

    v50 = v31[13];
    sub_232B13F5C();
    sub_232B3509C();

    v51 = v31[14];
    sub_232CE8CA0();
    (*(v18 + 8))(v64, v4);
    sub_232CE8D10();
    sub_232B351FC();
    sub_232B12504(v52, v53, v54, v55);
    v56 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
    swift_beginAccess();
    sub_232B2FCBC(v1, &v32[v56]);
    swift_endAccess();
    v57 = v31[15];
    v58 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
    sub_232B13F5C();
    v59 = *&v32[v58];
    *&v32[v58] = v57;

    v61 = v31[16];
    v60 = v31[17];

    sub_232B34DFC(v31, type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData);
    v62 = &v32[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text];
    sub_232B13F5C();
    v63 = *(v62 + 1);
    *v62 = v61;
    *(v62 + 1) = v60;
  }

  else
  {

    sub_232B12504(v16, 1, 1, v25);
    (*(v18 + 8))(v6, v4);
    sub_232B13790(v16, &qword_27DDC6A98, &qword_232CF6D40);
  }

  sub_232B20A00();
}

void sub_232B31308()
{
  sub_232B35110();
  v2 = v0;
  v4 = v3;
  v5 = sub_232CE8D10();
  sub_232B350D8();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  v13 = v12 - v11;
  v14 = sub_232B124A8(&qword_27DDC6AA0, &qword_232CFB9F0);
  sub_232B13F24(v14);
  v16 = *(v15 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v17);
  sub_232B350B8();
  v18 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v19 = sub_232B2D120(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_232B3516C();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v111 - v26;
  sub_232B34D3C(v4, v118, &qword_27DDC68C8, &qword_232CF6210);
  if (!v118[3])
  {
    sub_232B13790(v118, &qword_27DDC68C8, &qword_232CF6210);
    goto LABEL_64;
  }

  type metadata accessor for DUDocumentEmailData();
  if (swift_dynamicCast())
  {
    v112 = v7;
    v113 = v5;
    v114 = v1;
    v28 = v117;
    v116 = v2;
    v29 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject);
    sub_232B34FF0();
    v30 = *v29;
    v31 = v29[1];
    v32 = &v28[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject];
    sub_232B34FF0();
    v33 = *(v32 + 1);
    if (v31)
    {
      if (!v33)
      {
        goto LABEL_63;
      }

      sub_232B351F0();
      v35 = v35 && v31 == v34;
      if (!v35 && (sub_232B2D0D0() & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v33)
    {
      goto LABEL_63;
    }

    v115 = v28;
    v36 = (v116 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName);
    sub_232B34FF0();
    v37 = *v36;
    v38 = v36[1];
    v28 = v115;
    v39 = &v115[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName];
    sub_232B34FF0();
    v40 = *(v39 + 1);
    if (v38)
    {
      if (!v40)
      {
        goto LABEL_63;
      }

      sub_232B351F0();
      v42 = v35 && v38 == v41;
      if (!v42 && (sub_232B2D0D0() & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v40)
    {
      goto LABEL_63;
    }

    v43 = (v116 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail);
    sub_232B34FF0();
    v44 = *v43;
    v45 = v43[1];
    v28 = v115;
    v46 = &v115[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail];
    sub_232B34FF0();
    v47 = *(v46 + 1);
    if (v45)
    {
      if (!v47)
      {
        goto LABEL_63;
      }

      sub_232B351F0();
      v49 = v35 && v45 == v48;
      if (!v49 && (sub_232B2D0D0() & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v47)
    {
      goto LABEL_63;
    }

    v50 = (v116 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain);
    sub_232B34FF0();
    v51 = *v50;
    v52 = v50[1];
    v28 = v115;
    v53 = &v115[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain];
    sub_232B34FF0();
    v54 = *(v53 + 1);
    if (v52)
    {
      if (!v54)
      {
        goto LABEL_63;
      }

      sub_232B351F0();
      v56 = v35 && v52 == v55;
      if (!v56 && (sub_232B2D0D0() & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v54)
    {
      goto LABEL_63;
    }

    v57 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames;
    v58 = v116;
    sub_232B13F74();
    v59 = *(v58 + v57);
    v28 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames;
    sub_232B3517C();
    sub_232B13F74();
    sub_232B350C8();
    if (v59)
    {
      if (!v60 || (sub_232B32DC4(v59, v60) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v60)
    {
      goto LABEL_63;
    }

    v61 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails;
    sub_232B13F74();
    v62 = *(v58 + v61);
    v28 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails;
    sub_232B3517C();
    sub_232B13F74();
    sub_232B350C8();
    if (v62)
    {
      if (!v63 || (sub_232B32DC4(v62, v63) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v63)
    {
      goto LABEL_63;
    }

    v64 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames;
    sub_232B13F74();
    v65 = *(v58 + v64);
    v28 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames;
    sub_232B3517C();
    sub_232B13F74();
    sub_232B350C8();
    if (v65)
    {
      if (!v66 || (sub_232B32DC4(v65, v66) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (v66)
    {
      goto LABEL_63;
    }

    v67 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails;
    sub_232B13F74();
    v68 = *(v58 + v67);
    v28 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails;
    sub_232B3517C();
    sub_232B13F74();
    sub_232B350C8();
    if (v68)
    {
      if (v69 && (sub_232B32DC4(v68, v69) & 1) != 0)
      {
LABEL_58:
        v70 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames;
        sub_232B13F74();
        v71 = *(v58 + v70);
        v72 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames;
        sub_232B3517C();
        sub_232B13F74();
        v73 = *&v115[v72];
        if (v71)
        {
          if (!v73 || (sub_232B32DC4(v71, v73) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if (v73)
        {
          goto LABEL_94;
        }

        v74 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails;
        v75 = v116;
        sub_232B13F74();
        v76 = *(v75 + v74);
        v77 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails;
        v78 = v115;
        sub_232B13F74();
        v79 = *&v78[v77];
        if (v76)
        {
          if (!v79 || (sub_232B32DC4(v76, v79) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if (v79)
        {
          goto LABEL_94;
        }

        v80 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
        v81 = v116;
        sub_232B13F74();
        sub_232B34D3C(v81 + v80, v27, &qword_27DDC6A80, &qword_232CF6D30);
        v82 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
        v83 = v115;
        sub_232B13F74();
        v84 = *(v14 + 48);
        v85 = v114;
        sub_232B34D3C(v27, v114, &qword_27DDC6A80, &qword_232CF6D30);
        sub_232B34D3C(&v83[v82], v85 + v84, &qword_27DDC6A80, &qword_232CF6D30);
        sub_232B351B0(v85, 1, v113);
        if (v35)
        {
          sub_232B13790(v27, &qword_27DDC6A80, &qword_232CF6D30);
          sub_232B351B0(v114 + v84, 1, v113);
          if (v35)
          {
            sub_232B13790(v114, &qword_27DDC6A80, &qword_232CF6D30);
LABEL_82:
            v94 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
            v95 = v116;
            sub_232B13F74();
            v96 = *(v95 + v94);
            v97 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
            v98 = v115;
            sub_232B13F74();
            v99 = *&v98[v97];
            if (v96)
            {
              if (v99)
              {

                sub_232B3223C(v100, v99);
                v102 = v101;

                if (v102)
                {
                  goto LABEL_87;
                }
              }
            }

            else if (!v99)
            {
LABEL_87:
              v103 = (v116 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text);
              sub_232B13F74();
              v104 = *v103;
              v105 = v103[1];
              v106 = &v115[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text];
              sub_232B13F74();
              v107 = *(v106 + 1);
              if (v105)
              {
                if (v107)
                {
                  if (v104 == *v106 && v105 == v107)
                  {

                    goto LABEL_64;
                  }

                  v109 = *(v106 + 1);
                  sub_232CEA750();
                }

                goto LABEL_94;
              }

              v110 = *(v106 + 1);

              if (v107)
              {
              }

              goto LABEL_64;
            }

LABEL_94:

            goto LABEL_64;
          }
        }

        else
        {
          v86 = v114;
          sub_232B34D3C(v114, v24, &qword_27DDC6A80, &qword_232CF6D30);
          sub_232B351B0(v86 + v84, 1, v113);
          if (!v87)
          {
            v89 = v112;
            v88 = v113;
            v90 = v114;
            (*(v112 + 32))(v13, v114 + v84, v113);
            sub_232B34348(&qword_27DDC6AA8, MEMORY[0x277CC9578]);
            v91 = sub_232CE9CF0();
            v92 = *(v89 + 8);
            v93 = sub_232B35090();
            v92(v93);
            sub_232B13790(v27, &qword_27DDC6A80, &qword_232CF6D30);
            (v92)(v24, v88);
            sub_232B13790(v90, &qword_27DDC6A80, &qword_232CF6D30);
            if ((v91 & 1) == 0)
            {
              goto LABEL_94;
            }

            goto LABEL_82;
          }

          sub_232B13790(v27, &qword_27DDC6A80, &qword_232CF6D30);
          (*(v112 + 8))(v24, v113);
        }

        sub_232B13790(v114, &qword_27DDC6AA0, &qword_232CFB9F0);
        goto LABEL_94;
      }
    }

    else if (!v69)
    {
      goto LABEL_58;
    }

LABEL_63:
  }

LABEL_64:
  sub_232B35104();
  sub_232B20A00();
}

uint64_t sub_232B31BCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  sub_232B2D120(v3);
  v5 = *(v4 + 64);
  sub_232B2D114();
  MEMORY[0x28223BE20](v6);
  v8 = v58 - v7;
  v9 = sub_232CE8D10();
  sub_232B350D8();
  v60 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  v59 = v15 - v14;
  v16 = type metadata accessor for DocumentUnderstanding_DocumentRepresentation_DocumentEmailData();
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  sub_232B20704();
  v21 = (v20 - v19);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v21[2] = 0;
  v21[3] = 0xE000000000000000;
  v21[4] = 0;
  v21[5] = 0xE000000000000000;
  v21[6] = 0;
  v21[7] = 0xE000000000000000;
  v22 = MEMORY[0x277D84F90];
  v21[8] = MEMORY[0x277D84F90];
  v21[9] = v22;
  v21[10] = v22;
  v21[11] = v22;
  v21[12] = v22;
  v21[13] = v22;
  v21[14] = 0;
  v61 = sub_232CE9C60();
  v21[15] = v61;
  v21[16] = 0;
  v21[17] = 0xE000000000000000;
  v23 = v21 + *(v17 + 76);
  sub_232CE9330();
  v24 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject);
  sub_232B13F74();
  v25 = v24[1];
  if (v25)
  {
    *v21 = *v24;
    v21[1] = v25;
  }

  v67 = v25;
  v26 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderName);
  sub_232B13F74();
  v27 = v26[1];
  if (v27)
  {
    v21[2] = *v26;
    v21[3] = v27;
  }

  v66 = v27;
  v28 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderEmail);
  sub_232B13F74();
  v29 = v28[1];
  if (v29)
  {
    v21[4] = *v28;
    v21[5] = v29;
  }

  v65 = v29;
  v30 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_senderDomain);
  sub_232B13F74();
  v31 = v30[1];
  if (v31)
  {
    v21[6] = *v30;
    v21[7] = v31;
  }

  v64 = v31;
  v32 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientNames;
  sub_232B13F74();
  v33 = *(v2 + v32);
  if (v33)
  {
    v21[8] = v33;
  }

  v63 = v33;
  v34 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_recipientEmails;
  sub_232B13F74();
  v35 = *(v2 + v34);
  if (v35)
  {
    v21[9] = v35;
  }

  v62 = v35;
  v36 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccNames;
  sub_232B13F74();
  v37 = *(v2 + v36);
  if (v37)
  {
    v21[10] = v37;
  }

  v38 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_ccEmails;
  sub_232B13F74();
  v39 = *(v2 + v38);
  if (v39)
  {
    v21[11] = v39;
  }

  v40 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccNames;
  sub_232B13F74();
  v41 = *(v2 + v40);
  if (v41)
  {
    v21[12] = v41;
  }

  v42 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_bccEmails;
  sub_232B13F74();
  v43 = *(v2 + v42);
  if (v43)
  {
    v21[13] = v43;
  }

  v44 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  sub_232B13F74();
  sub_232B34D3C(v2 + v44, v8, &qword_27DDC6A80, &qword_232CF6D30);
  v45 = v9;
  sub_232B351B0(v8, 1, v9);
  if (v46)
  {

    sub_232B13790(v8, &qword_27DDC6A80, &qword_232CF6D30);
  }

  else
  {
    v47 = v60;
    v48 = *(v60 + 32);
    v58[1] = v37;
    v49 = v59;
    v48(v59, v8, v45);

    sub_232CE8CB0();
    v51 = v50;
    (*(v47 + 8))(v49, v45);
    v21[14] = v51;
  }

  v52 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_headers;
  sub_232B13F74();
  v53 = *(v2 + v52);
  if (v53)
  {

    v21[15] = v53;
  }

  v54 = (v2 + OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_text);
  sub_232B34FF0();
  v55 = v54[1];
  if (v55)
  {
    v21[16] = *v54;
    v21[17] = v55;
  }

  sub_232B35060();
  sub_232B34D9C(v21, v68, v56);
}

id DUDocumentEmailData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUDocumentEmailData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232B32214@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232B309D4(a1);
  *a2 = result;
  return result;
}

void sub_232B3223C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v5 = a1 + 64;
    v4 = *(a1 + 64);
    v6 = *(a1 + 32);
    sub_232B34F88();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    while (v10)
    {
      sub_232B351DC();
      v31 = v14;
LABEL_11:
      v17 = v13 | (v3 << 6);
      v18 = v7;
      v19 = (*(v7 + 48) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v7 + 56) + 16 * v17);
      v24 = *v22;
      v23 = v22[1];

      v25 = sub_232B1F160(v20, v21);
      v27 = v26;

      if ((v27 & 1) == 0)
      {

        return;
      }

      v28 = (*(a2 + 56) + 16 * v25);
      if (*v28 == v24 && v28[1] == v23)
      {

        v7 = v18;
        v10 = v31;
      }

      else
      {
        v30 = sub_232CEA750();

        v7 = v18;
        v10 = v31;
        if ((v30 & 1) == 0)
        {
          return;
        }
      }
    }

    v15 = v3;
    while (1)
    {
      v3 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v3 >= v12)
      {
        return;
      }

      v16 = *(v5 + 8 * v3);
      ++v15;
      if (v16)
      {
        v13 = __clz(__rbit64(v16));
        v31 = (v16 - 1) & v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_232B323BC()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v87 = type metadata accessor for DocumentUnderstanding_HiddenLayerOutput(0);
  sub_232B350D8();
  v89 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B3516C();
  v90 = v8 - v9;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v83 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v83 - v14;
  v16 = sub_232B124A8(&qword_27DDC6AB0, &qword_232CF6DE8);
  v17 = sub_232B2D120(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_232B3516C();
  v22 = (v20 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = (&v83 - v24);
  if (v3 == v1 || *(v3 + 16) != *(v1 + 16))
  {
LABEL_26:
    sub_232B20A00();
  }

  else
  {
    v85 = v3;
    v86 = v13;
    v26 = 0;
    v27 = *(v3 + 64);
    v84 = v3 + 64;
    v28 = *(v3 + 32);
    sub_232B34F88();
    v31 = v30 & v29;
    v83 = (v32 + 63) >> 6;
    while (v31)
    {
      sub_232B351DC();
      v88 = v33;
      v35 = v34 | (v26 << 6);
      v36 = v86;
LABEL_11:
      v39 = *(*(v3 + 48) + 8 * v35);
      v40 = *(v3 + 56) + *(v89 + 72) * v35;
      sub_232B35030();
      sub_232B34E54(v41, v15, v42);
      v43 = sub_232B124A8(&qword_27DDC6AB8, &unk_232CF6DF0);
      v44 = *(v43 + 48);
      *v22 = v39;
      sub_232B35018();
      sub_232B34D9C(v15, v22 + v45, v46);
      sub_232B351FC();
      sub_232B12504(v47, v48, v49, v43);
LABEL_12:
      sub_232B34574(v22, v25);
      v50 = sub_232B35090();
      v52 = sub_232B124A8(v50, v51);
      sub_232B351B0(v25, 1, v52);
      if (v53)
      {
        goto LABEL_26;
      }

      v54 = *(v52 + 48);
      v55 = *v25;
      sub_232B35018();
      sub_232B34D9C(v25 + v56, v36, v57);
      v58 = sub_232B20520(v55);
      if ((v59 & 1) == 0)
      {
        goto LABEL_25;
      }

      v60 = v90;
      v61 = *(v1 + 56) + *(v89 + 72) * v58;
      sub_232B35030();
      sub_232B34E54(v62, v60, v63);
      v64 = *v60;
      v65 = *v36;
      v66 = *(*v60 + 16);
      if (v66 != *(*v36 + 16))
      {
        goto LABEL_24;
      }

      if (v66 && v64 != v65)
      {
        v67 = (v64 + 32);
        v68 = (v65 + 32);
        while (*v67 == *v68)
        {
          ++v67;
          ++v68;
          if (!--v66)
          {
            goto LABEL_20;
          }
        }

LABEL_24:
        sub_232B34DFC(v90, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
LABEL_25:
        sub_232B34DFC(v36, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
        goto LABEL_26;
      }

LABEL_20:
      v69 = v1;
      v70 = *(v87 + 20);
      sub_232CE9340();
      sub_232B34EB8();
      sub_232B34348(&qword_27DDC6590, v71);
      v72 = v25;
      v73 = v22;
      v74 = v15;
      v75 = v90;
      v76 = v36;
      v77 = sub_232CE9CF0();
      v78 = v75;
      v15 = v74;
      v22 = v73;
      v25 = v72;
      sub_232B34DFC(v78, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
      v79 = v76;
      v1 = v69;
      v3 = v85;
      sub_232B34DFC(v79, type metadata accessor for DocumentUnderstanding_HiddenLayerOutput);
      v31 = v88;
      if ((v77 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v36 = v86;
    while (1)
    {
      v37 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v37 >= v83)
      {
        v80 = sub_232B35090();
        v82 = sub_232B124A8(v80, v81);
        sub_232B12504(v22, 1, 1, v82);
        v88 = 0;
        goto LABEL_12;
      }

      v38 = *(v84 + 8 * v37);
      ++v26;
      if (v38)
      {
        v88 = (v38 - 1) & v38;
        v35 = __clz(__rbit64(v38)) | (v37 << 6);
        v26 = v37;
        goto LABEL_11;
      }
    }

    __break(1u);
    __break(1u);
  }
}

void sub_232B32808(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = *(a1 + 64);
    v6 = *(a1 + 32);
    sub_232B34F88();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
LABEL_4:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v15 = v12 | (v4 << 6);
      v16 = *(*(a1 + 56) + 8 * v15);
      v17 = sub_232B20520(*(*(a1 + 48) + 8 * v15));
      if ((v18 & 1) == 0)
      {
        return;
      }

      v19 = *(*(a2 + 56) + 8 * v17);
      v20 = *(v19 + 16);
      if (v20 != *(v16 + 16))
      {
        return;
      }

      if (v20)
      {
        v21 = v19 == v16;
      }

      else
      {
        v21 = 1;
      }

      if (!v21)
      {
        v22 = (v19 + 32);
        v23 = (v16 + 32);
        while (v20)
        {
          if (*v22 != *v23)
          {
            return;
          }

          ++v22;
          ++v23;
          if (!--v20)
          {
            goto LABEL_4;
          }
        }

        goto LABEL_25;
      }
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return;
      }

      v14 = *(a1 + 64 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_232B32944(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return sub_232B351A0();
  }

  if (!v2 || result == a2)
  {
    return sub_232B351A8();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_232B32998()
{
  sub_232B35110();
  sub_232B34F68();
  v6 = type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult();
  v7 = sub_232B34EF0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_232B34ED4();
  MEMORY[0x28223BE20](v10);
  sub_232B34F20();
  if (v20 && v5 && v4 != v1)
  {
    sub_232B34F08(v11);
    v13 = *(v12 + 72);
    while (1)
    {
      v14 = sub_232B35090();
      sub_232B34E54(v14, v15, v16);
      v17 = sub_232B35128();
      sub_232B34E54(v17, v18, v19);
      v20 = *v3 == *v2 && v3[1] == v2[1];
      if (!v20 && (sub_232CEA750() & 1) == 0)
      {
        break;
      }

      sub_232B34FB8();
      if (v22)
      {
        if (!v21)
        {
          break;
        }
      }

      else
      {
        sub_232B34FA4();
        if (v23)
        {
          break;
        }
      }

      v24 = *(v0 + 20);
      sub_232CE9340();
      sub_232B34EB8();
      sub_232B34348(&qword_27DDC6590, v25);
      v26 = sub_232CE9CF0();
      sub_232B34DFC(v2, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult);
      sub_232B35220();
      if (v26)
      {
        sub_232B34F50();
        if (!v20)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    sub_232B34DFC(v2, type metadata accessor for DocumentUnderstanding_ClientInterface_UserInterfaceUnderstandingResult);
    sub_232B35188();
  }

LABEL_21:
  sub_232B35104();
  sub_232B20A00();
}

void sub_232B32B74()
{
  sub_232B35110();
  sub_232B34F68();
  v5 = type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute();
  v6 = sub_232B34EF0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_232B34ED4();
  MEMORY[0x28223BE20](v9);
  sub_232B34F20();
  if (v25 && v4 && v3 != v1)
  {
    sub_232B34F08(v10);
    v12 = *(v11 + 72);
    while (1)
    {
      v13 = sub_232B35090();
      sub_232B34E54(v13, v14, v15);
      v16 = sub_232B35128();
      sub_232B34E54(v16, v17, v18);
      v19 = v0[5];
      sub_232B34F3C();
      if (v22)
      {
        if (!v20 || ((sub_232B2DF50(v21), v25) ? (v25 = v23 == v24) : (v25 = 0), !v25 && (sub_232CEA750() & 1) == 0))
        {
LABEL_47:
          sub_232B34DFC(v2, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
          sub_232B35188();
          break;
        }
      }

      else if (v20)
      {
        goto LABEL_47;
      }

      v26 = v0[6];
      sub_232B34F3C();
      if (v29)
      {
        if (!v27)
        {
          goto LABEL_47;
        }

        sub_232B2DF50(v28);
        v32 = v25 && v30 == v31;
        if (!v32 && (sub_232CEA750() & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else if (v27)
      {
        goto LABEL_47;
      }

      v33 = v0[7];
      sub_232B34F3C();
      if (v36)
      {
        if (!v34)
        {
          goto LABEL_47;
        }

        sub_232B2DF50(v35);
        v39 = v25 && v37 == v38;
        if (!v39 && (sub_232CEA750() & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else if (v34)
      {
        goto LABEL_47;
      }

      v40 = v0[8];
      sub_232B34F3C();
      if (v43)
      {
        if (!v41)
        {
          goto LABEL_47;
        }

        sub_232B2DF50(v42);
        v46 = v25 && v44 == v45;
        if (!v46 && (sub_232CEA750() & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else if (v41)
      {
        goto LABEL_47;
      }

      sub_232CE9340();
      sub_232B34EB8();
      sub_232B34348(&qword_27DDC6590, v47);
      v48 = sub_232B34FD0();
      sub_232B34DFC(v2, type metadata accessor for DocumentUnderstanding_DocumentUnderstandingServiceClient_DocumentAttribute);
      sub_232B35220();
      if (v48)
      {
        sub_232B34F50();
        if (!v25)
        {
          continue;
        }
      }

      break;
    }
  }

  sub_232B35104();
  sub_232B20A00();
}