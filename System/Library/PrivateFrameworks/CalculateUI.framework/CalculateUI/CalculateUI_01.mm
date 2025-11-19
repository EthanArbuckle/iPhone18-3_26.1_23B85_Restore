double sub_1C1DD951C()
{
  if ((*(v0 + 104) & 1) == 0)
  {
    return *(v0 + 96);
  }

  *(v0 + 96) = 0x3FECCCCCCCCCCCCDLL;
  *(v0 + 104) = 0;
  return 0.9;
}

double sub_1C1DD954C()
{
  if ((*(v0 + 120) & 1) == 0)
  {
    return *(v0 + 112);
  }

  v1 = sub_1C1DD951C();
  result = 53.4831924 / (v1 * v1 * 0.25);
  *(v0 + 112) = result;
  *(v0 + 120) = 0;
  return result;
}

double sub_1C1DD9598()
{
  if ((*(v0 + 136) & 1) == 0)
  {
    return *(v0 + 128);
  }

  result = sqrt(sub_1C1DD954C());
  *(v0 + 128) = result;
  *(v0 + 136) = 0;
  return result;
}

void sub_1C1DD95D0()
{
  if (*(v0 + 152))
  {
    v1 = sub_1C1DD9598();
    *(v0 + 144) = (v1 + v1) * sub_1C1DD951C();
    *(v0 + 152) = 0;
  }

  else
  {
    v2 = *(v0 + 144);
  }
}

double sub_1C1DD9614()
{
  if ((*(v0 + 176) & 1) == 0)
  {
    return *(v0 + 168);
  }

  *(v0 + 168) = 0x4018000000000000;
  *(v0 + 176) = 0;
  return 6.0;
}

uint64_t sub_1C1DD9638()
{
  v1 = v0[7];

  v2 = v0[9];
  sub_1C1DD0EB8(v0[8]);

  return swift_deallocClassInstance();
}

uint64_t sub_1C1DD96A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v68 = a3;
  v4 = sub_1C1E52DCC();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C540, &qword_1C1E56B60);
  v7 = *(*(v62 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v62);
  v67 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v54 - v12;
  v13 = sub_1C1E52B7C();
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C1E529CC();
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C548, &qword_1C1E56B68);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v60 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v54 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v58 = &v54 - v29;
  v30 = *(type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  v31 = v69;
  sub_1C1E527BC();
  v32 = v69;
  v33 = *(v18 + 28);
  v34 = *MEMORY[0x1E697F468];
  v35 = sub_1C1E52C8C();
  (*(*(v35 - 8) + 104))(&v21[v33], v34, v35);
  *v21 = v31;
  *(v21 + 1) = v32;
  v36 = *a1;
  v37 = *(a1 + 8);
  v55 = v16;
  v56 = v13;
  if (v37 == 1)
  {
    v38 = v57;
    if ((v36 & 1) == 0)
    {
LABEL_3:
      sub_1C1E5367C();
      v39 = sub_1C1E5366C();
      goto LABEL_6;
    }
  }

  else
  {

    sub_1C1E5490C();
    v40 = sub_1C1E52FBC();
    sub_1C1E5227C();

    sub_1C1E52B6C();
    swift_getAtKeyPath();
    sub_1C1DDEC6C(v36, 0);
    v41 = v16;
    v38 = v57;
    (*(v57 + 8))(v41, v13);
    if ((v69 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_1C1E52DEC();
  sub_1C1E5367C();
  v39 = sub_1C1E5366C();
LABEL_6:

  sub_1C1DDEC78(v21, v28);
  *&v28[*(v22 + 52)] = v39;
  *&v28[*(v22 + 56)] = 256;
  v42 = v58;
  sub_1C1DC18D0(v28, v58, &qword_1EBF1C548, &qword_1C1E56B68);
  v43 = v63;
  sub_1C1E52DDC();
  if (!v37)
  {

    sub_1C1E5490C();
    v45 = sub_1C1E52FBC();
    sub_1C1E5227C();

    v46 = v55;
    sub_1C1E52B6C();
    swift_getAtKeyPath();
    sub_1C1DDEC6C(v36, 0);
    (*(v38 + 8))(v46, v56);
    if ((v69 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v44 = sub_1C1E5367C();
    goto LABEL_11;
  }

  if (v36)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_1C1E5367C();
  v44 = sub_1C1E5366C();

LABEL_11:
  v47 = v61;
  (*(v64 + 32))(v61, v43, v65);
  *(v47 + *(v62 + 36)) = v44;
  v48 = v66;
  sub_1C1DC18D0(v47, v66, &qword_1EBF1C540, &qword_1C1E56B60);
  v49 = v60;
  sub_1C1DC1424(v42, v60, &qword_1EBF1C548, &qword_1C1E56B68);
  v50 = v67;
  sub_1C1DC1424(v48, v67, &qword_1EBF1C540, &qword_1C1E56B60);
  v51 = v68;
  sub_1C1DC1424(v49, v68, &qword_1EBF1C548, &qword_1C1E56B68);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C550, &qword_1C1E56B70);
  sub_1C1DC1424(v50, v51 + *(v52 + 48), &qword_1EBF1C540, &qword_1C1E56B60);
  sub_1C1DC1870(v48, &qword_1EBF1C540, &qword_1C1E56B60);
  sub_1C1DC1870(v42, &qword_1EBF1C548, &qword_1C1E56B68);
  sub_1C1DC1870(v50, &qword_1EBF1C540, &qword_1C1E56B60);
  return sub_1C1DC1870(v49, &qword_1EBF1C548, &qword_1C1E56B68);
}

double sub_1C1DD9D40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1C1E538DC();
  a3[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C530, &qword_1C1E56B50);
  sub_1C1DD96A4(v3, a1, a3 + *(v8 + 44));
  v9 = *(a2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  sub_1C1E538DC();
  sub_1C1E5281C();
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C538, &qword_1C1E56B58) + 36));
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  return result;
}

id sub_1C1DD9E20@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, int a3@<W6>, uint64_t a4@<X8>)
{
  v132 = a3;
  v131 = a2;
  v143 = a1;
  v140 = a4;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C620, &qword_1C1E56D28);
  v4 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v6 = &v127 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C628, &qword_1C1E56D30);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v139 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v127 - v11;
  v13 = type metadata accessor for CalculateScrubberView();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v138 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v147 = &v127 - v17;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C630, &qword_1C1E56D38);
  v18 = *(*(v145 - 8) + 64);
  MEMORY[0x1EEE9AC00](v145);
  v127 = &v127 - v19;
  v20 = sub_1C1E51E2C();
  v135 = *(v20 - 8);
  v136 = v20;
  v21 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C638, &qword_1C1E56D40);
  v24 = *(*(v134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v134);
  v26 = (&v127 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C640, &qword_1C1E56D48);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v137 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v146 = &v127 - v31;
  v32 = sub_1C1E545BC();
  v33 = sub_1C1E545BC();
  v148 = v32;
  v34 = [v32 rangeOfString_];
  v142 = v35;

  v36 = sub_1C1E545BC();
  v37 = sub_1C1E545BC();
  v144 = v36;
  v38 = [v36 rangeOfString_];
  v129 = v39;

  v40 = sub_1C1E51DEC();
  v141 = v12;
  v130 = v38;
  v128 = v23;
  if (v34 == v40 && v38 == sub_1C1E51DEC())
  {
    *&v155 = sub_1C1E545FC();
    *(&v155 + 1) = v41;
    sub_1C1DC733C();
    v42 = sub_1C1E5316C();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    sub_1C1E539BC();
    v50 = v49;
    v52 = v51;
    v53 = sub_1C1E5303C();
    sub_1C1E5264C();
    LOBYTE(v168[0]) = v46 & 1;
    LOBYTE(v167[0]) = 0;
    *&v160 = v42;
    *(&v160 + 1) = v44;
    LOBYTE(v161) = v46 & 1;
    *(&v161 + 1) = v48;
    *&v162 = v50;
    *(&v162 + 1) = v52;
    LOBYTE(v163) = v53;
    *(&v163 + 1) = v54;
    *v164 = v55;
    *&v164[8] = v56;
    *&v164[16] = v57;
    v164[24] = 0;
    v151 = v162;
    v152 = v163;
    *v153 = *v164;
    *&v153[9] = *&v164[9];
    v149 = v160;
    v150 = v161;
    v169 = 0;
    v154 = 0;
LABEL_6:
    sub_1C1DC1424(&v160, &v155, &qword_1EBF1C660, &qword_1C1E56D68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C660, &qword_1C1E56D68);
    sub_1C1DDEE18();
    sub_1C1E52CEC();
    v79 = v158;
    v26[2] = v157;
    v26[3] = v79;
    v26[4] = v159[0];
    *(v26 + 74) = *(v159 + 10);
    v80 = v156;
    *v26 = v155;
    v26[1] = v80;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C698, &qword_1C1E56D78);
    sub_1C1DDF088();
    sub_1C1DDEF84();
    v81 = v146;
    sub_1C1E52CEC();
    v82 = &v160;
    v83 = &qword_1EBF1C660;
    v84 = &qword_1C1E56D68;
LABEL_7:
    sub_1C1DC1870(v82, v83, v84);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C648, &qword_1C1E56D50);
    (*(*(v85 - 8) + 56))(v81, 0, 1, v85);
    goto LABEL_8;
  }

  if (v34 >= 1)
  {
    v58 = [v148 substringToIndex_];
    v59 = sub_1C1E545FC();
    v61 = v60;

    *&v155 = v59;
    *(&v155 + 1) = v61;
    sub_1C1E51E0C();
    sub_1C1DC733C();
    v62 = sub_1C1E549FC();
    v64 = v63;
    (*(v135 + 8))(v23, v136);

    *&v155 = v62;
    *(&v155 + 1) = v64;
    v65 = sub_1C1E5316C();
    v67 = v66;
    LOBYTE(v61) = v68;
    v70 = v69;
    sub_1C1E539BC();
    v72 = v71;
    v74 = v73;
    LOBYTE(v64) = sub_1C1E5303C();
    sub_1C1E5264C();
    v169 = v61 & 1;
    v166 = 0;
    *&v160 = v65;
    *(&v160 + 1) = v67;
    LOBYTE(v161) = v61 & 1;
    *(&v161 + 1) = v168[0];
    DWORD1(v161) = *(v168 + 3);
    *(&v161 + 1) = v70;
    *&v162 = v72;
    *(&v162 + 1) = v74;
    LOBYTE(v163) = v64;
    DWORD1(v163) = *(v167 + 3);
    *(&v163 + 1) = v167[0];
    *(&v163 + 1) = v75;
    *v164 = v76;
    *&v164[8] = v77;
    *&v164[16] = v78;
    v164[24] = 0;
    v151 = v162;
    v152 = v163;
    *v153 = *v164;
    *&v153[9] = *&v164[9];
    v149 = v160;
    v150 = v161;
    v165 = 1;
    v154 = 1;
    goto LABEL_6;
  }

  if (v38 >= 1)
  {
    v155 = xmmword_1C1E56A00;
    LOBYTE(v156) = 0;
    *(&v156 + 1) = MEMORY[0x1E69E7CC0];
    v117 = v127;
    sub_1C1E533CC();
    sub_1C1DC1424(v117, v26, &qword_1EBF1C630, &qword_1C1E56D38);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C698, &qword_1C1E56D78);
    sub_1C1DDF088();
    sub_1C1DDEF84();
    v81 = v146;
    sub_1C1E52CEC();
    v82 = v117;
    v83 = &qword_1EBF1C630;
    v84 = &qword_1C1E56D38;
    goto LABEL_7;
  }

  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C648, &qword_1C1E56D50);
  (*(*(v126 - 8) + 56))(v146, 1, 1, v126);
LABEL_8:
  LOBYTE(v155) = 1;

  result = CalculateScrubberView.init(scrubber:isCompact:style:)(v86, 1, &v155, v147);
  v88 = v34 + v142;
  if (__OFADD__(v34, v142))
  {
    __break(1u);
  }

  else
  {
    v89 = v148;
    result = [v148 length];
    if (v88 < result)
    {
      v90 = [v89 substringFromIndex_];
      v91 = sub_1C1E545FC();
      v93 = v92;

      *&v155 = v91;
      *(&v155 + 1) = v93;
      v94 = v128;
      sub_1C1E51E0C();
      sub_1C1DC733C();
      v95 = sub_1C1E549FC();
      v97 = v96;
      (*(v135 + 8))(v94, v136);

      *&v155 = v95;
      *(&v155 + 1) = v97;
      v98 = sub_1C1E5316C();
      v100 = v99;
      LOBYTE(v94) = v101;
      v103 = v102;
      sub_1C1E539AC();
      v105 = v104;
      v107 = v106;
      v108 = sub_1C1E5304C();
      sub_1C1E5264C();
      LOBYTE(v155) = v94 & 1;
      LOBYTE(v149) = 0;
      *v6 = v98;
      *(v6 + 1) = v100;
      v6[16] = v94 & 1;
      *(v6 + 3) = v103;
      *(v6 + 4) = v105;
      *(v6 + 5) = v107;
      v6[48] = v108;
      *(v6 + 7) = v109;
      *(v6 + 8) = v110;
      *(v6 + 9) = v111;
      *(v6 + 10) = v112;
      v6[88] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C660, &qword_1C1E56D68);
      sub_1C1DDEE18();
      sub_1C1DDEF84();
      v113 = v141;
      sub_1C1E52CEC();
      goto LABEL_14;
    }

    v113 = v141;
    if (!__OFADD__(v130, v129))
    {
      v114 = v130 + v129;
      if (v114 >= [v144 length])
      {
        v116 = 1;
        goto LABEL_18;
      }

      v155 = xmmword_1C1E56A00;
      LOBYTE(v156) = 0;
      *(&v156 + 1) = MEMORY[0x1E69E7CC0];
      v115 = v127;
      sub_1C1E533CC();
      sub_1C1DC1424(v115, v6, &qword_1EBF1C630, &qword_1C1E56D38);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C660, &qword_1C1E56D68);
      sub_1C1DDEE18();
      sub_1C1DDEF84();
      sub_1C1E52CEC();
      sub_1C1DC1870(v115, &qword_1EBF1C630, &qword_1C1E56D38);
LABEL_14:
      v116 = 0;
LABEL_18:
      v118 = v140;
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C650, &qword_1C1E56D58);
      (*(*(v119 - 8) + 56))(v113, v116, 1, v119);
      v120 = v146;
      v121 = v137;
      sub_1C1DC1424(v146, v137, &qword_1EBF1C640, &qword_1C1E56D48);
      v122 = v147;
      v123 = v138;
      sub_1C1DDED54(v147, v138);
      v124 = v139;
      sub_1C1DC1424(v113, v139, &qword_1EBF1C628, &qword_1C1E56D30);
      sub_1C1DC1424(v121, v118, &qword_1EBF1C640, &qword_1C1E56D48);
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C658, &qword_1C1E56D60);
      sub_1C1DDED54(v123, v118 + *(v125 + 48));
      sub_1C1DC1424(v124, v118 + *(v125 + 64), &qword_1EBF1C628, &qword_1C1E56D30);

      sub_1C1DC1870(v113, &qword_1EBF1C628, &qword_1C1E56D30);
      sub_1C1DDEDB8(v122, type metadata accessor for CalculateScrubberView);
      sub_1C1DC1870(v120, &qword_1EBF1C640, &qword_1C1E56D48);
      sub_1C1DC1870(v124, &qword_1EBF1C628, &qword_1C1E56D30);
      sub_1C1DDEDB8(v123, type metadata accessor for CalculateScrubberView);
      return sub_1C1DC1870(v121, &qword_1EBF1C640, &qword_1C1E56D48);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1DDAA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *v2;
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  sub_1C1E51E8C();
  sub_1C1E51E8C();
  result = sub_1C1E00C70();
  v6 = *(a1 + 24);
  if (v6)
  {

    sub_1C1DD9E20(v6, 0, 1, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1DDAC14@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v9 = *v3;
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  sub_1C1E51E8C();
  sub_1C1E51E8C();
  result = sub_1C1E00C70();
  v8 = *(a1 + 32);
  if (v8)
  {

    sub_1C1DD9E20(v8, 0, a2 & 1, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1DDADAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *v2;
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  sub_1C1E51E8C();
  sub_1C1E51E8C();
  result = sub_1C1E00C70();
  v6 = *(a1 + 40);
  if (v6)
  {

    sub_1C1DD9E20(v6, 0, 1, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1DDAF40@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v9 = *v3;
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  sub_1C1E51E8C();
  sub_1C1E51E8C();
  result = sub_1C1E00C70();
  v8 = *(a1 + 48);
  if (v8)
  {

    sub_1C1DD9E20(v8, 0, a2 & 1, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1DDB0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *v2;
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  sub_1C1E51E8C();
  sub_1C1E51E8C();
  result = sub_1C1E00C70();
  v6 = *(a1 + 56);
  if (v6)
  {

    sub_1C1DD9E20(v6, 0, 1, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1DDB26C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v9 = *v3;
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  sub_1C1E51E8C();
  sub_1C1E51E8C();
  result = sub_1C1E00C70();
  v8 = *(a1 + 64);
  if (v8)
  {

    sub_1C1DD9E20(v8, 0, a2 & 1, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1DDB404@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5C8, &qword_1C1E56C10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v11 = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5D0, &qword_1C1E56C18);
  sub_1C1DC1124(&qword_1EBF1C5D8, &qword_1EBF1C5D0, &qword_1C1E56C18);
  sub_1C1E5373C();
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v12 = *(v2 + 20);
  v21 = 0x4042000000000000;
  sub_1C1DDEBFC();
  sub_1C1E527AC();
  sub_1C1DC1124(&qword_1EBF1C5E0, &qword_1EBF1C5C8, &qword_1C1E56C10);
  sub_1C1DDF040(&qword_1EBF1C5E8, type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle);
  v13 = v20;
  sub_1C1E532FC();
  sub_1C1DDEDB8(v5, type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle);
  (*(v7 + 8))(v10, v6);
  v14 = sub_1C1E36158();
  swift_getKeyPath();
  v21 = v14;
  sub_1C1DDF040(&qword_1EDE74850, type metadata accessor for GraphViewModel);

  sub_1C1E520BC();

  v15 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin;
  swift_beginAccess();
  LOBYTE(v5) = *(v14 + v15);

  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = (v5 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5B8, &qword_1C1E56C00);
  v19 = (v13 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = sub_1C1DDF1C4;
  v19[2] = v17;
  return result;
}

uint64_t sub_1C1DDB834@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1E536AC();
  *a1 = result;
  return result;
}

uint64_t sub_1C1DDB874@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5C8, &qword_1C1E56C10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v11 = *v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5D0, &qword_1C1E56C18);
  sub_1C1DC1124(&qword_1EBF1C5D8, &qword_1EBF1C5D0, &qword_1C1E56C18);
  sub_1C1E5373C();
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v12 = *(v2 + 20);
  v21 = 0x4042000000000000;
  sub_1C1DDEBFC();
  sub_1C1E527AC();
  sub_1C1DC1124(&qword_1EBF1C5E0, &qword_1EBF1C5C8, &qword_1C1E56C10);
  sub_1C1DDF040(&qword_1EBF1C5E8, type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle);
  v13 = v20;
  sub_1C1E532FC();
  sub_1C1DDEDB8(v5, type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle);
  (*(v7 + 8))(v10, v6);
  v14 = sub_1C1E36158();
  swift_getKeyPath();
  v21 = v14;
  sub_1C1DDF040(&qword_1EDE74850, type metadata accessor for GraphViewModel);

  sub_1C1E520BC();

  v15 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes;
  swift_beginAccess();
  LOBYTE(v5) = *(v14 + v15);

  KeyPath = swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = (v5 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5B8, &qword_1C1E56C00);
  v19 = (v13 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = sub_1C1DDED0C;
  v19[2] = v17;
  return result;
}

uint64_t sub_1C1DDBC2C(uint64_t a1, void (*a2)(void))
{
  sub_1C1E36158();

  a2(0);
}

uint64_t sub_1C1DDBCF4@<X0>(uint64_t a1@<X8>)
{
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE75DC0;
  result = sub_1C1E5314C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1C1DDBDBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1E536AC();
  *a1 = result;
  return result;
}

uint64_t CalculateGraphBoundsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C488, &qword_1C1E56A10);
  v2 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v4 = &v42 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C490, &qword_1C1E56A18);
  v43 = *(v46 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v42 = &v42 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C498, &qword_1C1E56A20);
  v7 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C4A0, &qword_1C1E56A28);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C4A8, &qword_1C1E56A30);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - v17;
  v19 = *v1;
  v20 = [objc_opt_self() currentDevice];
  v21 = [v20 userInterfaceIdiom];

  if (v21)
  {
    goto LABEL_3;
  }

  v22 = [objc_opt_self() mainScreen];
  [v22 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v50.origin.x = v24;
  v50.origin.y = v26;
  v50.size.width = v28;
  v50.size.height = v30;
  if (CGRectGetWidth(v50) > 450.0)
  {
LABEL_3:
    *v13 = sub_1C1E52C9C();
    *(v13 + 1) = 0;
    v13[16] = 0;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C4B0, &qword_1C1E56A38);
    sub_1C1DDC34C(v19, &v13[*(v31 + 44)]);
    *&v13[*(v10 + 36)] = 257;
    v32 = sub_1C1DDE684();
    sub_1C1E533DC();
    sub_1C1DC1870(v13, &qword_1EBF1C4A0, &qword_1C1E56A28);
    (*(v15 + 16))(v9, v18, v14);
    swift_storeEnumTagMultiPayload();
    v48 = v10;
    v49 = v32;
    swift_getOpaqueTypeConformance2();
    v33 = sub_1C1DDE73C();
    v48 = v45;
    v49 = v33;
    swift_getOpaqueTypeConformance2();
    sub_1C1E52CEC();
    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    *v4 = sub_1C1E52C9C();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C4E8, &qword_1C1E56A50);
    sub_1C1DDD35C(v19, &v4[*(v35 + 44)]);
    v36 = v45;
    *&v4[*(v45 + 36)] = 257;
    v37 = sub_1C1DDE73C();
    v38 = v42;
    sub_1C1E533DC();
    sub_1C1DC1870(v4, &qword_1EBF1C488, &qword_1C1E56A10);
    v39 = v43;
    v40 = v46;
    (*(v43 + 16))(v9, v38, v46);
    swift_storeEnumTagMultiPayload();
    v41 = sub_1C1DDE684();
    v48 = v10;
    v49 = v41;
    swift_getOpaqueTypeConformance2();
    v48 = v36;
    v49 = v37;
    swift_getOpaqueTypeConformance2();
    sub_1C1E52CEC();
    return (*(v39 + 8))(v38, v40);
  }
}

uint64_t sub_1C1DDC34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6A8, &qword_1C1E56D80);
  v118 = *(v120 - 8);
  v3 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v117 = &v106 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6B0, &qword_1C1E56D88);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v106 - v7;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6B8, &qword_1C1E56D90);
  v9 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v106 - v10;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6C0, &qword_1C1E56D98);
  v11 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v112 = &v106 - v12;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6C8, &qword_1C1E56DA0);
  v13 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v114 = &v106 - v14;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6D0, &qword_1C1E56DA8);
  v15 = *(*(v113 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v113);
  v116 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v111 = &v106 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v115 = &v106 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6D8, &qword_1C1E56DB0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v106 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6E0, &qword_1C1E56DB8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v106 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6E8, &qword_1C1E56DC0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v109 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v106 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v106 - v36;
  swift_getKeyPath();
  *&v128 = a1;
  sub_1C1DDF040(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v38 = *(a1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds);
  v39 = 1;
  if (v38)
  {
    v40 = *(a1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds);

    *v24 = sub_1C1E538DC();
    *(v24 + 1) = v41;
    *(v24 + 2) = 0;
    v24[24] = 1;
    *(v24 + 4) = 0;
    v24[40] = 1;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6F0, &qword_1C1E56DC8);
    sub_1C1DDCCE8(a1, v38, &v24[*(v42 + 44)]);
    sub_1C1E538DC();
    sub_1C1E529FC();
    sub_1C1DC18D0(v24, v28, &qword_1EBF1C6D8, &qword_1C1E56DB0);
    v43 = &v28[*(v25 + 36)];
    v44 = v126;
    *(v43 + 4) = v125;
    *(v43 + 5) = v44;
    *(v43 + 6) = v127;
    v45 = v122;
    *v43 = v121;
    *(v43 + 1) = v45;
    v46 = v124;
    *(v43 + 2) = v123;
    *(v43 + 3) = v46;
    v47 = sub_1C1E5300C();
    sub_1C1E5264C();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    sub_1C1DC18D0(v28, v35, &qword_1EBF1C6E0, &qword_1C1E56DB8);
    v56 = &v35[*(v29 + 36)];
    *v56 = v47;
    *(v56 + 1) = v49;
    *(v56 + 2) = v51;
    *(v56 + 3) = v53;
    *(v56 + 4) = v55;
    v56[40] = 0;
    sub_1C1DC18D0(v35, v37, &qword_1EBF1C6E8, &qword_1C1E56DC0);
    *v8 = sub_1C1E52C0C();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C6F8, &qword_1C1E56DD0);
    sub_1C1DDE4B0(a1, &v8[*(v57 + 44)]);
    sub_1C1E538DC();
    sub_1C1E529FC();
    v58 = v108;
    sub_1C1DC18D0(v8, v108, &qword_1EBF1C6B0, &qword_1C1E56D88);
    v59 = (v58 + *(v106 + 36));
    v60 = v133;
    v59[4] = v132;
    v59[5] = v60;
    v59[6] = v134;
    v61 = v129;
    *v59 = v128;
    v59[1] = v61;
    v62 = v131;
    v59[2] = v130;
    v59[3] = v62;
    v63 = sub_1C1E52FFC();
    sub_1C1E5264C();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v72 = v58;
    v73 = v112;
    sub_1C1DC18D0(v72, v112, &qword_1EBF1C6B8, &qword_1C1E56D90);
    v74 = v73 + *(v107 + 36);
    *v74 = v63;
    *(v74 + 8) = v65;
    *(v74 + 16) = v67;
    *(v74 + 24) = v69;
    *(v74 + 32) = v71;
    *(v74 + 40) = 0;
    v75 = sub_1C1E5302C();
    sub_1C1E5264C();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v84 = v73;
    v85 = v114;
    sub_1C1DC18D0(v84, v114, &qword_1EBF1C6C0, &qword_1C1E56D98);
    v86 = v85 + *(v110 + 36);
    *v86 = v75;
    *(v86 + 8) = v77;
    *(v86 + 16) = v79;
    *(v86 + 24) = v81;
    *(v86 + 32) = v83;
    *(v86 + 40) = 0;
    v87 = sub_1C1E5301C();
    sub_1C1E5264C();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = v111;
    sub_1C1DC18D0(v85, v111, &qword_1EBF1C6C8, &qword_1C1E56DA0);
    v97 = v96 + *(v113 + 36);
    *v97 = v87;
    *(v97 + 8) = v89;
    *(v97 + 16) = v91;
    *(v97 + 24) = v93;
    *(v97 + 32) = v95;
    *(v97 + 40) = 0;
    v98 = v115;
    sub_1C1DC18D0(v96, v115, &qword_1EBF1C6D0, &qword_1C1E56DA8);
    v99 = v109;
    sub_1C1DC1424(v37, v109, &qword_1EBF1C6E8, &qword_1C1E56DC0);
    v100 = v116;
    sub_1C1DC1424(v98, v116, &qword_1EBF1C6D0, &qword_1C1E56DA8);
    v101 = v117;
    sub_1C1DC1424(v99, v117, &qword_1EBF1C6E8, &qword_1C1E56DC0);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C700, &qword_1C1E56DD8);
    sub_1C1DC1424(v100, v101 + *(v102 + 48), &qword_1EBF1C6D0, &qword_1C1E56DA8);

    sub_1C1DC1870(v98, &qword_1EBF1C6D0, &qword_1C1E56DA8);
    sub_1C1DC1870(v37, &qword_1EBF1C6E8, &qword_1C1E56DC0);
    sub_1C1DC1870(v100, &qword_1EBF1C6D0, &qword_1C1E56DA8);
    sub_1C1DC1870(v99, &qword_1EBF1C6E8, &qword_1C1E56DC0);
    v103 = v119;
    sub_1C1DC18D0(v101, v119, &qword_1EBF1C6A8, &qword_1C1E56D80);
    v39 = 0;
    v104 = v103;
  }

  else
  {
    v104 = v119;
  }

  return (*(v118 + 56))(v104, v39, 1, v120);
}

uint64_t sub_1C1DDCCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C708, &qword_1C1E56DE0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C710, &qword_1C1E56DE8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v39 = (&v35 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v35 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v35 - v23;
  *v24 = 0;
  v25 = 1;
  v24[8] = 1;
  sub_1C1DDD170(a1, a2, sub_1C1DDAA80, sub_1C1DDAC14, &v35 + *(v22 + 36) - v23);
  *v21 = 0;
  v21[8] = 1;
  v26 = &v21[*(v11 + 36)];
  v36 = a2;
  sub_1C1DDD170(a1, a2, sub_1C1DDADAC, sub_1C1DDAF40, v26);
  swift_getKeyPath();
  v40 = a1;
  sub_1C1DDF040(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v27 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  swift_beginAccess();
  if (*(a1 + v27) == 1)
  {
    v28 = v39;
    *v39 = 0;
    *(v28 + 8) = 1;
    sub_1C1DDD170(a1, v36, sub_1C1DDB0D8, sub_1C1DDB26C, v28 + *(v11 + 36));
    sub_1C1DC18D0(v28, v10, &qword_1EBF1C710, &qword_1C1E56DE8);
    v25 = 0;
  }

  (*(v12 + 56))(v10, v25, 1, v11);
  v29 = v39;
  sub_1C1DC1424(v24, v39, &qword_1EBF1C710, &qword_1C1E56DE8);
  sub_1C1DC1424(v21, v16, &qword_1EBF1C710, &qword_1C1E56DE8);
  v30 = v38;
  sub_1C1DC1424(v10, v38, &qword_1EBF1C708, &qword_1C1E56DE0);
  v31 = v10;
  v32 = v37;
  sub_1C1DC1424(v29, v37, &qword_1EBF1C710, &qword_1C1E56DE8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C718, &qword_1C1E56DF0);
  sub_1C1DC1424(v16, v32 + *(v33 + 48), &qword_1EBF1C710, &qword_1C1E56DE8);
  sub_1C1DC1424(v30, v32 + *(v33 + 64), &qword_1EBF1C708, &qword_1C1E56DE0);
  sub_1C1DC1870(v31, &qword_1EBF1C708, &qword_1C1E56DE0);
  sub_1C1DC1870(v21, &qword_1EBF1C710, &qword_1C1E56DE8);
  sub_1C1DC1870(v24, &qword_1EBF1C710, &qword_1C1E56DE8);
  sub_1C1DC1870(v30, &qword_1EBF1C708, &qword_1C1E56DE0);
  sub_1C1DC1870(v16, &qword_1EBF1C710, &qword_1C1E56DE8);
  return sub_1C1DC1870(v29, &qword_1EBF1C710, &qword_1C1E56DE8);
}

uint64_t sub_1C1DDD170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t, void)@<X3>, uint64_t a5@<X8>)
{
  v25 = a4;
  v26 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C720, &qword_1C1E56DF8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v24 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v24 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - v19;
  v27 = a1;
  a3(a2);
  v27 = a1;
  v25(a2, 0);
  sub_1C1DC1424(v20, v15, &qword_1EBF1C720, &qword_1C1E56DF8);
  sub_1C1DC1424(v18, v12, &qword_1EBF1C720, &qword_1C1E56DF8);
  v21 = v26;
  sub_1C1DC1424(v15, v26, &qword_1EBF1C720, &qword_1C1E56DF8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C728, &qword_1C1E56E00);
  sub_1C1DC1424(v12, v21 + *(v22 + 48), &qword_1EBF1C720, &qword_1C1E56DF8);
  sub_1C1DC1870(v18, &qword_1EBF1C720, &qword_1C1E56DF8);
  sub_1C1DC1870(v20, &qword_1EBF1C720, &qword_1C1E56DF8);
  sub_1C1DC1870(v12, &qword_1EBF1C720, &qword_1C1E56DF8);
  return sub_1C1DC1870(v15, &qword_1EBF1C720, &qword_1C1E56DF8);
}

uint64_t sub_1C1DDD35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C558, &qword_1C1E56B78);
  v118 = *(v120 - 8);
  v3 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v117 = &v106 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C560, &qword_1C1E56B80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v106 - v7;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C568, &qword_1C1E56B88);
  v9 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v106 - v10;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C570, &qword_1C1E56B90);
  v11 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v112 = &v106 - v12;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C578, &qword_1C1E56B98);
  v13 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v114 = &v106 - v14;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C580, &qword_1C1E56BA0);
  v15 = *(*(v113 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v113);
  v116 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v111 = &v106 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v115 = &v106 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C588, &qword_1C1E56BA8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v106 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C590, &qword_1C1E56BB0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v106 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C598, &qword_1C1E56BB8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v109 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v106 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v106 - v36;
  swift_getKeyPath();
  *&v128 = a1;
  sub_1C1DDF040(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v38 = *(a1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds);
  v39 = 1;
  if (v38)
  {
    v40 = *(a1 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__bounds);

    *v24 = sub_1C1E538DC();
    *(v24 + 1) = v41;
    *(v24 + 2) = 0;
    v24[24] = 1;
    *(v24 + 4) = 0;
    v24[40] = 1;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5A0, &qword_1C1E56BE8);
    sub_1C1DDDCF8(a1, v38, &v24[*(v42 + 44)]);
    sub_1C1E538DC();
    sub_1C1E529FC();
    sub_1C1DC18D0(v24, v28, &qword_1EBF1C588, &qword_1C1E56BA8);
    v43 = &v28[*(v25 + 36)];
    v44 = v126;
    *(v43 + 4) = v125;
    *(v43 + 5) = v44;
    *(v43 + 6) = v127;
    v45 = v122;
    *v43 = v121;
    *(v43 + 1) = v45;
    v46 = v124;
    *(v43 + 2) = v123;
    *(v43 + 3) = v46;
    v47 = sub_1C1E5300C();
    sub_1C1E5264C();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    sub_1C1DC18D0(v28, v35, &qword_1EBF1C590, &qword_1C1E56BB0);
    v56 = &v35[*(v29 + 36)];
    *v56 = v47;
    *(v56 + 1) = v49;
    *(v56 + 2) = v51;
    *(v56 + 3) = v53;
    *(v56 + 4) = v55;
    v56[40] = 0;
    sub_1C1DC18D0(v35, v37, &qword_1EBF1C598, &qword_1C1E56BB8);
    *v8 = sub_1C1E52C9C();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5A8, &qword_1C1E56BF0);
    sub_1C1DDE4B0(a1, &v8[*(v57 + 44)]);
    sub_1C1E538DC();
    sub_1C1E529FC();
    v58 = v108;
    sub_1C1DC18D0(v8, v108, &qword_1EBF1C560, &qword_1C1E56B80);
    v59 = (v58 + *(v106 + 36));
    v60 = v133;
    v59[4] = v132;
    v59[5] = v60;
    v59[6] = v134;
    v61 = v129;
    *v59 = v128;
    v59[1] = v61;
    v62 = v131;
    v59[2] = v130;
    v59[3] = v62;
    v63 = sub_1C1E52FFC();
    sub_1C1E5264C();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v72 = v58;
    v73 = v112;
    sub_1C1DC18D0(v72, v112, &qword_1EBF1C568, &qword_1C1E56B88);
    v74 = v73 + *(v107 + 36);
    *v74 = v63;
    *(v74 + 8) = v65;
    *(v74 + 16) = v67;
    *(v74 + 24) = v69;
    *(v74 + 32) = v71;
    *(v74 + 40) = 0;
    v75 = sub_1C1E5302C();
    sub_1C1E5264C();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v84 = v73;
    v85 = v114;
    sub_1C1DC18D0(v84, v114, &qword_1EBF1C570, &qword_1C1E56B90);
    v86 = v85 + *(v110 + 36);
    *v86 = v75;
    *(v86 + 8) = v77;
    *(v86 + 16) = v79;
    *(v86 + 24) = v81;
    *(v86 + 32) = v83;
    *(v86 + 40) = 0;
    v87 = sub_1C1E5301C();
    sub_1C1E5264C();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = v111;
    sub_1C1DC18D0(v85, v111, &qword_1EBF1C578, &qword_1C1E56B98);
    v97 = v96 + *(v113 + 36);
    *v97 = v87;
    *(v97 + 8) = v89;
    *(v97 + 16) = v91;
    *(v97 + 24) = v93;
    *(v97 + 32) = v95;
    *(v97 + 40) = 0;
    v98 = v115;
    sub_1C1DC18D0(v96, v115, &qword_1EBF1C580, &qword_1C1E56BA0);
    v99 = v109;
    sub_1C1DC1424(v37, v109, &qword_1EBF1C598, &qword_1C1E56BB8);
    v100 = v116;
    sub_1C1DC1424(v98, v116, &qword_1EBF1C580, &qword_1C1E56BA0);
    v101 = v117;
    sub_1C1DC1424(v99, v117, &qword_1EBF1C598, &qword_1C1E56BB8);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5B0, &qword_1C1E56BF8);
    sub_1C1DC1424(v100, v101 + *(v102 + 48), &qword_1EBF1C580, &qword_1C1E56BA0);

    sub_1C1DC1870(v98, &qword_1EBF1C580, &qword_1C1E56BA0);
    sub_1C1DC1870(v37, &qword_1EBF1C598, &qword_1C1E56BB8);
    sub_1C1DC1870(v100, &qword_1EBF1C580, &qword_1C1E56BA0);
    sub_1C1DC1870(v99, &qword_1EBF1C598, &qword_1C1E56BB8);
    v103 = v119;
    sub_1C1DC18D0(v101, v119, &qword_1EBF1C558, &qword_1C1E56B78);
    v39 = 0;
    v104 = v103;
  }

  else
  {
    v104 = v119;
  }

  return (*(v118 + 56))(v104, v39, 1, v120);
}

uint64_t sub_1C1DDDCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5F0, &qword_1C1E56CD0);
  v77 = *(v79 - 8);
  v5 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5F8, &qword_1C1E56CD8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v78 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v73 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C600, &qword_1C1E56CE0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v73 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v73 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v73 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C608, &qword_1C1E56CE8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v80 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v87 = &v73 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v86 = (&v73 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v73 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v73 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v73 - v36;
  *v37 = 0;
  v38 = 1;
  v37[8] = 1;
  v39 = *(v35 + 36);
  v89 = a1;
  v83 = &v73 - v36;
  sub_1C1DDAA80(a2, &v73 + v39 - v36);
  *v34 = 0;
  v34[8] = 1;
  v40 = *(v21 + 36);
  v89 = a1;
  v84 = v34;
  sub_1C1DDAC14(a2, 1, &v34[v40]);
  *v20 = 0;
  v20[8] = 1;
  v41 = *(v21 + 36);
  v89 = a1;
  sub_1C1DDADAC(a2, &v20[v41]);
  v42 = sub_1C1E5301C();
  sub_1C1E5264C();
  v43 = *(v12 + 36);
  v85 = v20;
  v44 = &v20[v43];
  *v44 = v42;
  *(v44 + 1) = v45;
  *(v44 + 2) = v46;
  *(v44 + 3) = v47;
  *(v44 + 4) = v48;
  v44[40] = 0;
  *v31 = 0;
  v31[8] = 1;
  v49 = *(v21 + 36);
  v89 = a1;
  v76 = v31;
  sub_1C1DDAF40(a2, 1, &v31[v49]);
  swift_getKeyPath();
  v89 = a1;
  sub_1C1DDF040(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v50 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  swift_beginAccess();
  if (*(a1 + v50) == 1)
  {
    *v18 = 0;
    v18[8] = 1;
    v51 = *(v21 + 36);
    v88 = a1;
    sub_1C1DDB0D8(a2, &v18[v51]);
    v52 = sub_1C1E5301C();
    sub_1C1E5264C();
    v53 = &v18[*(v12 + 36)];
    *v53 = v52;
    *(v53 + 1) = v54;
    *(v53 + 2) = v55;
    *(v53 + 3) = v56;
    *(v53 + 4) = v57;
    v53[40] = 0;
    v58 = v86;
    *v86 = 0;
    *(v58 + 8) = 1;
    v59 = *(v21 + 36);
    v88 = a1;
    sub_1C1DDB26C(a2, 1, v58 + v59);
    v60 = v73;
    sub_1C1DC1424(v18, v73, &qword_1EBF1C600, &qword_1C1E56CE0);
    v61 = v87;
    sub_1C1DC1424(v58, v87, &qword_1EBF1C608, &qword_1C1E56CE8);
    v62 = v74;
    sub_1C1DC1424(v60, v74, &qword_1EBF1C600, &qword_1C1E56CE0);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C618, &qword_1C1E56D20);
    sub_1C1DC1424(v61, v62 + *(v63 + 48), &qword_1EBF1C608, &qword_1C1E56CE8);
    sub_1C1DC1870(v58, &qword_1EBF1C608, &qword_1C1E56CE8);
    sub_1C1DC1870(v18, &qword_1EBF1C600, &qword_1C1E56CE0);
    sub_1C1DC1870(v61, &qword_1EBF1C608, &qword_1C1E56CE8);
    sub_1C1DC1870(v60, &qword_1EBF1C600, &qword_1C1E56CE0);
    sub_1C1DC18D0(v62, v82, &qword_1EBF1C5F0, &qword_1C1E56CD0);
    v38 = 0;
  }

  v64 = v82;
  (*(v77 + 56))(v82, v38, 1, v79);
  v65 = v86;
  sub_1C1DC1424(v83, v86, &qword_1EBF1C608, &qword_1C1E56CE8);
  v66 = v87;
  sub_1C1DC1424(v84, v87, &qword_1EBF1C608, &qword_1C1E56CE8);
  sub_1C1DC1424(v85, v18, &qword_1EBF1C600, &qword_1C1E56CE0);
  v67 = v76;
  v68 = v80;
  sub_1C1DC1424(v76, v80, &qword_1EBF1C608, &qword_1C1E56CE8);
  v69 = v78;
  sub_1C1DC1424(v64, v78, &qword_1EBF1C5F8, &qword_1C1E56CD8);
  v75 = v18;
  v70 = v81;
  sub_1C1DC1424(v65, v81, &qword_1EBF1C608, &qword_1C1E56CE8);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C610, &qword_1C1E56D18);
  sub_1C1DC1424(v66, v70 + v71[12], &qword_1EBF1C608, &qword_1C1E56CE8);
  sub_1C1DC1424(v18, v70 + v71[16], &qword_1EBF1C600, &qword_1C1E56CE0);
  sub_1C1DC1424(v68, v70 + v71[20], &qword_1EBF1C608, &qword_1C1E56CE8);
  sub_1C1DC1424(v69, v70 + v71[24], &qword_1EBF1C5F8, &qword_1C1E56CD8);
  sub_1C1DC1870(v64, &qword_1EBF1C5F8, &qword_1C1E56CD8);
  sub_1C1DC1870(v67, &qword_1EBF1C608, &qword_1C1E56CE8);
  sub_1C1DC1870(v85, &qword_1EBF1C600, &qword_1C1E56CE0);
  sub_1C1DC1870(v84, &qword_1EBF1C608, &qword_1C1E56CE8);
  sub_1C1DC1870(v83, &qword_1EBF1C608, &qword_1C1E56CE8);
  sub_1C1DC1870(v69, &qword_1EBF1C5F8, &qword_1C1E56CD8);
  sub_1C1DC1870(v68, &qword_1EBF1C608, &qword_1C1E56CE8);
  sub_1C1DC1870(v75, &qword_1EBF1C600, &qword_1C1E56CE0);
  sub_1C1DC1870(v87, &qword_1EBF1C608, &qword_1C1E56CE8);
  return sub_1C1DC1870(v86, &qword_1EBF1C608, &qword_1C1E56CE8);
}

uint64_t sub_1C1DDE4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5B8, &qword_1C1E56C00);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v19 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  v20 = a1;
  sub_1C1DDB404(&v19 - v15);
  v20 = a1;
  sub_1C1DDB874(v14);
  sub_1C1DC1424(v16, v11, &qword_1EBF1C5B8, &qword_1C1E56C00);
  sub_1C1DC1424(v14, v8, &qword_1EBF1C5B8, &qword_1C1E56C00);
  sub_1C1DC1424(v11, a2, &qword_1EBF1C5B8, &qword_1C1E56C00);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C5C0, &qword_1C1E56C08);
  sub_1C1DC1424(v8, a2 + *(v17 + 48), &qword_1EBF1C5B8, &qword_1C1E56C00);
  sub_1C1DC1870(v14, &qword_1EBF1C5B8, &qword_1C1E56C00);
  sub_1C1DC1870(v16, &qword_1EBF1C5B8, &qword_1C1E56C00);
  sub_1C1DC1870(v8, &qword_1EBF1C5B8, &qword_1C1E56C00);
  return sub_1C1DC1870(v11, &qword_1EBF1C5B8, &qword_1C1E56C00);
}

unint64_t sub_1C1DDE684()
{
  result = qword_1EBF1C4B8;
  if (!qword_1EBF1C4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C4A0, &qword_1C1E56A28);
    sub_1C1DC1124(&qword_1EBF1C4C0, &qword_1EBF1C4C8, &qword_1C1E56A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C4B8);
  }

  return result;
}

unint64_t sub_1C1DDE73C()
{
  result = qword_1EBF1C4D0;
  if (!qword_1EBF1C4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C488, &qword_1C1E56A10);
    sub_1C1DC1124(&qword_1EBF1C4D8, &qword_1EBF1C4E0, &qword_1C1E56A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C4D0);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for CalculateGraphBoundsView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for CalculateGraphBoundsView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1DDE958()
{
  result = qword_1EBF1C4F0;
  if (!qword_1EBF1C4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C4F8, &qword_1C1E56AF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C4A0, &qword_1C1E56A28);
    sub_1C1DDE684();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C488, &qword_1C1E56A10);
    sub_1C1DDE73C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C4F0);
  }

  return result;
}

uint64_t type metadata accessor for CalculateGraphBoundsView.BoundsButtonStyle()
{
  result = qword_1EBF1C508;
  if (!qword_1EBF1C508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1DDEACC()
{
  sub_1C1DDEB50();
  if (v0 <= 0x3F)
  {
    sub_1C1DDEBA0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C1DDEB50()
{
  if (!qword_1EBF1C518)
  {
    v0 = sub_1C1E5274C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF1C518);
    }
  }
}

void sub_1C1DDEBA0()
{
  if (!qword_1EBF1C520)
  {
    sub_1C1DDEBFC();
    v0 = sub_1C1E527CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF1C520);
    }
  }
}

unint64_t sub_1C1DDEBFC()
{
  result = qword_1EBF1C528;
  if (!qword_1EBF1C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C528);
  }

  return result;
}

uint64_t sub_1C1DDEC6C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C1DDEC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1E529CC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DDED54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculateScrubberView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DDEDB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C1DDEE18()
{
  result = qword_1EBF1C668;
  if (!qword_1EBF1C668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C660, &qword_1C1E56D68);
    sub_1C1DDEEA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C668);
  }

  return result;
}

unint64_t sub_1C1DDEEA4()
{
  result = qword_1EBF1C670;
  if (!qword_1EBF1C670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C678, &qword_1C1E56D70);
    sub_1C1DDEF30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C670);
  }

  return result;
}

unint64_t sub_1C1DDEF30()
{
  result = qword_1EBF1C680;
  if (!qword_1EBF1C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C680);
  }

  return result;
}

unint64_t sub_1C1DDEF84()
{
  result = qword_1EBF1C688;
  if (!qword_1EBF1C688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C630, &qword_1C1E56D38);
    sub_1C1DDF040(&qword_1EBF1C690, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C688);
  }

  return result;
}

uint64_t sub_1C1DDF040(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1DDF088()
{
  result = qword_1EBF1C6A0;
  if (!qword_1EBF1C6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C698, &qword_1C1E56D78);
    sub_1C1DDEE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C6A0);
  }

  return result;
}

unint64_t sub_1C1DDF10C()
{
  result = qword_1EBF1C730;
  if (!qword_1EBF1C730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C538, &qword_1C1E56B58);
    sub_1C1DC1124(&qword_1EBF1C738, &qword_1EBF1C740, &qword_1C1E56E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C730);
  }

  return result;
}

uint64_t CalculateGraph.image(size:)(double a1, double a2)
{
  *(v3 + 40) = v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20) - 8) + 64) + 15;
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C1DDF268, 0, 0);
}

uint64_t sub_1C1DDF268()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_1C1E5485C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = v4;
  v7[6] = v3;
  v8 = sub_1C1DE0DE8(0, 0, v2, &unk_1C1E56E30, v7);
  v0[7] = v8;
  sub_1C1DC1870(v2, &qword_1EBF1C748, &qword_1C1E56E20);
  v9 = *(MEMORY[0x1E69E86C0] + 4);
  v10 = swift_task_alloc();
  v0[8] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C750, &qword_1C1E56E38);
  *v10 = v0;
  v10[1] = sub_1C1DDF400;

  return MEMORY[0x1EEE6DA40](v0 + 2, v8, v11);
}

uint64_t sub_1C1DDF400()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C1DDF518, 0, 0);
}

uint64_t sub_1C1DDF518()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1C1DDF580(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a2;
  *(v6 + 128) = a3;
  *(v6 + 104) = a1;
  *(v6 + 112) = a6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20) - 8) + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  v8 = *(type metadata accessor for Function() - 8);
  *(v6 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C1DDF678, 0, 0);
}

uint64_t sub_1C1DDF678()
{
  v1 = v0[14];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (!Strong)
  {
    v6 = v0[13];
    goto LABEL_5;
  }

  v3 = Strong;
  v4 = sub_1C1E36158();
  swift_getKeyPath();
  v0[8] = v4;
  sub_1C1DC4D68(&qword_1EDE74850, type metadata accessor for GraphViewModel);

  sub_1C1E520BC();

  v5 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__graphType;
  swift_beginAccess();
  LOBYTE(v5) = *(v4 + v5);

  if (v5)
  {
    v6 = v0[13];

LABEL_5:
    *v6 = 0;
    v7 = v0[19];
    v8 = v0[17];

    v9 = v0[1];

    return v9();
  }

  v11 = sub_1C1E36158();
  v12 = *(v11 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);

  [v12 lock];
  swift_getKeyPath();
  v0[9] = v11;
  sub_1C1E520BC();

  v13 = *(v11 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v12 unlock];

  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v0[18];
    v16 = v0[19];
    v36 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph___viewModel;
    v37 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__needsUpdate;
    v17 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v34 = v16;
    v35 = *(v15 + 72);
    do
    {
      v20 = v0[19];
      sub_1C1DE160C(v17, v20);
      v38 = *(v16 + 96);

      sub_1C1DE1670(v20);
      swift_getKeyPath();
      v0[10] = v3;
      sub_1C1DC4D68(qword_1EDE74C30, type metadata accessor for CalculateGraph);
      sub_1C1E520BC();

      if (*(v3 + v37) == 1)
      {
        swift_getKeyPath();
        v21 = swift_task_alloc();
        *(v21 + 16) = v3;
        *(v21 + 24) = 0;
        v0[12] = v3;
        sub_1C1E520AC();

        v16 = v34;

        sub_1C1E33630();
      }

      swift_getKeyPath();
      v0[11] = v3;
      sub_1C1E520BC();

      v18 = *(v3 + v36);

      sub_1C1E24AC8();

      v19 = *(v38 + 16);
      sub_1C1E5246C();

      v17 += v35;
      --v14;
    }

    while (v14);
  }

  v22 = v0[17];
  v24 = v0[15];
  v23 = v0[16];
  v25 = sub_1C1E5485C();
  (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
  sub_1C1E5483C();

  v26 = sub_1C1E5482C();
  v27 = swift_allocObject();
  v28 = MEMORY[0x1E69E85E0];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v3;
  v27[5] = v24;
  v27[6] = v23;
  v29 = sub_1C1E0A290(0, 0, v22, &unk_1C1E56F00, v27);
  v0[21] = v29;
  v30 = *(MEMORY[0x1E69E86C0] + 4);
  v31 = swift_task_alloc();
  v0[22] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C750, &qword_1C1E56E38);
  *v31 = v0;
  v31[1] = sub_1C1DDFC0C;
  v33 = v0[13];

  return MEMORY[0x1EEE6DA40](v33, v29, v32);
}

uint64_t sub_1C1DDFC0C()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C1DDFD24, 0, 0);
}

uint64_t sub_1C1DDFD24()
{
  v1 = v0[20];

  v2 = v0[19];
  v3 = v0[17];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C1DDFD98(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1DE184C;

  return sub_1C1DDF580(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_1C1DDFE68(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 1336) = a3;
  *(v6 + 1328) = a2;
  *(v6 + 1320) = a6;
  *(v6 + 1312) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  *(v6 + 1344) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 1352) = swift_task_alloc();
  *(v6 + 1360) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C760, &unk_1C1E57C80);
  *(v6 + 1368) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v6 + 1376) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C768, &qword_1C1E56F08);
  *(v6 + 1384) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v6 + 1392) = swift_task_alloc();
  sub_1C1E5483C();
  *(v6 + 1400) = sub_1C1E5482C();
  v14 = sub_1C1E5481C();

  return MEMORY[0x1EEE6DFA0](sub_1C1DDFFCC, v14, v13);
}

uint64_t sub_1C1DDFFCC()
{
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1320);

  v3 = sub_1C1E36158();
  swift_getKeyPath();
  *(v0 + 1304) = v3;
  sub_1C1DC4D68(&qword_1EDE74850, type metadata accessor for GraphViewModel);

  sub_1C1E520BC();

  swift_beginAccess();
  v127 = *(v3 + 17);

  v4 = sub_1C1E36158();
  swift_beginAccess();
  if (*(v4 + 17))
  {
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    *(v0 + 1272) = v4;

    sub_1C1E520AC();
  }

  else
  {
    *(v4 + 17) = 0;
  }

  v129 = *(v0 + 1392);
  v136 = *(v0 + 1384);
  v6 = *(v0 + 1376);
  v7 = *(v0 + 1368);
  v8 = *(v0 + 1360);
  v9 = *(v0 + 1352);
  v128 = *(v0 + 1344);
  v134 = *(v0 + 1328);
  v135 = *(v0 + 1336);
  v10 = *(v0 + 1320);
  v11 = sub_1C1E36158();
  *(v6 + v7[10]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C770, &qword_1C1E57A30);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  *v6 = v11;
  v6[1] = 0;
  v126 = v6 + 1;
  v6[2] = 0;
  v14 = v6 + v7[11];
  *v14 = KeyPath;
  v14[8] = 0;
  v15 = v6 + v7[12];
  *v15 = v13;
  v15[8] = 0;
  v16 = v6 + v7[13];
  *(v0 + 1240) = 0;
  *(v0 + 1248) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C778, &qword_1C1E56FC8);
  sub_1C1E536DC();
  v17 = *(v0 + 824);
  v18 = *(v0 + 832);
  *v16 = *(v0 + 816);
  v16[8] = v17;
  *(v16 + 2) = v18;
  v19 = v6 + v7[14];
  *(v0 + 1256) = 0;
  *(v0 + 1264) = 1;
  sub_1C1E536DC();
  v20 = *(v0 + 872);
  v21 = *(v0 + 880);
  *v19 = *(v0 + 864);
  v19[8] = v20;
  *(v19 + 2) = v21;
  v22 = v6 + v7[15];
  *(v0 + 682) = 0;
  sub_1C1E536DC();
  v23 = *(v0 + 1120);
  *v22 = *(v0 + 1112);
  *(v22 + 1) = v23;
  v24 = (v6 + v7[16]);
  *(v0 + 1296) = sub_1C1E5355C();
  sub_1C1E536DC();
  v25 = *(v0 + 1152);
  *v24 = *(v0 + 1144);
  v24[1] = v25;
  v26 = v7[17];
  v27 = type metadata accessor for Function();
  v124 = *(*(v27 - 8) + 56);
  v125 = v27;
  v124(v8, 1, 1);
  sub_1C1DC1424(v8, v9, &qword_1EBF1C758, &qword_1C1E579C0);
  sub_1C1E536DC();
  sub_1C1DC1870(v8, &qword_1EBF1C758, &qword_1C1E579C0);
  v28 = v6 + v7[18];
  *(v0 + 1008) = 0;
  *(v0 + 1016) = 0;
  *(v0 + 1024) = 2;
  sub_1C1E536DC();
  v29 = *(v0 + 512);
  v30 = *(v0 + 520);
  *v28 = *(v0 + 496);
  v28[16] = v29;
  *(v28 + 3) = v30;
  v31 = v6 + v7[19];
  *(v0 + 1056) = 0;
  *(v0 + 1064) = 0;
  *(v0 + 1072) = 0;
  sub_1C1E536DC();
  v32 = *(v0 + 576);
  v33 = *(v0 + 584);
  *v31 = *(v0 + 560);
  v31[16] = v32;
  *(v31 + 3) = v33;
  v34 = v6 + v7[20];
  *(v0 + 688) = 0;
  *(v0 + 696) = 0;
  *(v0 + 704) = 0;
  *(v0 + 712) = 2;
  sub_1C1E536DC();
  v35 = *(v0 + 176);
  v36 = *(v0 + 184);
  v37 = *(v0 + 192);
  *v34 = *(v0 + 160);
  *(v34 + 2) = v35;
  v34[24] = v36;
  *(v34 + 4) = v37;
  v38 = v6 + v7[21];
  *(v0 + 1080) = 0;
  *(v0 + 1088) = 0;
  sub_1C1E536DC();
  v39 = *(v0 + 856);
  *v38 = *(v0 + 840);
  *(v38 + 2) = v39;
  v40 = v6 + v7[22];
  type metadata accessor for CGSize(0);
  *(v0 + 1160) = 0;
  *(v0 + 1168) = 0;
  sub_1C1E536DC();
  v41 = *(v0 + 784);
  *v40 = *(v0 + 768);
  *(v40 + 2) = v41;
  v42 = v6 + v7[23];
  type metadata accessor for CGRect(0);
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  sub_1C1E536DC();
  v43 = *(v0 + 392);
  v44 = *(v0 + 376);
  *v42 = *(v0 + 360);
  *(v42 + 1) = v44;
  *(v42 + 4) = v43;
  v45 = v6 + v7[24];
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  sub_1C1E536DC();
  v46 = *(v0 + 352);
  v47 = *(v0 + 336);
  *v45 = *(v0 + 320);
  *(v45 + 1) = v47;
  *(v45 + 4) = v46;
  sub_1C1DF2DCC(nullsub_1, 0, v129);
  sub_1C1DC1870(v6, &qword_1EBF1C760, &unk_1C1E57C80);
  sub_1C1E538DC();
  sub_1C1E5281C();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C780, &qword_1C1E56FD0);
  v49 = (v129 + *(v48 + 36));
  v51 = *(v0 + 32);
  v50 = *(v0 + 48);
  *v49 = *(v0 + 16);
  v49[1] = v51;
  v49[2] = v50;
  v52 = (v129 + *(v136 + 36));
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C788, &qword_1C1E56FD8);
  v53 = *(v133 + 28);
  v54 = *MEMORY[0x1E697DBB8];
  v55 = sub_1C1E526EC();
  v131 = *(*(v55 - 8) + 104);
  v132 = v55;
  v131(v52 + v53, v54);
  *v52 = swift_getKeyPath();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C790, &qword_1C1E57010);
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  MEMORY[0x1C690E480](v129);
  v59 = sub_1C1E5287C();

  if (v59)
  {
    v130 = *(v0 + 1392);
    v60 = *(v0 + 1376);
    v61 = *(v0 + 1360);
    v121 = *(v0 + 1352);
    v122 = *(v0 + 1344);
    v62 = *(v0 + 1320);
    v120 = v59;
    v123 = v59;
    v63 = sub_1C1E36158();
    *(v60 + v7[10]) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v64 = swift_getKeyPath();
    v65 = swift_getKeyPath();
    *v60 = v63;
    *v126 = 0;
    v126[1] = 0;
    v66 = v60 + v7[11];
    *v66 = v64;
    v66[8] = 0;
    v67 = v60 + v7[12];
    *v67 = v65;
    v67[8] = 0;
    v68 = v60 + v7[13];
    *(v0 + 1224) = 0;
    *(v0 + 1232) = 1;

    sub_1C1E536DC();
    v69 = *(v0 + 944);
    v70 = *(v0 + 952);
    *v68 = *(v0 + 936);
    v68[8] = v69;
    *(v68 + 2) = v70;
    v71 = v60 + v7[14];
    *(v0 + 1208) = 0;
    *(v0 + 1216) = 1;
    sub_1C1E536DC();
    v72 = *(v0 + 968);
    v73 = *(v0 + 976);
    *v71 = *(v0 + 960);
    v71[8] = v72;
    *(v71 + 2) = v73;
    v74 = v60 + v7[15];
    *(v0 + 681) = 0;
    sub_1C1E536DC();
    v75 = *(v0 + 1136);
    *v74 = *(v0 + 1128);
    *(v74 + 1) = v75;
    v76 = (v60 + v7[16]);
    *(v0 + 1280) = sub_1C1E5355C();
    sub_1C1E536DC();
    v77 = *(v0 + 1104);
    *v76 = *(v0 + 1096);
    v76[1] = v77;
    v78 = v7[17];
    (v124)(v61, 1, 1, v125);
    sub_1C1DC1424(v61, v121, &qword_1EBF1C758, &qword_1C1E579C0);
    sub_1C1E536DC();
    sub_1C1DC1870(v61, &qword_1EBF1C758, &qword_1C1E579C0);
    v79 = v60 + v7[18];
    *(v0 + 1032) = 0;
    *(v0 + 1040) = 0;
    *(v0 + 1048) = 2;
    sub_1C1E536DC();
    v80 = *(v0 + 608);
    v81 = *(v0 + 616);
    *v79 = *(v0 + 592);
    v79[16] = v80;
    *(v79 + 3) = v81;
    v82 = v60 + v7[19];
    *(v0 + 984) = 0;
    *(v0 + 992) = 0;
    *(v0 + 1000) = 0;
    sub_1C1E536DC();
    v83 = *(v0 + 544);
    v84 = *(v0 + 552);
    *v82 = *(v0 + 528);
    v82[16] = v83;
    *(v82 + 3) = v84;
    v85 = v60 + v7[20];
    *(v0 + 656) = 0;
    *(v0 + 664) = 0;
    *(v0 + 672) = 0;
    *(v0 + 680) = 2;
    sub_1C1E536DC();
    v86 = *(v0 + 296);
    v87 = *(v0 + 304);
    v88 = *(v0 + 312);
    *v85 = *(v0 + 280);
    *(v85 + 2) = v86;
    v85[24] = v87;
    *(v85 + 4) = v88;
    v89 = v60 + v7[21];
    *(v0 + 1176) = 0;
    *(v0 + 1184) = 0;
    sub_1C1E536DC();
    v90 = *(v0 + 808);
    *v89 = *(v0 + 792);
    *(v89 + 2) = v90;
    v91 = v60 + v7[22];
    *(v0 + 1192) = 0;
    *(v0 + 1200) = 0;
    sub_1C1E536DC();
    v92 = *(v0 + 736);
    *v91 = *(v0 + 720);
    *(v91 + 2) = v92;
    v93 = v60 + v7[23];
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0u;
    sub_1C1E536DC();
    v94 = *(v0 + 272);
    v95 = *(v0 + 256);
    *v93 = *(v0 + 240);
    *(v93 + 1) = v95;
    *(v93 + 4) = v94;
    v96 = v60 + v7[24];
    *(v0 + 464) = 0u;
    *(v0 + 480) = 0u;
    sub_1C1E536DC();
    v97 = *(v0 + 232);
    v98 = *(v0 + 216);
    *v96 = *(v0 + 200);
    *(v96 + 1) = v98;
    *(v96 + 4) = v97;
    sub_1C1DF2DCC(nullsub_1, 0, v130);
    sub_1C1DC1870(v60, &qword_1EBF1C760, &unk_1C1E57C80);
    sub_1C1E538DC();
    sub_1C1E5281C();
    v99 = (v130 + *(v48 + 36));
    v101 = *(v0 + 128);
    v100 = *(v0 + 144);
    *v99 = *(v0 + 112);
    v99[1] = v101;
    v99[2] = v100;
    v102 = (v130 + *(v136 + 36));
    (v131)(v102 + *(v133 + 28), *MEMORY[0x1E697DBA8], v132);
    *v102 = swift_getKeyPath();
    v103 = *(v56 + 48);
    v104 = *(v56 + 52);
    swift_allocObject();
    MEMORY[0x1C690E480](v130);
    v105 = sub_1C1E5287C();

    if (v105)
    {
      v106 = [v123 imageAsset];
      if (v106)
      {
        v107 = v106;
        *(v0 + 96) = sub_1C1DE0DD8;
        *(v0 + 104) = 0;
        *(v0 + 64) = MEMORY[0x1E69E9820];
        *(v0 + 72) = 1107296256;
        *(v0 + 80) = sub_1C1E054A4;
        *(v0 + 88) = &block_descriptor;
        v108 = _Block_copy((v0 + 64));
        v109 = [objc_opt_self() traitCollectionWithTraits_];
        _Block_release(v108);
        v110 = *(v0 + 104);

        result = swift_isEscapingClosureAtFileLocation();
        if (result)
        {
          __break(1u);
          return result;
        }

        [v107 registerImage:v105 withTraitCollection:v109];
      }
    }

    v59 = v120;
  }

  v112 = *(v0 + 1320);
  v113 = sub_1C1E36158();
  swift_beginAccess();
  if (v127 == *(v113 + 17))
  {
    *(v113 + 17) = v127;
  }

  else
  {
    swift_getKeyPath();
    v114 = swift_task_alloc();
    *(v114 + 16) = v113;
    *(v114 + 24) = v127;
    *(v0 + 1288) = v113;

    sub_1C1E520AC();
  }

  v115 = *(v0 + 1392);
  v116 = *(v0 + 1376);
  v117 = *(v0 + 1360);
  v118 = *(v0 + 1352);
  **(v0 + 1312) = v59;

  v119 = *(v0 + 8);

  return v119();
}

uint64_t sub_1C1DE0DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C748, &qword_1C1E56E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1C1DC1424(a3, v27 - v11, &qword_1EBF1C748, &qword_1C1E56E20);
  v13 = sub_1C1E5485C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C1DC1870(v12, &qword_1EBF1C748, &qword_1C1E56E20);
  }

  else
  {
    sub_1C1E5484C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1C1E5481C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1C1E5464C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C750, &qword_1C1E56E38);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C750, &qword_1C1E56E38);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1C1DE10BC(uint64_t a1)
{
  v2 = sub_1C1E526EC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1C1E52A3C();
}

uint64_t sub_1C1DE1184(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1C1DE1278;

  return v6(v2 + 16);
}

uint64_t sub_1C1DE1278()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1C1DE13A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C1DE184C;

  return sub_1C1DE1184(a1, v5);
}

uint64_t sub_1C1DE1460(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C1DE1518;

  return sub_1C1DE1184(a1, v5);
}

uint64_t sub_1C1DE1518()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C1DE160C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Function();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DE1670(uint64_t a1)
{
  v2 = type metadata accessor for Function();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1DE170C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1DE1518;

  return sub_1C1DDFE68(a1, v7, v8, v4, v5, v6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C1DE1864(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C1DE18A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C1DE191C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C798, &qword_1C1E57098);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (v50 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C7A0, &qword_1C1E570A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C7A8, &qword_1C1E570A8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v50 - v14;
  v16 = *(v1 + 8);
  v18 = *(v1 + 16);
  v17 = *(v1 + 24);
  v19 = *(v1 + 32);
  v20 = *v1 * 0.5;
  v21 = *(sub_1C1E529CC() + 20);
  v22 = *MEMORY[0x1E697F468];
  v23 = sub_1C1E52C8C();
  (*(*(v23 - 8) + 104))(v7 + v21, v22, v23);
  *v7 = v20;
  v7[1] = v20;
  LODWORD(v22) = sub_1C1E52D3C();
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C7B0, &qword_1C1E570B0) + 36)) = v22;
  sub_1C1E538DC();
  sub_1C1E5281C();
  v24 = (v7 + *(v4 + 44));
  v25 = v50[1];
  *v24 = v50[0];
  v24[1] = v25;
  v24[2] = v50[2];
  v26 = v16 * v16;
  if (v19 == 1)
  {
    v27 = 0.25 - v26 * 0.25;
  }

  else
  {
    v28 = v26 * -25.0 + 1.0;
    if (v28 <= 0.0)
    {
      v28 = 0.0;
    }

    v27 = 0.6 - v26 * 0.6 + v28 * 0.4;
  }

  sub_1C1DC18D0(v7, v11, &qword_1EBF1C798, &qword_1C1E57098);
  *&v11[*(v8 + 36)] = v27;
  v29 = sub_1C1E5301C();
  sub_1C1E5264C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_1C1DC18D0(v11, v15, &qword_1EBF1C7A0, &qword_1C1E570A0);
  v38 = &v15[*(v12 + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = sub_1C1E5302C();
  sub_1C1E5264C();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_1C1DC18D0(v15, a1, &qword_1EBF1C7A8, &qword_1C1E570A8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C7B8, &qword_1C1E570B8);
  v49 = a1 + *(result + 36);
  *v49 = v39;
  *(v49 + 8) = v41;
  *(v49 + 16) = v43;
  *(v49 + 24) = v45;
  *(v49 + 32) = v47;
  *(v49 + 40) = 0;
  return result;
}

unint64_t sub_1C1DE1CCC()
{
  result = qword_1EBF1C7C0;
  if (!qword_1EBF1C7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C7B8, &qword_1C1E570B8);
    sub_1C1DE1D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C7C0);
  }

  return result;
}

unint64_t sub_1C1DE1D58()
{
  result = qword_1EBF1C7C8;
  if (!qword_1EBF1C7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C7A8, &qword_1C1E570A8);
    sub_1C1DE1DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C7C8);
  }

  return result;
}

unint64_t sub_1C1DE1DE4()
{
  result = qword_1EBF1C7D0;
  if (!qword_1EBF1C7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C7A0, &qword_1C1E570A0);
    sub_1C1DE1E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C7D0);
  }

  return result;
}

unint64_t sub_1C1DE1E70()
{
  result = qword_1EBF1C7D8;
  if (!qword_1EBF1C7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C798, &qword_1C1E57098);
    sub_1C1DE1EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C7D8);
  }

  return result;
}

unint64_t sub_1C1DE1EFC()
{
  result = qword_1EBF1C7E0;
  if (!qword_1EBF1C7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C7B0, &qword_1C1E570B0);
    sub_1C1DE1F88();
    sub_1C1DE1FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C7E0);
  }

  return result;
}

unint64_t sub_1C1DE1F88()
{
  result = qword_1EBF1C7E8;
  if (!qword_1EBF1C7E8)
  {
    sub_1C1E529CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C7E8);
  }

  return result;
}

unint64_t sub_1C1DE1FE0()
{
  result = qword_1EBF1C7F0;
  if (!qword_1EBF1C7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C7F8, &qword_1C1E570C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C7F0);
  }

  return result;
}

id UIFont.rounded.getter()
{
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontDescriptorWithDesign_];

  if (v2)
  {
    [v6 pointSize];
    v4 = [objc_opt_self() fontWithDescriptor:v2 size:v3];

    return v4;
  }

  else
  {

    return v6;
  }
}

void CalculateExpressionTypesetView.init(expression:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v4 = sub_1C1E53D7C();

  if (v4)
  {
    v5 = [v4 formattedResult];

    v4 = sub_1C1E545FC();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0x4032000000000000;
}

void CalculateExpressionTypesetView.init(expression:fontSize:)(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{

  v6 = sub_1C1E53D7C();

  if (v6)
  {
    v7 = [v6 formattedResult];

    v6 = sub_1C1E545FC();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  *a2 = a1;
  *(a2 + 8) = v6;
  *(a2 + 16) = v9;
  *(a2 + 24) = 1;
  *(a2 + 32) = a3;
}

uint64_t CalculateExpressionTypesetView.init(expression:result:showResult:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0x4032000000000000;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t CalculateExpressionTypesetView.init(expression:result:showResult:fontSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = a6;
  return result;
}

double CalculateExpressionTypesetView.body.getter@<D0>(_OWORD *a1@<X8>)
{
  v73 = a1;
  v2 = sub_1C1E51E2C();
  v71 = *(v2 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1E51F9C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1C1E53CBC();
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = *(v1 + 24);
  v15 = v1[4];
  if (sub_1C1E53D3C() == 1)
  {
    v16 = sub_1C1E53B0C();
    v17 = sub_1C1E09930(v16);
    v19 = v18;
    v21 = v20;

    v22 = v13;
    if (!v13)
    {
      v23 = sub_1C1E53D7C();
      if (v23)
      {
        v24 = v23;
        v25 = [v23 formattedResult];
        v72 = v19;
        v26 = v25;

        v12 = sub_1C1E545FC();
        v22 = v27;

        v19 = v72;
      }

      else
      {
        v12 = 0;
        v22 = 0;
      }
    }

    if (!v14 || (sub_1C1E53B3C() & 1) != 0)
    {
      goto LABEL_17;
    }

    sub_1C1E53BAC();
    if (!v61)
    {
      v57 = 1;
      goto LABEL_18;
    }

    v62 = sub_1C1E53D7C();
    if (v62)
    {
      v63 = v62;
      v64 = [v62 isTrivial];

      v57 = v64 ^ 1;
    }

    else
    {
LABEL_17:
      v57 = 0;
    }

LABEL_18:
    v83 = v21 & 1;
    v74 = 0;
    v75 = v17;
    v76 = v19;
    LOBYTE(v77) = v21 & 1;
    v78 = v12;
    v79 = v22;
    v80 = v57;
    v81 = v15;
    v82 = 0;
    goto LABEL_19;
  }

  v66 = v2;
  v28 = [objc_opt_self() labelColor];
  v29 = [v28 CGColor];

  v69 = sub_1C1E5351C();
  v67 = sub_1C1E53B0C();
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E55C40;
  v33 = *MEMORY[0x1E6992250];
  *(inited + 32) = *MEMORY[0x1E6992250];
  v68 = v7;
  v34 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v35 = v33;
  v36 = [v34 initWithUnsignedInteger_];
  v37 = sub_1C1DE2864();
  *(inited + 40) = v36;
  v38 = *MEMORY[0x1E6992228];
  *(inited + 64) = v37;
  *(inited + 72) = v38;
  v39 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v40 = v38;
  v41 = [v39 initWithBool_];
  *(inited + 104) = v37;
  v42 = v67;
  *(inited + 80) = v41;
  sub_1C1DF776C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C810, &qword_1C1E576E0);
  swift_arrayDestroy();
  (*(v72 + 104))(v10, *MEMORY[0x1E6992100], v68);
  sub_1C1E51F8C();
  v43 = sub_1C1E5444C();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  sub_1C1E5445C();
  sub_1C1E53D4C();
  v46 = sub_1C1E53B0C();
  v48 = v47;

  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {
    goto LABEL_8;
  }

  *&v84 = v42;
  *(&v84 + 1) = v31;
  v52 = v70;
  sub_1C1E51E1C();
  sub_1C1DC733C();
  v53 = sub_1C1E549FC();
  v55 = v54;
  (*(v71 + 8))(v52, v66);

  v56 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v56 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {
LABEL_8:

    v42 = sub_1C1E53B0C();
    v31 = v50;

    v51 = 0;
  }

  else
  {

    v51 = 1;
  }

  v83 = 1;
  v75 = v42;
  v76 = v31;
  v77 = v15;
  LOBYTE(v78) = v51;
  v79 = v69;
  v82 = 1;
LABEL_19:
  sub_1C1DE28B0();
  sub_1C1DE2904();
  sub_1C1E52CEC();
  v58 = v85;
  v59 = v73;
  *v73 = v84;
  v59[1] = v58;
  v59[2] = v86[0];
  result = *(v86 + 9);
  *(v59 + 41) = *(v86 + 9);
  return result;
}

unint64_t sub_1C1DE2864()
{
  result = qword_1EBF1C808;
  if (!qword_1EBF1C808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBF1C808);
  }

  return result;
}

unint64_t sub_1C1DE28B0()
{
  result = qword_1EBF1C818;
  if (!qword_1EBF1C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C818);
  }

  return result;
}

unint64_t sub_1C1DE2904()
{
  result = qword_1EBF1C820;
  if (!qword_1EBF1C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C820);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C1DE2988(uint64_t *a1, int a2)
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

uint64_t sub_1C1DE29D0(uint64_t result, int a2, int a3)
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

unint64_t sub_1C1DE2A28()
{
  result = qword_1EBF1C828;
  if (!qword_1EBF1C828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C830, &unk_1C1E57180);
    sub_1C1DE28B0();
    sub_1C1DE2904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C828);
  }

  return result;
}

uint64_t CalculateScrubberView.init(scrubber:isCompact:style:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a2;
  v62 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C838, &qword_1C1E571C0);
  v6 = *(*(v60 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v60);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v60 - v10;
  v61 = *a3;
  v12 = type metadata accessor for CalculateScrubberView();
  v13 = v12[6];
  *&v64 = 0x405E800000000000;
  sub_1C1DDEBFC();
  sub_1C1E527AC();
  v14 = v12[7];
  *&v64 = 0x4043000000000000;
  sub_1C1E527AC();
  v15 = v12[8];
  *&v64 = 0x405CC00000000000;
  sub_1C1E527AC();
  v16 = v12[9];
  *&v64 = 0x4041000000000000;
  sub_1C1E527AC();
  v17 = v12[10];
  *&v64 = 0x4038000000000000;
  sub_1C1E527AC();
  v18 = v12[11];
  *&v64 = 0x4041000000000000;
  sub_1C1E527AC();
  v19 = v12[12];
  *&v64 = 0x4024000000000000;
  sub_1C1E527AC();
  v20 = a4 + v12[13];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a4 + v12[14];
  sub_1C1E52D8C();
  v22 = a4 + v12[15];
  *v22 = sub_1C1E5268C() & 1;
  *(v22 + 8) = v23;
  *(v22 + 16) = v24 & 1;
  v25 = a4 + v12[16];
  v66 = 0;
  v67 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C840, &qword_1C1E571F8);
  sub_1C1E536DC();
  v26 = v65;
  *v25 = v64;
  *(v25 + 16) = v26;
  v27 = v12[17];
  v66 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C848, &qword_1C1E57200);
  sub_1C1E536DC();
  *(a4 + v27) = v64;
  v28 = (a4 + v12[19]);
  v66 = 0;
  sub_1C1E536DC();
  v29 = *(&v64 + 1);
  *v28 = v64;
  v28[1] = v29;
  v30 = v12[20];
  v66 = 0;
  sub_1C1E536DC();
  *(a4 + v30) = v64;
  v31 = a4 + v12[21];
  LOBYTE(v66) = 0;
  sub_1C1E536DC();
  v32 = *(&v64 + 1);
  *v31 = v64;
  *(v31 + 8) = v32;
  v33 = a4 + v12[22];
  v66 = 0;
  sub_1C1E5277C();
  v34 = *(&v64 + 1);
  v35 = v65;
  *v33 = v64;
  *(v33 + 8) = v34;
  *(v33 + 16) = v35;
  v36 = v12[23];
  v37 = sub_1C1E51F5C();
  (*(*(v37 - 8) + 56))(v11, 1, 1, v37);
  sub_1C1DC1424(v11, v9, &qword_1EBF1C838, &qword_1C1E571C0);
  sub_1C1E536DC();
  sub_1C1DC1870(v11, &qword_1EBF1C838, &qword_1C1E571C0);
  v38 = a4 + v12[24];
  LOBYTE(v66) = 0;
  sub_1C1E536DC();
  v39 = *(&v64 + 1);
  *v38 = v64;
  *(v38 + 8) = v39;
  v40 = a4 + v12[25];
  v66 = 0;
  sub_1C1E5277C();
  v41 = *(&v64 + 1);
  v42 = v65;
  *v40 = v64;
  *(v40 + 8) = v41;
  *(v40 + 16) = v42;
  v43 = (a4 + v12[26]);
  v66 = 0;
  sub_1C1E536DC();
  v44 = *(&v64 + 1);
  *v43 = v64;
  v43[1] = v44;
  v45 = (a4 + v12[27]);
  v66 = 0;
  sub_1C1E536DC();
  v46 = *(&v64 + 1);
  *v45 = v64;
  v45[1] = v46;
  v47 = (a4 + v12[28]);
  v66 = 0;
  sub_1C1E536DC();
  v48 = *(&v64 + 1);
  *v47 = v64;
  v47[1] = v48;
  *(a4 + v12[29]) = 0x3FE0000000000000;
  *(a4 + v12[30]) = 0x3FB999999999999ALL;
  v49 = v12[31];
  *&v64 = 0x4008000000000000;
  sub_1C1E527AC();
  v50 = v12[32];
  *&v64 = 0x4026000000000000;
  sub_1C1E527AC();
  v51 = v12[33];
  *&v64 = 0x4010000000000000;
  sub_1C1E527AC();
  v52 = (a4 + v12[34]);
  v66 = 0;
  sub_1C1E536DC();
  v53 = *(&v64 + 1);
  *v52 = v64;
  v52[1] = v53;
  v54 = v12[35];
  *&v64 = 0x4020000000000000;
  sub_1C1E527AC();
  v55 = v12[36];
  *&v64 = 0x4000000000000000;
  sub_1C1E527AC();
  v56 = v12[37];
  *&v64 = 0x4018000000000000;
  sub_1C1E527AC();
  *a4 = v62;
  v57 = a4 + v12[18];
  LOBYTE(v66) = v63;
  result = sub_1C1E536DC();
  v59 = *(&v64 + 1);
  *v57 = v64;
  *(v57 + 8) = v59;
  *(a4 + 8) = v61;
  return result;
}

uint64_t type metadata accessor for CalculateScrubberView()
{
  result = qword_1EBF1C9F0;
  if (!qword_1EBF1C9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CalculateScrubberView.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](v1);
  return sub_1C1E54DAC();
}

uint64_t CalculateScrubberView.init(scrubber:isCompact:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v60 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C838, &qword_1C1E571C0);
  v4 = *(*(v59 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v59);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - v8;
  v10 = type metadata accessor for CalculateScrubberView();
  v11 = v10[6];
  *&v62 = 0x405E800000000000;
  sub_1C1DDEBFC();
  sub_1C1E527AC();
  v12 = v10[7];
  *&v62 = 0x4043000000000000;
  sub_1C1E527AC();
  v13 = v10[8];
  *&v62 = 0x405CC00000000000;
  sub_1C1E527AC();
  v14 = v10[9];
  *&v62 = 0x4041000000000000;
  sub_1C1E527AC();
  v15 = v10[10];
  *&v62 = 0x4038000000000000;
  sub_1C1E527AC();
  v16 = v10[11];
  *&v62 = 0x4041000000000000;
  sub_1C1E527AC();
  v17 = v10[12];
  *&v62 = 0x4024000000000000;
  sub_1C1E527AC();
  v18 = a3 + v10[13];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a3 + v10[14];
  sub_1C1E52D8C();
  v20 = a3 + v10[15];
  *v20 = sub_1C1E5268C() & 1;
  *(v20 + 8) = v21;
  *(v20 + 16) = v22 & 1;
  v23 = a3 + v10[16];
  v64 = 0;
  v65 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C840, &qword_1C1E571F8);
  sub_1C1E536DC();
  v24 = v63;
  *v23 = v62;
  *(v23 + 16) = v24;
  v25 = v10[17];
  v64 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C848, &qword_1C1E57200);
  sub_1C1E536DC();
  *(a3 + v25) = v62;
  v26 = (a3 + v10[19]);
  v64 = 0;
  sub_1C1E536DC();
  v27 = *(&v62 + 1);
  *v26 = v62;
  v26[1] = v27;
  v28 = v10[20];
  v64 = 0;
  sub_1C1E536DC();
  *(a3 + v28) = v62;
  v29 = a3 + v10[21];
  LOBYTE(v64) = 0;
  sub_1C1E536DC();
  v30 = *(&v62 + 1);
  *v29 = v62;
  *(v29 + 8) = v30;
  v31 = a3 + v10[22];
  v64 = 0;
  sub_1C1E5277C();
  v32 = *(&v62 + 1);
  v33 = v63;
  *v31 = v62;
  *(v31 + 8) = v32;
  *(v31 + 16) = v33;
  v34 = v10[23];
  v35 = sub_1C1E51F5C();
  (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
  sub_1C1DC1424(v9, v7, &qword_1EBF1C838, &qword_1C1E571C0);
  sub_1C1E536DC();
  sub_1C1DC1870(v9, &qword_1EBF1C838, &qword_1C1E571C0);
  v36 = a3 + v10[24];
  LOBYTE(v64) = 0;
  sub_1C1E536DC();
  v37 = *(&v62 + 1);
  *v36 = v62;
  *(v36 + 8) = v37;
  v38 = a3 + v10[25];
  v64 = 0;
  sub_1C1E5277C();
  v39 = *(&v62 + 1);
  v40 = v63;
  *v38 = v62;
  *(v38 + 8) = v39;
  *(v38 + 16) = v40;
  v41 = (a3 + v10[26]);
  v64 = 0;
  sub_1C1E536DC();
  v42 = *(&v62 + 1);
  *v41 = v62;
  v41[1] = v42;
  v43 = (a3 + v10[27]);
  v64 = 0;
  sub_1C1E536DC();
  v44 = *(&v62 + 1);
  *v43 = v62;
  v43[1] = v44;
  v45 = (a3 + v10[28]);
  v64 = 0;
  sub_1C1E536DC();
  v46 = *(&v62 + 1);
  *v45 = v62;
  v45[1] = v46;
  *(a3 + v10[29]) = 0x3FE0000000000000;
  *(a3 + v10[30]) = 0x3FB999999999999ALL;
  v47 = v10[31];
  *&v62 = 0x4008000000000000;
  sub_1C1E527AC();
  v48 = v10[32];
  *&v62 = 0x4026000000000000;
  sub_1C1E527AC();
  v49 = v10[33];
  *&v62 = 0x4010000000000000;
  sub_1C1E527AC();
  v50 = (a3 + v10[34]);
  v64 = 0;
  sub_1C1E536DC();
  v51 = *(&v62 + 1);
  *v50 = v62;
  v50[1] = v51;
  v52 = v10[35];
  *&v62 = 0x4020000000000000;
  sub_1C1E527AC();
  v53 = v10[36];
  *&v62 = 0x4000000000000000;
  sub_1C1E527AC();
  v54 = v10[37];
  *&v62 = 0x4018000000000000;
  sub_1C1E527AC();
  *a3 = v60;
  v55 = a3 + v10[18];
  LOBYTE(v64) = v61;
  result = sub_1C1E536DC();
  v57 = *(&v62 + 1);
  *v55 = v62;
  *(v55 + 8) = v57;
  *(a3 + 8) = 0;
  return result;
}

uint64_t CalculateScrubberView.isCompact.setter()
{
  v1 = (v0 + *(type metadata accessor for CalculateScrubberView() + 72));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

uint64_t CalculateScrubberView.init(scrubber:isCompact:isUsingPopoverPresentationController:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v61 = a2;
  v60 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C838, &qword_1C1E571C0);
  v4 = *(*(v59 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v59);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - v8;
  v10 = type metadata accessor for CalculateScrubberView();
  v11 = v10[6];
  *&v62 = 0x405E800000000000;
  sub_1C1DDEBFC();
  sub_1C1E527AC();
  v12 = v10[7];
  *&v62 = 0x4043000000000000;
  sub_1C1E527AC();
  v13 = v10[8];
  *&v62 = 0x405CC00000000000;
  sub_1C1E527AC();
  v14 = v10[9];
  *&v62 = 0x4041000000000000;
  sub_1C1E527AC();
  v15 = v10[10];
  *&v62 = 0x4038000000000000;
  sub_1C1E527AC();
  v16 = v10[11];
  *&v62 = 0x4041000000000000;
  sub_1C1E527AC();
  v17 = v10[12];
  *&v62 = 0x4024000000000000;
  sub_1C1E527AC();
  v18 = a3 + v10[13];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = a3 + v10[14];
  sub_1C1E52D8C();
  v20 = a3 + v10[15];
  *v20 = sub_1C1E5268C() & 1;
  *(v20 + 8) = v21;
  *(v20 + 16) = v22 & 1;
  v23 = a3 + v10[16];
  v64 = 0;
  v65 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C840, &qword_1C1E571F8);
  sub_1C1E536DC();
  v24 = v63;
  *v23 = v62;
  *(v23 + 16) = v24;
  v25 = v10[17];
  v64 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C848, &qword_1C1E57200);
  sub_1C1E536DC();
  *(a3 + v25) = v62;
  v26 = (a3 + v10[19]);
  v64 = 0;
  sub_1C1E536DC();
  v27 = *(&v62 + 1);
  *v26 = v62;
  v26[1] = v27;
  v28 = v10[20];
  v64 = 0;
  sub_1C1E536DC();
  *(a3 + v28) = v62;
  v29 = a3 + v10[21];
  LOBYTE(v64) = 0;
  sub_1C1E536DC();
  v30 = *(&v62 + 1);
  *v29 = v62;
  *(v29 + 8) = v30;
  v31 = a3 + v10[22];
  v64 = 0;
  sub_1C1E5277C();
  v32 = *(&v62 + 1);
  v33 = v63;
  *v31 = v62;
  *(v31 + 8) = v32;
  *(v31 + 16) = v33;
  v34 = v10[23];
  v35 = sub_1C1E51F5C();
  (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
  sub_1C1DC1424(v9, v7, &qword_1EBF1C838, &qword_1C1E571C0);
  sub_1C1E536DC();
  sub_1C1DC1870(v9, &qword_1EBF1C838, &qword_1C1E571C0);
  v36 = a3 + v10[24];
  LOBYTE(v64) = 0;
  sub_1C1E536DC();
  v37 = *(&v62 + 1);
  *v36 = v62;
  *(v36 + 8) = v37;
  v38 = a3 + v10[25];
  v64 = 0;
  sub_1C1E5277C();
  v39 = *(&v62 + 1);
  v40 = v63;
  *v38 = v62;
  *(v38 + 8) = v39;
  *(v38 + 16) = v40;
  v41 = (a3 + v10[26]);
  v64 = 0;
  sub_1C1E536DC();
  v42 = *(&v62 + 1);
  *v41 = v62;
  v41[1] = v42;
  v43 = (a3 + v10[27]);
  v64 = 0;
  sub_1C1E536DC();
  v44 = *(&v62 + 1);
  *v43 = v62;
  v43[1] = v44;
  v45 = (a3 + v10[28]);
  v64 = 0;
  sub_1C1E536DC();
  v46 = *(&v62 + 1);
  *v45 = v62;
  v45[1] = v46;
  *(a3 + v10[29]) = 0x3FE0000000000000;
  *(a3 + v10[30]) = 0x3FB999999999999ALL;
  v47 = v10[31];
  *&v62 = 0x4008000000000000;
  sub_1C1E527AC();
  v48 = v10[32];
  *&v62 = 0x4026000000000000;
  sub_1C1E527AC();
  v49 = v10[33];
  *&v62 = 0x4010000000000000;
  sub_1C1E527AC();
  v50 = (a3 + v10[34]);
  v64 = 0;
  sub_1C1E536DC();
  v51 = *(&v62 + 1);
  *v50 = v62;
  v50[1] = v51;
  v52 = v10[35];
  *&v62 = 0x4020000000000000;
  sub_1C1E527AC();
  v53 = v10[36];
  *&v62 = 0x4000000000000000;
  sub_1C1E527AC();
  v54 = v10[37];
  *&v62 = 0x4018000000000000;
  sub_1C1E527AC();
  *a3 = v60;
  v55 = a3 + v10[18];
  LOBYTE(v64) = v61;
  result = sub_1C1E536DC();
  v57 = *(&v62 + 1);
  *v55 = v62;
  *(v55 + 8) = v57;
  *(a3 + 8) = 0;
  return result;
}

uint64_t sub_1C1DE3DF0()
{
  v1 = sub_1C1E52B7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for CalculateScrubberView() + 52);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_1C1E5490C();
    v8 = sub_1C1E52FBC();
    sub_1C1E5227C();

    sub_1C1E52B6C();
    swift_getAtKeyPath();
    sub_1C1DDEC6C(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_1C1DE3F48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1E52ABC();
  *a1 = result & 1;
  return result;
}

uint64_t CalculateScrubberView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v105 = a1;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C858, &qword_1C1E57210);
  v3 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v5 = &v88 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C860, &qword_1C1E57218);
  v93 = *(v94 - 8);
  v6 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v8 = &v88 - v7;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C868, &qword_1C1E57220);
  v9 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v11 = &v88 - v10;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C870, &qword_1C1E57228);
  v95 = *(v101 - 8);
  v12 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v14 = &v88 - v13;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C878, &qword_1C1E57230);
  v15 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v100 = &v88 - v16;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C880, &qword_1C1E57238);
  v98 = *(v107 - 8);
  v17 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v97 = &v88 - v18;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C888, &qword_1C1E57240);
  v96 = *(v106 - 8);
  v19 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v21 = &v88 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C890, &qword_1C1E57248);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v88 - v24;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C898, &qword_1C1E57250);
  v91 = *(v99 - 8);
  v26 = *(v91 + 8);
  MEMORY[0x1EEE9AC00](v99);
  v28 = &v88 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C8A0, &qword_1C1E57258);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v88 - v32;
  LOBYTE(v32) = *(v2 + 8);
  v102 = v34;
  if (v32)
  {
    v90 = v22;
    v91 = v14;
    *v5 = sub_1C1E52C0C();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C8B0, &qword_1C1E57268);
    sub_1C1DE5CF8(v2, &v5[*(v35 + 44)]);
    v36 = v92;
    v5[*(v92 + 36)] = 0;
    sub_1C1DE54A0(v21);
    sub_1C1E5275C();
    v37 = sub_1C1DE6074();
    v38 = v5;
    v39 = sub_1C1DC1124(&qword_1EBF1C8F0, &qword_1EBF1C888, &qword_1C1E57240);
    v89 = v11;
    v40 = v106;
    sub_1C1E5349C();
    (*(v96 + 8))(v21, v40);
    sub_1C1DC1870(v38, &qword_1EBF1C858, &qword_1C1E57210);
    v41 = v97;
    sub_1C1DE58D8(v97);
    sub_1C1E5275C();
    v108 = v36;
    v109 = v40;
    v110 = v37;
    v111 = v39;
    v96 = v39;
    swift_getOpaqueTypeConformance2();
    v42 = sub_1C1DC1124(&qword_1EBF1C8F8, &qword_1EBF1C880, &qword_1C1E57238);
    v43 = v89;
    v44 = v94;
    v45 = v107;
    sub_1C1E5349C();
    (*(v98 + 8))(v41, v45);
    v46 = v8;
    v47 = v43;
    (*(v93 + 8))(v46, v44);
    LODWORD(v44) = *(type metadata accessor for CalculateScrubberView() + 44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
    sub_1C1E527BC();
    v48 = v108;
    sub_1C1E527BC();
    v49 = v108;
    v50 = v103;
    v51 = (v43 + *(v103 + 36));
    v52 = *(sub_1C1E529CC() + 20);
    v53 = *MEMORY[0x1E697F468];
    v54 = sub_1C1E52C8C();
    (*(*(v54 - 8) + 104))(&v51[v52], v53, v54);
    *v51 = v48;
    *(v51 + 1) = v49;
    LODWORD(v53) = sub_1C1E52D3C();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C900, &qword_1C1E57290);
    v56 = &v51[*(v55 + 52)];
    *v56 = v53;
    *(v56 + 1) = 1031127695;
    *&v51[*(v55 + 56)] = 256;
    v57 = sub_1C1E538DC();
    v59 = v58;
    v60 = &v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C908, &qword_1C1E57298) + 36)];
    *v60 = v57;
    v60[1] = v59;
    sub_1C1E52C6C();
    if (qword_1EDE737A0 != -1)
    {
      swift_once();
    }

    v61 = qword_1EDE75DC0;
    v62 = sub_1C1E5314C();
    v64 = v63;
    v66 = v65;
    v67 = sub_1C1DECD54();
    v68 = v91;
    sub_1C1E5347C();
    sub_1C1DECF2C(v62, v64, v66 & 1);

    sub_1C1DC1870(v47, &qword_1EBF1C868, &qword_1C1E57220);
    v69 = v95;
    v70 = v101;
    (*(v95 + 16))(v100, v68, v101);
    swift_storeEnumTagMultiPayload();
    v71 = sub_1C1DECF3C();
    v108 = v90;
    v109 = v106;
    v110 = v71;
    v111 = v96;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v108 = v99;
    v109 = v107;
    v110 = OpaqueTypeConformance2;
    v111 = v42;
    swift_getOpaqueTypeConformance2();
    v108 = v50;
    v109 = v67;
    swift_getOpaqueTypeConformance2();
    v73 = v105;
    sub_1C1E52CEC();
    (*(v69 + 8))(v68, v70);
  }

  else
  {
    v94 = v33;
    v95 = v31;
    sub_1C1DE4C08(v2, v25);
    v25[*(v22 + 36)] = 0;
    sub_1C1DE54A0(v21);
    sub_1C1E5275C();
    v74 = sub_1C1DECF3C();
    v93 = MEMORY[0x1E697E238];
    v75 = sub_1C1DC1124(&qword_1EBF1C8F0, &qword_1EBF1C888, &qword_1C1E57240);
    v76 = v106;
    sub_1C1E5349C();
    (*(v96 + 8))(v21, v76);
    sub_1C1DC1870(v25, &qword_1EBF1C890, &qword_1C1E57248);
    v77 = v97;
    sub_1C1DE58D8(v97);
    sub_1C1E5275C();
    v108 = v22;
    v109 = v76;
    v110 = v74;
    v111 = v75;
    v78 = swift_getOpaqueTypeConformance2();
    v79 = sub_1C1DC1124(&qword_1EBF1C8F8, &qword_1EBF1C880, &qword_1C1E57238);
    v80 = v94;
    v81 = v99;
    v82 = v107;
    sub_1C1E5349C();
    (*(v98 + 8))(v77, v82);
    (*(v91 + 1))(v28, v81);
    v83 = v95;
    v84 = v102;
    (*(v95 + 16))(v100, v80, v102);
    swift_storeEnumTagMultiPayload();
    v108 = v81;
    v109 = v82;
    v110 = v78;
    v111 = v79;
    swift_getOpaqueTypeConformance2();
    v85 = sub_1C1DECD54();
    v108 = v103;
    v109 = v85;
    swift_getOpaqueTypeConformance2();
    v73 = v105;
    sub_1C1E52CEC();
    (*(v83 + 8))(v80, v84);
  }

  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C8A8, &qword_1C1E57260);
  return (*(*(v86 - 8) + 56))(v73, 0, 1, v86);
}

uint64_t sub_1C1DE4C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA68, &qword_1C1E57430);
  v3 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v41 - v4;
  v6 = type metadata accessor for CalculateScrubberView();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C948, &qword_1C1E572B0);
  v10 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v12 = &v41 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA70, &qword_1C1E57438);
  v13 = *(v43 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v16 = &v41 - v15;
  v17 = a1 + v6[18];
  v18 = *v17;
  v19 = *(v17 + 8);
  LOBYTE(v49) = v18;
  v50 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  if (v45 == 1)
  {
    sub_1C1DE5184(v12);
    v20 = v41;
    v12[*(v41 + 36)] = 0;
    sub_1C1DDED54(a1, &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v22 = swift_allocObject();
    sub_1C1DEDD58(v9, v22 + v21);
    v23 = sub_1C1DED140();
    sub_1C1E5335C();

    sub_1C1DC1870(v12, &qword_1EBF1C948, &qword_1C1E572B0);
    v24 = v43;
    (*(v13 + 16))(v5, v16, v43);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9A0, &qword_1C1E572E0);
    v49 = v20;
    v50 = v23;
    swift_getOpaqueTypeConformance2();
    sub_1C1DED33C();
    sub_1C1E52CEC();
    return (*(v13 + 8))(v16, v24);
  }

  else
  {
    sub_1C1DDED54(a1, &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v27 = swift_allocObject();
    sub_1C1DEDD58(v9, v27 + v26);
    v28 = v6[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
    sub_1C1E527BC();
    v29 = a1 + v6[7];
    sub_1C1E527BC();
    sub_1C1E538DC();
    sub_1C1E5281C();
    v30 = v49;
    v31 = v51;
    v32 = v53;
    v33 = v54;
    v48 = v50;
    v47 = v52;
    LOBYTE(v29) = sub_1C1E5305C();
    sub_1C1E5264C();
    v34 = v48;
    v35 = v47;
    LOBYTE(v45) = 0;
    *v5 = sub_1C1DEDDBC;
    *(v5 + 1) = v27;
    *(v5 + 2) = v30;
    v5[24] = v34;
    *(v5 + 4) = v31;
    v5[40] = v35;
    *(v5 + 6) = v32;
    *(v5 + 7) = v33;
    v5[64] = v29;
    *(v5 + 9) = v36;
    *(v5 + 10) = v37;
    *(v5 + 11) = v38;
    *(v5 + 12) = v39;
    v5[104] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9A0, &qword_1C1E572E0);
    v40 = sub_1C1DED140();
    v45 = v41;
    v46 = v40;
    swift_getOpaqueTypeConformance2();
    sub_1C1DED33C();
    return sub_1C1E52CEC();
  }
}

uint64_t CalculateScrubberView.isCompact.getter()
{
  v1 = (v0 + *(type metadata accessor for CalculateScrubberView() + 72));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  return v3;
}

double sub_1C1DE5184@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA78, &qword_1C1E57440);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C970, &qword_1C1E572C0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (v23 - v10);
  v12 = sub_1C1E536AC();
  v13 = sub_1C1E5307C();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = sub_1C1E530AC();
  sub_1C1DC1870(v6, &qword_1EBF1CA78, &qword_1C1E57440);
  KeyPath = swift_getKeyPath();
  v16 = (v11 + *(v8 + 44));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C990, &qword_1C1E572D8) + 28);
  v18 = *MEMORY[0x1E69816E0];
  v19 = sub_1C1E536BC();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v11 = v12;
  v11[1] = KeyPath;
  v11[2] = v14;
  *(v1 + 8);
  sub_1C1E538DC();
  sub_1C1E5281C();
  sub_1C1DEDED0(v11, a1);
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C960, &qword_1C1E572B8) + 36));
  v21 = v23[1];
  *v20 = v23[0];
  v20[1] = v21;
  result = *&v24;
  v20[2] = v24;
  return result;
}

uint64_t sub_1C1DE53F8()
{
  v0 = sub_1C1DE3DF0();
  if ((v0 & 1) == 0)
  {
    v0 = MEMORY[0x1C690F510](0.5, 1.0, 0.0);
  }

  MEMORY[0x1EEE9AC00](v0);
  sub_1C1E5291C();
}

uint64_t sub_1C1DE54A0@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for CalculateScrubberView();
  v3 = v2 - 8;
  v32 = *(v2 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v30 = v5;
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1E52CFC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB70, &qword_1C1E575B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB78, &qword_1C1E575B8);
  v14 = *(v13 - 8);
  v33 = v13;
  v34 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  sub_1C1E52D9C();
  sub_1C1E5270C();
  v18 = *(v3 + 96);
  v31 = v1;
  v19 = (v1 + v18);
  v20 = v19[1];
  v39 = *v19;
  v40 = v20;
  v41 = *(v19 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB30, &qword_1C1E57538);
  sub_1C1E5279C();
  v21 = v37;
  v22 = v38;
  v23 = &v12[*(v9 + 44)];
  *v23 = v36;
  *(v23 + 1) = v21;
  *(v23 + 1) = v22;
  v24 = &v12[*(v9 + 48)];
  *v24 = sub_1C1DE98CC;
  *(v24 + 1) = 0;
  sub_1C1DDED54(v1, v6);
  v25 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v26 = swift_allocObject();
  sub_1C1DEDD58(v6, v26 + v25);
  sub_1C1DC1124(&qword_1EBF1CB80, &qword_1EBF1CB70, &qword_1C1E575B0);
  sub_1C1DEEC28(&qword_1EBF1CB88, MEMORY[0x1E697BE90]);
  sub_1C1E5382C();

  sub_1C1DC1870(v12, &qword_1EBF1CB70, &qword_1C1E575B0);
  sub_1C1DDED54(v31, v6);
  v27 = swift_allocObject();
  sub_1C1DEDD58(v6, v27 + v25);
  sub_1C1DC1124(&qword_1EBF1CB90, &qword_1EBF1CB78, &qword_1C1E575B8);
  v28 = v33;
  sub_1C1E5381C();

  return (*(v34 + 8))(v17, v28);
}

uint64_t sub_1C1DE58D8@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for CalculateScrubberView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v31[1] = v6;
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1E529EC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB38, &qword_1C1E57540);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB40, &qword_1C1E57548);
  v15 = *(v14 - 8);
  v33 = v14;
  v34 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - v17;
  sub_1C1E529DC();
  sub_1C1E5269C();
  v19 = *(v3 + 108);
  v32 = v1;
  v20 = (v1 + v19);
  v21 = v20[1];
  v39 = *v20;
  v40 = v21;
  v41 = *(v20 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB30, &qword_1C1E57538);
  sub_1C1E5279C();
  v22 = v37;
  v23 = v38;
  v24 = &v13[*(v10 + 44)];
  *v24 = v36;
  *(v24 + 1) = v22;
  *(v24 + 1) = v23;
  v25 = &v13[*(v10 + 48)];
  *v25 = sub_1C1DEA348;
  *(v25 + 1) = 0;
  sub_1C1DDED54(v1, v7);
  v26 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v27 = swift_allocObject();
  sub_1C1DEDD58(v7, v27 + v26);
  sub_1C1DC1124(&qword_1EBF1CB48, &qword_1EBF1CB38, &qword_1C1E57540);
  sub_1C1DEEC28(&qword_1EBF1CB50, MEMORY[0x1E697BE20]);
  sub_1C1E5382C();

  sub_1C1DC1870(v13, &qword_1EBF1CB38, &qword_1C1E57540);
  sub_1C1DDED54(v32, v7);
  v28 = swift_allocObject();
  sub_1C1DEDD58(v7, v28 + v26);
  sub_1C1DC1124(&qword_1EBF1CB58, &qword_1EBF1CB40, &qword_1C1E57548);
  v29 = v33;
  sub_1C1E5381C();

  return (*(v34 + 8))(v18, v29);
}

uint64_t sub_1C1DE5CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB98, &qword_1C1E575C0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBA0, &qword_1C1E575C8);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v40 - v16);
  *v17 = sub_1C1E538DC();
  v17[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBA8, &qword_1C1E575D0);
  sub_1C1DE61DC(a1, (v17 + *(v19 + 44)));
  v20 = type metadata accessor for CalculateScrubberView();
  v21 = v20[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  v22 = a1 + v20[9];
  sub_1C1E527BC();
  sub_1C1E538DC();
  sub_1C1E5281C();
  v23 = (v17 + *(v11 + 44));
  v24 = v47;
  *v23 = v46;
  v23[1] = v24;
  v23[2] = v48;
  sub_1C1DE5184(v9);
  v25 = (a1 + v20[34]);
  v26 = *v25;
  v27 = v25[1];
  v44 = v26;
  v45 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  v28 = (1.0 - v43) * 0.5 + 0.5;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBB0, &qword_1C1E575D8) + 36)] = v28;
  v29 = sub_1C1E5304C();
  v30 = a1 + v20[12];
  sub_1C1E527BC();
  sub_1C1E5264C();
  v31 = &v9[*(v4 + 44)];
  *v31 = v29;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  sub_1C1DC1424(v17, v14, &qword_1EBF1CBA0, &qword_1C1E575C8);
  v36 = v41;
  sub_1C1DC1424(v9, v41, &qword_1EBF1CB98, &qword_1C1E575C0);
  v37 = v42;
  sub_1C1DC1424(v14, v42, &qword_1EBF1CBA0, &qword_1C1E575C8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBB8, &qword_1C1E575E0);
  sub_1C1DC1424(v36, v37 + *(v38 + 48), &qword_1EBF1CB98, &qword_1C1E575C0);
  sub_1C1DC1870(v9, &qword_1EBF1CB98, &qword_1C1E575C0);
  sub_1C1DC1870(v17, &qword_1EBF1CBA0, &qword_1C1E575C8);
  sub_1C1DC1870(v36, &qword_1EBF1CB98, &qword_1C1E575C0);
  return sub_1C1DC1870(v14, &qword_1EBF1CBA0, &qword_1C1E575C8);
}

unint64_t sub_1C1DE6074()
{
  result = qword_1EBF1C8B8;
  if (!qword_1EBF1C8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C858, &qword_1C1E57210);
    sub_1C1DE612C();
    sub_1C1DC1124(&qword_1EBF1C8E0, &qword_1EBF1C8E8, &unk_1C1E57280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C8B8);
  }

  return result;
}

unint64_t sub_1C1DE612C()
{
  result = qword_1EBF1C8C0;
  if (!qword_1EBF1C8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C8C8, &qword_1C1E57270);
    sub_1C1DC1124(&qword_1EBF1C8D0, &qword_1EBF1C8D8, &qword_1C1E57278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C8C0);
  }

  return result;
}

uint64_t sub_1C1DE61DC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v148 = a2;
  v147 = sub_1C1E528DC();
  v155 = *(v147 - 8);
  v3 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v139 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1C1E52CDC();
  v125 = *(v124 - 8);
  v5 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v120 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBC0, &qword_1C1E575E8);
  v118 = *(v117 - 8);
  v7 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v112 - v8;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBC8, &qword_1C1E575F0);
  v123 = *(v121 - 8);
  v9 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v114 = &v112 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBD0, &qword_1C1E575F8);
  v12 = *(v11 - 8);
  v122 = v11 - 8;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v116 = &v112 - v14;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBD8, &qword_1C1E57600);
  v15 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v119 = &v112 - v16;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBE0, &qword_1C1E57608);
  v133 = *(v132 - 8);
  v17 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v126 = &v112 - v18;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBE8, &qword_1C1E57610);
  v137 = *(v135 - 8);
  v19 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v151 = &v112 - v20;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBF0, &qword_1C1E57618);
  v144 = *(v142 - 8);
  v21 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v152 = &v112 - v22;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CBF8, &qword_1C1E57620);
  v146 = *(v145 - 8);
  v23 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v136 = &v112 - v24;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC00, &qword_1C1E57628);
  v141 = *(v143 - 8);
  v25 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v140 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v138 = &v112 - v28;
  v29 = type metadata accessor for CalculateScrubberView();
  v30 = (v29 - 8);
  v31 = *(v29 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1DDED54(a1, v33);
  v34 = *(v31 + 80);
  v150 = (v34 + 16) & ~v34;
  v134 = swift_allocObject();
  sub_1C1DEDD58(v33, v134 + ((v34 + 16) & ~v34));
  v35 = v30[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  v36 = a1 + v30[12];
  sub_1C1E527BC();
  sub_1C1E538DC();
  sub_1C1E5281C();
  v131 = v161;
  v130 = v163;
  v129 = v165;
  v128 = v166;
  v168 = v162;
  v167 = v164;
  v153 = a1;
  sub_1C1DDED54(a1, v33);
  sub_1C1E5483C();
  v37 = sub_1C1E5482C();
  v38 = (v34 + 32) & ~v34;
  v149 = v32;
  v154 = v34;
  v39 = swift_allocObject();
  v40 = MEMORY[0x1E69E85E0];
  *(v39 + 16) = v37;
  *(v39 + 24) = v40;
  sub_1C1DEDD58(v33, v39 + v38);
  sub_1C1DDED54(a1, v33);
  v41 = sub_1C1E5482C();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = v40;
  sub_1C1DEDD58(v33, v42 + v38);
  sub_1C1E537BC();
  v43 = v115;
  sub_1C1E5396C();
  v44 = sub_1C1DC1124(&qword_1EBF1CC08, &qword_1EBF1CBC0, &qword_1C1E575E8);
  v45 = v114;
  v46 = v117;
  sub_1C1E5334C();
  (*(v118 + 8))(v43, v46);
  v47 = v120;
  sub_1C1E52CCC();
  v157 = v46;
  v158 = v44;
  swift_getOpaqueTypeConformance2();
  sub_1C1DEEC28(&qword_1EBF1CC10, MEMORY[0x1E697C5B0]);
  v48 = v116;
  v49 = v121;
  v50 = v124;
  sub_1C1E5337C();
  (*(v125 + 8))(v47, v50);
  (*(v123 + 8))(v45, v49);
  v51 = sub_1C1E535FC();
  v52 = sub_1C1E5300C();
  v53 = v48;
  v54 = &v48[*(v122 + 44)];
  *v54 = v51;
  v54[8] = v52;
  v55 = sub_1C1E535FC();
  v56 = v119;
  sub_1C1DE7678(v55, v119);

  sub_1C1DC1870(v53, &qword_1EBF1CBD0, &qword_1C1E575F8);
  LOBYTE(v51) = sub_1C1E5304C();
  sub_1C1E5264C();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC18, &qword_1C1E57630) + 36);
  *v65 = v51;
  *(v65 + 8) = v58;
  *(v65 + 16) = v60;
  *(v65 + 24) = v62;
  *(v65 + 32) = v64;
  *(v65 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v67 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC20, &qword_1C1E57668) + 36);
  *v67 = KeyPath;
  *(v67 + 8) = 1;
  v68 = v153;
  v69 = (v153 + v30[17]);
  v70 = *v69;
  v71 = *(v69 + 1);
  LODWORD(v69) = v69[16];
  LOBYTE(v157) = v70;
  LOBYTE(v43) = v70;
  LODWORD(v125) = v70;
  v158 = v71;
  v72 = v71;
  v124 = v71;
  LOBYTE(v159) = v69;
  LOBYTE(v47) = v69;
  LODWORD(v123) = v69;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
  sub_1C1E5265C();
  v73 = v127;
  *(v56 + *(v127 + 36)) = v156;
  LOBYTE(v157) = v43;
  v158 = v72;
  LOBYTE(v159) = v47;
  sub_1C1E5267C();
  v74 = sub_1C1DEEC70();
  v75 = v126;
  v76 = v73;
  sub_1C1E5348C();

  sub_1C1DC1870(v56, &qword_1EBF1CBD8, &qword_1C1E57600);
  v77 = v139;
  sub_1C1E528CC();
  v113 = v33;
  sub_1C1DDED54(v68, v33);
  v78 = v150;
  v79 = swift_allocObject();
  sub_1C1DEDD58(v33, v79 + v78);
  v157 = v76;
  v158 = v74;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = v132;
  v82 = v75;
  sub_1C1E532DC();

  v83 = *(v155 + 8);
  v155 += 8;
  v84 = v147;
  v83(v77, v147);
  (*(v133 + 8))(v82, v81);
  sub_1C1E528BC();
  v85 = v113;
  sub_1C1DDED54(v153, v113);
  v86 = v150;
  v87 = swift_allocObject();
  v88 = v85;
  sub_1C1DEDD58(v85, v87 + v86);
  v157 = v81;
  v158 = OpaqueTypeConformance2;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = v135;
  v91 = v151;
  sub_1C1E532DC();

  v83(v77, v84);
  (*(v137 + 8))(v91, v90);
  LOBYTE(v157) = v125;
  v158 = v124;
  LOBYTE(v159) = v123;
  sub_1C1E5265C();
  sub_1C1DDED54(v153, v88);
  v92 = swift_allocObject();
  sub_1C1DEDD58(v88, v92 + v86);
  v157 = v90;
  v158 = v89;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = MEMORY[0x1E69E6370];
  v95 = MEMORY[0x1E69E6388];
  v96 = v136;
  v97 = v142;
  v98 = v152;
  sub_1C1E534BC();

  (*(v144 + 8))(v98, v97);
  v157 = v97;
  v158 = v94;
  v159 = v93;
  v160 = v95;
  swift_getOpaqueTypeConformance2();
  v99 = v138;
  v100 = v145;
  sub_1C1E5333C();
  (*(v146 + 8))(v96, v100);
  LOBYTE(v100) = v168;
  LOBYTE(v98) = v167;
  v101 = v141;
  v102 = *(v141 + 16);
  v103 = v140;
  v104 = v143;
  v102(v140, v99, v143);
  v105 = v148;
  v106 = v134;
  *v148 = sub_1C1DEE608;
  v105[1] = v106;
  v105[2] = v131;
  *(v105 + 24) = v100;
  v105[4] = v130;
  *(v105 + 40) = v98;
  v107 = v128;
  v105[6] = v129;
  v105[7] = v107;
  v108 = v105;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC78, &qword_1C1E57690);
  v102(v108 + *(v109 + 48), v103, v104);
  v110 = *(v101 + 8);

  v110(v99, v104);
  v110(v103, v104);
}

uint64_t sub_1C1DE72CC@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CalculateScrubberView();
  v5 = a1 + *(v4 + 60);
  v12 = *v5;
  v14 = *(v5 + 1);
  v15 = v5[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
  sub_1C1E5265C();
  if (v10 == 1 && (v6 = a1 + *(v4 + 64), v13 = *v6, v16 = *(v6 + 2), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC80, &qword_1C1E57698), sub_1C1E536EC(), (v7 = v11) != 0))
  {
    result = v10;
  }

  else
  {
    v9 = *a1;
    result = CalculateScrubber.formattedValue.getter();
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1C1DE73AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C800, &unk_1C1E570D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E55C40;
  v8 = *MEMORY[0x1E6992228];
  *(inited + 32) = *MEMORY[0x1E6992228];
  v9 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v10 = v8;
  v11 = [v9 initWithBool_];
  v12 = sub_1C1DE2864();
  *(inited + 40) = v11;
  v13 = *MEMORY[0x1E6992230];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v15 = v13;
  v16 = [v14 initWithBool_];
  *(inited + 104) = v12;
  *(inited + 80) = v16;
  sub_1C1DF776C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C810, &qword_1C1E576E0);
  swift_arrayDestroy();
  v17 = sub_1C1E544FC();

  v18 = v17;
  if (!v17)
  {
    sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
    v18 = sub_1C1E544FC();
  }

  v19 = v17;
  v20 = sub_1C1DFD1D4(v18);

  sub_1C1DFCE18(v20);
  swift_getKeyPath();
  sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v21 = *(v6 + 56);
  if (v21)
  {
    v22 = *(v6 + 64);

    v23 = CalculateScrubber.formattedValue.getter();
    v21(v23);
    sub_1C1DD0EB8(v21);
  }

  v24 = a4 + *(type metadata accessor for CalculateScrubberView() + 64);
  v27 = *v24;
  v28 = *(v24 + 2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC80, &qword_1C1E57698);
  return sub_1C1E536FC();
}

uint64_t sub_1C1DE7678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1C1E5276C();
  v6 = v29;
  v7 = v29 * 0.5;
  v8 = v30;
  v9 = DWORD1(v30);
  v10 = *(&v30 + 1);
  v11 = v31;

  v12 = sub_1C1E538DC();
  v14 = v13;
  *v32 = v29 * 0.5;
  *(v32 + 1) = v29;
  v32[1] = v30;
  *v33 = v31;
  *&v33[16] = a1;
  *&v33[24] = 256;
  v27 = v30;
  *v28 = v31;
  *&v28[10] = *&v33[10];
  v26 = v32[0];
  v36 = *v28;
  v37 = *&v28[16];
  v34 = v32[0];
  v35 = v30;
  *&v38 = v12;
  *(&v38 + 1) = v13;
  sub_1C1DC1424(v3, a2, &qword_1EBF1CBD0, &qword_1C1E575F8);
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC48, &unk_1C1E57670) + 36));
  v16 = *&v28[16];
  v15[2] = *v28;
  v15[3] = v16;
  v15[4] = v38;
  v17 = v35;
  *v15 = v34;
  v15[1] = v17;
  v39[2] = *v28;
  v39[3] = *&v28[16];
  v39[0] = v26;
  v39[1] = v27;
  v40 = v12;
  v41 = v14;
  sub_1C1DC1424(v32, v19, &qword_1EBF1CC90, &unk_1C1E576D0);
  sub_1C1DC1424(&v34, v19, &qword_1EBF1CC70, &unk_1C1E57680);
  sub_1C1DC1870(v39, &qword_1EBF1CC70, &unk_1C1E57680);
  *v19 = v7;
  *&v19[1] = v6;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = a1;
  v25 = 256;
  return sub_1C1DC1870(v19, &qword_1EBF1CC90, &unk_1C1E576D0);
}

uint64_t sub_1C1DE7858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CalculateScrubberView() + 60));
  v7 = *v3;
  v8 = *(v3 + 1);
  v9 = v3[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
  sub_1C1E5266C();
  v4 = *MEMORY[0x1E697D770];
  v5 = sub_1C1E5387C();
  return (*(*(v5 - 8) + 104))(a2, v4, v5);
}

uint64_t sub_1C1DE7924@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for CalculateScrubberView();
  v20 = *(a1 + v5[17]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC88, &qword_1C1E576A0);
  sub_1C1E536EC();
  v6 = v17;
  if (!v17)
  {
    sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
    v6 = sub_1C1E544FC();
  }

  v7 = v17;
  v8 = sub_1C1DFD1D4(v6);

  sub_1C1DFCE18(v8);
  swift_getKeyPath();
  sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  swift_beginAccess();
  v9 = *(v4 + 56);
  if (v9)
  {
    v10 = *(v4 + 64);

    v11 = CalculateScrubber.formattedValue.getter();
    v9(v11);
    sub_1C1DD0EB8(v9);
  }

  CalculateScrubber.formattedValue.getter();
  v12 = a1 + v5[16];
  v18 = *v12;
  v19 = *(v12 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC80, &qword_1C1E57698);
  sub_1C1E536FC();
  v13 = a1 + v5[15];
  LOBYTE(v18) = *v13;
  *(&v18 + 1) = *(v13 + 1);
  LOBYTE(v19) = v13[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
  sub_1C1E5266C();
  v14 = *MEMORY[0x1E697D770];
  v15 = sub_1C1E5387C();
  return (*(*(v15 - 8) + 104))(a2, v14, v15);
}

uint64_t sub_1C1DE7BA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for CalculateScrubberView();
  v5 = a3 + v4[15];
  v10 = *v5;
  v13 = *(v5 + 1);
  v14 = v5[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
  sub_1C1E5265C();
  if (v9 == 1)
  {
    v6 = *a3;
    CalculateScrubber.formattedValue.getter();
    sub_1C1DFF378(MEMORY[0x1E69E7CC0]);
    sub_1C1E544FC();

    v11 = *(a3 + v4[17]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC88, &qword_1C1E576A0);
    sub_1C1E536FC();
    CalculateScrubber.formattedValue.getter();
  }

  v7 = a3 + v4[16];
  v12 = *v7;
  v15 = *(v7 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC80, &qword_1C1E57698);
  return sub_1C1E536FC();
}

uint64_t sub_1C1DE7D14@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CalculateScrubberView() + 72));
  v6 = *v3;
  v7 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  result = sub_1C1E536EC();
  *a2 = v5;
  return result;
}

uint64_t sub_1C1DE7D90(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for CalculateScrubberView() + 72));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

uint64_t (*CalculateScrubberView.isCompact.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CalculateScrubberView() + 72));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  return sub_1C1DEFFD0;
}

uint64_t CalculateScrubberView.$isCompact.getter()
{
  v1 = (v0 + *(type metadata accessor for CalculateScrubberView() + 72));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E5370C();
  return v3;
}

uint64_t CalculateScrubberView.value.getter()
{
  v3 = *(v0 + *(type metadata accessor for CalculateScrubberView() + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536EC();
  return v2;
}

uint64_t sub_1C1DE7F88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for CalculateScrubberView() + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  result = sub_1C1E536EC();
  *a2 = v4;
  return result;
}

void sub_1C1DE7FF8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for CalculateScrubberView() + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536FC();
  sub_1C1DE81DC();
}

void CalculateScrubberView.value.setter(uint64_t a1)
{
  v2 = v1;
  v4 = (v2 + *(type metadata accessor for CalculateScrubberView() + 80));
  v5 = v4[1];
  v8 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536FC();
  v6 = *v2;
  sub_1C1E536EC();
  if (*(v6 + 104) == a1)
  {
    sub_1C1DFE054(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
    sub_1C1E520AC();
  }
}

void sub_1C1DE81DC()
{
  v1 = *v0;
  v4 = *(v0 + *(type metadata accessor for CalculateScrubberView() + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536EC();
  if (*(v1 + 104) == v3)
  {
    sub_1C1DFE054(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
    sub_1C1E520AC();
  }
}

void (*CalculateScrubberView.value.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = (v1 + *(type metadata accessor for CalculateScrubberView() + 80));
  v6 = *v5;
  v4[5] = *v5;
  v7 = v5[1];
  v4[6] = v7;
  *v4 = v6;
  v4[1] = v7;
  v4[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536EC();
  return sub_1C1DE83E0;
}

void sub_1C1DE83E0(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[2];
  v6 = (*a1)[6];
  v5 = (*a1)[7];
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  *v3 = v8;
  v3[1] = v6;
  v3[3] = v4;
  v9 = v3 + 3;
  sub_1C1E536FC();
  v10 = *v7;
  *v3 = v8;
  v3[1] = v6;
  sub_1C1E536EC();
  v11 = v3[3];
  v12 = *(v10 + 104);
  if ((a2 & 1) == 0)
  {
    if (v12 != *v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C1DFE054(*v9);
    goto LABEL_6;
  }

  if (v12 == *v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *v3 = v10;
  sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520AC();

LABEL_6:
  free(v3);
}

uint64_t CalculateScrubberView.$value.getter()
{
  v3 = *(v0 + *(type metadata accessor for CalculateScrubberView() + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E5370C();
  return v2;
}

double sub_1C1DE864C()
{
  v1 = type metadata accessor for CalculateScrubberView();
  v2 = (v0 + v1[19]);
  v6 = *v2;
  v9 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  v3 = (v0 + v1[22]);
  v7 = *v3;
  v10 = v3[1];
  v12 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB30, &qword_1C1E57538);
  sub_1C1E5278C();
  v4 = (v0 + v1[25]);
  v8 = *v4;
  v11 = v4[1];
  v13 = *(v4 + 1);
  sub_1C1E5278C();
  return v14 + v14 + v14 * *(v0 + v1[29]);
}

uint64_t sub_1C1DE875C(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for CalculateScrubberView();
  v5 = *(v4 + 140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  v6 = v2 + *(v4 + 144);
  result = sub_1C1E527BC();
  v8 = round(a1 / (v9 + v9));
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 9.22337204e18)
  {
    return v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C1DE883C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CalculateScrubberView() + 72));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

void sub_1C1DE88B4()
{
  v1 = v0;
  v2 = type metadata accessor for CalculateScrubberView();
  v3 = v0 + v2[18];
  v18 = *v3;
  v21 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  if (v16 == 1)
  {
    v4 = sub_1C1DE3DF0();
    if ((v4 & 1) == 0)
    {
      v4 = MEMORY[0x1C690F510](0.5, 1.0, 0.0);
    }

    MEMORY[0x1EEE9AC00](v4);
    sub_1C1E5291C();
  }

  v5 = *v0;
  v6 = v0 + v2[21];
  v19 = *v6;
  v22 = *(v6 + 1);
  sub_1C1E536EC();
  if (v16 == 1)
  {
    v7 = 1;
    if ((*(v5 + 88) & 1) == 0)
    {
LABEL_7:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
      sub_1C1E520AC();

      goto LABEL_10;
    }
  }

  else
  {
    v9 = v0 + v2[24];
    v20 = *v9;
    v23 = *(v9 + 1);
    sub_1C1E536EC();
    v7 = v16;
    if (v16 != *(v5 + 88))
    {
      goto LABEL_7;
    }
  }

  *(v5 + 88) = v7;
LABEL_10:
  v10 = sub_1C1DE864C();
  v11 = sub_1C1DE875C(v10);
  v12 = (v1 + v2[20]);
  v13 = *v12;
  v14 = v12[1];
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536FC();
  sub_1C1E536EC();
  if (*(v5 + 104) == v17)
  {
    sub_1C1DFE054(v17);
  }

  else
  {
    v15 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v15);
    sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
    sub_1C1E520AC();
  }
}

uint64_t CalculateScrubberView.isDragging.getter()
{
  v1 = (v0 + *(type metadata accessor for CalculateScrubberView() + 84));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  return v3;
}

uint64_t CalculateScrubberView.isPanning.getter()
{
  v1 = (v0 + *(type metadata accessor for CalculateScrubberView() + 96));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  return v3;
}

uint64_t sub_1C1DE8D0C(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for CalculateScrubberView();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v15 = sub_1C1DE875C(a1);
  result = sub_1C1DE875C(a2);
  if (__OFSUB__(result, v15))
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    v18 = v15;
    v50 = result - v15;
    v51 = v15;
    v52 = v7;
    v53 = v11;
    v19 = (v2 + v6[20]);
    v20 = *v19;
    v21 = *(v19 + 1);
    v54 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v55 = v20;
    v56 = v21;
    v57 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
    sub_1C1E536FC();
    v22 = *v2;
    v55 = v20;
    v56 = v21;
    sub_1C1E536EC();
    v23 = v57;
    if (*(*&v22 + 104) == v57)
    {
      sub_1C1DFE054(v57);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v50 - 2) = v22;
      *(&v50 - 1) = v23;
      v55 = v22;
      sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
      sub_1C1E520AC();
    }

    v25 = v6[35];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
    sub_1C1E527BC();
    v26 = v55;
    v27 = v3 + v6[36];
    sub_1C1E527BC();
    v28 = (v26 + v55) * v17 - a1;
    v29 = (v3 + v6[19]);
    v30 = *v29;
    v31 = *(v29 + 1);
    v55 = v30;
    v56 = v31;
    v57 = *&a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
    sub_1C1E536FC();
    sub_1C1DDED54(v3, v14);
    v32 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v33 = (v32 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    sub_1C1DEDD58(v14, v36 + v32);
    v37 = v50;
    *(v36 + v33) = v51;
    *(v36 + v34) = v37;
    *(v36 + v35) = a1;
    *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
    v38 = v53;
    sub_1C1DDED54(v3, v53);
    v39 = v54;
    sub_1C1DDED54(v38, v54);
    v40 = swift_allocObject();
    sub_1C1DEDD58(v38, v40 + v32);
    _s14descr1F4186469V15SpringAnimationCMa();
    v41 = swift_allocObject();
    *(v41 + 80) = CACurrentMediaTime();
    *(v41 + 88) = 0x4097700000000000;
    *(v41 + 96) = 0;
    *(v41 + 104) = 1;
    *(v41 + 112) = 0;
    *(v41 + 120) = 1;
    *(v41 + 128) = 0;
    *(v41 + 136) = 1;
    *(v41 + 144) = 0;
    *(v41 + 152) = 1;
    *(v41 + 160) = 0;
    *(v41 + 168) = 0;
    *(v41 + 176) = 1;
    *(v41 + 48) = sub_1C1DEE410;
    *(v41 + 56) = v36;
    *(v41 + 16) = xmmword_1C1E57190;
    *(v41 + 32) = xmmword_1C1E571A0;
    *(v41 + 64) = sub_1C1DEE4D0;
    *(v41 + 72) = v40;
    v42 = objc_opt_self();

    v43 = [v42 mainScreen];
    v44 = [v43 displayLinkWithTarget:v41 selector:sel_displayLinkDidUpdate_];

    if (v44)
    {
      sub_1C1DEE4E8(v39);
      v45 = [objc_opt_self() currentRunLoop];
      [v44 addToRunLoop:v45 forMode:*MEMORY[0x1E695D918]];
    }

    else
    {
      *(v41 + 160) = 0x3FF0000000000000;
      v46 = *v39;
      swift_getKeyPath();
      v55 = v46;
      sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);

      sub_1C1E520BC();

      swift_beginAccess();
      v47 = *(*&v46 + 72);
      if (v47)
      {
        v48 = *(*&v46 + 80);

        v47(v49);
        sub_1C1DD0EB8(v47);
      }

      sub_1C1DEE4E8(v39);
    }
  }

  return result;
}

uint64_t sub_1C1DE932C(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = round(a3 * a4);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = a2 + v4;
  if (__OFADD__(a2, v4))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = type metadata accessor for CalculateScrubberView();
  v8 = (v6 + *(v7 + 80));
  v9 = v8[1];
  v13 = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536FC();
  v10 = *v6;
  sub_1C1E536EC();
  if (*(v10 + 104) == v5)
  {
    sub_1C1DFE054(v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
    sub_1C1E520AC();
  }

  v12 = (v6 + *(v7 + 76));
  v14 = *v12;
  v15 = v12[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  return sub_1C1E536FC();
}

uint64_t sub_1C1DE9568(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  result = swift_beginAccess();
  v3 = *(v1 + 72);
  if (v3)
  {
    v4 = *(v1 + 80);

    v3(v5);
    return sub_1C1DD0EB8(v3);
  }

  return result;
}

uint64_t sub_1C1DE9640@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CalculateScrubberView() + 84));
  v6 = *v3;
  v7 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  result = sub_1C1E536EC();
  *a2 = v5;
  return result;
}

uint64_t sub_1C1DE96BC(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for CalculateScrubberView() + 84));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

uint64_t CalculateScrubberView.isDragging.setter()
{
  v1 = (v0 + *(type metadata accessor for CalculateScrubberView() + 84));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

uint64_t (*CalculateScrubberView.isDragging.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CalculateScrubberView() + 84));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  return sub_1C1DE985C;
}

uint64_t CalculateScrubberView.$isDragging.getter()
{
  v1 = (v0 + *(type metadata accessor for CalculateScrubberView() + 84));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E5370C();
  return v3;
}

uint64_t sub_1C1DE98CC(uint64_t a1, void *a2)
{
  result = sub_1C1E5271C();
  *a2 = v4;
  return result;
}

void sub_1C1DE98F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C838, &qword_1C1E571C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for CalculateScrubberView();
  v10 = (v0 + v9[21]);
  v11 = *v10;
  v12 = *(v10 + 1);
  LOBYTE(v21) = *v10;
  v22 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  if ((v24 & 1) == 0)
  {
    LOBYTE(v21) = v11;
    v22 = v12;
    v24 = 1;
    sub_1C1E536FC();
    v13 = (v0 + v9[15]);
    v14 = *v13;
    v15 = *(v13 + 1);
    LOBYTE(v13) = v13[16];
    LOBYTE(v21) = v14;
    v22 = v15;
    v23 = v13;
    v24 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
    sub_1C1E5266C();
    sub_1C1E51F3C();
    v16 = sub_1C1E51F5C();
    (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
    v17 = v9[23];
    sub_1C1DC1424(v8, v5, &qword_1EBF1C838, &qword_1C1E571C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8);
    sub_1C1E536FC();
    sub_1C1DC1870(v8, &qword_1EBF1C838, &qword_1C1E571C0);
    if (*(v1 + 8) == 1)
    {
      sub_1C1E5392C();
      sub_1C1E5273C();
      v18 = v9[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
      sub_1C1E527BC();
      sub_1C1E5391C();

      MEMORY[0x1EEE9AC00](v19);
      *(&v20 - 2) = v1;
      sub_1C1E5291C();
    }
  }

  sub_1C1DE88B4();
}

uint64_t sub_1C1DE9BF4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C838, &qword_1C1E571C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v42 - v4;
  v6 = sub_1C1E51F5C();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for CalculateScrubberView();
  v14 = v0 + v13[19];
  v16 = *(v14 + 8);
  v43 = *v14;
  v15 = v43;
  v44 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  v17 = v46;
  sub_1C1E5271C();
  v19 = v17 + v18;
  v43 = v15;
  v44 = v16;
  sub_1C1E536EC();
  v20 = v46;
  sub_1C1E5272C();
  v22 = v20 + v21;
  if (vabdd_f64(v22, v19) < 8.0)
  {
    v22 = v19;
    if (*(v0 + 8) == 1)
    {
      sub_1C1E5273C();
      v24 = v23;
      v25 = v13[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
      sub_1C1E527BC();
      v26 = v24 < v43;
      v22 = v19;
      if (v26)
      {
        v27 = v13[23];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8);
        sub_1C1E536EC();
        v28 = v42;
        if ((*(v42 + 48))(v5, 1, v6) == 1)
        {
          sub_1C1DC1870(v5, &qword_1EBF1C838, &qword_1C1E571C0);
        }

        else
        {
          (*(v28 + 32))(v12, v5, v6);
          sub_1C1E51F3C();
          sub_1C1E51F4C();
          v30 = v29;
          v31 = *(v28 + 8);
          v31(v9, v6);
          if (v30 >= 0.2)
          {
            v31(v12, v6);
          }

          else
          {
            v32 = (v1 + v13[15]);
            v33 = *v32;
            v34 = *(v32 + 1);
            LOBYTE(v32) = v32[16];
            LOBYTE(v43) = v33;
            v44 = v34;
            v45 = v32;
            LOBYTE(v46) = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
            sub_1C1E5266C();
            v35 = v1 + v13[34];
            v36 = *(v35 + 8);
            v43 = *v35;
            v44 = v36;
            v46 = 0.0;

            sub_1C1E536FC();
            v31(v12, v6);
          }
        }

        v22 = v19;
      }
    }
  }

  sub_1C1DE88B4();
  sub_1C1DE8D0C(v19, v22);
  if (*(v1 + 8) == 1)
  {
    v37 = sub_1C1E5392C();
    MEMORY[0x1EEE9AC00](v37);
    *(&v42 - 2) = v1;
    sub_1C1E5291C();
  }

  v38 = (v1 + v13[21]);
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v43) = v39;
  v44 = v40;
  LOBYTE(v46) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

uint64_t sub_1C1DEA058@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CalculateScrubberView() + 96));
  v6 = *v3;
  v7 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  result = sub_1C1E536EC();
  *a2 = v5;
  return result;
}

uint64_t sub_1C1DEA0D4(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for CalculateScrubberView() + 96));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

uint64_t CalculateScrubberView.isPanning.setter()
{
  v1 = (v0 + *(type metadata accessor for CalculateScrubberView() + 96));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

uint64_t (*CalculateScrubberView.isPanning.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for CalculateScrubberView() + 96));
  v6 = *v5;
  *(v4 + 50) = *v5;
  v7 = *(v5 + 1);
  *(v4 + 32) = v7;
  *v4 = v6;
  *(v4 + 8) = v7;

  *(v4 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  return sub_1C1DEFFD0;
}

void sub_1C1DEA274(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  *(*a1 + 16) = *(*a1 + 50);
  *(v1 + 24) = v4;
  *(v1 + 49) = v2;
  sub_1C1E536FC();

  free(v1);
}

uint64_t CalculateScrubberView.$isPanning.getter()
{
  v1 = (v0 + *(type metadata accessor for CalculateScrubberView() + 96));
  v4 = *v1;
  v5 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E5370C();
  return v3;
}

uint64_t sub_1C1DEA348(uint64_t a1, void *a2)
{
  result = sub_1C1E526AC();
  *a2 = v4;
  return result;
}

uint64_t sub_1C1DEA374()
{
  v1 = type metadata accessor for CalculateScrubberView();
  v2 = (v0 + v1[24]);
  v3 = *v2;
  v4 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  sub_1C1E536EC();
  if ((v16 & 1) == 0)
  {
    sub_1C1E536FC();
    v5 = (v0 + v1[15]);
    v17 = *v5;
    v20 = *(v5 + 1);
    v23 = v5[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB68, &qword_1C1E575A8);
    sub_1C1E5266C();
    if (*(v0 + 8) == 1)
    {
      v6 = sub_1C1E5392C();
      MEMORY[0x1EEE9AC00](v6);
      sub_1C1E5291C();
    }
  }

  sub_1C1DE88B4();
  v7 = (v0 + v1[25]);
  v18 = *v7;
  v21 = v7[1];
  v24 = *(v7 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB30, &qword_1C1E57538);
  sub_1C1E5278C();
  v8 = (v0 + v1[26]);
  v9 = *v8;
  v10 = v8[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  CACurrentMediaTime();
  v11 = (v0 + v1[27]);
  v12 = *v11;
  v13 = v11[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB60, &qword_1C1E57550);
  sub_1C1E536EC();
  v14 = (v0 + v1[28]);
  v22 = v14[1];
  v19 = *v14;
  sub_1C1E536FC();
  sub_1C1E526AC();
  sub_1C1E536FC();
  CACurrentMediaTime();
  return sub_1C1E536FC();
}

uint64_t sub_1C1DEA624()
{
  v1 = CACurrentMediaTime();
  v2 = type metadata accessor for CalculateScrubberView();
  v3 = (v0 + v2[27]);
  v15 = *v3;
  v19 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB60, &qword_1C1E57550);
  sub_1C1E536EC();
  v4 = v1 - v14;
  v5 = (v0 + v2[19]);
  v16 = *v5;
  v20 = v5[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  sub_1C1E526AC();
  v7 = v14 + v6 * *(v0 + v2[29]);
  v8 = v4 < 0.1;
  v9 = v7;
  if (v8)
  {
    v10 = (v0 + v2[28]);
    v17 = *v10;
    v21 = v10[1];
    sub_1C1E536EC();
    v9 = v7 + v14 * *(v0 + v2[30]);
  }

  sub_1C1DE88B4();
  sub_1C1DE8D0C(v7, v9);
  if (*(v0 + 8) == 1)
  {
    v11 = sub_1C1E5392C();
    MEMORY[0x1EEE9AC00](v11);
    sub_1C1E5291C();
  }

  v12 = (v0 + v2[24]);
  v18 = *v12;
  v22 = *(v12 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C850, &qword_1C1E57208);
  return sub_1C1E536FC();
}

double sub_1C1DEA82C()
{
  v0 = sub_1C1DE864C();
  sub_1C1E5283C();
  v2 = v1 * 0.5;
  v3 = *(type metadata accessor for CalculateScrubberView() + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  if (v0 <= v8 - v2)
  {
    v0 = v8 - v2;
  }

  sub_1C1E5283C();
  v5 = v4 * 0.5;
  sub_1C1E527BC();
  if (v5 - v8 < v0)
  {
    v0 = v5 - v8;
  }

  sub_1C1E5283C();
  return v0 / v6 + v0 / v6;
}

uint64_t sub_1C1DEA90C()
{
  v1 = v0;
  sub_1C1E5283C();
  v3 = v2;
  v4 = type metadata accessor for CalculateScrubberView();
  v5 = *(v4 + 140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  v6 = v1 + *(v4 + 144);
  result = sub_1C1E527BC();
  v8 = v3 / (v10 + v10) * 0.5;
  if (COERCE__INT64(fabs(v8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v8 + 0x4000000000000000 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = 2 * v8;
  result = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

double sub_1C1DEAA18()
{
  v0 = sub_1C1DE864C();
  v1 = type metadata accessor for CalculateScrubberView();
  v2 = *(v1 + 140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  v3 = *(v1 + 144);
  sub_1C1E527BC();
  v4 = fmod(v0, v6 + v6);
  sub_1C1E527BC();
  sub_1C1E527BC();
  return v4 / (v6 + v6);
}

uint64_t sub_1C1DEAAF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a1;
  v65 = a3;
  v4 = sub_1C1E52E5C();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CalculateScrubberView();
  v8 = *(v7 - 8);
  v67 = v7 - 8;
  v61 = v8;
  v66 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1E52C1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA80, &qword_1C1E574A8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA88, &qword_1C1E574B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v53 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA90, &qword_1C1E574B8);
  v24 = *(v23 - 8);
  v58 = v23;
  v59 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v53 - v26;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA98, &qword_1C1E574C0);
  v28 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v54 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v56 = &v53 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v62 = &v53 - v33;
  *v18 = sub_1C1E52C9C();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA0, &qword_1C1E574C8);
  sub_1C1DEB1E8(a2, &v18[*(v34 + 44)]);
  v35 = (a2 + *(v67 + 144));
  v36 = *v35;
  v37 = v35[1];
  v68 = v36;
  v69 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  *&v18[*(v15 + 36)] = v70 + v70;
  (*(v11 + 104))(v14, *MEMORY[0x1E697F3A0], v10);
  sub_1C1DEDF40();
  sub_1C1E5332C();
  (*(v11 + 8))(v14, v10);
  sub_1C1DC1870(v18, &qword_1EBF1CA80, &qword_1C1E574A8);
  v38 = v57;
  sub_1C1DDED54(a2, v57);
  v39 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v40 = swift_allocObject();
  sub_1C1DEDD58(v38, v40 + v39);
  v41 = &v22[*(v19 + 36)];
  *v41 = sub_1C1DEDFF8;
  v41[1] = v40;
  v41[2] = 0;
  v41[3] = 0;
  v42 = v53;
  sub_1C1E52E4C();
  v43 = sub_1C1DEE010();
  sub_1C1E5341C();
  (*(v63 + 8))(v42, v64);
  sub_1C1DC1870(v22, &qword_1EBF1CA88, &qword_1C1E574B0);
  v68 = v19;
  v69 = v43;
  swift_getOpaqueTypeConformance2();
  v44 = v54;
  v45 = v58;
  sub_1C1E533CC();
  (*(v59 + 8))(v27, v45);
  v46 = *a2;
  v68 = CalculateScrubber.formattedValue.getter();
  v69 = v47;
  sub_1C1DC733C();
  v48 = v56;
  sub_1C1E5297C();

  sub_1C1DC1870(v44, &qword_1EBF1CA98, &qword_1C1E574C0);
  sub_1C1DDED54(a2, v38);
  v49 = swift_allocObject();
  sub_1C1DEDD58(v38, v49 + v39);
  v50 = v62;
  sub_1C1E5298C();

  sub_1C1DC1870(v48, &qword_1EBF1CA98, &qword_1C1E574C0);
  v51 = *(v67 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);
  sub_1C1E52D7C();
  sub_1C1DEE108();
  sub_1C1E5342C();

  return sub_1C1DC1870(v50, &qword_1EBF1CA98, &qword_1C1E574C0);
}

uint64_t sub_1C1DEB1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAD8, &qword_1C1E574E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for CalculateScrubberView();
  v12 = v11[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  v30 = v31;
  v13 = v11[31];
  sub_1C1E527BC();
  v14 = v31;
  v15 = sub_1C1DEA82C();
  v16 = sub_1C1DE864C();
  sub_1C1E5283C();
  v18 = v17 * 0.5;
  v19 = v11[32];
  sub_1C1E527BC();
  if (v16 <= v31 - v18)
  {
    v16 = v31 - v18;
  }

  sub_1C1E5283C();
  v21 = v20 * 0.5;
  sub_1C1E527BC();
  if (v21 - v31 < v16)
  {
    v16 = v21 - v31;
  }

  sub_1C1E527BC();
  v22 = v31;
  *v10 = sub_1C1E52C0C();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAE0, &qword_1C1E574E8);
  sub_1C1DEB4B8(a1, &v10[*(v23 + 44)]);
  sub_1C1E527BC();
  v24 = v31;
  sub_1C1E527BC();
  v25 = v24 + v31;
  sub_1C1E527BC();
  v26 = v25 + v31;
  sub_1C1DC1424(v10, v8, &qword_1EBF1CAD8, &qword_1C1E574E0);
  *a2 = v30;
  *(a2 + 8) = 0;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = 0;
  *(a2 + 48) = v22;
  *(a2 + 56) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAE8, &qword_1C1E574F0);
  sub_1C1DC1424(v8, a2 + *(v27 + 80), &qword_1EBF1CAD8, &qword_1C1E574E0);
  v28 = a2 + *(v27 + 96);
  *v28 = v26;
  *(v28 + 8) = 0;
  sub_1C1DC1870(v10, &qword_1EBF1CAD8, &qword_1C1E574E0);
  return sub_1C1DC1870(v8, &qword_1EBF1CAD8, &qword_1C1E574E0);
}

uint64_t sub_1C1DEB4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CalculateScrubberView();
  v5 = v4 - 8;
  v35 = *(v4 - 8);
  v6 = *(v35 + 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAF0, &unk_1C1E574F8);
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v37);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v14 = sub_1C1DEA90C();
  sub_1C1E5283C();
  v16 = v15;
  v17 = *(v5 + 148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  v36 = v17;
  sub_1C1E527BC();
  v18 = *&v38;
  v19 = *(v5 + 152);
  result = sub_1C1E527BC();
  if (v14 < -1)
  {
    __break(1u);
  }

  else
  {
    v21 = (v16 - (v18 + *&v38) * v14) * 0.5;
    v38 = v14 / -2;
    v39 = v14 / 2;
    swift_getKeyPath();
    sub_1C1DDED54(a1, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = v35[80];
    v34 = v19;
    v35 = v11;
    v23 = (v22 + 16) & ~v22;
    v24 = a2;
    v25 = (v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    sub_1C1DEDD58(v7, v26 + v23);
    *(v26 + v25) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAF8, &qword_1C1E57520);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB00, &qword_1C1E57528);
    sub_1C1DEE200();
    sub_1C1DEE2E0();
    sub_1C1E537FC();
    v27 = sub_1C1DE864C();
    sub_1C1E527BC();
    v28 = *&v38;
    sub_1C1E527BC();
    v29 = fmod(v27, v28 + *&v38);
    v30 = &v13[*(v37 + 36)];
    *v30 = v29;
    *(v30 + 1) = 0;
    v31 = v35;
    sub_1C1DC1424(v13, v35, &qword_1EBF1CAF0, &unk_1C1E574F8);
    *v24 = v21;
    *(v24 + 8) = 0;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB28, &qword_1C1E57530);
    sub_1C1DC1424(v31, v24 + *(v32 + 48), &qword_1EBF1CAF0, &unk_1C1E574F8);
    v33 = v24 + *(v32 + 64);
    *v33 = v21;
    *(v33 + 8) = 0;
    sub_1C1DC1870(v13, &qword_1EBF1CAF0, &unk_1C1E574F8);
    return sub_1C1DC1870(v31, &qword_1EBF1CAF0, &unk_1C1E574F8);
  }

  return result;
}

uint64_t sub_1C1DEB870(uint64_t a1)
{
  v2 = sub_1C1E5376C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C1E5375C();
  MEMORY[0x1C690F520](v6, 0.0);
  (*(v3 + 8))(v6, v2);
  sub_1C1E5391C();

  v7 = sub_1C1DE3DF0();
  if ((v7 & 1) == 0)
  {
  }

  MEMORY[0x1EEE9AC00](v7);
  *&v10[-16] = a1;
  sub_1C1E5291C();

  v8 = *(type metadata accessor for CalculateScrubberView() + 56);
  v10[7] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);
  sub_1C1E52D6C();
}

uint64_t sub_1C1DEBA34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a1;
  v65 = a3;
  v4 = sub_1C1E52E5C();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CalculateScrubberView();
  v8 = *(v7 - 8);
  v67 = v7 - 8;
  v61 = v8;
  v66 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1E52C1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CC98, &qword_1C1E576E8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CCA0, &qword_1C1E576F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v53 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CCA8, &qword_1C1E576F8);
  v24 = *(v23 - 8);
  v58 = v23;
  v59 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v53 - v26;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CCB0, &unk_1C1E57700);
  v28 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v54 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v56 = &v53 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v62 = &v53 - v33;
  *v18 = sub_1C1E52C0C();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAE0, &qword_1C1E574E8);
  sub_1C1DEC12C(a2, &v18[*(v34 + 44)]);
  v35 = (a2 + *(v67 + 144));
  v36 = *v35;
  v37 = v35[1];
  v68 = v36;
  v69 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  *&v18[*(v15 + 36)] = v70 + v70;
  (*(v11 + 104))(v14, *MEMORY[0x1E697F3A0], v10);
  sub_1C1DEF1E0();
  sub_1C1E5332C();
  (*(v11 + 8))(v14, v10);
  sub_1C1DC1870(v18, &qword_1EBF1CC98, &qword_1C1E576E8);
  v38 = v57;
  sub_1C1DDED54(a2, v57);
  v39 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v40 = swift_allocObject();
  sub_1C1DEDD58(v38, v40 + v39);
  v41 = &v22[*(v19 + 36)];
  *v41 = sub_1C1DEF298;
  v41[1] = v40;
  v41[2] = 0;
  v41[3] = 0;
  v42 = v53;
  sub_1C1E52E4C();
  v43 = sub_1C1DEF324();
  sub_1C1E5341C();
  (*(v63 + 8))(v42, v64);
  sub_1C1DC1870(v22, &qword_1EBF1CCA0, &qword_1C1E576F0);
  v68 = v19;
  v69 = v43;
  swift_getOpaqueTypeConformance2();
  v44 = v54;
  v45 = v58;
  sub_1C1E533CC();
  (*(v59 + 8))(v27, v45);
  v46 = *a2;
  v68 = CalculateScrubber.formattedValue.getter();
  v69 = v47;
  sub_1C1DC733C();
  v48 = v56;
  sub_1C1E5297C();

  sub_1C1DC1870(v44, &qword_1EBF1CCB0, &unk_1C1E57700);
  sub_1C1DDED54(a2, v38);
  v49 = swift_allocObject();
  sub_1C1DEDD58(v38, v49 + v39);
  v50 = v62;
  sub_1C1E5298C();

  sub_1C1DC1870(v48, &qword_1EBF1CCB0, &unk_1C1E57700);
  v51 = *(v67 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);
  sub_1C1E52D7C();
  sub_1C1DEF924();
  sub_1C1E5342C();

  return sub_1C1DC1870(v50, &qword_1EBF1CCB0, &unk_1C1E57700);
}

uint64_t sub_1C1DEC12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CalculateScrubberView();
  v33 = *(v4 - 8);
  v5 = *(v33 + 8);
  MEMORY[0x1EEE9AC00](v4);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAF0, &unk_1C1E574F8);
  v6 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  result = sub_1C1DEA90C();
  v13 = result + 3;
  if (__OFADD__(result, 3))
  {
    __break(1u);
  }

  else
  {
    sub_1C1E5283C();
    v15 = v14;
    v16 = *(v4 + 140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
    v32[1] = v16;
    sub_1C1E527BC();
    v17 = *&v35;
    v18 = *(v4 + 144);
    result = sub_1C1E527BC();
    if (v13 >= -1)
    {
      v19 = (v15 - (v17 + *&v35) * v13) * 0.5;
      v35 = v13 / -2;
      v36 = v13 / 2;
      swift_getKeyPath();
      sub_1C1DDED54(a1, v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      v20 = v33[80];
      v33 = v8;
      v21 = a2;
      v22 = (v20 + 16) & ~v20;
      v23 = swift_allocObject();
      v32[0] = v18;
      v24 = v23;
      sub_1C1DEDD58(v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
      *(v24 + ((v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAF8, &qword_1C1E57520);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB00, &qword_1C1E57528);
      sub_1C1DEE200();
      sub_1C1DEE2E0();
      sub_1C1E537FC();
      v25 = sub_1C1DE864C();
      sub_1C1E527BC();
      v26 = *&v35;
      sub_1C1E527BC();
      v27 = fmod(v25, v26 + *&v35);
      v28 = v33;
      v29 = &v11[*(v34 + 36)];
      *v29 = v27;
      *(v29 + 1) = 0;
      sub_1C1DC1424(v11, v28, &qword_1EBF1CAF0, &unk_1C1E574F8);
      *v21 = v19;
      *(v21 + 8) = 0;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CB28, &qword_1C1E57530);
      sub_1C1DC1424(v28, v21 + *(v30 + 48), &qword_1EBF1CAF0, &unk_1C1E574F8);
      v31 = v21 + *(v30 + 64);
      *v31 = v19;
      *(v31 + 8) = 0;
      sub_1C1DC1870(v11, &qword_1EBF1CAF0, &unk_1C1E574F8);
      return sub_1C1DC1870(v28, &qword_1EBF1CAF0, &unk_1C1E574F8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1DEC4F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = sub_1C1DEAA18();
  v9 = (v8 + v7) / a3 + (v8 + v7) / a3;
  v10 = type metadata accessor for CalculateScrubberView();
  v11 = v10[36];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  sub_1C1E527BC();
  v12 = v25;
  v13 = a2 + v10[37];
  sub_1C1E527BC();
  v14 = v25;
  v15 = (a2 + v10[34]);
  v26 = *v15;
  v27 = v15[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  sub_1C1E536EC();
  v16 = *(a2 + 8);
  v17 = sub_1C1E52FFC();
  v18 = a2 + v10[35];
  sub_1C1E527BC();
  result = sub_1C1E5264C();
  *a4 = v12;
  *(a4 + 8) = v9;
  *(a4 + 16) = v14;
  *(a4 + 24) = v24;
  *(a4 + 32) = v16;
  *(a4 + 40) = v17;
  *(a4 + 48) = v20;
  *(a4 + 56) = v21;
  *(a4 + 64) = v22;
  *(a4 + 72) = v23;
  *(a4 + 80) = 0;
  return result;
}

void sub_1C1DEC644(uint64_t a1)
{
  v2 = sub_1C1E5376C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_1C1E5375C();
    MEMORY[0x1C690F520](v6, 0.0);
    (*(v3 + 8))(v6, v2);
    sub_1C1E5391C();

    v7 = sub_1C1DE3DF0();
    if ((v7 & 1) == 0)
    {
    }

    MEMORY[0x1EEE9AC00](v7);
    *&v9[-16] = a1;
    sub_1C1E5291C();

    v8 = *(type metadata accessor for CalculateScrubberView() + 56);
    v9[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0);
    sub_1C1E52D6C();
  }
}

uint64_t sub_1C1DEC814(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CalculateScrubberView() + 136));
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CAA8, &qword_1C1E574D0);
  return sub_1C1E536FC();
}

void sub_1C1DEC898(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1E52F3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 != *MEMORY[0x1E697CC28])
  {
    if (v10 != *MEMORY[0x1E697CC20])
    {
LABEL_16:
      sub_1C1E54BFC();
      __break(1u);
      return;
    }

    v16 = (a2 + *(type metadata accessor for CalculateScrubberView() + 80));
    v17 = *v16;
    v18 = v16[1];
    v24 = *v16;
    v25 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
    sub_1C1E536EC();
    if (!__OFSUB__(v23, 1))
    {
      v24 = v17;
      v25 = v18;
      --v23;
      sub_1C1E536FC();
      v19 = *a2;
      v24 = v17;
      v25 = v18;
      sub_1C1E536EC();
      if (*(v19 + 104) == v23)
      {
        v15 = v23;
        goto LABEL_9;
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v24 = v19;
      sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = (a2 + *(type metadata accessor for CalculateScrubberView() + 80));
  v12 = *v11;
  v13 = v11[1];
  v24 = *v11;
  v25 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9C8, &qword_1C1E572F8);
  sub_1C1E536EC();
  if (__OFADD__(v23, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v24 = v12;
  v25 = v13;
  ++v23;
  sub_1C1E536FC();
  v14 = *a2;
  v24 = v12;
  v25 = v13;
  sub_1C1E536EC();
  if (*(v14 + 104) == v23)
  {
    v15 = v23;
LABEL_9:
    sub_1C1DFE054(v15);
    return;
  }

  v20 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v20);
  v24 = v14;
  sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
LABEL_12:
  sub_1C1E520AC();
}

uint64_t sub_1C1DECC84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DEEC28(&qword_1EBF1C9D0, type metadata accessor for CalculateScrubber);
  sub_1C1E520BC();

  *a2 = *(v3 + 104);
  return result;
}

unint64_t sub_1C1DECD54()
{
  result = qword_1EBF1C910;
  if (!qword_1EBF1C910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C868, &qword_1C1E57220);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C860, &qword_1C1E57218);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C880, &qword_1C1E57238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C858, &qword_1C1E57210);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C888, &qword_1C1E57240);
    sub_1C1DE6074();
    sub_1C1DC1124(&qword_1EBF1C8F0, &qword_1EBF1C888, &qword_1C1E57240);
    swift_getOpaqueTypeConformance2();
    sub_1C1DC1124(&qword_1EBF1C8F8, &qword_1EBF1C880, &qword_1C1E57238);
    swift_getOpaqueTypeConformance2();
    sub_1C1DC1124(&qword_1EBF1C918, &qword_1EBF1C908, &qword_1C1E57298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C910);
  }

  return result;
}

uint64_t sub_1C1DECF2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1C1DECF3C()
{
  result = qword_1EBF1C920;
  if (!qword_1EBF1C920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C890, &qword_1C1E57248);
    sub_1C1DECFF4();
    sub_1C1DC1124(&qword_1EBF1C8E0, &qword_1EBF1C8E8, &unk_1C1E57280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C920);
  }

  return result;
}

unint64_t sub_1C1DECFF4()
{
  result = qword_1EBF1C928;
  if (!qword_1EBF1C928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C930, &qword_1C1E572A0);
    sub_1C1DED078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C928);
  }

  return result;
}

unint64_t sub_1C1DED078()
{
  result = qword_1EBF1C938;
  if (!qword_1EBF1C938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C940, &qword_1C1E572A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C948, &qword_1C1E572B0);
    sub_1C1DED140();
    swift_getOpaqueTypeConformance2();
    sub_1C1DED33C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C938);
  }

  return result;
}

unint64_t sub_1C1DED140()
{
  result = qword_1EBF1C950;
  if (!qword_1EBF1C950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C948, &qword_1C1E572B0);
    sub_1C1DED1F8();
    sub_1C1DC1124(&qword_1EBF1C8E0, &qword_1EBF1C8E8, &unk_1C1E57280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C950);
  }

  return result;
}

unint64_t sub_1C1DED1F8()
{
  result = qword_1EBF1C958;
  if (!qword_1EBF1C958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C960, &qword_1C1E572B8);
    sub_1C1DED284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C958);
  }

  return result;
}

unint64_t sub_1C1DED284()
{
  result = qword_1EBF1C968;
  if (!qword_1EBF1C968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C970, &qword_1C1E572C0);
    sub_1C1DCA40C();
    sub_1C1DC1124(&qword_1EBF1C988, &qword_1EBF1C990, &qword_1C1E572D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C968);
  }

  return result;
}

unint64_t sub_1C1DED33C()
{
  result = qword_1EBF1C998;
  if (!qword_1EBF1C998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C9A0, &qword_1C1E572E0);
    sub_1C1DED3C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C998);
  }

  return result;
}

unint64_t sub_1C1DED3C8()
{
  result = qword_1EBF1C9A8;
  if (!qword_1EBF1C9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C9B0, &qword_1C1E572E8);
    sub_1C1DC1124(&qword_1EBF1C9B8, &qword_1EBF1C9C0, &qword_1C1E572F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C9A8);
  }

  return result;
}

unint64_t sub_1C1DED4A0()
{
  result = qword_1EBF1C9D8;
  if (!qword_1EBF1C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1C9D8);
  }

  return result;
}

void sub_1C1DED538()
{
  type metadata accessor for CalculateScrubber();
  if (v0 <= 0x3F)
  {
    sub_1C1DDEBA0();
    if (v1 <= 0x3F)
    {
      sub_1C1DED94C(319, &qword_1EBF1C518, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1C1DED898(319, &qword_1EBF1CA00, MEMORY[0x1E697C880]);
        if (v3 <= 0x3F)
        {
          sub_1C1DED898(319, &qword_1EBF1CA08, MEMORY[0x1E697BDF0]);
          if (v4 <= 0x3F)
          {
            sub_1C1DED8F8(319, &qword_1EBF1CA10, &qword_1EBF1C840, &qword_1C1E571F8);
            if (v5 <= 0x3F)
            {
              sub_1C1DED8F8(319, &qword_1EBF1CA18, &qword_1EBF1C848, &qword_1C1E57200);
              if (v6 <= 0x3F)
              {
                sub_1C1DED94C(319, &qword_1EBF1CA20, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1C1DED94C(319, &qword_1EBF1CA28, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
                  if (v8 <= 0x3F)
                  {
                    sub_1C1DED94C(319, &qword_1EBF1CA30, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      sub_1C1DED94C(319, &qword_1EBF1CA38, MEMORY[0x1E69E7DE0], MEMORY[0x1E697BF20]);
                      if (v10 <= 0x3F)
                      {
                        sub_1C1DED8F8(319, &qword_1EBF1CA40, &qword_1EBF1C838, &qword_1C1E571C0);
                        if (v11 <= 0x3F)
                        {
                          sub_1C1DED94C(319, &qword_1EBF1CA48, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initStructMetadataWithLayoutString();
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
}

void sub_1C1DED898(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C1DED8F8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1C1E5371C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C1DED94C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for GraphViewModel.GraphType(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GraphViewModel.GraphType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1DEDAEC()
{
  result = qword_1EBF1CA50;
  if (!qword_1EBF1CA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CA58, &qword_1C1E57428);
    sub_1C1DEDB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CA50);
  }

  return result;
}

unint64_t sub_1C1DEDB70()
{
  result = qword_1EBF1CA60;
  if (!qword_1EBF1CA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C8A8, &qword_1C1E57260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C898, &qword_1C1E57250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C880, &qword_1C1E57238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C890, &qword_1C1E57248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C888, &qword_1C1E57240);
    sub_1C1DECF3C();
    sub_1C1DC1124(&qword_1EBF1C8F0, &qword_1EBF1C888, &qword_1C1E57240);
    swift_getOpaqueTypeConformance2();
    sub_1C1DC1124(&qword_1EBF1C8F8, &qword_1EBF1C880, &qword_1C1E57238);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1C868, &qword_1C1E57220);
    sub_1C1DECD54();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CA60);
  }

  return result;
}

uint64_t sub_1C1DEDD58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalculateScrubberView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DEDE08(uint64_t a1)
{
  v2 = sub_1C1E536BC();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1C1E52A1C();
}

uint64_t sub_1C1DEDED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C970, &qword_1C1E572C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1DEDF40()
{
  result = qword_1EBF1CAB0;
  if (!qword_1EBF1CAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CA80, &qword_1C1E574A8);
    sub_1C1DC1124(&qword_1EBF1CAB8, &qword_1EBF1CAC0, &qword_1C1E574D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CAB0);
  }

  return result;
}

unint64_t sub_1C1DEE010()
{
  result = qword_1EBF1CAC8;
  if (!qword_1EBF1CAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CA88, &qword_1C1E574B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CA80, &qword_1C1E574A8);
    sub_1C1DEDF40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CAC8);
  }

  return result;
}

unint64_t sub_1C1DEE108()
{
  result = qword_1EBF1CAD0;
  if (!qword_1EBF1CAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CA98, &qword_1C1E574C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CA88, &qword_1C1E574B0);
    sub_1C1DEE010();
    swift_getOpaqueTypeConformance2();
    sub_1C1DEEC28(&qword_1EBF1C690, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CAD0);
  }

  return result;
}

unint64_t sub_1C1DEE200()
{
  result = qword_1EBF1CB08;
  if (!qword_1EBF1CB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CAF8, &qword_1C1E57520);
    sub_1C1DEE28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CB08);
  }

  return result;
}

unint64_t sub_1C1DEE28C()
{
  result = qword_1EBF1CB10;
  if (!qword_1EBF1CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CB10);
  }

  return result;
}

unint64_t sub_1C1DEE2E0()
{
  result = qword_1EBF1CB18;
  if (!qword_1EBF1CB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CB00, &qword_1C1E57528);
    sub_1C1DEE36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CB18);
  }

  return result;
}

unint64_t sub_1C1DEE36C()
{
  result = qword_1EBF1CB20;
  if (!qword_1EBF1CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CB20);
  }

  return result;
}

uint64_t sub_1C1DEE410(double a1)
{
  v3 = *(type metadata accessor for CalculateScrubberView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C1DE932C(v1 + v4, v8, v9, a1);
}

uint64_t sub_1C1DEE4E8(uint64_t a1)
{
  v2 = type metadata accessor for CalculateScrubberView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1DEE620(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CalculateScrubberView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1C1DEE6B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for CalculateScrubberView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1C1DE72CC(v6, a1);
}

uint64_t objectdestroy_86Tm()
{
  v1 = type metadata accessor for CalculateScrubberView();
  v2 = *(*(v1 - 1) + 80);
  v39 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = (v0 + ((v2 + 32) & ~v2));
  v5 = *v4;

  v6 = v1[6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  v8 = *(*(v7 - 8) + 8);
  v8(&v4[v6], v7);
  v8(&v4[v1[7]], v7);
  v8(&v4[v1[8]], v7);
  v8(&v4[v1[9]], v7);
  v8(&v4[v1[10]], v7);
  v8(&v4[v1[11]], v7);
  v8(&v4[v1[12]], v7);
  sub_1C1DDEC6C(*&v4[v1[13]], v4[v1[13] + 8]);
  v9 = &v4[v1[14]];
  v10 = sub_1C1E52DFC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v12 = *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0) + 40)];

  v13 = *&v4[v1[15] + 8];

  v14 = &v4[v1[16]];
  v15 = *(v14 + 1);

  v16 = *(v14 + 2);

  v17 = &v4[v1[17]];

  v18 = *(v17 + 1);

  v19 = *&v4[v1[18] + 8];

  v20 = *&v4[v1[19] + 8];

  v21 = *&v4[v1[20] + 8];

  v22 = *&v4[v1[21] + 8];

  v23 = &v4[v1[22]];
  v24 = *(v23 + 1);

  v25 = *(v23 + 3);

  v26 = &v4[v1[23]];
  v27 = sub_1C1E51F5C();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(v26, 1, v27))
  {
    (*(v28 + 8))(v26, v27);
  }

  v29 = *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8) + 28)];

  v30 = *&v4[v1[24] + 8];

  v31 = &v4[v1[25]];
  v32 = *(v31 + 1);

  v33 = *(v31 + 3);

  v34 = *&v4[v1[26] + 8];

  v35 = *&v4[v1[27] + 8];

  v36 = *&v4[v1[28] + 8];

  v8(&v4[v1[31]], v7);
  v8(&v4[v1[32]], v7);
  v8(&v4[v1[33]], v7);
  v37 = *&v4[v1[34] + 8];

  v8(&v4[v1[35]], v7);
  v8(&v4[v1[36]], v7);
  v8(&v4[v1[37]], v7);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 32) & ~v2) + v39, v2 | 7);
}

uint64_t sub_1C1DEEBB4(uint64_t *a1)
{
  v3 = *(type metadata accessor for CalculateScrubberView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1C1DE73AC(a1, v4, v5, v6);
}

uint64_t sub_1C1DEEC28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1DEEC70()
{
  result = qword_1EBF1CC28;
  if (!qword_1EBF1CC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CBD8, &qword_1C1E57600);
    sub_1C1DEECFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CC28);
  }

  return result;
}

unint64_t sub_1C1DEECFC()
{
  result = qword_1EBF1CC30;
  if (!qword_1EBF1CC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC20, &qword_1C1E57668);
    sub_1C1DEEDB4();
    sub_1C1DC1124(&qword_1EDE73B30, &qword_1EBF1C1A8, &qword_1C1E55C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CC30);
  }

  return result;
}

unint64_t sub_1C1DEEDB4()
{
  result = qword_1EBF1CC38;
  if (!qword_1EBF1CC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC18, &qword_1C1E57630);
    sub_1C1DEEE40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CC38);
  }

  return result;
}

unint64_t sub_1C1DEEE40()
{
  result = qword_1EBF1CC40;
  if (!qword_1EBF1CC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC48, &unk_1C1E57670);
    sub_1C1DEEEF8();
    sub_1C1DC1124(&qword_1EBF1CC68, &qword_1EBF1CC70, &unk_1C1E57680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CC40);
  }

  return result;
}

unint64_t sub_1C1DEEEF8()
{
  result = qword_1EBF1CC50;
  if (!qword_1EBF1CC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CBD0, &qword_1C1E575F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CBC8, &qword_1C1E575F0);
    sub_1C1E52CDC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CBC0, &qword_1C1E575E8);
    sub_1C1DC1124(&qword_1EBF1CC08, &qword_1EBF1CBC0, &qword_1C1E575E8);
    swift_getOpaqueTypeConformance2();
    sub_1C1DEEC28(&qword_1EBF1CC10, MEMORY[0x1E697C5B0]);
    swift_getOpaqueTypeConformance2();
    sub_1C1DC1124(&qword_1EBF1CC58, &qword_1EBF1CC60, &qword_1C1E5A440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CC50);
  }

  return result;
}

uint64_t sub_1C1DEF0DC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CalculateScrubberView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1C1DEF160(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CalculateScrubberView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1C1DE7BA0(a1, a2, v6);
}

unint64_t sub_1C1DEF1E0()
{
  result = qword_1EBF1CCB8;
  if (!qword_1EBF1CCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC98, &qword_1C1E576E8);
    sub_1C1DC1124(&qword_1EBF1CCC0, &qword_1EBF1CAD8, &qword_1C1E574E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CCB8);
  }

  return result;
}

uint64_t sub_1C1DEF2B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CalculateScrubberView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1C1DEF324()
{
  result = qword_1EBF1CCC8;
  if (!qword_1EBF1CCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CCA0, &qword_1C1E576F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CC98, &qword_1C1E576E8);
    sub_1C1DEF1E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CCC8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for CalculateScrubberView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v39 = *(*(v1 - 1) + 64);
  v40 = v0;
  v4 = v0 + v3;
  v5 = *(v0 + v3);

  v6 = v1[6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  v8 = *(*(v7 - 8) + 8);
  v8(v4 + v6, v7);
  v8(v4 + v1[7], v7);
  v8(v4 + v1[8], v7);
  v8(v4 + v1[9], v7);
  v8(v4 + v1[10], v7);
  v8(v4 + v1[11], v7);
  v8(v4 + v1[12], v7);
  sub_1C1DDEC6C(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  v9 = v4 + v1[14];
  v10 = sub_1C1E52DFC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v12 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0) + 40));

  v13 = *(v4 + v1[15] + 8);

  v14 = v4 + v1[16];
  v15 = *(v14 + 8);

  v16 = *(v14 + 16);

  v17 = v4 + v1[17];

  v18 = *(v17 + 8);

  v19 = *(v4 + v1[18] + 8);

  v20 = *(v4 + v1[19] + 8);

  v21 = *(v4 + v1[20] + 8);

  v22 = *(v4 + v1[21] + 8);

  v23 = v4 + v1[22];
  v24 = *(v23 + 8);

  v25 = *(v23 + 24);

  v26 = v4 + v1[23];
  v27 = sub_1C1E51F5C();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(v26, 1, v27))
  {
    (*(v28 + 8))(v26, v27);
  }

  v29 = *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8) + 28));

  v30 = *(v4 + v1[24] + 8);

  v31 = v4 + v1[25];
  v32 = *(v31 + 8);

  v33 = *(v31 + 24);

  v34 = *(v4 + v1[26] + 8);

  v35 = *(v4 + v1[27] + 8);

  v36 = *(v4 + v1[28] + 8);

  v8(v4 + v1[31], v7);
  v8(v4 + v1[32], v7);
  v8(v4 + v1[33], v7);
  v37 = *(v4 + v1[34] + 8);

  v8(v4 + v1[35], v7);
  v8(v4 + v1[36], v7);
  v8(v4 + v1[37], v7);

  return MEMORY[0x1EEE6BDD0](v40, v3 + v39, v2 | 7);
}

unint64_t sub_1C1DEF924()
{
  result = qword_1EBF1CCD0;
  if (!qword_1EBF1CCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CCB0, &unk_1C1E57700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CCA0, &qword_1C1E576F0);
    sub_1C1DEF324();
    swift_getOpaqueTypeConformance2();
    sub_1C1DEEC28(&qword_1EBF1C690, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CCD0);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{
  v1 = type metadata accessor for CalculateScrubberView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v39 = *(*(v1 - 1) + 64);
  v40 = v0;
  v4 = v0 + v3;
  v5 = *(v0 + v3);

  v6 = v1[6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C500, &qword_1C1E56AF8);
  v8 = *(*(v7 - 8) + 8);
  v8(v4 + v6, v7);
  v8(v4 + v1[7], v7);
  v8(v4 + v1[8], v7);
  v8(v4 + v1[9], v7);
  v8(v4 + v1[10], v7);
  v8(v4 + v1[11], v7);
  v8(v4 + v1[12], v7);
  sub_1C1DDEC6C(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  v9 = v4 + v1[14];
  v10 = sub_1C1E52DFC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v12 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E0, &qword_1C1E573F0) + 40));

  v13 = *(v4 + v1[15] + 8);

  v14 = v4 + v1[16];
  v15 = *(v14 + 8);

  v16 = *(v14 + 16);

  v17 = v4 + v1[17];

  v18 = *(v17 + 8);

  v19 = *(v4 + v1[18] + 8);

  v20 = *(v4 + v1[19] + 8);

  v21 = *(v4 + v1[20] + 8);

  v22 = *(v4 + v1[21] + 8);

  v23 = v4 + v1[22];
  v24 = *(v23 + 8);

  v25 = *(v23 + 24);

  v26 = v4 + v1[23];
  v27 = sub_1C1E51F5C();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(v26, 1, v27))
  {
    (*(v28 + 8))(v26, v27);
  }

  v29 = *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C9E8, &qword_1C1E573F8) + 28));

  v30 = *(v4 + v1[24] + 8);

  v31 = v4 + v1[25];
  v32 = *(v31 + 8);

  v33 = *(v31 + 24);

  v34 = *(v4 + v1[26] + 8);

  v35 = *(v4 + v1[27] + 8);

  v36 = *(v4 + v1[28] + 8);

  v8(v4 + v1[31], v7);
  v8(v4 + v1[32], v7);
  v8(v4 + v1[33], v7);
  v37 = *(v4 + v1[34] + 8);

  v8(v4 + v1[35], v7);
  v8(v4 + v1[36], v7);
  v8(v4 + v1[37], v7);

  return MEMORY[0x1EEE6BDD0](v40, ((v39 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1C1DEFECC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CalculateScrubberView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1C1DEC4F0(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_1C1DEFFD8()
{
  v1 = v0[3];
  v2 = *v0;
  v3 = sub_1C1E53B4C();
  if (v3 >> 62)
  {
    v4 = sub_1C1E54ACC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = __OFSUB__(v1, v4);
  v7 = v1 - v4;
  if (!v6)
  {
    if (v7 >= 1)
    {
      v8 = sub_1C1DF1EE8(v7, 0);
      if (sub_1C1DF1F6C(v9, (v8 + 4), v7, 0, v7) == v7)
      {
        return v8;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  __break(1u);
  return result;
}

uint64_t CalculateExpressionStackView.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v6;
  v7 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v7;
  *a1 = sub_1C1DF01BC;
  a1[1] = v5;
  return sub_1C1DF01C4(v10, &v9);
}

uint64_t sub_1C1DF011C@<X0>(uint64_t a1@<X1>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  sub_1C1E5283C();
  v5 = v4 / *(a1 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *(a1 + 16);
  *(v6 + 24) = *a1;
  *(v6 + 40) = v7;
  v8 = *(a1 + 48);
  *(v6 + 56) = *(a1 + 32);
  *(v6 + 72) = v8;
  *a2 = sub_1C1DF196C;
  a2[1] = v6;
  return sub_1C1DF01C4(a1, &v10);
}

uint64_t sub_1C1DF01FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v30 = a3;
  v31 = sub_1C1E52D2C();
  v29 = *(v31 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CCE8, &qword_1C1E577E8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CCF0, &qword_1C1E577F0);
  v15 = *(v14 - 8);
  v27 = v14;
  v28 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  v32 = a4;
  v33 = a2;
  v34 = a1;
  sub_1C1E52FEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CCF8, &qword_1C1E577F8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CD00, &qword_1C1E57800);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CD08, &qword_1C1E57808);
  v21 = sub_1C1DC1124(&qword_1EBF1CD10, &qword_1EBF1CD00, &qword_1C1E57800);
  v22 = sub_1C1DF1984();
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  swift_getOpaqueTypeConformance2();
  sub_1C1E526BC();
  *&v13[*(v10 + 36)] = 0;
  sub_1C1E5399C();
  v23 = sub_1C1DF1A38();
  sub_1C1E533EC();
  sub_1C1DD2B1C(v13);
  sub_1C1E52D1C();
  sub_1C1E52FEC();
  v35 = v10;
  v36 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v27;
  sub_1C1E5343C();
  (*(v29 + 8))(v9, v31);
  return (*(v28 + 8))(v18, v24);
}

uint64_t sub_1C1DF0554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v21 = a2;
  v24 = a3;
  v6 = sub_1C1E529BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD00, &qword_1C1E57800);
  v10 = *(v9 - 8);
  v22 = v9;
  v23 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  sub_1C1E52CAC();
  v25 = a1;
  v26 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD50, &qword_1C1E57820);
  sub_1C1DC1124(&qword_1EBF1CD58, &qword_1EBF1CD50, &qword_1C1E57820);
  sub_1C1E52CBC();
  v14 = *a1;
  v28 = sub_1C1E53B4C();
  (*(v7 + 16))(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v6);
  v15 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  *(v16 + 1) = *a1;
  *(v16 + 2) = v17;
  v18 = *(a1 + 48);
  *(v16 + 3) = *(a1 + 32);
  *(v16 + 4) = v18;
  (*(v7 + 32))(&v16[v15], &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  sub_1C1DF01C4(a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD08, &qword_1C1E57808);
  sub_1C1DC1124(&qword_1EBF1CD10, &qword_1EBF1CD00, &qword_1C1E57800);
  sub_1C1DF1984();
  v19 = v22;
  sub_1C1E534CC();

  return (*(v23 + 8))(v13, v19);
}

uint64_t sub_1C1DF087C@<X0>(_OWORD *a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v39 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD60, &qword_1C1E57828);
  v41 = *(v38 - 8);
  v5 = v41[8];
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v34 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD68, &unk_1C1E57830);
  v40 = *(v36 - 8);
  v9 = v40[8];
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v34 - v12;
  v13 = a1[1];
  v44[0] = *a1;
  v44[1] = v13;
  v14 = a1[3];
  v44[2] = a1[2];
  v44[3] = v14;
  v43[8] = sub_1C1DEFFD8();
  swift_getKeyPath();
  v15 = swift_allocObject();
  v16 = a1[1];
  v15[1] = *a1;
  v15[2] = v16;
  v17 = a1[3];
  v15[3] = a1[2];
  v15[4] = v17;
  sub_1C1DF01C4(a1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD70, &qword_1C1E57858);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD78, &qword_1C1E57860);
  sub_1C1DC1124(&qword_1EBF1CD80, &qword_1EBF1CD70, &qword_1C1E57858);
  sub_1C1DC1124(&qword_1EBF1CD88, &qword_1EBF1CD78, &qword_1C1E57860);
  sub_1C1E537FC();
  v18 = *a1;
  v43[0] = sub_1C1E53B4C();
  v19 = swift_allocObject();
  v20 = a1[1];
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  v21 = a1[3];
  *(v19 + 48) = a1[2];
  *(v19 + 64) = v21;
  *(v19 + 80) = a3;
  sub_1C1DF01C4(a1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD08, &qword_1C1E57808);
  sub_1C1E51F9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD90, &qword_1C1E57868);
  sub_1C1DC1124(&qword_1EBF1CD98, &qword_1EBF1CD08, &qword_1C1E57808);
  sub_1C1DF1C24();
  sub_1C1DF1D0C(&qword_1EBF1CDC0, MEMORY[0x1E69921C8]);
  v22 = v35;
  sub_1C1E5380C();
  v23 = v40[2];
  v24 = v34;
  v25 = v36;
  v23(v34, v42, v36);
  v26 = v41[2];
  v27 = v37;
  v28 = v38;
  v26(v37, v22, v38);
  v29 = v39;
  v23(v39, v24, v25);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDC8, &qword_1C1E57878);
  v26(&v29[*(v30 + 48)], v27, v28);
  v31 = v41[1];
  v31(v22, v28);
  v32 = v40[1];
  v32(v42, v25);
  v31(v27, v28);
  return (v32)(v24, v25);
}

uint64_t sub_1C1DF0DD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_1C1E52C9C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDE8, &qword_1C1E57898);
  return sub_1C1DF0E28(a1, a2 + *(v4 + 44));
}

uint64_t sub_1C1DF0E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDD0, &qword_1C1E57880);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - v10;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  sub_1C1E537CC();
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDD8, &qword_1C1E57888) + 36)] = v12;

  sub_1C1E538DC();
  sub_1C1E5281C();
  v14 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDE0, &qword_1C1E57890) + 36)];
  v15 = v19[1];
  *v14 = v19[0];
  *(v14 + 1) = v15;
  *(v14 + 2) = v19[2];
  v16 = &v11[*(v5 + 44)];
  *v16 = 0;
  *(v16 + 1) = v13;
  sub_1C1DF1E10(v11, v8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDF0, &qword_1C1E578A0);
  sub_1C1DF1E10(v8, a2 + *(v17 + 48));
  sub_1C1DF1E80(v11);
  return sub_1C1DF1E80(v8);
}

unint64_t sub_1C1DF0FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = type metadata accessor for CalculateExpressionView();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v3[1];
  v43 = *v3;
  v44 = v11;
  v12 = v3[3];
  v45 = v3[2];
  v46 = v12;
  result = sub_1C1E53B4C();
  if (!(result >> 62))
  {
    v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = a2;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_13:

    v38 = 0;
LABEL_14:
    v21 = v44;
    v22 = v7[10];
    v23 = sub_1C1E530EC();
    (*(*(v23 - 8) + 56))(v10 + v22, 1, 1, v23);
    v24 = v46;
    v25 = v10 + v7[12];
    type metadata accessor for PlatformKeyboardHandler();
    swift_allocObject();

    sub_1C1DD6A34(v24);
    v40 = sub_1C1DC148C();
    sub_1C1E536DC();
    v26 = v42;
    *v25 = v41;
    *(v25 + 1) = v26;
    v27 = v10 + v7[13];
    LOBYTE(v40) = 0;
    sub_1C1E536DC();
    v28 = v42;
    *v27 = v41;
    *(v27 + 1) = v28;
    *v10 = a1;
    *(v10 + 8) = v38;
    v10[2] = a3 / 1.35;
    v10[3] = 1.0;
    *(v10 + 40) = v21;
    sub_1C1DF1D54();

    *(v10 + 4) = sub_1C1E5499C();
    *(v10 + v7[11]) = v24;
    v29 = sub_1C1E538CC();
    v31 = v30;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CD90, &qword_1C1E57868);
    v33 = v39;
    v34 = v39 + *(v32 + 36);
    sub_1C1DF1514(a1, &v43, v34);
    v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDB8, &qword_1C1E57870) + 36));
    *v35 = v29;
    v35[1] = v31;
    return sub_1C1DC73F4(v10, v33);
  }

  v20 = result;
  v14 = sub_1C1E54ACC();
  result = v20;
  v39 = a2;
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_3:
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_16:
    v36 = MEMORY[0x1C6910730](v16, result);
    swift_unknownObjectRelease();

    v18 = v36 == a1;
    goto LABEL_8;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(result + 8 * v16 + 32);

    v18 = v17 == a1;
LABEL_8:
    v19 = v18;
    v38 = v19;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1DF12D0(uint64_t *a1)
{
  v2 = sub_1C1E51F9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = *a1;
  result = sub_1C1E53B4C();
  if (!(result >> 62))
  {
    v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_10:
  }

  v16 = result;
  v12 = sub_1C1E54ACC();
  result = v16;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_3:
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_14:
    MEMORY[0x1C6910730](v14);
    goto LABEL_8;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(result + 8 * v14 + 32);

LABEL_8:

    sub_1C1E53C9C();

    (*(v3 + 32))(v9, v6, v2);
    sub_1C1DF1D0C(&qword_1EDE750A0, MEMORY[0x1E69695A8]);
    sub_1C1E529AC();
    return (*(v3 + 8))(v9, v2);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1DF1514@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDD0, &qword_1C1E57880);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v25 - v9;
  v11 = *a2;
  result = sub_1C1E53B4C();
  if (!(result >> 62))
  {
    v13 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  v19 = result;
  v13 = sub_1C1E54ACC();
  result = v19;
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_3:
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_16:
    v16 = MEMORY[0x1C6910730](v15);
    goto LABEL_8;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v15 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(result + 8 * v15 + 32);

LABEL_8:

    *&v26 = a1;
    if (v16)
    {
      v25[1] = v16;
      sub_1C1E5444C();
      sub_1C1DF1D0C(&qword_1EBF1CD20, MEMORY[0x1E69921C8]);

      v17 = sub_1C1E545AC();

      if (v17)
      {
        v18 = 1;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

LABEL_13:
    v20 = a2[4];
    v21 = a2[5];
    sub_1C1E537CC();
    *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDD8, &qword_1C1E57888) + 36)] = v20;

    sub_1C1E538DC();
    sub_1C1E5281C();
    v22 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDE0, &qword_1C1E57890) + 36)];
    v23 = v27;
    *v22 = v26;
    *(v22 + 1) = v23;
    *(v22 + 2) = v28;
    v24 = &v10[*(v6 + 36)];
    *v24 = 0;
    *(v24 + 1) = v21;
    sub_1C1DF1DA0(v10, a3);
    v18 = 0;
    return (*(v7 + 56))(a3, v18, 1, v6);
  }

  __break(1u);
  return result;
}

uint64_t CalculateExpressionStackView.init(expression:textAlignment:textColor:rowCount:separatorColor:operationCallback:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 16) = a2;
  *a8 = result;
  *(a8 + 8) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = 0x3FE0000000000000;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7;
  return result;
}

uint64_t sub_1C1DF181C@<X0>(uint64_t (**a1)@<X0>(uint64_t (**)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v4 = v1[3];
  v10[2] = v1[2];
  v10[3] = v4;
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v6;
  v7 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v7;
  *a1 = sub_1C1DF200C;
  a1[1] = v5;
  return sub_1C1DF01C4(v10, &v9);
}

uint64_t get_enum_tag_for_layout_string_9Calculate0A10ExpressionC9OperationCIegg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1C1DF18C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C1DF190C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1C1DF1984()
{
  result = qword_1EBF1CD18;
  if (!qword_1EBF1CD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CD08, &qword_1C1E57808);
    sub_1C1DF1D0C(&qword_1EBF1CD20, MEMORY[0x1E69921C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CD18);
  }

  return result;
}

unint64_t sub_1C1DF1A38()
{
  result = qword_1EBF1CD28;
  if (!qword_1EBF1CD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CCE8, &qword_1C1E577E8);
    sub_1C1DC1124(&qword_1EBF1CD30, &qword_1EBF1CD38, &qword_1C1E57810);
    sub_1C1DC1124(&qword_1EBF1CD40, &qword_1EBF1CD48, &qword_1C1E57818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CD28);
  }

  return result;
}

unint64_t sub_1C1DF1B28()
{
  v1 = *(*(sub_1C1E529BC() - 8) + 80);

  return sub_1C1DF12D0((v0 + 16));
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  v3 = v1[2];

  v4 = v1[3];

  v5 = v1[6];

  if (v1[8])
  {
    v6 = v1[9];
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1C1DF1C24()
{
  result = qword_1EBF1CDA0;
  if (!qword_1EBF1CDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CD90, &qword_1C1E57868);
    sub_1C1DF1D0C(&qword_1EBF1CDA8, type metadata accessor for CalculateExpressionView);
    sub_1C1DC1124(&qword_1EBF1CDB0, &qword_1EBF1CDB8, &qword_1C1E57870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CDA0);
  }

  return result;
}

uint64_t sub_1C1DF1D0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1DF1D54()
{
  result = qword_1EDE737A8;
  if (!qword_1EDE737A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE737A8);
  }

  return result;
}

uint64_t sub_1C1DF1DA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDD0, &qword_1C1E57880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DF1E10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDD0, &qword_1C1E57880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1DF1E80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDD0, &qword_1C1E57880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C1DF1EE8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CDF8, &qword_1C1E578A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t *sub_1C1DF1F6C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1DF204C(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_1C1E5352C();
  *a3 = result;
  return result;
}

uint64_t sub_1C1DF20C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v39 = sub_1C1E524FC();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE00, &qword_1C1E57930);
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v37 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE08, &qword_1C1E57938);
  v44 = *(v42 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v38 = v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE10, &qword_1C1E57940);
  v14 = *(v13 - 8);
  v45 = v13;
  v46 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v40 = v37 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE18, &qword_1C1E57948);
  v18 = *(v17 - 8);
  v47 = v17;
  v48 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = v37 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE20, &qword_1C1E57950);
  sub_1C1DF2BB4();
  sub_1C1E525AC();
  v37[1] = a1;
  v51 = sub_1C1E1CD1C();
  v52 = v21;
  sub_1C1E524EC();
  v22 = sub_1C1DC1124(&qword_1EBF1CE40, &qword_1EBF1CE00, &qword_1C1E57930);
  v23 = sub_1C1DC733C();
  sub_1C1E5322C();
  v50 = *(v3 + 8);
  v24 = v39;
  v50(v6, v39);

  (*(v41 + 8))(v10, v7);
  v55 = sub_1C1E1DA8C();
  v56 = v25;
  sub_1C1E524EC();
  v51 = v7;
  v52 = MEMORY[0x1E69E6158];
  v53 = v22;
  v54 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v40;
  v28 = v42;
  v29 = v38;
  sub_1C1E5324C();
  v30 = v24;
  v50(v6, v24);

  (*(v44 + 8))(v29, v28);
  v55 = sub_1C1E1D3D4();
  v56 = v31;
  sub_1C1E524EC();
  v51 = v28;
  v52 = MEMORY[0x1E69E6158];
  v53 = OpaqueTypeConformance2;
  v54 = v23;
  v36 = swift_getOpaqueTypeConformance2();
  v32 = v43;
  v33 = v45;
  sub_1C1E5326C();
  v50(v6, v30);

  (*(v46 + 8))(v27, v33);
  v51 = v33;
  v52 = MEMORY[0x1E69E6158];
  v53 = v36;
  v54 = v23;
  swift_getOpaqueTypeConformance2();
  v34 = v47;
  sub_1C1E5338C();
  return (*(v48 + 8))(v32, v34);
}

uint64_t sub_1C1DF26C0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v2 lock];
  swift_getKeyPath();
  sub_1C1DF2D00();
  sub_1C1E520BC();

  v3 = *(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v2 unlock];
  sub_1C1E4C054(v3);

  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1C1DF2D58;
  *(v4 + 24) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE48, &qword_1C1E5AA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE38, &qword_1C1E57958);
  sub_1C1DC1124(&qword_1EBF1CE50, &qword_1EBF1CE48, &qword_1C1E5AA60);
  sub_1C1DF2C38();
  return sub_1C1E537EC();
}

uint64_t sub_1C1DF2884@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1E5234C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE60, &unk_1C1E579B0);
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = *(type metadata accessor for Function() + 52);
  v14 = *(a1 + v13);
  if (v14)
  {
    v15 = *(a1 + v13);

    sub_1C1E535FC();
    v16 = sub_1C1E5354C();

    if ((v16 & 1) == 0)
    {
      v17 = a1[10];
      if (v17)
      {
        v25 = a1[11];
        v26 = v5;
        v18 = a1[3];
        v33 = a1[2];
        v34 = v18;
        v27 = a2;
        v19 = a1[7];
        v31 = a1[6];
        v32 = v19;
        v20 = a1[4];
        v21 = a1[5];
        v29 = v20;
        v30 = v21;
        sub_1C1DD6A34(v17);
        sub_1C1DD6A34(v17);
        sub_1C1DC733C();

        sub_1C1E5233C();
        v33 = v14;
        sub_1C1E5241C();
        sub_1C1DD0EB8(v17);
        (*(v26 + 8))(v8, v4);

        v22 = v27;
        (*(v28 + 32))(v27, v12, v9);
        return (*(v28 + 56))(v22, 0, 1, v9);
      }
    }
  }

  v24 = *(v28 + 56);

  return v24(a2, 1, 1, v9);
}

unint64_t sub_1C1DF2BB4()
{
  result = qword_1EBF1CE28;
  if (!qword_1EBF1CE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CE20, &qword_1C1E57950);
    sub_1C1DF2C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CE28);
  }

  return result;
}

unint64_t sub_1C1DF2C38()
{
  result = qword_1EBF1CE30;
  if (!qword_1EBF1CE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1CE38, &qword_1C1E57958);
    sub_1C1E5234C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1CE30);
  }

  return result;
}

unint64_t sub_1C1DF2D00()
{
  result = qword_1EDE74850;
  if (!qword_1EDE74850)
  {
    type metadata accessor for GraphViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE74850);
  }

  return result;
}

uint64_t sub_1C1DF2D64(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE58, &qword_1C1E579A8);
  return v4(v5, &a1[*(v6 + 48)]);
}

double sub_1C1DF2DE0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  v11 = *(*(v58 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v58);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v57 - v15;
  v17 = *v5;
  KeyPath = swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  *(a5 + v19[10]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C770, &qword_1C1E57A30);
  swift_storeEnumTagMultiPayload();
  v20 = swift_getKeyPath();
  v21 = swift_getKeyPath();
  *a5 = v17;
  a5[1] = a1;
  a5[2] = a2;
  v22 = a5 + v19[11];
  *v22 = v20;
  v22[8] = 0;
  v23 = a5 + v19[12];
  *v23 = v21;
  v23[8] = 0;
  v24 = a5 + v19[13];
  *&v59 = 0;
  BYTE8(v59) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C778, &qword_1C1E56FC8);
  sub_1C1E536DC();
  v25 = BYTE8(v61);
  v26 = v62;
  *v24 = v61;
  v24[8] = v25;
  *(v24 + 2) = v26;
  v27 = a5 + v19[14];
  *&v59 = 0;
  BYTE8(v59) = 1;
  sub_1C1E536DC();
  v28 = BYTE8(v61);
  v29 = v62;
  *v27 = v61;
  v27[8] = v28;
  *(v27 + 2) = v29;
  v30 = a5 + v19[15];
  LOBYTE(v59) = 0;
  sub_1C1E536DC();
  v31 = *(&v61 + 1);
  *v30 = v61;
  *(v30 + 1) = v31;
  v32 = (a5 + v19[16]);
  *&v59 = sub_1C1E5355C();
  sub_1C1E536DC();
  v33 = *(&v61 + 1);
  *v32 = v61;
  v32[1] = v33;
  v34 = v19[17];
  v35 = type metadata accessor for Function();
  (*(*(v35 - 8) + 56))(v16, 1, 1, v35);
  sub_1C1DC1424(v16, v14, &qword_1EBF1C758, &qword_1C1E579C0);
  sub_1C1E536DC();
  sub_1C1DC1870(v16, &qword_1EBF1C758, &qword_1C1E579C0);
  v36 = a5 + v19[18];
  v59 = 0uLL;
  LOBYTE(v60) = 2;
  sub_1C1E536DC();
  v37 = v62;
  v38 = *(&v62 + 1);
  *v36 = v61;
  v36[16] = v37;
  *(v36 + 3) = v38;
  v39 = a5 + v19[19];
  v59 = 0uLL;
  LOBYTE(v60) = 0;
  sub_1C1E536DC();
  v40 = v62;
  v41 = *(&v62 + 1);
  *v39 = v61;
  v39[16] = v40;
  *(v39 + 3) = v41;
  v42 = a5 + v19[20];
  v59 = 0uLL;
  *&v60 = 0;
  BYTE8(v60) = 2;
  sub_1C1E536DC();
  v43 = v62;
  v44 = BYTE8(v62);
  v45 = v63;
  *v42 = v61;
  *(v42 + 2) = v43;
  v42[24] = v44;
  *(v42 + 4) = v45;
  v46 = a5 + v19[21];
  v59 = 0uLL;
  sub_1C1E536DC();
  v47 = v62;
  *v46 = v61;
  *(v46 + 2) = v47;
  v48 = a5 + v19[22];
  type metadata accessor for CGSize(0);
  v59 = 0uLL;
  sub_1C1E536DC();
  v49 = v62;
  *v48 = v61;
  *(v48 + 2) = v49;
  v50 = a5 + v19[23];
  type metadata accessor for CGRect(0);
  v59 = 0u;
  v60 = 0u;
  sub_1C1E536DC();
  v51 = v63;
  v52 = v62;
  *v50 = v61;
  *(v50 + 1) = v52;
  *(v50 + 4) = v51;
  v53 = a5 + v19[24];
  v59 = 0u;
  v60 = 0u;
  sub_1C1E536DC();
  v54 = v63;
  result = *&v61;
  v56 = v62;
  *v53 = v61;
  *(v53 + 1) = v56;
  *(v53 + 4) = v54;
  return result;
}

uint64_t CalculateGraphView.graph.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CalculateGraphView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  KeyPath = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  v2 = *(*(KeyPath - 8) + 64);
  MEMORY[0x1EEE9AC00](KeyPath);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v70 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE68, &qword_1C1E579C8);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v70 - v13);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE70, &qword_1C1E579D0);
  v15 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v17 = &v70 - v16;
  v18 = *v1;
  swift_getKeyPath();
  *&v92 = v18;
  sub_1C1DF5D4C(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v19 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  swift_beginAccess();
  if (*(v18 + v19) == 1)
  {
    v72 = sub_1C1E36158();
    KeyPath = swift_getKeyPath();
    v73 = swift_getKeyPath();
    v81 = 0;
    v80 = 0;
    v82 = 0uLL;

    sub_1C1E536DC();
    v20 = v92;
    v71 = v93;
    *&v82 = 0;
    BYTE8(v82) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C778, &qword_1C1E56FC8);
    sub_1C1E536DC();
    v21 = v92;
    v22 = v93;
    v79 = BYTE8(v92);
    *&v82 = 0;
    BYTE8(v82) = 1;
    sub_1C1E536DC();
    v23 = v92;
    v24 = v93;
    v78 = BYTE8(v92);
    *&v82 = 0;
    BYTE8(v82) = 1;
    sub_1C1E536DC();
    v25 = v92;
    v26 = v93;
    v77 = BYTE8(v92);
    v92 = v72;
    *&v93 = 0;
    *(&v93 + 1) = KeyPath;
    LOBYTE(v94) = v81;
    v95 = v73;
    v96 = v80;
    v97 = v20;
    v98 = v71;
    v99 = v21;
    v100 = v79;
    v101 = v22;
    v102 = v23;
    v103 = v78;
    v104 = v24;
    v105 = v25;
    v106 = v77;
    v107 = v26;

    sub_1C1DF3C10(sub_1C1DF5744, v18, &v82);

    sub_1C1DC1870(&v92, &qword_1EBF1CE78, &qword_1C1E57AA0);
    v27 = v89;
    *(v17 + 6) = v88;
    *(v17 + 7) = v27;
    *(v17 + 8) = v90;
    *(v17 + 18) = v91;
    v28 = v85;
    *(v17 + 2) = v84;
    *(v17 + 3) = v28;
    v29 = v87;
    *(v17 + 4) = v86;
    *(v17 + 5) = v29;
    v30 = v83;
    *v17 = v82;
    *(v17 + 1) = v30;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE78, &qword_1C1E57AA0);
    sub_1C1DC1124(&qword_1EBF1CE80, &qword_1EBF1CE78, &qword_1C1E57AA0);
    sub_1C1DC1124(&qword_1EBF1CE88, &qword_1EBF1CE68, &qword_1C1E579C8);
    return sub_1C1E52CEC();
  }

  else
  {
    v32 = sub_1C1E36158();
    *(v11 + v8[10]) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C770, &qword_1C1E57A30);
    swift_storeEnumTagMultiPayload();
    v33 = swift_getKeyPath();
    v34 = swift_getKeyPath();
    v11[1] = 0;
    v11[2] = 0;
    *v11 = v32;
    v35 = v11 + v8[11];
    *v35 = v33;
    v35[8] = 0;
    v36 = v11 + v8[12];
    *v36 = v34;
    v36[8] = 0;
    v37 = v11 + v8[13];
    *&v82 = 0;
    v73 = v14;
    BYTE8(v82) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C778, &qword_1C1E56FC8);
    sub_1C1E536DC();
    v38 = BYTE8(v92);
    v39 = v93;
    *v37 = v92;
    v37[8] = v38;
    *(v37 + 2) = v39;
    v40 = v11 + v8[14];
    *&v82 = 0;
    BYTE8(v82) = 1;
    sub_1C1E536DC();
    v41 = BYTE8(v92);
    v42 = v93;
    *v40 = v92;
    v40[8] = v41;
    *(v40 + 2) = v42;
    v43 = v11 + v8[15];
    LOBYTE(v82) = 0;
    sub_1C1E536DC();
    v44 = *(&v92 + 1);
    *v43 = v92;
    *(v43 + 1) = v44;
    v45 = (v11 + v8[16]);
    *&v82 = sub_1C1E5355C();
    sub_1C1E536DC();
    v46 = *(&v92 + 1);
    *v45 = v92;
    v45[1] = v46;
    v47 = v8[17];
    v48 = type metadata accessor for Function();
    (*(*(v48 - 8) + 56))(v7, 1, 1, v48);
    sub_1C1DC1424(v7, v4, &qword_1EBF1C758, &qword_1C1E579C0);
    sub_1C1E536DC();
    sub_1C1DC1870(v7, &qword_1EBF1C758, &qword_1C1E579C0);
    v49 = v11 + v8[18];
    v82 = 0uLL;
    LOBYTE(v83) = 2;
    sub_1C1E536DC();
    v50 = v93;
    v51 = *(&v93 + 1);
    *v49 = v92;
    v49[16] = v50;
    *(v49 + 3) = v51;
    v52 = v11 + v8[19];
    v82 = 0uLL;
    LOBYTE(v83) = 0;
    sub_1C1E536DC();
    v53 = v93;
    v54 = *(&v93 + 1);
    *v52 = v92;
    v52[16] = v53;
    *(v52 + 3) = v54;
    v55 = v11 + v8[20];
    v82 = 0uLL;
    *&v83 = 0;
    BYTE8(v83) = 2;
    sub_1C1E536DC();
    v56 = v93;
    v57 = BYTE8(v93);
    v58 = v94;
    *v55 = v92;
    *(v55 + 2) = v56;
    v55[24] = v57;
    *(v55 + 4) = v58;
    v59 = v11 + v8[21];
    v82 = 0uLL;
    sub_1C1E536DC();
    v60 = v93;
    *v59 = v92;
    *(v59 + 2) = v60;
    v61 = v11 + v8[22];
    type metadata accessor for CGSize(0);
    v82 = 0uLL;
    sub_1C1E536DC();
    v62 = v93;
    *v61 = v92;
    *(v61 + 2) = v62;
    v63 = v11 + v8[23];
    type metadata accessor for CGRect(0);
    v82 = 0u;
    v83 = 0u;
    sub_1C1E536DC();
    v64 = v94;
    v65 = v93;
    *v63 = v92;
    *(v63 + 1) = v65;
    *(v63 + 4) = v64;
    v66 = v11 + v8[24];
    v82 = 0u;
    v83 = 0u;
    sub_1C1E536DC();
    v67 = v94;
    v68 = v93;
    *v66 = v92;
    *(v66 + 1) = v68;
    *(v66 + 4) = v67;

    v69 = v73;
    sub_1C1DF2DE0(sub_1C1DF5714, v18, &qword_1EBF1CE68, &qword_1C1E579C8, v73);

    sub_1C1DC1870(v11, &qword_1EBF1CE68, &qword_1C1E579C8);
    sub_1C1DC1424(v69, v17, &qword_1EBF1CE68, &qword_1C1E579C8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE78, &qword_1C1E57AA0);
    sub_1C1DC1124(&qword_1EBF1CE80, &qword_1EBF1CE78, &qword_1C1E57AA0);
    sub_1C1DC1124(&qword_1EBF1CE88, &qword_1EBF1CE68, &qword_1C1E579C8);
    sub_1C1E52CEC();
    return sub_1C1DC1870(v69, &qword_1EBF1CE68, &qword_1C1E579C8);
  }
}

uint64_t sub_1C1DF3C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  *a3 = v7;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = KeyPath;
  *(a3 + 32) = 0;
  *(a3 + 40) = v9;
  *(a3 + 48) = 0;

  sub_1C1E536DC();
  *(a3 + 56) = v11;
  *(a3 + 72) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C778, &qword_1C1E56FC8);
  sub_1C1E536DC();
  *(a3 + 80) = v11;
  *(a3 + 88) = BYTE8(v11);
  *(a3 + 96) = v12;
  sub_1C1E536DC();
  *(a3 + 104) = v11;
  *(a3 + 112) = BYTE8(v11);
  *(a3 + 120) = v12;
  result = sub_1C1E536DC();
  *(a3 + 128) = v11;
  *(a3 + 136) = BYTE8(v11);
  *(a3 + 144) = v12;
  return result;
}

uint64_t sub_1C1DF3D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CalculateGraphExpressionPopoverView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v19 = a2;
  sub_1C1DF5D4C(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v13 = *(a2 + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);
  v18 = a1;

  v14 = sub_1C1E2258C(a3, v17, v13);

  if (v14)
  {
    type metadata accessor for CalculateGraphExpression(0);
    sub_1C1DF5D4C(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
    sub_1C1E5384C();
    sub_1C1DF5AF4(v12, a4);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v9 + 56))(a4, v15, 1, v8);
}

uint64_t sub_1C1DF3F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEE8, &qword_1C1E57BE0);
  v68 = *(v70 - 8);
  v3 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v61 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEF0, &qword_1C1E57BE8);
  v69 = *(v71 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v64 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEF8, &qword_1C1E57BF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v73 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v61 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF00, &qword_1C1E57BF8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v61 - v16;
  v17 = type metadata accessor for CalculateGraphExpressionPopoverView();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF08, &qword_1C1E57C00);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v61 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF10, &qword_1C1E57C08);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v65 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v61 - v29;
  sub_1C1DF5A90(a1, &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v32 = swift_allocObject();
  sub_1C1DF5AF4(&v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF18, &qword_1C1E57C10);
  sub_1C1DF5BB8();
  sub_1C1E5373C();
  sub_1C1DC1124(&qword_1EBF1CF38, &qword_1EBF1CF08, &qword_1C1E57C00);
  v63 = v30;
  sub_1C1E5344C();
  (*(v21 + 8))(v24, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEA0, &unk_1C1E57B40);
  sub_1C1E5383C();
  v33 = *(v75 + 16);

  v34 = sub_1C1E53D7C();
  if (v34)
  {
    v35 = v34;
    v36 = [v34 formattedResult];

    v37 = sub_1C1E545FC();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = _s11CalculateUI0A22ExpressionTypesetImage10expression6result10showResult8fontSize05SwiftB00E0V0A00aC0C_SSSgSb12CoreGraphics7CGFloatVtF_0(v33, v37, v39, 1, 18.0);

  v41 = sub_1C1E52FFC();
  v75 = v40;
  LOBYTE(v76) = v41;
  v77 = 0u;
  v78 = 0u;
  v79 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF40, &qword_1C1E57C20);
  sub_1C1DF5C70();
  v42 = v62;
  sub_1C1E5344C();

  sub_1C1E52C6C();
  sub_1C1E5383C();
  v43 = v75;
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v43;
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v43;

  sub_1C1E537BC();
  v46 = v66;
  sub_1C1E526CC();
  v47 = sub_1C1DC1124(&qword_1EBF1CF50, &qword_1EBF1CEE8, &qword_1C1E57BE0);
  v48 = v64;
  v49 = v70;
  sub_1C1E5334C();
  (*(v68 + 8))(v46, v49);
  v75 = v49;
  v76 = v47;
  swift_getOpaqueTypeConformance2();
  v50 = v67;
  v51 = v71;
  sub_1C1E5344C();
  (*(v69 + 8))(v48, v51);
  v52 = v63;
  v53 = v65;
  sub_1C1DC1424(v63, v65, &qword_1EBF1CF10, &qword_1C1E57C08);
  v54 = v42;
  v55 = v42;
  v56 = v72;
  sub_1C1DC1424(v55, v72, &qword_1EBF1CF00, &qword_1C1E57BF8);
  v57 = v73;
  sub_1C1DD30A0(v50, v73);
  v58 = v74;
  sub_1C1DC1424(v53, v74, &qword_1EBF1CF10, &qword_1C1E57C08);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CF58, &qword_1C1E57C28);
  sub_1C1DC1424(v56, v58 + *(v59 + 48), &qword_1EBF1CF00, &qword_1C1E57BF8);
  sub_1C1DD30A0(v57, v58 + *(v59 + 64));
  sub_1C1DC1870(v50, &qword_1EBF1CEF8, &qword_1C1E57BF0);
  sub_1C1DC1870(v54, &qword_1EBF1CF00, &qword_1C1E57BF8);
  sub_1C1DC1870(v52, &qword_1EBF1CF10, &qword_1C1E57C08);
  sub_1C1DC1870(v57, &qword_1EBF1CEF8, &qword_1C1E57BF0);
  sub_1C1DC1870(v56, &qword_1EBF1CF00, &qword_1C1E57BF8);
  return sub_1C1DC1870(v53, &qword_1EBF1CF10, &qword_1C1E57C08);
}

uint64_t sub_1C1DF4840(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEA0, &unk_1C1E57B40);
  sub_1C1E5383C();
  swift_getKeyPath();
  sub_1C1DF5D4C(&qword_1EBF1CF60, type metadata accessor for CalculateGraphExpression);
  sub_1C1E520BC();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();

  if (Strong)
  {
    MEMORY[0x1EEE9AC00](result);
    v8[2] = a1;
    swift_getKeyPath();
    sub_1C1DF5D4C(qword_1EDE74C30, type metadata accessor for CalculateGraph);
    sub_1C1E520BC();

    v9 = Strong;
    swift_getKeyPath();
    sub_1C1E520DC();

    v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions;
    v9 = *(Strong + OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphExpressions);

    result = sub_1C1DF5064(sub_1C1DF5D94, v8);
    if (v9 >> 62)
    {
      v7 = result;
      v5 = sub_1C1E54ACC();
      result = v7;
      if (v5 >= v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 >= result)
      {
LABEL_4:
        sub_1C1DF5EB4(result, v5);
        v6 = *(Strong + v4);
        *(Strong + v4) = v9;
        sub_1C1E2BD04(v6);

        v9 = Strong;
        swift_getKeyPath();
        sub_1C1E520CC();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C1DF4AE8(uint64_t a1)
{
  v2 = sub_1C1E51F9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - v8;
  v10 = *(*a1 + 16);
  sub_1C1E53C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEA0, &unk_1C1E57B40);
  sub_1C1E5383C();
  v11 = *(v14[1] + 16);
  sub_1C1E53C9C();

  LOBYTE(v11) = sub_1C1E51F7C();
  v12 = *(v3 + 8);
  v12(v6, v2);
  v12(v9, v2);
  return v11 & 1;
}

uint64_t sub_1C1DF4C50@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C1E536AC();
  result = sub_1C1E5355C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1C1DF4C90()
{
  v1 = sub_1C1E52D5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEC0, &qword_1C1E57BC8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  *v9 = sub_1C1E52C0C();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CEC8, &qword_1C1E57BD0);
  sub_1C1DF3F70(v0, &v9[*(v10 + 44)]);
  v11 = sub_1C1E5300C();
  v12 = &v9[*(v6 + 36)];
  *v12 = v11;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  v12[40] = 1;
  sub_1C1E52D4C();
  sub_1C1DF59D8();
  sub_1C1E5346C();
  (*(v2 + 8))(v5, v1);
  return sub_1C1DC1870(v9, &qword_1EBF1CEC0, &qword_1C1E57BC8);
}

uint64_t sub_1C1DF4E4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C1DF5D4C(qword_1EDE74C30, type metadata accessor for CalculateGraph);
  sub_1C1E520BC();

  v4 = OBJC_IVAR____TtC11CalculateUI14CalculateGraph__graphType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1C1DF4F10(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_1C1E2D404(&v4);
}

uint64_t sub_1C1DF4F48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1E52ACC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1DF4F9C(uint64_t a1)
{
  v2 = sub_1C1E526EC();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1C1E52A3C();
}

uint64_t sub_1C1DF5064(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  v7 = sub_1C1DF52E8(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1C1E54ACC();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_1C1E54ACC())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1C6910730](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v22 = v12;
    v13 = a1(&v22);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1C6910730](v2, v6);
    v15 = MEMORY[0x1C6910730](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1C1DF54A4(v6);
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1C1DF54A4(v6);
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    v20 = v18 + 8 * v10;
    v21 = *(v20 + 32);
    *(v20 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_1C1E54ACC();
}