uint64_t sub_1CFEC978C(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(0);
  sub_1CFECC0B8(a3, a4);
  sub_1CFF0DCFC();
}

__n128 sub_1CFEC98C0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CFECBF08();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE71788(0);
  sub_1CFECBF80(&qword_1EDEC18C8, sub_1CFE71788, sub_1CFE73850);
  sub_1CFE4DC18(*a1, v7);
  sub_1CFE71360();
  v9 = v8;
  sub_1CFECBFF0(&qword_1EDEC1880, sub_1CFE71360);
  v10 = *(v5 + 56);
  v11 = *(v9 - 8);
  (*(v11 + 16))(&v7[v10], a1[1], v9);
  v12 = &v7[*(v5 + 72)];
  sub_1CFE72154(a1[2], v12);
  sub_1CFE4DC7C(v7, a2);
  (*(v11 + 32))(a2 + *(v5 + 56), &v7[v10], v9);
  v13 = a2 + *(v5 + 72);
  result = *v12;
  v15 = *(v12 + 16);
  *v13 = *v12;
  *(v13 + 16) = v15;
  *(v13 + 32) = *(v12 + 32);
  return result;
}

uint64_t sub_1CFEC9A90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CFECB964();
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFECB290();
  v9 = v8;
  sub_1CFECBF80(&qword_1EDEC1948, sub_1CFECB290, sub_1CFECB4B8);
  v10 = *a1;
  v11 = v9;
  v27 = v9;
  v12 = *(v9 - 8);
  (*(v12 + 16))(v7, v10, v11);
  sub_1CFECB25C(0);
  v24 = MEMORY[0x1E695B488];
  sub_1CFECBF80(&qword_1EDEC3DF0, sub_1CFECB25C, sub_1CFECBA20);
  v26 = v5[14];
  sub_1CFECB4EC(a1[1], &v7[v26], sub_1CFECB25C);
  type metadata accessor for SevenDaySingleMetricChartContent();
  sub_1CFECC0B8(qword_1EDEC2FA8, type metadata accessor for SevenDaySingleMetricChartContent);
  v25 = v5[18];
  sub_1CFECB4EC(a1[2], &v7[v25], type metadata accessor for SevenDaySingleMetricChartContent);
  sub_1CFECB1A8();
  v14 = v13;
  v15 = v5[22];
  v23 = v15;
  v16 = *(v13 - 8);
  (*(v16 + 16))(&v7[v15], a1[3], v13);
  sub_1CFECB5C0(0, &qword_1EDEC2218);
  sub_1CFECBA54();
  v17 = &v7[v5[26]];
  sub_1CFECB554(a1[4], v17, &qword_1EDEC2218);
  sub_1CFECB174(0);
  sub_1CFECBF80(&qword_1EDEC28D8, sub_1CFECB174, sub_1CFECBAD4);
  v18 = v5[30];
  sub_1CFECB4EC(a1[5], &v7[v18], sub_1CFECB174);
  (*(v12 + 32))(a2, v7, v27);
  sub_1CFECB678(&v7[v26], a2 + v5[14], sub_1CFECB25C);
  sub_1CFECB678(&v7[v25], a2 + v5[18], type metadata accessor for SevenDaySingleMetricChartContent);
  (*(v16 + 32))(a2 + v5[22], &v7[v23], v14);
  v19 = a2 + v5[26];
  v20 = *(v17 + 16);
  *v19 = *v17;
  *(v19 + 16) = v20;
  *(v19 + 32) = *(v17 + 32);
  return sub_1CFECB678(&v7[v18], a2 + v5[30], sub_1CFECB174);
}

uint64_t sub_1CFEC9E70@<X0>(uint64_t a1@<X8>)
{
  v148 = a1;
  v2 = type metadata accessor for IndividualOvernightMetricsChartPoints();
  v143 = *(v2 - 8);
  v144 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v131 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v130 = &v122 - v5;
  v6 = type metadata accessor for IndividualOvernightMetricChartPointCollection();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v142 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v129 = &v122 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v128 = &v122 - v11;
  sub_1CFECB174(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v147 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v146 = &v122 - v15;
  sub_1CFEC94DC(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v139 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v125 = &v122 - v19;
  v126 = type metadata accessor for GradientOverlaidPills();
  MEMORY[0x1EEE9AC00](v126);
  v127 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFECB1A8();
  v155 = v21;
  v145 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v154 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v153 = &v122 - v24;
  v137 = type metadata accessor for SevenDaySingleMetricChartContent();
  MEMORY[0x1EEE9AC00](v137);
  v157 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v152 = &v122 - v27;
  v138 = type metadata accessor for BaselineSeparators(0);
  v136 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v124 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC9510(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v133 = &v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for BaselineSeparators.Configuration(0);
  v134 = *(v31 - 8);
  v135 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v123 = &v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFECB25C(0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v151 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v156 = &v122 - v36;
  v37 = type metadata accessor for OvernightMetricsChartContent();
  v38 = *(v37 - 1);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1CFECB290();
  v150 = v40;
  v141 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v149 = &v122 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v122 - v43;
  v45 = v37[12];
  v158 = v1;
  v173[0] = *(v1 + v45);
  KeyPath = swift_getKeyPath();
  sub_1CFECB4EC(v1, &v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OvernightMetricsChartContent);
  v46 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v47 = swift_allocObject();
  sub_1CFECB678(&v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46, type metadata accessor for OvernightMetricsChartContent);
  sub_1CFEC96D4(0);
  type metadata accessor for BaselineBand(0);
  sub_1CFECC0B8(&qword_1EDEC1758, sub_1CFEC96D4);
  sub_1CFECBFF0(&qword_1EDEC1788, sub_1CFE59578);
  sub_1CFECB4B8();

  v140 = v44;
  v48 = v133;
  v49 = v158;
  sub_1CFF0E05C();
  sub_1CFECB4EC(&v49[v37[13]], v48, sub_1CFEC9510);
  if ((*(v134 + 48))(v48, 1, v135) == 1)
  {
    sub_1CFECB904(v48, sub_1CFEC9510);
    v50 = 1;
    v51 = v156;
  }

  else
  {
    v52 = v48;
    v53 = v123;
    sub_1CFECB678(v52, v123, type metadata accessor for BaselineSeparators.Configuration);
    v54 = v53;
    v55 = v124;
    sub_1CFECB678(v54, v124, type metadata accessor for BaselineSeparators.Configuration);
    v56 = v156;
    sub_1CFECB678(v55, v156, type metadata accessor for BaselineSeparators);
    v50 = 0;
    v51 = v56;
  }

  (*(v136 + 56))(v51, v50, 1, v138);
  v136 = *&v49[v37[9]];
  v57 = v136;
  LODWORD(v138) = *v49;
  v58 = &v49[v37[11]];
  v59 = *(v58 + 3);
  v60 = v37[14];
  v61 = v137;
  v62 = v152;
  sub_1CFECB4EC(&v49[v60], v152 + *(v137 + 28), type metadata accessor for OvernightMetricsChartLayout);
  v63 = v37[15];
  memcpy(v172, &v49[v63], sizeof(v172));
  *v62 = v138;
  *(v62 + 8) = v57;
  *(v62 + 16) = v59;
  memcpy((v62 + *(v61 + 32)), &v49[v63], 0x118uLL);
  v64 = v157;
  v65 = *v158;
  v66 = *&v158[v37[10]];
  v135 = v58;
  v67 = *(v58 + 2);
  v68 = *(v61 + 28);
  v138 = v60;
  sub_1CFECB4EC(&v158[v60], v157 + v68, type metadata accessor for OvernightMetricsChartLayout);
  memcpy(v173, &v158[v63], 0x118uLL);
  *v64 = v65;
  v69 = v158;
  *(v64 + 8) = v66;
  *(v64 + 16) = v67;
  memcpy((v64 + *(v61 + 32)), &v69[v63], 0x118uLL);

  sub_1CFE55370(v172, v171);

  sub_1CFE55370(v173, v171);
  sub_1CFECC0B8(qword_1EDEC2FA8, type metadata accessor for SevenDaySingleMetricChartContent);
  sub_1CFF0D13C();
  sub_1CFECB904(v64, type metadata accessor for SevenDaySingleMetricChartContent);
  if (*v69 == 1)
  {
    v70 = *&v69[v37[5]];
    v71 = v125;
    sub_1CFECB4EC(&v69[v37[6]], v125, sub_1CFEC94DC);
    if (*(*(v135 + 8) + 16) <= 1uLL)
    {
      v59 = 0.0;
    }

    v72 = v126;
    v73 = v127;
    sub_1CFECB4EC(&v69[v138], &v127[*(v126 + 28)], type metadata accessor for OvernightMetricsChartLayout);
    memcpy(v171, &v69[v63], sizeof(v171));
    v74 = v63;
    v75 = BYTE1(v171[25]);
    *v73 = v70;
    sub_1CFECB678(v71, v73 + v72[5], sub_1CFEC94DC);
    *(v73 + v72[6]) = v59;
    memcpy(v73 + v72[8], v171, 0x118uLL);
    if (v75 == 1)
    {
      sub_1CFECB6E0();
      *(&v164 + 1) = v76;
      sub_1CFECB81C();
      v78 = v77;
      v79 = v72;
      v80 = sub_1CFECC0B8(&qword_1EDEC3D00, type metadata accessor for GradientOverlaidPills);
      sub_1CFECB8D0(255);
      v82 = v81;
      v83 = sub_1CFECC0B8(&qword_1EC512A70, sub_1CFECB8D0);
      v159 = v82;
      v160 = v83;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v159 = v79;
      v160 = v78;
      v161 = v80;
      v162 = OpaqueTypeConformance2;
      *&v165 = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(&v163);

      sub_1CFE55370(v171, &v159);
      swift_checkMetadataState();
      v69 = v158;
      sub_1CFF0D10C();
      sub_1CFECB904(v73, type metadata accessor for GradientOverlaidPills);
    }

    else
    {
      *(&v164 + 1) = v72;
      *&v165 = sub_1CFECC0B8(&qword_1EDEC3D00, type metadata accessor for GradientOverlaidPills);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v163);
      sub_1CFECB678(v73, boxed_opaque_existential_1, type metadata accessor for GradientOverlaidPills);

      sub_1CFE55370(v171, &v159);
    }

    v85 = v146;
    v86 = v139;
    v168 = v163;
    v169 = v164;
    v170 = v165;
  }

  else
  {
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
    v85 = v146;
    v86 = v139;
    v74 = v63;
  }

  sub_1CFECB4EC(&v69[v37[6]], v86, sub_1CFEC94DC);
  v88 = type metadata accessor for OvernightMetricsChartPoint();
  if ((*(*(v88 - 8) + 48))(v86, 1, v88) == 1)
  {
    sub_1CFECB904(v86, sub_1CFEC94DC);
    (*(v143 + 56))(v85, 1, 1, v144);
  }

  else
  {
    v89 = v129;
    sub_1CFECB4EC(v86 + *(v88 + 20), v129, type metadata accessor for IndividualOvernightMetricChartPointCollection);
    sub_1CFECB904(v86, type metadata accessor for OvernightMetricsChartPoint);
    v90 = v89;
    v91 = v128;
    sub_1CFECB678(v90, v128, type metadata accessor for IndividualOvernightMetricChartPointCollection);
    sub_1CFECB678(v91, v142, type metadata accessor for IndividualOvernightMetricChartPointCollection);
    v92 = &v69[v37[7]];
    v93 = *(v92 + 3);
    v165 = *(v92 + 2);
    v166 = v93;
    v167 = *(v92 + 8);
    v94 = *(v92 + 1);
    v163 = *v92;
    v164 = v94;
    v95 = *v69;
    if (v95 == 1)
    {
      v96 = v69[v37[8]];
    }

    else
    {
      v96 = 0;
    }

    v97 = v144;
    v98 = &v69[v138];
    v99 = v69;
    v100 = v131;
    sub_1CFECB4EC(v98, &v131[v144[9]], type metadata accessor for OvernightMetricsChartLayout);
    memcpy(v171, &v99[v74], sizeof(v171));
    sub_1CFECB678(v142, v100, type metadata accessor for IndividualOvernightMetricChartPointCollection);
    v101 = v100 + v97[5];
    v102 = v166;
    *(v101 + 32) = v165;
    *(v101 + 48) = v102;
    *(v101 + 64) = v167;
    v103 = v164;
    *v101 = v163;
    *(v101 + 16) = v103;
    *(v100 + v97[6]) = v96;
    *(v100 + v97[7]) = v95;
    *(v100 + v97[8]) = v95;
    memcpy((v100 + v97[10]), v171, 0x118uLL);
    v104 = v130;
    sub_1CFECB678(v100, v130, type metadata accessor for IndividualOvernightMetricsChartPoints);
    sub_1CFECB678(v104, v85, type metadata accessor for IndividualOvernightMetricsChartPoints);
    (*(v143 + 56))(v85, 0, 1, v97);
    sub_1CFECB554(&v163, &v159, &qword_1EDEC2B38);
    sub_1CFE55370(v171, &v159);
  }

  v105 = v85;
  v106 = v140;
  v107 = v141;
  v108 = v149;
  (*(v141 + 16))(v149, v140, v150);
  v171[0] = v108;
  v109 = v151;
  sub_1CFECB4EC(v156, v151, sub_1CFECB25C);
  v171[1] = v109;
  v110 = v152;
  v111 = v157;
  sub_1CFECB4EC(v152, v157, type metadata accessor for SevenDaySingleMetricChartContent);
  v171[2] = v111;
  v112 = v145;
  v114 = v153;
  v113 = v154;
  v115 = v155;
  (*(v145 + 16))(v154, v153, v155);
  v171[3] = v113;
  sub_1CFECB554(&v168, &v159, &qword_1EDEC2218);
  v171[4] = &v159;
  v116 = v147;
  sub_1CFECB4EC(v105, v147, sub_1CFECB174);
  v171[5] = v116;
  sub_1CFEC9A90(v171, v148);
  sub_1CFECB904(v105, sub_1CFECB174);
  sub_1CFECB60C(&v168);
  v117 = *(v112 + 8);
  v117(v114, v115);
  sub_1CFECB904(v110, type metadata accessor for SevenDaySingleMetricChartContent);
  sub_1CFECB904(v156, sub_1CFECB25C);
  v118 = *(v107 + 8);
  v119 = v106;
  v120 = v150;
  v118(v119, v150);
  sub_1CFECB904(v116, sub_1CFECB174);
  sub_1CFECB60C(&v159);
  v117(v154, v155);
  sub_1CFECB904(v157, type metadata accessor for SevenDaySingleMetricChartContent);
  sub_1CFECB904(v151, sub_1CFECB25C);
  return (v118)(v149, v120);
}

void *sub_1CFECB064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CFECB4EC(a1, a3, type metadata accessor for BaselineBand.Configuration);
  v6 = type metadata accessor for OvernightMetricsChartContent();
  memcpy(__dst, (a2 + *(v6 + 60)), sizeof(__dst));
  sub_1CFE55370(__dst, &v9);

  v7 = type metadata accessor for BaselineBand(0);
  return memcpy((a3 + *(v7 + 20)), __dst, 0x118uLL);
}

void sub_1CFECB1A8()
{
  if (!qword_1EDEC22E8)
  {
    type metadata accessor for SevenDaySingleMetricChartContent();
    sub_1CFECC0B8(qword_1EDEC2FA8, type metadata accessor for SevenDaySingleMetricChartContent);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC22E8);
    }
  }
}

void sub_1CFECB290()
{
  if (!qword_1EDEC1940)
  {
    sub_1CFEC96D4(255);
    sub_1CFE59578();
    type metadata accessor for BaselineBand(255);
    sub_1CFECC0B8(&qword_1EDEC1758, sub_1CFEC96D4);
    sub_1CFECBFF0(&qword_1EDEC1788, sub_1CFE59578);
    v0 = sub_1CFF0E07C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1940);
    }
  }
}

void sub_1CFECB39C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFF0C7AC();
    v7 = sub_1CFECC0B8(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_1CFECB438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OvernightMetricsChartContent() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CFECB064(a1, v6, a2);
}

uint64_t sub_1CFECB4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFECB554(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_1CFECB5C0(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1CFECB5C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1CFF0E8AC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1CFECB60C(uint64_t a1)
{
  sub_1CFECB5C0(0, &qword_1EDEC2218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFECB678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CFECB6E0()
{
  if (!qword_1EC512A58)
  {
    type metadata accessor for GradientOverlaidPills();
    sub_1CFECB81C();
    sub_1CFECC0B8(&qword_1EDEC3D00, type metadata accessor for GradientOverlaidPills);
    sub_1CFECB8D0(255);
    sub_1CFECC0B8(&qword_1EC512A70, sub_1CFECB8D0);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC512A58);
    }
  }
}

void sub_1CFECB81C()
{
  if (!qword_1EC512A60)
  {
    sub_1CFECB8D0(255);
    sub_1CFECC0B8(&qword_1EC512A70, sub_1CFECB8D0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC512A60);
    }
  }
}

uint64_t sub_1CFECB904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFECB964()
{
  if (!qword_1EDEC1938)
  {
    sub_1CFECB290();
    sub_1CFECB25C(255);
    type metadata accessor for SevenDaySingleMetricChartContent();
    sub_1CFECB1A8();
    sub_1CFECB5C0(255, &qword_1EDEC2218);
    sub_1CFECB174(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDEC1938);
    }
  }
}

unint64_t sub_1CFECBA54()
{
  result = qword_1EDEC2210;
  if (!qword_1EDEC2210)
  {
    sub_1CFECB5C0(255, &qword_1EDEC2218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC2210);
  }

  return result;
}

void sub_1CFECBB3C()
{
  if (!qword_1EDEC2338)
  {
    sub_1CFECBC04();
    sub_1CFF0D19C();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2338);
    }
  }
}

void sub_1CFECBC04()
{
  if (!qword_1EDEC2350)
  {
    sub_1CFF0D19C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC2350);
    }
  }
}

unint64_t sub_1CFECBC88()
{
  result = qword_1EDEC2390;
  if (!qword_1EDEC2390)
  {
    sub_1CFECBE54();
    sub_1CFECBF80(&qword_1EDEC1948, sub_1CFECB290, sub_1CFECB4B8);
    sub_1CFECBF80(&qword_1EDEC3DF0, sub_1CFECB25C, sub_1CFECBA20);
    sub_1CFECC0B8(qword_1EDEC2FA8, type metadata accessor for SevenDaySingleMetricChartContent);
    type metadata accessor for SevenDaySingleMetricChartContent();
    swift_getOpaqueTypeConformance2();
    sub_1CFECBA54();
    sub_1CFECBF80(&qword_1EDEC28D8, sub_1CFECB174, sub_1CFECBAD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC2390);
  }

  return result;
}

void sub_1CFECBE54()
{
  if (!qword_1EDEC2388)
  {
    sub_1CFECB290();
    sub_1CFECB25C(255);
    type metadata accessor for SevenDaySingleMetricChartContent();
    sub_1CFECB1A8();
    sub_1CFECB5C0(255, &qword_1EDEC2218);
    sub_1CFECB174(255);
    v0 = sub_1CFF0D08C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2388);
    }
  }
}

void sub_1CFECBF08()
{
  if (!qword_1EDEC18D0)
  {
    sub_1CFE71788(255);
    sub_1CFE71360();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDEC18D0);
    }
  }
}

uint64_t sub_1CFECBF80(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFECBFF0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CFECC054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CFECC0B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OvernightMetricsChart.init(timeScope:model:alignWarmupProgressCounterToChartPlotArea:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  LODWORD(v106) = a3;
  sub_1CFE8DBDC();
  v91 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v86 - v10;
  sub_1CFED2330(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  v87 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v86 - v12;
  v13 = sub_1CFF0C7AC();
  v93 = *(v13 - 8);
  v94 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v86 - v16;
  v99 = sub_1CFF0C89C();
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v95 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OvernightMetricsChart.Derivations(0);
  v19 = *(v18 - 8);
  v111 = v18;
  v112 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v86 - v22;
  v23 = MEMORY[0x1E69E6720];
  sub_1CFED2054(0, qword_1EDEC3C18, type metadata accessor for OvernightMetricsChart.Derivations, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v109 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v86 - v27;
  sub_1CFED2054(0, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, v23);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v86 - v30;
  v104 = type metadata accessor for OvernightMetricsChartPoint;
  sub_1CFED2054(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, v23);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v86 - v33;
  v92 = type metadata accessor for OvernightMetricsChartPointCollection();
  MEMORY[0x1EEE9AC00](v92);
  v36 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v105) = *a1;
  v37 = type metadata accessor for OvernightMetricsViewModel(0);
  v38 = v37[8];
  v103 = type metadata accessor for OvernightMetricsChartPointCollection;
  sub_1CFED2200(a2 + v38, v36, type metadata accessor for OvernightMetricsChartPointCollection);
  sub_1CFED563C(a2 + v37[7], v34, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint);
  v39 = *(a2 + v37[14]);
  v110 = *(a2 + v37[10]);
  v107 = v31;
  v101 = a2;
  OvernightMetricsViewModel.warmupProgress.getter(v31);
  v40 = *(v112 + 56);
  v108 = v28;
  v40(v28, 1, 1, v111);
  v41 = type metadata accessor for OvernightMetricsChart(0);
  v42 = *(v41 + 6);
  v43 = type metadata accessor for OvernightMetricsChartPoint();
  (*(*(v43 - 8) + 56))(&a4[v42], 1, 1, v43);
  v44 = &a4[*(v41 + 7)];
  v45 = *(v41 + 11);
  v46 = type metadata accessor for OvernightMetricsWarmupProgress();
  (*(*(v46 - 8) + 56))(&a4[v45], 1, 1, v46);
  v47 = *(v41 + 14);
  v114[0] = swift_getKeyPath();
  sub_1CFEA4090(v114);
  v48 = &a4[v47];
  v49 = v36;
  memcpy(v48, v114, 0x119uLL);
  *a4 = v105;
  sub_1CFED2200(v36, &a4[*(v41 + 5)], v103);
  v105 = v34;
  sub_1CFED2180(v34, &a4[v42], qword_1EDEC4FC8, v104);
  *v44 = 0;
  v44[8] = 1;
  v50 = a4;
  a4[*(v41 + 8)] = 1;
  v113 = v39;
  v104 = v39;

  sub_1CFED20D8(&v113);
  *&a4[*(v41 + 9)] = v113;
  *&a4[*(v41 + 10)] = v110;

  v51 = v107;
  sub_1CFED2180(v107, &a4[v45], qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
  a4[*(v41 + 12)] = v106 & 1;
  v53 = v108;
  v52 = v109;
  sub_1CFED563C(v108, v109, qword_1EDEC3C18, type metadata accessor for OvernightMetricsChart.Derivations);
  v55 = v112 + 48;
  v54 = *(v112 + 48);
  if (v54(v52, 1, v111) != 1)
  {
    sub_1CFED2268(v101, type metadata accessor for OvernightMetricsViewModel);
    v84 = MEMORY[0x1E69E6720];
    sub_1CFED3284(v53, qword_1EDEC3C18, type metadata accessor for OvernightMetricsChart.Derivations, MEMORY[0x1E69E6720], sub_1CFED2054);
    sub_1CFED3284(v51, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, v84, sub_1CFED2054);
    sub_1CFED3284(v105, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, v84, sub_1CFED2054);
    sub_1CFED2268(v49, type metadata accessor for OvernightMetricsChartPointCollection);
    v81 = v102;
    sub_1CFED22C8(v52, v102, type metadata accessor for OvernightMetricsChart.Derivations);
    return sub_1CFED22C8(v81, &v50[*(v41 + 13)], type metadata accessor for OvernightMetricsChart.Derivations);
  }

  v86 = v54;
  v103 = v41;
  v106 = v50;
  v112 = v55;
  v56 = *(v92 + 20);
  v57 = *(v97 + 16);
  v92 = v49;
  v57(v95, v49 + v56, v99);
  v58 = *(v110 + 16);
  if (v58)
  {
    v104 = *(v104 + 2);
    v59 = v93;
    v60 = v94;
    v61 = v93 + 16;
    v62 = *(v93 + 16);
    v63 = v110 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    v64 = v96;
    v62(v96, v63, v94);
    v65 = v63 + *(v61 + 56) * (v58 - 1);
    v66 = v98;
    v62(v98, v65, v60);
    sub_1CFEB9248(v66, v100);
    sub_1CFED2D78(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    if (sub_1CFF0E49C())
    {
      v67 = v88;
      v62(v88, v64, v60);
      v68 = v91;
      v62((v67 + *(v91 + 48)), v66, v60);
      v69 = v59;
      v70 = v90;
      sub_1CFED2200(v67, v90, sub_1CFE8DBDC);
      v110 = *(v68 + 48);
      v71 = v69[4];
      v72 = v89;
      v71(v89, v70, v60);
      v73 = v69[1];
      v73(v70 + v110, v60);
      sub_1CFED22C8(v67, v70, sub_1CFE8DBDC);
      v71((v72 + *(v87 + 36)), v70 + *(v68 + 48), v60);
      v73(v70, v60);
      v74 = v111;
      v75 = v100;
      v76 = v95;
      sub_1CFEB98B0(v72, &v100[*(v111 + 20)]);
      sub_1CFE9C984(v72);
      v77 = v98;
      v78 = v76;
      v79 = sub_1CFEB9EDC(v104, v98);
      sub_1CFED2268(v101, type metadata accessor for OvernightMetricsViewModel);
      v73(v77, v60);
      v73(v96, v60);
      (*(v97 + 8))(v78, v99);
      v80 = MEMORY[0x1E69E6720];
      sub_1CFED3284(v108, qword_1EDEC3C18, type metadata accessor for OvernightMetricsChart.Derivations, MEMORY[0x1E69E6720], sub_1CFED2054);
      sub_1CFED3284(v107, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, v80, sub_1CFED2054);
      sub_1CFED3284(v105, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, v80, sub_1CFED2054);
      sub_1CFED2268(v92, type metadata accessor for OvernightMetricsChartPointCollection);
      *&v75[*(v74 + 24)] = v79;
      v81 = v102;
      sub_1CFED22C8(v75, v102, type metadata accessor for OvernightMetricsChart.Derivations);
      v82 = v109;
      v83 = v86(v109, 1, v74);
      v50 = v106;
      v41 = v103;
      if (v83 != 1)
      {
        sub_1CFED3284(v82, qword_1EDEC3C18, type metadata accessor for OvernightMetricsChart.Derivations, MEMORY[0x1E69E6720], sub_1CFED2054);
      }

      return sub_1CFED22C8(v81, &v50[*(v41 + 13)], type metadata accessor for OvernightMetricsChart.Derivations);
    }

    __break(1u);

    __break(1u);
  }

  result = sub_1CFF0EA2C();
  __break(1u);
  return result;
}

void *sub_1CFECCDE8@<X0>(void *a1@<X8>)
{
  sub_1CFEA7D14();
  sub_1CFF0D81C();
  return memcpy(a1, __src, 0x118uLL);
}

uint64_t sub_1CFECCE48(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, __src, sizeof(v4));
  sub_1CFE55370(__dst, v3);
  sub_1CFEA7D14();
  return sub_1CFF0D82C();
}

uint64_t OvernightMetricsChart.Derivations.init(lastKeyDateRange:keyDatesRange:iconPositions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1CFEBC0B8(a1, a4);
  v7 = type metadata accessor for OvernightMetricsChart.Derivations(0);
  result = sub_1CFEBC0B8(a2, a4 + *(v7 + 20));
  *(a4 + *(v7 + 24)) = a3;
  return result;
}

uint64_t OvernightMetricsChart.Derivations.init(keyDates:calendar:iconCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v43 = a3;
  v44 = a2;
  v45 = a4;
  sub_1CFE8DBDC();
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  sub_1CFED2330(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  v40 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v36 - v11;
  v12 = sub_1CFF0C7AC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v17;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = *(v13 + 16);
    v22 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v21(&v36 - v17, v22, v12, v18);
    (v21)(v15, v22 + *(v13 + 72) * (v20 - 1), v12);

    sub_1CFEB9248(v15, v45);
    sub_1CFED2D78(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    if (sub_1CFF0E49C())
    {
      (v21)(v9, v19, v12);
      v37 = v15;
      v38 = v19;
      v23 = v42;
      (v21)(&v9[*(v42 + 48)], v15, v12);
      v24 = v41;
      sub_1CFED2200(v9, v41, sub_1CFE8DBDC);
      v25 = *(v23 + 48);
      v26 = *(v13 + 32);
      v27 = v39;
      v26(v39, v24, v12);
      v28 = *(v13 + 8);
      v28(v24 + v25, v12);
      sub_1CFED22C8(v9, v24, sub_1CFE8DBDC);
      v26((v27 + *(v40 + 36)), v24 + *(v23 + 48), v12);
      v28(v24, v12);
      v29 = type metadata accessor for OvernightMetricsChart.Derivations(0);
      v30 = v44;
      v31 = v45;
      sub_1CFEB98B0(v27, &v45[*(v29 + 20)]);
      sub_1CFE9C984(v27);
      v32 = v37;
      v33 = sub_1CFEB9EDC(v43, v37);
      v34 = sub_1CFF0C89C();
      (*(*(v34 - 8) + 8))(v30, v34);
      v28(v32, v12);
      result = (v28)(v38, v12);
      *&v31[*(v29 + 24)] = v33;
      return result;
    }

    __break(1u);
  }

  result = sub_1CFF0EA2C();
  __break(1u);
  return result;
}

uint64_t static OvernightMetricsChart.Derivations.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1CFF0C7AC();
  sub_1CFED2D78(&qword_1EDEC4D00, MEMORY[0x1E6969530]);
  if ((sub_1CFF0E4CC() & 1) == 0)
  {
    return 0;
  }

  sub_1CFED2330(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  if ((sub_1CFF0E4CC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OvernightMetricsChart.Derivations(0);
  if ((sub_1CFF0E4CC() & 1) == 0 || (sub_1CFF0E4CC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_1CFE91D24(v6, v7);
}

uint64_t sub_1CFECD4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFF0C7AC();
  sub_1CFED2D78(&qword_1EDEC4D00, MEMORY[0x1E6969530]);
  if ((sub_1CFF0E4CC() & 1) == 0)
  {
    return 0;
  }

  sub_1CFED2330(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  if ((sub_1CFF0E4CC() & 1) == 0 || (sub_1CFF0E4CC() & 1) == 0 || (sub_1CFF0E4CC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1CFE91D24(v7, v8);
}

uint64_t OvernightMetricsChart.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for OvernightMetricsChart(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = sub_1CFF0E0DC();
  v9 = v8;
  sub_1CFED2200(v1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OvernightMetricsChart);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1CFED22C8(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for OvernightMetricsChart);
  *a1 = v7;
  a1[1] = v9;
  sub_1CFED23D0();
  v13 = v12;
  result = sub_1CFE8D0B0(v1 + *(v4 + 60), a1 + *(v12 + 52));
  v15 = (a1 + *(v13 + 56));
  *v15 = sub_1CFED23CC;
  v15[1] = v11;
  return result;
}

uint64_t sub_1CFECD7B8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v148 = a2;
  v7 = type metadata accessor for OvernightMetricsChart.Derivations(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v132 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OvernightMetricsAxisConfiguration(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v130 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFED2518(0, &qword_1EDEC1BB8, sub_1CFED24D0, sub_1CFED25FC, MEMORY[0x1E697F948]);
  v145 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v147 = &v120 - v12;
  v13 = sub_1CFF0D80C();
  v136 = *(v13 - 8);
  v137 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v135 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for OvernightMetricsChartWarmupProgressCounter();
  MEMORY[0x1EEE9AC00](v125);
  *&v129 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFED24D0(0);
  v146 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v128 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  *&v134 = &v120 - v19;
  v20 = MEMORY[0x1E69E6720];
  sub_1CFED2054(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v140 = &v120 - v22;
  v23 = type metadata accessor for OvernightMetricsChartPointCollection();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v139 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for AnimatableOvernightMetricsChart();
  MEMORY[0x1EEE9AC00](v124);
  v126 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFED269C(0);
  v143 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v127 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFED25FC();
  v144 = v28;
  v133 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v131 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for OvernightMetricsChartLayout(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v123 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v141 = &v120 - v33;
  sub_1CFED2054(0, &qword_1EDEC4990, MEMORY[0x1E69A2DC0], v20);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v120 - v35;
  v37 = sub_1CFF0CA6C();
  *&v138 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v120 = &v120 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for OvernightMetricsChartAnimationValues.Selection();
  MEMORY[0x1EEE9AC00](v39 - 8);
  v41 = &v120 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v120 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v120 - v46;
  v48 = *a1;
  v49 = type metadata accessor for OvernightMetricsChart(0);
  v50 = *&a1[v49[9]];
  v51 = &a1[v49[7]];
  v52.i64[0] = *v51;
  LODWORD(v51) = v51[8];
  v121 = v48;
  v122 = v51;
  if (v51)
  {
    *v52.i64 = 0.0;
  }

  v149 = v52;
  LOBYTE(v159[0]) = v48;
  v159[1] = v50;
  sub_1CFEE371C(v44, v41, *v52.i64);
  *v53.i64 = *v149.i64 - trunc(*v149.i64);
  v54.f64[0] = NAN;
  v54.f64[1] = NAN;
  v142 = vbslq_s8(vnegq_f64(v54), v53, v149);

  if (*v142.i64 >= 0.5)
  {
    v55 = v44;
  }

  else
  {
    v55 = v41;
  }

  if (*v142.i64 >= 0.5)
  {
    v56 = v41;
  }

  else
  {
    v56 = v44;
  }

  v57 = v37;
  sub_1CFED2268(v55, type metadata accessor for OvernightMetricsChartAnimationValues.Selection);
  sub_1CFED22C8(v56, v47, type metadata accessor for OvernightMetricsChartAnimationValues.Selection);
  v142.i64[0] = v47;
  v58 = v47;
  v59 = v138;
  sub_1CFECEBF4(v58, v36);
  if ((*(v59 + 48))(v36, 1, v37) == 1)
  {
    sub_1CFED3284(v36, &qword_1EDEC4990, MEMORY[0x1E69A2DC0], MEMORY[0x1E69E6720], sub_1CFED2054);
    v60 = v141;
    sub_1CFECF3F8(v141, a3, a4);
    v61 = v121;
    LOBYTE(v159[0]) = v121;
    v159[1] = v50;
    v62 = sub_1CFEE3A10(v149);
    v125 = v63;
    v120 = v64;
    v65 = v62;
    v67 = v66;
    LOBYTE(v154[0]) = v61;
    v154[1] = v50;
    sub_1CFEE3CE8(v155, v149);
    v138 = *&v155[16];
    v149 = *v155;
    v129 = *&v155[48];
    v134 = *&v155[32];
    v68 = *&v155[64];

    v69 = v122;
    LODWORD(v128) = v122 ^ 1;
    v70 = v123;
    sub_1CFED2200(v60, v123, type metadata accessor for OvernightMetricsChartLayout);
    v121 = *a1;
    sub_1CFED2200(&a1[v49[5]], v139, type metadata accessor for OvernightMetricsChartPointCollection);
    sub_1CFED563C(&a1[v49[6]], v140, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint);
    v71 = v60;
    v72 = v50;
    if (v69)
    {
      sub_1CFE5307C(v155, v159);
    }

    else
    {
      v68 = 0;
      v149 = 0u;
      v138 = 0u;
      v134 = 0u;
      v129 = 0u;
    }

    v77 = v132;
    v78 = v130;
    v130 = v68;
    v122 = a1[v49[8]];
    v132 = v72;

    v79 = sub_1CFECF920(v71);
    sub_1CFECFD24(v78);
    sub_1CFED2200(&a1[v49[13]], v77, type metadata accessor for OvernightMetricsChart.Derivations);
    v80 = v49[14];
    memcpy(v158, &a1[v80], 0x119uLL);
    memcpy(v159, &a1[v80], 0x119uLL);
    if (sub_1CFE69B14(v159) == 1)
    {
      nullsub_1(v159);
      memcpy(v156, v158, 0x119uLL);
      v81 = nullsub_1(v156);
      memcpy(v152, v81, 0x118uLL);
      memcpy(v157, v158, 0x119uLL);
      v82 = nullsub_1(v157);
      sub_1CFE55370(v82, v151);
    }

    else
    {
      nullsub_1(v159);
      memcpy(v156, v158, 0x119uLL);
      nullsub_1(v156);
      memcpy(v157, v158, 0x119uLL);
      nullsub_1(v157);

      sub_1CFF0E7DC();
      v87 = v70;
      v88 = sub_1CFF0DA6C();
      sub_1CFF0D00C();

      v70 = v87;
      v89 = v135;
      sub_1CFF0D7FC();
      swift_getAtKeyPath();
      sub_1CFED3284(v158, &unk_1EC512360, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E697DCB8], sub_1CFEB2B70);
      (*(v136 + 8))(v89, v137);
    }

    v90 = v139;
    memcpy(v157, v152, 0x118uLL);
    KeyPath = swift_getKeyPath();
    v92 = v70;
    v93 = v126;
    sub_1CFED22C8(v92, v126, type metadata accessor for OvernightMetricsChartLayout);
    v94 = v124;
    *(v93 + *(v124 + 20)) = v121;
    sub_1CFED22C8(v90, v93 + v94[6], type metadata accessor for OvernightMetricsChartPointCollection);
    sub_1CFED32E4(v140, v93 + v94[7]);
    v95 = v93 + v94[8];
    v96 = v138;
    *v95 = v149;
    *(v95 + 16) = v96;
    v97 = v129;
    *(v95 + 32) = v134;
    *(v95 + 48) = v97;
    *(v95 + 64) = v130;
    *(v93 + v94[9]) = v122;
    v98 = (v93 + v94[10]);
    v99 = v120;
    *v98 = v125;
    v98[1] = v99;
    *(v98 + 2) = v65;
    v98[3] = v67;
    *(v93 + v94[11]) = v132;
    *(v93 + v94[12]) = v79;
    sub_1CFED22C8(v78, v93 + v94[13], type metadata accessor for OvernightMetricsAxisConfiguration);
    sub_1CFED22C8(v77, v93 + v94[14], type metadata accessor for OvernightMetricsChart.Derivations);
    memcpy((v93 + v94[15]), v157, 0x118uLL);
    v100 = v93 + v94[16];
    *v100 = KeyPath;
    *(v100 + 8) = 0;
    sub_1CFF0D53C();
    sub_1CFF0E13C();
    sub_1CFF0E11C();

    sub_1CFF0D54C();

    sub_1CFF0D53C();
    sub_1CFF0E13C();
    sub_1CFF0E12C();

    sub_1CFF0D54C();

    v101 = sub_1CFF0D52C();

    v102 = v127;
    sub_1CFED22C8(v93, v127, type metadata accessor for AnimatableOvernightMetricsChart);
    v103 = v143;
    *(v102 + *(v143 + 36)) = v101;
    v156[2] = *&v155[32];
    v156[3] = *&v155[48];
    *&v156[4] = *&v155[64];
    v156[1] = *&v155[16];
    v156[0] = *v155;
    *(swift_allocObject() + 16) = v128;
    v104 = sub_1CFED26E4();
    v105 = sub_1CFED27C4();
    v106 = v131;
    sub_1CFF0DE0C();

    sub_1CFED2268(v102, sub_1CFED269C);
    sub_1CFE531B0(v155);
    v107 = v133;
    v108 = v144;
    (*(v133 + 16))(v147, v106, v144);
    swift_storeEnumTagMultiPayload();
    sub_1CFED2928();
    *&v156[0] = v103;
    *(&v156[0] + 1) = &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState;
    *&v156[1] = v104;
    *(&v156[1] + 1) = v105;
    swift_getOpaqueTypeConformance2();
    sub_1CFF0D93C();
    (*(v107 + 8))(v106, v108);
    sub_1CFED2268(v141, type metadata accessor for OvernightMetricsChartLayout);
  }

  else
  {

    v73 = v120;
    (*(v59 + 32))();
    v149.i32[0] = a1[v49[12]];
    v74 = v49[14];
    memcpy(v158, &a1[v74], 0x119uLL);
    memcpy(v159, &a1[v74], 0x119uLL);
    if (sub_1CFE69B14(v159) == 1)
    {
      nullsub_1(v159);
      memcpy(v156, v158, 0x119uLL);
      v75 = nullsub_1(v156);
      memcpy(v155, v75, sizeof(v155));
      memcpy(v157, v158, 0x119uLL);
      v76 = nullsub_1(v157);
      sub_1CFE55370(v76, v152);
    }

    else
    {
      nullsub_1(v159);
      memcpy(v156, v158, 0x119uLL);
      nullsub_1(v156);
      memcpy(v157, v158, 0x119uLL);
      nullsub_1(v157);

      sub_1CFF0E7DC();
      v83 = sub_1CFF0DA6C();
      sub_1CFF0D00C();

      v84 = v135;
      sub_1CFF0D7FC();
      swift_getAtKeyPath();
      sub_1CFED3284(v158, &unk_1EC512360, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E697DCB8], sub_1CFEB2B70);
      (*(v136 + 8))(v84, v137);
    }

    memcpy(v154, v155, sizeof(v154));
    sub_1CFE583D0(v154);
    memcpy(v156, &a1[v74], 0x119uLL);
    memcpy(v157, &a1[v74], 0x119uLL);
    if (sub_1CFE69B14(v157) == 1)
    {
      nullsub_1(v157);
      memcpy(v151, v156, 0x119uLL);
      v85 = nullsub_1(v151);
      memcpy(v153, v85, sizeof(v153));
      memcpy(v152, v156, 0x119uLL);
      v86 = nullsub_1(v152);
      sub_1CFE55370(v86, &v150);
    }

    else
    {
      nullsub_1(v157);
      memcpy(v151, v156, 0x119uLL);
      nullsub_1(v151);
      memcpy(v152, v156, 0x119uLL);
      nullsub_1(v152);

      sub_1CFF0E7DC();
      v109 = sub_1CFF0DA6C();
      sub_1CFF0D00C();

      v110 = v135;
      sub_1CFF0D7FC();
      swift_getAtKeyPath();
      sub_1CFED3284(v156, &unk_1EC512360, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E697DCB8], sub_1CFEB2B70);
      (*(v136 + 8))(v110, v137);
    }

    v111 = v154[20];
    memcpy(v152, v153, 0x118uLL);
    sub_1CFE583D0(v152);
    v112 = v152[21];
    v113 = v129;
    (*(v59 + 16))(v129 + *(v125 + 32), v73, v57);
    *v113 = a3;
    *(v113 + 8) = a4;
    *(v113 + 16) = v149.i8[0];
    *(v113 + 24) = v111;
    *(v113 + 32) = v112;
    sub_1CFF0D53C();
    sub_1CFF0E13C();
    sub_1CFF0E11C();

    sub_1CFF0D54C();

    sub_1CFF0D53C();
    sub_1CFF0E13C();
    sub_1CFF0E12C();

    sub_1CFF0D54C();

    v114 = sub_1CFF0D52C();

    v115 = v128;
    sub_1CFED22C8(v113, v128, type metadata accessor for OvernightMetricsChartWarmupProgressCounter);
    *(v115 + *(v146 + 36)) = v114;
    v116 = v134;
    sub_1CFED22C8(v115, v134, sub_1CFED24D0);
    sub_1CFED2200(v116, v147, sub_1CFED24D0);
    swift_storeEnumTagMultiPayload();
    sub_1CFED2928();
    v117 = sub_1CFED26E4();
    v118 = sub_1CFED27C4();
    v151[0] = v143;
    v151[1] = &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState;
    v151[2] = v117;
    v151[3] = v118;
    swift_getOpaqueTypeConformance2();
    sub_1CFF0D93C();
    sub_1CFED2268(v116, sub_1CFED24D0);
    (*(v59 + 8))(v73, v57);
  }

  return sub_1CFED2268(v142.i64[0], type metadata accessor for OvernightMetricsChartAnimationValues.Selection);
}

uint64_t sub_1CFECEBF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a1;
  v4 = MEMORY[0x1E69E6720];
  sub_1CFED2054(0, &qword_1EDEC4990, MEMORY[0x1E69A2DC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v54 - v6;
  v7 = type metadata accessor for OvernightMetricsChartAnimationValues.Selection();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1CFF0CB6C();
  v10 = *(v9 - 8);
  v64 = v9;
  v65 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFED2054(0, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, v4);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v59 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  v17 = sub_1CFF0CA6C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - v24;
  v26 = v2;
  v58 = *(type metadata accessor for OvernightMetricsChart(0) + 44);
  sub_1CFED563C(&v2[v58], v16, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
  v27 = type metadata accessor for OvernightMetricsWarmupProgress();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v56 = v28 + 48;
  v57 = v29;
  if (v29(v16, 1, v27) == 1)
  {
    sub_1CFED3284(v16, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, MEMORY[0x1E69E6720], sub_1CFED2054);
    v30 = a2;
  }

  else
  {
    v31 = a2;
    (*(v18 + 16))(v22, v16, v17);
    sub_1CFED2268(v16, type metadata accessor for OvernightMetricsWarmupProgress);
    v32 = *(v18 + 32);
    v32(v25, v22, v17);
    if ((sub_1CFF0CA1C() & 1) == 0)
    {
      v32(v31, v25, v17);
      return (*(v18 + 56))(v31, 0, 1, v17);
    }

    (*(v18 + 8))(v25, v17);
    v30 = v31;
  }

  v34 = v64;
  v33 = v65;
  v35 = v63;
  if (*v26 != 1)
  {
    return (*(v18 + 56))(v30, 1, 1, v17);
  }

  sub_1CFED2200(v61, v63, type metadata accessor for OvernightMetricsChartAnimationValues.Selection);
  if ((*(v33 + 48))(v35, 1, v34) == 1)
  {
    sub_1CFED2268(v35, type metadata accessor for OvernightMetricsChartAnimationValues.Selection);
    return (*(v18 + 56))(v30, 1, 1, v17);
  }

  v37 = v60;
  (*(v33 + 32))(v60, v35, v34);
  v38 = v59;
  sub_1CFED563C(&v26[v58], v59, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
  if (v57(v38, 1, v27) == 1)
  {
    (*(v33 + 8))(v37, v34);
    sub_1CFED3284(v38, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, MEMORY[0x1E69E6720], sub_1CFED2054);
    (*(v18 + 56))(v62, 1, 1, v17);
LABEL_18:
    sub_1CFED3284(v62, &qword_1EDEC4990, MEMORY[0x1E69A2DC0], MEMORY[0x1E69E6720], sub_1CFED2054);
    return (*(v18 + 56))(v30, 1, 1, v17);
  }

  v39 = *(v38 + *(v27 + 20));

  sub_1CFED2268(v38, type metadata accessor for OvernightMetricsWarmupProgress);
  if (*(v39 + 16))
  {
    v40 = v60;
    v41 = sub_1CFEC3AB8(v60);
    v43 = v18;
    if (v42)
    {
      v44 = *(v18 + 16);
      v45 = *(v39 + 56) + *(v18 + 72) * v41;
      v46 = v17;
      v44(v62, v45, v17);
      v47 = 0;
    }

    else
    {
      v46 = v17;
      v47 = 1;
    }
  }

  else
  {
    v43 = v18;
    v46 = v17;
    v47 = 1;
    v40 = v60;
  }

  v48 = *(v43 + 56);
  v49 = v62;
  v50 = v47;
  v17 = v46;
  v18 = v43;
  v48(v62, v50, 1, v17);
  if ((*(v43 + 48))(v49, 1, v17) == 1)
  {
    (*(v65 + 8))(v40, v34);
    goto LABEL_18;
  }

  v51 = v55;
  v63 = *(v43 + 32);
  (v63)(v55, v62, v17);
  v52 = v17;
  v53 = sub_1CFF0CA1C();
  (*(v65 + 8))(v40, v34);
  if (v53)
  {
    (*(v43 + 8))(v51, v52);
    v17 = v52;
    return (*(v18 + 56))(v30, 1, 1, v17);
  }

  (v63)(v30, v51, v52);
  return (v48)(v30, 0, 1, v52);
}

uint64_t sub_1CFECF3F8@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v51 = a1;
  v6 = sub_1CFF0D80C();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFED2054(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for OvernightMetricsChartLayout.Configuration(0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = type metadata accessor for OvernightMetricsChart(0);
  v20 = *(v3 + v19[5]);
  v21 = v3 + v19[6];
  v48 = v10;
  sub_1CFED563C(v21, v10, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint);
  v49 = v20;

  _s15HealthBalanceUI25OvernightMetricsViewModelV11medialRangeSNySdGvg_0();
  v23 = v22;
  v25 = v24;
  v26 = v19[14];
  memcpy(v56, (v3 + v26), 0x119uLL);
  memcpy(v57, (v3 + v26), 0x119uLL);
  if (sub_1CFE69B14(v57) == 1)
  {
    nullsub_1(v57);
    memcpy(v53, v56, 0x119uLL);
    v27 = nullsub_1(v53);
    memcpy(v55, v27, sizeof(v55));
    memcpy(v54, v56, 0x119uLL);
    v28 = nullsub_1(v54);
    sub_1CFE55370(v28, &v52);
  }

  else
  {
    nullsub_1(v57);
    memcpy(v53, v56, 0x119uLL);
    nullsub_1(v53);
    memcpy(v54, v56, 0x119uLL);
    nullsub_1(v54);

    sub_1CFF0E7DC();
    v29 = sub_1CFF0DA6C();
    sub_1CFF0D00C();

    v30 = v45;
    sub_1CFF0D7FC();
    swift_getAtKeyPath();
    sub_1CFED3284(v56, &unk_1EC512360, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E697DCB8], sub_1CFEB2B70);
    (*(v46 + 8))(v30, v47);
  }

  memcpy(v54, v55, 0x118uLL);
  sub_1CFE583D0(v54);
  v31 = v11[5];
  v32 = type metadata accessor for OvernightMetricsChartPoint();
  (*(*(v32 - 8) + 56))(&v18[v31], 1, 1, v32);
  v33 = v48;
  *v18 = v49;
  sub_1CFE9CAD4(v33, &v18[v31]);
  v34 = &v18[v11[6]];
  *v34 = v23;
  *(v34 + 1) = v25;
  *&v18[v11[8]] = a2;
  *&v18[v11[9]] = a3;
  v35 = &v18[v11[7]];
  v36 = *&v54[17];
  *(v35 + 2) = *&v54[15];
  *(v35 + 3) = v36;
  *(v35 + 4) = *&v54[19];
  *(v35 + 10) = v54[21];
  v37 = *&v54[13];
  *v35 = *&v54[11];
  *(v35 + 1) = v37;
  sub_1CFED2200(v18, v15, type metadata accessor for OvernightMetricsChartLayout.Configuration);
  v38 = v51;
  sub_1CFED2200(v15, v51, type metadata accessor for OvernightMetricsChartLayout.Configuration);
  v39 = v50;
  sub_1CFED2200(v15, v50, type metadata accessor for OvernightMetricsChartLayout.Configuration);
  sub_1CFEC6E34(v39, 7, v53);
  sub_1CFED2268(v15, type metadata accessor for OvernightMetricsChartLayout.Configuration);
  v40 = v38 + *(type metadata accessor for OvernightMetricsChartLayout(0) + 20);
  v41 = v53[5];
  *(v40 + 64) = v53[4];
  *(v40 + 80) = v41;
  *(v40 + 96) = v53[6];
  *(v40 + 112) = *&v53[7];
  v42 = v53[1];
  *v40 = v53[0];
  *(v40 + 16) = v42;
  v43 = v53[3];
  *(v40 + 32) = v53[2];
  *(v40 + 48) = v43;
  return sub_1CFED2268(v18, type metadata accessor for OvernightMetricsChartLayout.Configuration);
}

unint64_t sub_1CFECF920(uint64_t a1)
{
  v26 = a1;
  v2 = type metadata accessor for OvernightMetricsChartBaselineBandColorValues();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFF0D80C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OvernightMetricsChart(0);
  v10 = v9[14];
  memcpy(v31, &v1[v10], 0x119uLL);
  memcpy(v32, &v1[v10], 0x119uLL);
  if (sub_1CFE69B14(v32) == 1)
  {
    nullsub_1(v32);
    memcpy(v28, v31, 0x119uLL);
    v11 = nullsub_1(v28);
    memcpy(v30, v11, sizeof(v30));
    memcpy(v29, v31, 0x119uLL);
    v12 = nullsub_1(v29);
    sub_1CFE55370(v12, &v27);
  }

  else
  {
    nullsub_1(v32);
    memcpy(v28, v31, 0x119uLL);
    v25[1] = *nullsub_1(v28);
    memcpy(v29, v31, 0x119uLL);
    nullsub_1(v29);

    sub_1CFF0E7DC();
    v13 = sub_1CFF0DA6C();
    sub_1CFF0D00C();

    sub_1CFF0D7FC();
    swift_getAtKeyPath();
    sub_1CFED3284(v31, &unk_1EC512360, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E697DCB8], sub_1CFEB2B70);
    (*(v6 + 8))(v8, v5);
  }

  memcpy(v29, v30, 0x118uLL);
  v14 = v29[0];
  v15 = v29[1];
  v16 = v29[2];
  sub_1CFED55F0(v29[0]);
  sub_1CFE583D0(v29);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *v1;
  v18 = *&v1[v9[9]];
  sub_1CFED563C(&v1[v9[6]], &v4[v2[6]], qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint);
  sub_1CFED2200(&v1[v9[5]], &v4[v2[7]], type metadata accessor for OvernightMetricsChartPointCollection);
  sub_1CFED2200(&v1[v9[13]], &v4[v2[9]], type metadata accessor for OvernightMetricsChart.Derivations);
  sub_1CFED2200(v26, &v4[v2[10]], type metadata accessor for OvernightMetricsChartLayout);
  *v4 = v17;
  *(v4 + 1) = v18;
  v19 = &v4[v2[8]];
  *v19 = v14;
  v19[1] = v15;
  v19[2] = v16;
  v20 = &v1[v9[7]];
  if (*(v20 + 8))
  {
    v21 = 0.0;
  }

  else
  {
    v21 = *v20;
  }

  *v22.i64 = v21;
  v23 = sub_1CFEBA5F4(v22);
  sub_1CFED2268(v4, type metadata accessor for OvernightMetricsChartBaselineBandColorValues);
  return v23;
}

uint64_t sub_1CFECFD24@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_1CFF0D80C();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for IndividualOvernightMetricChartPointCollection();
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFED2054(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - v7;
  sub_1CFED2330(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v40 = *v1;
  v15 = type metadata accessor for OvernightMetricsChart(0);
  v16 = &v1[v15[13]];
  v42 = v14;
  sub_1CFE8D0B0(v16, v14);
  v17 = type metadata accessor for OvernightMetricsChart.Derivations(0);
  v18 = v16 + *(v17 + 20);
  v43 = v11;
  sub_1CFE8D0B0(v18, v11);
  v19 = *&v1[v15[10]];
  v20 = *(v16 + *(v17 + 24));
  v21 = *&v1[v15[9]];
  sub_1CFED563C(&v1[v15[6]], v8, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint);
  v22 = type metadata accessor for OvernightMetricsChartPoint();
  v23 = (*(*(v22 - 8) + 48))(v8, 1, v22);
  v41 = v20;
  if (v23 == 1)
  {

    v24 = v21;

    sub_1CFED3284(v8, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720], sub_1CFED2054);
    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1CFED2200(&v8[*(v22 + 20)], v5, type metadata accessor for IndividualOvernightMetricChartPointCollection);

    v24 = v21;

    sub_1CFED2268(v8, type metadata accessor for OvernightMetricsChartPoint);
    v25 = *&v5[*(v36 + 20)];

    sub_1CFED2268(v5, type metadata accessor for IndividualOvernightMetricChartPointCollection);
  }

  v26 = v15[14];
  memcpy(v49, &v1[v26], 0x119uLL);
  memcpy(v50, &v1[v26], 0x119uLL);
  if (sub_1CFE69B14(v50) == 1)
  {
    nullsub_1(v50);
    memcpy(v46, v49, 0x119uLL);
    v27 = nullsub_1(v46);
    memcpy(v48, v27, sizeof(v48));
    memcpy(v47, v49, 0x119uLL);
    v28 = nullsub_1(v47);
    sub_1CFE55370(v28, &v45);
  }

  else
  {
    nullsub_1(v50);
    memcpy(v46, v49, 0x119uLL);
    nullsub_1(v46);
    memcpy(v47, v49, 0x119uLL);
    nullsub_1(v47);

    sub_1CFF0E7DC();
    v29 = sub_1CFF0DA6C();
    sub_1CFF0D00C();

    v30 = v37;
    sub_1CFF0D7FC();
    swift_getAtKeyPath();
    sub_1CFED3284(v49, &unk_1EC512360, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E697DCB8], sub_1CFEB2B70);
    (*(v38 + 8))(v30, v39);
  }

  memcpy(v47, v48, 0x118uLL);
  if (v40)
  {
    sub_1CFE9C984(v42);
    sub_1CFE583D0(v47);

    v31 = v44;
    sub_1CFEBC0B8(v43, v44);
    v32 = type metadata accessor for OvernightMetricsAxisConfiguration.SevenDayConfiguration(0);
  }

  else
  {

    MEMORY[0x1EEE9AC00](v33);
    *(&v35 - 2) = v25;
    *(&v35 - 1) = v47;
    v19 = sub_1CFED4F04(v24, v41, sub_1CFED3380, (&v35 - 4));
    sub_1CFE583D0(v47);

    sub_1CFE9C984(v43);
    v31 = v44;
    sub_1CFEBC0B8(v42, v44);
    v32 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration(0);
  }

  *(v31 + *(v32 + 20)) = v19;
  type metadata accessor for OvernightMetricsAxisConfiguration(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CFED0394(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v4;
  v9 = *(a2 + 64);
  v5 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v5;
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    if (qword_1EDEC27D8 != -1)
    {
      swift_once();
    }

    sub_1CFE5307C(v8, v7);
    sub_1CFEE01D8(v8);
  }

  else
  {
  }
}

uint64_t sub_1CFED04B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = sub_1CFF0E0DC();
  v9 = v8;
  sub_1CFED2200(v2, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OvernightMetricsChart);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1CFED22C8(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for OvernightMetricsChart);
  *a2 = v7;
  a2[1] = v9;
  sub_1CFED23D0();
  v13 = v12;
  result = sub_1CFE8D0B0(v2 + *(v4 + 60), a2 + *(v12 + 52));
  v15 = (a2 + *(v13 + 56));
  *v15 = sub_1CFED56BC;
  v15[1] = v11;
  return result;
}

uint64_t OvernightMetricsChart.init(timeScope:chartPoints:emphasizedChartPoint:emphasizedDataType:medialRange:visibleDataTypes:keyDates:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v116 = a5;
  v117 = a6;
  v113 = a4;
  v123 = a3;
  v120 = a2;
  v121 = a7;
  v115 = a1;
  sub_1CFE8DBDC();
  v103 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v102 = v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v100 = v98 - v10;
  sub_1CFED2330(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  v99 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v101 = v98 - v12;
  v107 = sub_1CFF0C7AC();
  v112 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v111 = v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = v98 - v15;
  v125 = type metadata accessor for OvernightMetricsChart.Derivations(0);
  v128 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v118 = v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v114 = v98 - v18;
  v19 = MEMORY[0x1E69E6720];
  sub_1CFED2054(0, qword_1EDEC3C18, type metadata accessor for OvernightMetricsChart.Derivations, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v119 = v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v127 = v98 - v23;
  sub_1CFED2054(0, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, v19);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v98 - v25;
  v124 = type metadata accessor for OvernightMetricsChartPoint;
  sub_1CFED2054(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, v19);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v122 = v98 - v28;
  v29 = sub_1CFF0C81C();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1CFF0C89C();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v108 = v98 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = v98 - v37;
  v39 = type metadata accessor for OvernightMetricsChartPointCollection();
  v40 = v39 - 8;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = v98 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v115) = *v115;
  (*(v30 + 104))(v32, *MEMORY[0x1E6969868], v29, v41);
  sub_1CFF0C82C();
  (*(v30 + 8))(v32, v29);
  v44 = v120;
  *v43 = v120;
  v45 = *(v34 + 16);
  v104 = *(v40 + 28);
  v105 = v45;
  v126 = v43;
  v106 = v34 + 16;
  v45(&v43[v104], v38, v33);

  v46 = sub_1CFF0CB1C();
  v129[2] = v44;
  v47 = sub_1CFE8A894(sub_1CFE97580, v129, sub_1CFE97588, 0, v46);

  v48 = *(v34 + 8);
  v49 = v122;
  v109 = v33;
  v98[0] = v48;
  v98[1] = v34 + 8;
  v48(v38, v33);
  *&v43[*(v40 + 32)] = v47;
  sub_1CFED563C(v123, v49, qword_1EDEC4FC8, v124);
  v50 = type metadata accessor for OvernightMetricsWarmupProgress();
  v51 = *(*(v50 - 8) + 56);
  v120 = v26;
  v51(v26, 1, 1, v50);
  (*(v128 + 56))(v127, 1, 1, v125);
  v52 = type metadata accessor for OvernightMetricsChart(0);
  v53 = *(v52 + 24);
  v54 = type metadata accessor for OvernightMetricsChartPoint();
  v55 = v121;
  (*(*(v54 - 8) + 56))(&v121[v53], 1, 1, v54);
  v56 = &v55[*(v52 + 28)];
  v57 = *(v52 + 44);
  v51(&v55[v57], 1, 1, v50);
  v58 = *(v52 + 56);
  v131[0] = swift_getKeyPath();
  sub_1CFEA4090(v131);
  memcpy(&v55[v58], v131, 0x119uLL);
  *v55 = v115;
  sub_1CFED2200(v126, &v55[*(v52 + 20)], type metadata accessor for OvernightMetricsChartPointCollection);
  sub_1CFED2180(v49, &v55[v53], qword_1EDEC4FC8, v124);
  *v56 = 0;
  v56[8] = 1;
  v59 = v116;
  v55[*(v52 + 32)] = 1;
  v130 = v59;

  sub_1CFED20D8(&v130);
  *&v55[*(v52 + 36)] = v130;
  v60 = v117;
  *&v55[*(v52 + 40)] = v117;

  v61 = v120;
  sub_1CFED2180(v120, &v55[v57], qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
  v124 = v52;
  v55[*(v52 + 48)] = 0;
  v62 = v127;
  v63 = v119;
  sub_1CFED563C(v127, v119, qword_1EDEC3C18, type metadata accessor for OvernightMetricsChart.Derivations);
  v64 = v128 + 48;
  v65 = *(v128 + 48);
  if (v65(v63, 1, v125) != 1)
  {
    v92 = v63;
    v93 = v62;
    v94 = v61;
    v95 = v92;

    v96 = MEMORY[0x1E69E6720];
    sub_1CFED3284(v113, &unk_1EDEC4980, MEMORY[0x1E69A2E68], MEMORY[0x1E69E6720], sub_1CFED2054);
    sub_1CFED3284(v123, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, v96, sub_1CFED2054);
    sub_1CFED3284(v93, qword_1EDEC3C18, type metadata accessor for OvernightMetricsChart.Derivations, v96, sub_1CFED2054);
    sub_1CFED3284(v94, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, v96, sub_1CFED2054);
    sub_1CFED3284(v122, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, v96, sub_1CFED2054);
    sub_1CFED2268(v126, type metadata accessor for OvernightMetricsChartPointCollection);
    v90 = v114;
    sub_1CFED22C8(v95, v114, type metadata accessor for OvernightMetricsChart.Derivations);
    return sub_1CFED22C8(v90, &v55[*(v124 + 13)], type metadata accessor for OvernightMetricsChart.Derivations);
  }

  v115 = v65;
  v128 = v64;
  v105(v108, &v126[v104], v109);
  v106 = *(v59 + 2);

  v66 = *(v60 + 16);
  if (v66)
  {
    v67 = v112 + 16;
    v68 = *(v112 + 16);
    v69 = v60 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
    v70 = v110;
    v71 = v107;
    v68(v110, v69, v107);
    v72 = v111;
    v68(v111, v69 + *(v67 + 56) * (v66 - 1), v71);

    sub_1CFEB9248(v72, v118);
    sub_1CFED2D78(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    if (sub_1CFF0E49C())
    {
      v73 = v100;
      v68(v100, v70, v71);
      v74 = v103;
      v68((v73 + *(v103 + 48)), v72, v71);
      v75 = v102;
      sub_1CFED2200(v73, v102, sub_1CFE8DBDC);
      v117 = *(v74 + 48);
      v76 = v112;
      v77 = *(v112 + 32);
      v78 = v101;
      v77(v101, v75, v71);
      v79 = *(v76 + 8);
      v79(v75 + v117, v71);
      v116 = v79;
      sub_1CFED22C8(v73, v75, sub_1CFE8DBDC);
      v77((v78 + *(v99 + 36)), v75 + *(v74 + 48), v71);
      v79(v75, v71);
      v80 = v125;
      v81 = v108;
      sub_1CFEB98B0(v78, &v118[*(v125 + 20)]);
      sub_1CFE9C984(v78);
      v82 = v111;
      v83 = v81;
      v117 = sub_1CFEB9EDC(v106, v111);
      v84 = MEMORY[0x1E69E6720];
      sub_1CFED3284(v113, &unk_1EDEC4980, MEMORY[0x1E69A2E68], MEMORY[0x1E69E6720], sub_1CFED2054);
      v85 = v80;
      sub_1CFED3284(v123, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, v84, sub_1CFED2054);
      v86 = v116;
      v116(v82, v71);
      v86(v110, v71);
      (v98[0])(v83, v109);
      sub_1CFED3284(v127, qword_1EDEC3C18, type metadata accessor for OvernightMetricsChart.Derivations, v84, sub_1CFED2054);
      sub_1CFED3284(v120, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, v84, sub_1CFED2054);
      v87 = v119;
      sub_1CFED3284(v122, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, v84, sub_1CFED2054);
      sub_1CFED2268(v126, type metadata accessor for OvernightMetricsChartPointCollection);
      v88 = v85;
      v89 = v118;
      *&v118[*(v85 + 24)] = v117;
      v90 = v114;
      sub_1CFED22C8(v89, v114, type metadata accessor for OvernightMetricsChart.Derivations);
      v91 = v115(v87, 1, v88);
      v55 = v121;
      if (v91 != 1)
      {
        sub_1CFED3284(v87, qword_1EDEC3C18, type metadata accessor for OvernightMetricsChart.Derivations, MEMORY[0x1E69E6720], sub_1CFED2054);
      }

      return sub_1CFED22C8(v90, &v55[*(v124 + 13)], type metadata accessor for OvernightMetricsChart.Derivations);
    }

    __break(1u);

    __break(1u);
  }

  result = sub_1CFF0EA2C();
  __break(1u);
  return result;
}

uint64_t OvernightMetricsChart.init(timeScope:chartPointCollection:emphasizedChartPoint:tabProgress:shouldMergeOverlappingIndividualMetrics:visibleDataTypes:keyDates:warmupProgress:alignWarmupProgressCounterToChartPlotArea:precomputedDerivations:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, int a5@<W4>, int a6@<W5>, void *a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, char a11, uint64_t a12)
{
  v93 = a8;
  v95 = a3;
  v96 = a7;
  LODWORD(v90) = a6;
  LODWORD(v94) = a5;
  v89 = a4;
  v97 = a2;
  sub_1CFE8DBDC();
  v80 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v79 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v77 = v72 - v17;
  sub_1CFED2330(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  v76 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v78 = v72 - v19;
  v81 = sub_1CFF0C7AC();
  v87 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v86 = v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v84 = v72 - v22;
  v85 = sub_1CFF0C89C();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v91 = v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFED2054(0, qword_1EDEC3C18, type metadata accessor for OvernightMetricsChart.Derivations, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v72 - v25;
  v92 = type metadata accessor for OvernightMetricsChart.Derivations(0);
  v27 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v82 = v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v88 = v72 - v30;
  v31 = *a1;
  v32 = type metadata accessor for OvernightMetricsChart(0);
  v33 = v32[6];
  v34 = type metadata accessor for OvernightMetricsChartPoint();
  (*(*(v34 - 8) + 56))(&a9[v33], 1, 1, v34);
  v35 = &a9[v32[7]];
  v36 = v32[11];
  v37 = type metadata accessor for OvernightMetricsWarmupProgress();
  (*(*(v37 - 8) + 56))(&a9[v36], 1, 1, v37);
  v38 = v32[14];
  v99[0] = swift_getKeyPath();
  sub_1CFEA4090(v99);
  memcpy(&a9[v38], v99, 0x119uLL);
  *a9 = v31;
  sub_1CFED2200(v97, &a9[v32[5]], type metadata accessor for OvernightMetricsChartPointCollection);
  sub_1CFED2180(v95, &a9[v33], qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint);
  *v35 = v89;
  v35[8] = v94 & 1;
  v94 = v32;
  a9[v32[8]] = v90;
  v98 = v96;

  sub_1CFED20D8(&v98);
  v39 = v93;
  v40 = v94;
  *&a9[v94[9]] = v98;
  *&a9[v40[10]] = v39;

  sub_1CFED2180(a10, &a9[v36], qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
  a9[v40[12]] = a11 & 1;
  sub_1CFED563C(a12, v26, qword_1EDEC3C18, type metadata accessor for OvernightMetricsChart.Derivations);
  v43 = *(v27 + 48);
  v42 = v27 + 48;
  v41 = v43;
  v44 = v26;
  if (v43(v26, 1, v92) != 1)
  {

    v69 = MEMORY[0x1E69E6720];
    sub_1CFED3284(a12, qword_1EDEC3C18, type metadata accessor for OvernightMetricsChart.Derivations, MEMORY[0x1E69E6720], sub_1CFED2054);
    sub_1CFED3284(a10, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, v69, sub_1CFED2054);
    sub_1CFED3284(v95, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, v69, sub_1CFED2054);
    sub_1CFED2268(v97, type metadata accessor for OvernightMetricsChartPointCollection);
    v70 = v44;
    v66 = v88;
    sub_1CFED22C8(v70, v88, type metadata accessor for OvernightMetricsChart.Derivations);
    return sub_1CFED22C8(v66, &a9[v94[13]], type metadata accessor for OvernightMetricsChart.Derivations);
  }

  v72[1] = v42;
  v73 = a12;
  v74 = v41;
  v75 = a10;
  v89 = a9;
  v90 = v26;
  v45 = type metadata accessor for OvernightMetricsChartPointCollection();
  (*(v83 + 16))(v91, v97 + *(v45 + 20), v85);
  v72[0] = v96[2];

  v46 = *(v39 + 16);
  if (v46)
  {
    v48 = v87 + 16;
    v47 = *(v87 + 16);
    v49 = v93 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v50 = v84;
    v51 = v81;
    v47(v84, v49, v81);
    v52 = v49 + *(v48 + 56) * (v46 - 1);
    v53 = v86;
    v47(v86, v52, v51);

    sub_1CFEB9248(v53, v82);
    sub_1CFED2D78(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    if (sub_1CFF0E49C())
    {
      v54 = v77;
      v47(v77, v50, v51);
      v55 = v80;
      v47((v54 + *(v80 + 48)), v53, v51);
      v56 = v79;
      sub_1CFED2200(v54, v79, sub_1CFE8DBDC);
      v96 = *(v55 + 48);
      v57 = v87;
      v58 = *(v87 + 32);
      v59 = v78;
      v58(v78, v56, v51);
      v60 = *(v57 + 8);
      v60(v96 + v56, v51);
      sub_1CFED22C8(v54, v56, sub_1CFE8DBDC);
      v58((v59 + *(v76 + 36)), v56 + *(v55 + 48), v51);
      v60(v56, v51);
      v61 = v92;
      v62 = v82;
      sub_1CFEB98B0(v59, &v82[*(v92 + 20)]);
      sub_1CFE9C984(v59);
      v63 = v86;
      v64 = sub_1CFEB9EDC(v72[0], v86);
      v65 = MEMORY[0x1E69E6720];
      sub_1CFED3284(v73, qword_1EDEC3C18, type metadata accessor for OvernightMetricsChart.Derivations, MEMORY[0x1E69E6720], sub_1CFED2054);
      sub_1CFED3284(v75, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, v65, sub_1CFED2054);
      sub_1CFED3284(v95, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, v65, sub_1CFED2054);
      sub_1CFED2268(v97, type metadata accessor for OvernightMetricsChartPointCollection);
      v60(v63, v51);
      v60(v84, v51);
      (*(v83 + 8))(v91, v85);
      *&v62[*(v61 + 24)] = v64;
      v66 = v88;
      sub_1CFED22C8(v62, v88, type metadata accessor for OvernightMetricsChart.Derivations);
      v67 = v90;
      v68 = v74(v90, 1, v61);
      a9 = v89;
      if (v68 != 1)
      {
        sub_1CFED3284(v67, qword_1EDEC3C18, type metadata accessor for OvernightMetricsChart.Derivations, MEMORY[0x1E69E6720], sub_1CFED2054);
      }

      return sub_1CFED22C8(v66, &a9[v94[13]], type metadata accessor for OvernightMetricsChart.Derivations);
    }

    __break(1u);

    __break(1u);
  }

  result = sub_1CFF0EA2C();
  __break(1u);
  return result;
}

void sub_1CFED2054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFED20D8(void **a1)
{
  v2 = *(sub_1CFF0CB6C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1CFEF651C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1CFED3388(v5);
  *a1 = v3;
}

uint64_t sub_1CFED2180(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFED2054(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CFED2200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFED2268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFED22C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CFED2330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFF0C7AC();
    v7 = sub_1CFED2D78(&qword_1EDEC5198, MEMORY[0x1E6969530]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1CFED23D0()
{
  if (!qword_1EDEC3D08)
  {
    type metadata accessor for OvernightMetricsChartSizingPlaceholder();
    sub_1CFED2518(255, &qword_1EDEC1B58, sub_1CFED24D0, sub_1CFED25FC, MEMORY[0x1E697F960]);
    sub_1CFED2D78(qword_1EDEC2878, type metadata accessor for OvernightMetricsChartSizingPlaceholder);
    sub_1CFED2818();
    v0 = type metadata accessor for ChartPlotSizeReader();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC3D08);
    }
  }
}

void sub_1CFED2518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1CFED259C()
{
  if (!qword_1EDEC1B08)
  {
    sub_1CFF0D8AC();
    v0 = sub_1CFF0D96C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1B08);
    }
  }
}

void sub_1CFED25FC()
{
  if (!qword_1EDEC19F8)
  {
    sub_1CFED269C(255);
    sub_1CFED26E4();
    sub_1CFED27C4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC19F8);
    }
  }
}

unint64_t sub_1CFED26E4()
{
  result = qword_1EDEC2038;
  if (!qword_1EDEC2038)
  {
    sub_1CFED269C(255);
    sub_1CFED2D78(qword_1EDEC3410, type metadata accessor for AnimatableOvernightMetricsChart);
    sub_1CFED2D78(&qword_1EDEC1B10, sub_1CFED259C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC2038);
  }

  return result;
}

unint64_t sub_1CFED27C4()
{
  result = qword_1EDEC2B40;
  if (!qword_1EDEC2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC2B40);
  }

  return result;
}

unint64_t sub_1CFED2818()
{
  result = qword_1EDEC1B60;
  if (!qword_1EDEC1B60)
  {
    sub_1CFED2518(255, &qword_1EDEC1B58, sub_1CFED24D0, sub_1CFED25FC, MEMORY[0x1E697F960]);
    sub_1CFED2928();
    sub_1CFED269C(255);
    sub_1CFED26E4();
    sub_1CFED27C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1B60);
  }

  return result;
}

unint64_t sub_1CFED2928()
{
  result = qword_1EDEC2028;
  if (!qword_1EDEC2028)
  {
    sub_1CFED24D0(255);
    sub_1CFED2D78(qword_1EDEC2710, type metadata accessor for OvernightMetricsChartWarmupProgressCounter);
    sub_1CFED2D78(&qword_1EDEC1B10, sub_1CFED259C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC2028);
  }

  return result;
}

void sub_1CFED2A4C()
{
  type metadata accessor for OvernightMetricsChartPointCollection();
  if (v0 <= 0x3F)
  {
    sub_1CFED2054(319, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1CFEB2B70(319, &qword_1EDEC16D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1CFED2054(319, &qword_1EDEC4D58, MEMORY[0x1E69A2E68], MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1CFED2054(319, &qword_1EDEC4D60, MEMORY[0x1E6969530], MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1CFED2054(319, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for OvernightMetricsChart.Derivations(319);
              if (v6 <= 0x3F)
              {
                sub_1CFEB2B70(319, &qword_1EDEC2118, &type metadata for OvernightMetricsChartSpec, MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
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

void sub_1CFED2CA8()
{
  sub_1CFED2330(319, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  if (v0 <= 0x3F)
  {
    sub_1CFED2054(319, &qword_1EDEC4D60, MEMORY[0x1E6969530], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CFED2D78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for OvernightMetricsChart(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v2 + v1[5];

  v4 = *(type metadata accessor for OvernightMetricsChartPointCollection() + 20);
  v5 = sub_1CFF0C89C();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);

  v6 = v2 + v1[6];
  v7 = type metadata accessor for OvernightMetricsChartPoint();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = sub_1CFF0C7AC();
    v9 = *(*(v8 - 8) + 8);
    v9(v6, v8);
    v10 = v6 + *(v7 + 20);
    v9(v10, v8);
    sub_1CFED2330(0, &qword_1EDEC4D30, MEMORY[0x1E69E66A8]);
    v9(v10 + *(v11 + 36), v8);
    type metadata accessor for IndividualOvernightMetricChartPointCollection();
  }

  v12 = v2 + v1[11];
  v13 = type metadata accessor for OvernightMetricsWarmupProgress();
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = sub_1CFF0CA6C();
    (*(*(v14 - 8) + 8))(v12, v14);
  }

  v15 = v2 + v1[13];
  v16 = sub_1CFF0C7AC();
  v17 = *(*(v16 - 8) + 8);
  v17(v15, v16);
  sub_1CFED2330(0, &qword_1EDEC4D78, MEMORY[0x1E69E5F90]);
  v19 = v18;
  v17(v15 + *(v18 + 36), v16);
  v20 = v15 + *(type metadata accessor for OvernightMetricsChart.Derivations(0) + 20);
  v17(v20, v16);
  v17(v20 + *(v19 + 36), v16);

  v21 = v2 + v1[14];
  v24 = *(v21 + 240);
  v25 = *(v21 + 256);
  v23 = *(v21 + 208);
  sub_1CFE698AC(*v21, *(v21 + 8), *(v21 + 16), *(v21 + 24), *(v21 + 32), *(v21 + 40), *(v21 + 48), *(v21 + 56), *(v21 + 64), *(v21 + 72), *(v21 + 80), *(v21 + 88), *(v21 + 96), *(v21 + 104), *(v21 + 112), *(v21 + 120), *(v21 + 128), *(v21 + 136), *(v21 + 144), *(v21 + 152), *(v21 + 160), *(v21 + 168), *(v21 + 176), *(v21 + 184), *(v21 + 192), *(v21 + 200), v23, *(&v23 + 1), *(v21 + 224), *(v21 + 232), v24, *(&v24 + 1), v25, *(&v25 + 1), *(v21 + 272), *(v21 + 280));

  return swift_deallocObject();
}

uint64_t sub_1CFED31FC@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *(type metadata accessor for OvernightMetricsChart(0) - 8);
  v8 = (v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80)));

  return sub_1CFECD7B8(v8, a1, a2, a3);
}

uint64_t sub_1CFED3284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1CFED32E4(uint64_t a1, uint64_t a2)
{
  sub_1CFED2054(0, qword_1EDEC4FC8, type metadata accessor for OvernightMetricsChartPoint, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CFED3388(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CFF0EB8C();
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
        sub_1CFF0CB6C();
        v6 = sub_1CFF0E64C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1CFF0CB6C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1CFED38C8(v8, v9, a1, v4);
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
    sub_1CFED34B4(0, v2, 1, a1);
  }
}

void sub_1CFED34B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61 = sub_1CFF0CB4C();
  v8 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v42 - v11;
  v12 = sub_1CFF0CB6C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v42 - v18;
  v44 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = sub_1CFF0E6DC();
    v22 = *(v13 + 16);
    v21 = v13 + 16;
    v55 = v22;
    v56 = v20;
    v23 = *(v21 + 56);
    v53 = (v21 - 8);
    v54 = (v8 + 8);
    v58 = v21;
    v24 = (v19 + v23 * (a3 - 1));
    v49 = -v23;
    v50 = (v21 + 16);
    v25 = a1 - a3;
    v51 = v19;
    v43 = v23;
    v26 = v19 + v23 * a3;
    v57 = v12;
LABEL_5:
    v47 = v24;
    v48 = a3;
    v45 = v26;
    v46 = v25;
    v27 = v25;
    while (1)
    {
      v63 = v27;
      v28 = v55;
      v55(v64, v26, v12);
      v28(v65, v24, v12);
      v62 = sub_1CFF0E6CC();
      sub_1CFF0E66C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v29 = v59;
      v30 = v64;
      sub_1CFF0CB5C();
      v31 = v60;
      v32 = v65;
      sub_1CFF0CB5C();
      v33 = sub_1CFF0CB3C();
      v34 = *v54;
      v35 = v31;
      v36 = v61;
      (*v54)(v35, v61);
      v34(v29, v36);

      v37 = *v53;
      v12 = v57;
      (*v53)(v32, v57);
      v37(v30, v12);
      v38 = v63;
      if ((v33 & 1) == 0)
      {
LABEL_4:
        a3 = v48 + 1;
        v24 = &v47[v43];
        v25 = v46 - 1;
        v26 = v45 + v43;
        if (v48 + 1 == v44)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v51)
      {
        break;
      }

      v39 = *v50;
      v40 = v52;
      (*v50)(v52, v26, v12);
      swift_arrayInitWithTakeFrontToBack();
      v39(v24, v40, v12);
      v24 += v49;
      v26 += v49;
      v41 = __CFADD__(v38, 1);
      v27 = v38 + 1;
      if (v41)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1CFED38C8(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v153 = a1;
  v179 = sub_1CFF0CB4C();
  v8 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v178 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v177 = &v148 - v11;
  v12 = sub_1CFF0CB6C();
  MEMORY[0x1EEE9AC00](v12);
  v156 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v170 = &v148 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v184 = &v148 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v183 = &v148 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v167 = &v148 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v166 = &v148 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v151 = &v148 - v25;
  v28.n128_f64[0] = MEMORY[0x1EEE9AC00](v26);
  v150 = &v148 - v29;
  v165 = a3;
  v30 = a3[1];
  v163 = v27;
  if (v30 < 1)
  {
    v32 = MEMORY[0x1E69E7CC0];
LABEL_100:
    a4 = *v153;
    if (!*v153)
    {
      goto LABEL_138;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v163;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_132:
      v32 = sub_1CFEF63F0(v32);
    }

    v185 = v32;
    v143 = *(v32 + 16);
    if (v143 >= 2)
    {
      while (*v165)
      {
        v144 = *(v32 + 16 * v143);
        v145 = v32;
        v146 = *(v32 + 16 * (v143 - 1) + 32);
        v32 = *(v32 + 16 * (v143 - 1) + 40);
        sub_1CFED4734(*v165 + *(v12 + 72) * v144, *v165 + *(v12 + 72) * v146, (*v165 + *(v12 + 72) * v32), a4);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v32 < v144)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v145 = sub_1CFEF63F0(v145);
        }

        if (v143 - 2 >= *(v145 + 2))
        {
          goto LABEL_126;
        }

        v147 = &v145[16 * v143];
        *v147 = v144;
        *(v147 + 1) = v32;
        v185 = v145;
        sub_1CFEF6364(v143 - 1);
        v32 = v185;
        v143 = *(v185 + 16);
        if (v143 <= 1)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_136;
    }

LABEL_110:

    return;
  }

  v31 = 0;
  v175 = (v8 + 8);
  v176 = v27 + 16;
  v173 = (v27 + 32);
  v174 = (v27 + 8);
  v32 = MEMORY[0x1E69E7CC0];
  v152 = a4;
  v180 = v12;
  while (1)
  {
    v33 = v31;
    v34 = v31 + 1;
    v154 = v32;
    v155 = v33;
    if (v34 < v30)
    {
      v161 = v30;
      v149 = v5;
      a4 = *v165;
      v35 = *(v163 + 72);
      v164 = v34;
      v36 = a4 + v35 * v34;
      v37 = *(v163 + 16);
      (v37)(v150, v36, v12, v28);
      v168 = v35;
      v160 = v37;
      (v37)(v151, a4 + v35 * v33, v12);
      v38 = sub_1CFF0E6DC();
      sub_1CFF0E6CC();
      v159 = v38;
      sub_1CFF0E66C();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v32 = v177;
      v39 = v150;
      sub_1CFF0CB5C();
      v40 = v178;
      v41 = v151;
      sub_1CFF0CB5C();
      LODWORD(v162) = sub_1CFF0CB3C();
      v42 = *v175;
      v43 = v179;
      (*v175)(v40, v179);
      v158 = v42;
      (v42)(v32, v43);

      v44 = *v174;
      v45 = v41;
      v12 = v180;
      (*v174)(v45, v180);
      v157 = v44;
      v44(v39, v12);
      v46 = v155 + 2;
      v47 = v168 * (v155 + 2);
      v48 = a4 + v47;
      v49 = v164;
      v50 = v168 * v164;
      v5 = a4 + v168 * v164;
      do
      {
        v58 = v46;
        v61 = v49;
        v60 = v50;
        v59 = v47;
        v182 = v46;
        if (v46 >= v161)
        {
          break;
        }

        v171 = v50;
        v172 = v49;
        v181 = v47;
        v62 = v160;
        (v160)(v166, v48, v12);
        (v62)(v167, v5, v12);
        sub_1CFF0E6CC();
        sub_1CFF0E66C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v51 = v177;
        a4 = v166;
        sub_1CFF0CB5C();
        v52 = v178;
        v53 = v167;
        sub_1CFF0CB5C();
        LOBYTE(v169) = sub_1CFF0CB3C() & 1;
        LODWORD(v169) = v169;
        v54 = v52;
        v55 = v179;
        v32 = v175;
        v56 = v158;
        v158(v54, v179);
        v56(v51, v55);

        v12 = v180;
        v57 = v157;
        v157(v53, v180);
        v57(a4, v12);
        v59 = v181;
        v58 = v182;
        v46 = v182 + 1;
        v48 += v168;
        v5 += v168;
        v60 = v171;
        v61 = v172;
        v49 = v172 + 1;
        v50 = &v171[v168];
        v47 = v181 + v168;
      }

      while ((v162 & 1) == v169);
      if ((v162 & 1) == 0)
      {
        goto LABEL_26;
      }

      v63 = v155;
      if (v58 < v155)
      {
        goto LABEL_129;
      }

      if (v155 < v58)
      {
        v64 = v155 * v168;
        v32 = v154;
        do
        {
          if (v63 != v61)
          {
            v67 = *v165;
            if (!*v165)
            {
              goto LABEL_135;
            }

            v68 = v59;
            v69 = *v173;
            (*v173)(v156, v67 + v64, v180);
            if (v64 < v60 || v67 + v64 >= v67 + v68)
            {
              v65 = v180;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v65 = v180;
              if (v64 != v60)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v69(&v60[v67], v156, v65);
            v32 = v154;
            v59 = v68;
          }

          ++v63;
          v60 -= v168;
          v59 -= v168;
          v64 += v168;
        }

        while (v63 < v61--);
        v34 = v182;
        v5 = v149;
        a4 = v152;
        v12 = v180;
      }

      else
      {
LABEL_26:
        v34 = v58;
        v5 = v149;
        a4 = v152;
        v32 = v154;
      }
    }

    v70 = v165[1];
    if (v34 >= v70)
    {
      goto LABEL_47;
    }

    if (__OFSUB__(v34, v155))
    {
      goto LABEL_128;
    }

    if (v34 - v155 >= a4)
    {
LABEL_47:
      a4 = v155;
      goto LABEL_48;
    }

    v71 = v155 + a4;
    if (__OFADD__(v155, a4))
    {
      goto LABEL_130;
    }

    a4 = v155;
    if (v71 >= v70)
    {
      v72 = v165[1];
    }

    else
    {
      v72 = v71;
    }

    if (v72 < v155)
    {
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (v34 != v72)
    {
      break;
    }

LABEL_48:
    if (v34 < a4)
    {
      goto LABEL_127;
    }

    v95 = swift_isUniquelyReferenced_nonNull_native();
    v164 = v34;
    if ((v95 & 1) == 0)
    {
      v32 = sub_1CFE975F8(0, *(v32 + 16) + 1, 1, v32);
    }

    a4 = *(v32 + 16);
    v96 = *(v32 + 24);
    v97 = a4 + 1;
    if (a4 >= v96 >> 1)
    {
      v32 = sub_1CFE975F8((v96 > 1), a4 + 1, 1, v32);
    }

    *(v32 + 16) = v97;
    v98 = v32 + 16 * a4;
    v99 = v164;
    *(v98 + 32) = v155;
    *(v98 + 40) = v99;
    if (!*v153)
    {
      goto LABEL_137;
    }

    if (a4)
    {
      v100 = *v153;
      while (1)
      {
        v101 = v97 - 1;
        if (v97 >= 4)
        {
          break;
        }

        if (v97 == 3)
        {
          v102 = *(v32 + 32);
          v103 = *(v32 + 40);
          v112 = __OFSUB__(v103, v102);
          v104 = v103 - v102;
          v105 = v112;
LABEL_69:
          if (v105)
          {
            goto LABEL_116;
          }

          v118 = (v32 + 16 * v97);
          v120 = *v118;
          v119 = v118[1];
          v121 = __OFSUB__(v119, v120);
          v122 = v119 - v120;
          v123 = v121;
          if (v121)
          {
            goto LABEL_119;
          }

          v124 = (v32 + 32 + 16 * v101);
          v126 = *v124;
          v125 = v124[1];
          v112 = __OFSUB__(v125, v126);
          v127 = v125 - v126;
          if (v112)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v122, v127))
          {
            goto LABEL_123;
          }

          if (v122 + v127 >= v104)
          {
            if (v104 < v127)
            {
              v101 = v97 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v128 = (v32 + 16 * v97);
        v130 = *v128;
        v129 = v128[1];
        v112 = __OFSUB__(v129, v130);
        v122 = v129 - v130;
        v123 = v112;
LABEL_83:
        if (v123)
        {
          goto LABEL_118;
        }

        v131 = v32 + 16 * v101;
        v133 = *(v131 + 32);
        v132 = *(v131 + 40);
        v112 = __OFSUB__(v132, v133);
        v134 = v132 - v133;
        if (v112)
        {
          goto LABEL_121;
        }

        if (v134 < v122)
        {
          goto LABEL_3;
        }

LABEL_90:
        a4 = v101 - 1;
        if (v101 - 1 >= v97)
        {
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
          __break(1u);
LABEL_126:
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

        if (!*v165)
        {
          goto LABEL_134;
        }

        v139 = *(v32 + 32 + 16 * a4);
        v140 = *(v32 + 32 + 16 * v101 + 8);
        sub_1CFED4734(*v165 + *(v163 + 72) * v139, *v165 + *(v163 + 72) * *(v32 + 32 + 16 * v101), (*v165 + *(v163 + 72) * v140), v100);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v140 < v139)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1CFEF63F0(v32);
        }

        if (a4 >= *(v32 + 16))
        {
          goto LABEL_113;
        }

        v141 = v32 + 16 * a4;
        *(v141 + 32) = v139;
        *(v141 + 40) = v140;
        v185 = v32;
        sub_1CFEF6364(v101);
        v32 = v185;
        v97 = *(v185 + 16);
        v12 = v180;
        if (v97 <= 1)
        {
          goto LABEL_3;
        }
      }

      v106 = v32 + 32 + 16 * v97;
      v107 = *(v106 - 64);
      v108 = *(v106 - 56);
      v112 = __OFSUB__(v108, v107);
      v109 = v108 - v107;
      if (v112)
      {
        goto LABEL_114;
      }

      v111 = *(v106 - 48);
      v110 = *(v106 - 40);
      v112 = __OFSUB__(v110, v111);
      v104 = v110 - v111;
      v105 = v112;
      if (v112)
      {
        goto LABEL_115;
      }

      v113 = (v32 + 16 * v97);
      v115 = *v113;
      v114 = v113[1];
      v112 = __OFSUB__(v114, v115);
      v116 = v114 - v115;
      if (v112)
      {
        goto LABEL_117;
      }

      v112 = __OFADD__(v104, v116);
      v117 = v104 + v116;
      if (v112)
      {
        goto LABEL_120;
      }

      if (v117 >= v109)
      {
        v135 = (v32 + 32 + 16 * v101);
        v137 = *v135;
        v136 = v135[1];
        v112 = __OFSUB__(v136, v137);
        v138 = v136 - v137;
        if (v112)
        {
          goto LABEL_124;
        }

        if (v104 < v138)
        {
          v101 = v97 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v31 = v164;
    v30 = v165[1];
    a4 = v152;
    if (v164 >= v30)
    {
      goto LABEL_100;
    }
  }

  v149 = v5;
  v73 = *v165;
  v172 = sub_1CFF0E6DC();
  v74 = *(v163 + 72);
  v171 = *(v163 + 16);
  v75 = (v73 + v74 * (v34 - 1));
  v168 = -v74;
  v169 = v73;
  v76 = a4 - v34;
  v158 = v74;
  v77 = (v73 + v34 * v74);
  v159 = v72;
LABEL_38:
  v164 = v34;
  v160 = v77;
  v78 = v77;
  v161 = v76;
  v79 = v76;
  v162 = v75;
  while (1)
  {
    v181 = v79;
    v80 = v171;
    (v171)(v183, v78, v12);
    v80(v184, v75, v12);
    v182 = sub_1CFF0E6CC();
    sub_1CFF0E66C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v81 = v177;
    v82 = v183;
    sub_1CFF0CB5C();
    v83 = v178;
    v84 = v184;
    sub_1CFF0CB5C();
    v85 = sub_1CFF0CB3C();
    v86 = *v175;
    v87 = v83;
    v88 = v179;
    (*v175)(v87, v179);
    v86(v81, v88);

    v89 = *v174;
    v90 = v84;
    v12 = v180;
    (*v174)(v90, v180);
    v89(v82, v12);
    if ((v85 & 1) == 0)
    {
LABEL_37:
      v34 = v164 + 1;
      v75 = v158 + v162;
      v76 = v161 - 1;
      v77 = v158 + v160;
      if (v164 + 1 != v159)
      {
        goto LABEL_38;
      }

      v34 = v159;
      v5 = v149;
      v32 = v154;
      goto LABEL_47;
    }

    v91 = v181;
    if (!v169)
    {
      break;
    }

    v92 = *v173;
    v93 = v170;
    (*v173)(v170, v78, v12);
    swift_arrayInitWithTakeFrontToBack();
    v92(v75, v93, v12);
    v75 += v168;
    v78 += v168;
    v94 = __CFADD__(v91, 1);
    v79 = v91 + 1;
    if (v94)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
}

void sub_1CFED4734(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v76 = sub_1CFF0CB4C();
  v8 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v62 - v11;
  v81 = sub_1CFF0CB6C();
  v12 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v73 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v62 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v62 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v62 - v19;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_62;
  }

  v22 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_63;
  }

  v23 = (a2 - a1) / v21;
  v84 = a1;
  v83 = a4;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v25;
    if (v25 >= 1)
    {
      v42 = -v21;
      v67 = (v8 + 8);
      v68 = (v12 + 16);
      v65 = (v12 + 8);
      v66 = a1;
      v43 = v41;
      v79 = a4;
      v69 = -v21;
      do
      {
        v63 = v41;
        v44 = a2 + v42;
        v80 = a2 + v42;
        v70 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v84 = a2;
            v82 = v63;
            goto LABEL_60;
          }

          v45 = a3;
          v64 = v41;
          v78 = v43;
          v46 = *v68;
          v71 = &v43[v42];
          v47 = v81;
          v46(v72);
          (v46)(v73, v44, v47);
          sub_1CFF0E6DC();
          v77 = sub_1CFF0E6CC();
          sub_1CFF0E66C();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v48 = &a3[v42];
          v49 = v74;
          v50 = v72;
          sub_1CFF0CB5C();
          v51 = v75;
          v52 = v73;
          sub_1CFF0CB5C();
          v53 = sub_1CFF0CB3C();
          v54 = *v67;
          v55 = v51;
          v56 = v76;
          (*v67)(v55, v76);
          v54(v49, v56);

          v57 = *v65;
          v58 = v81;
          (*v65)(v52, v81);
          v57(v50, v58);
          if (v53)
          {
            break;
          }

          v59 = v71;
          v41 = v71;
          v60 = v79;
          v44 = v80;
          a3 = v48;
          if (v45 < v78 || v48 >= v78)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v66;
            v42 = v69;
          }

          else
          {
            a1 = v66;
            v42 = v69;
            if (v45 != v78)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v43 = v41;
          a2 = v70;
          if (v59 <= v60)
          {
            goto LABEL_58;
          }
        }

        v61 = v79;
        a2 = v80;
        a3 = v48;
        v41 = v64;
        if (v45 < v70 || v48 >= v70)
        {
          swift_arrayInitWithTakeFrontToBack();
          a1 = v66;
          v42 = v69;
        }

        else
        {
          a1 = v66;
          v42 = v69;
          if (v45 != v70)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v43 = v78;
      }

      while (v78 > v61);
    }

LABEL_58:
    v84 = a2;
    v82 = v41;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v72 = a3;
    v73 = (a4 + v24);
    v82 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v27 = *(v12 + 16);
      v68 = (v8 + 8);
      v69 = v27;
      v70 = v21;
      v71 = v12 + 16;
      v67 = (v12 + 8);
      do
      {
        v80 = a2;
        v28 = v81;
        v29 = v69;
        (v69)(v77, a2, v81);
        v79 = a4;
        v29(v78, a4, v28);
        sub_1CFF0E6DC();
        sub_1CFF0E6CC();
        sub_1CFF0E66C();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v30 = v74;
        v31 = v77;
        sub_1CFF0CB5C();
        v32 = v75;
        v33 = v78;
        sub_1CFF0CB5C();
        v34 = sub_1CFF0CB3C();
        v35 = *v68;
        v36 = v32;
        v37 = v76;
        (*v68)(v36, v76);
        (v35)(v30, v37);

        v38 = *v67;
        v39 = v81;
        (*v67)(v33, v81);
        v38(v31, v39);
        if (v34)
        {
          a4 = v79;
          v40 = v70;
          a2 = v80 + v70;
          if (a1 < v80 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v80)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v80;
          v40 = v70;
          a4 = v79 + v70;
          if (a1 < v79 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v79)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v83 = a4;
        }

        a1 += v40;
        v84 = a1;
      }

      while (a4 < v73 && a2 < v72);
    }
  }

LABEL_60:
  sub_1CFEF6404(&v84, &v83, &v82);
}

uint64_t sub_1CFED4F04(uint64_t a1, uint64_t a2, void (*a3)(char *, char *), uint64_t a4)
{
  v65 = a3;
  v66 = a4;
  v6 = type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label(0);
  v63 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v51 - v9;
  v10 = sub_1CFF0CB6C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v51 - v14;
  sub_1CFED5580();
  v62 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v52 = &v51 - v21;
  v68 = a1;
  v22 = *(a1 + 16);
  v64 = a2;
  v23 = *(a2 + 16);
  if (v23 >= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  v69 = MEMORY[0x1E69E7CC0];
  result = sub_1CFEF3DC4(0, v24, 0);
  v26 = v69;
  v67 = v11;
  v60 = v23;
  v61 = v22;
  if (v24)
  {
    v27 = 0;
    v56 = (v11 + 32);
    v57 = (v11 + 16);
    while (v22 != v27)
    {
      v28 = v59;
      result = (*(v11 + 16))(v59, v68 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v27, v10);
      if (v23 == v27)
      {
        goto LABEL_24;
      }

      v29 = sub_1CFF0C7AC();
      v30 = *(v29 - 8);
      v31 = v64 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27;
      v32 = v10;
      v33 = *(v62 + 48);
      v34 = v28;
      v35 = v32;
      (*v56)(v17, v34);
      (*(v30 + 16))(&v17[v33], v31, v29);
      v36 = &v17[v33];
      v37 = v58;
      v65(v17, v36);
      sub_1CFED2268(v17, sub_1CFED5580);
      v69 = v26;
      v39 = *(v26 + 16);
      v38 = *(v26 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1CFEF3DC4(v38 > 1, v39 + 1, 1);
        v26 = v69;
      }

      ++v27;
      *(v26 + 16) = v39 + 1;
      result = sub_1CFED22C8(v37, v26 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v39, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
      v10 = v35;
      v11 = v67;
      v23 = v60;
      v22 = v61;
      if (v24 == v27)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_11:
    if (v22 <= v23)
    {
      return v26;
    }

    v57 = (v11 + 32);
    v58 = (v11 + 16);
    while (v24 < v22)
    {
      result = (*(v11 + 16))(v55, v68 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v24, v10);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_26;
      }

      if (v23 == v24)
      {
        (*(v67 + 8))(v55, v10);
        return v26;
      }

      if (v24 >= v23)
      {
        goto LABEL_27;
      }

      v59 = (v24 + 1);
      v40 = sub_1CFF0C7AC();
      v41 = *(v40 - 8);
      v42 = v64 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v24;
      v43 = v62;
      v44 = *(v62 + 48);
      v45 = v53;
      (*v57)(v53, v55, v10);
      v46 = v45 + v44;
      v47 = v54;
      (*(v41 + 16))(v46, v42, v40);
      v48 = v52;
      sub_1CFED22C8(v45, v52, sub_1CFED5580);
      v65(v48, (v48 + *(v43 + 48)));
      sub_1CFED2268(v48, sub_1CFED5580);
      v69 = v26;
      v50 = *(v26 + 16);
      v49 = *(v26 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1CFEF3DC4(v49 > 1, v50 + 1, 1);
        v26 = v69;
      }

      *(v26 + 16) = v50 + 1;
      result = sub_1CFED22C8(v47, v26 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v50, type metadata accessor for OvernightMetricsAxisConfiguration.DayConfiguration.Label);
      ++v24;
      v23 = v60;
      v22 = v61;
      v11 = v67;
      if (v59 == v61)
      {
        return v26;
      }
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_1CFED5580()
{
  if (!qword_1EDEC4CB8)
  {
    sub_1CFF0CB6C();
    sub_1CFF0C7AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC4CB8);
    }
  }
}

uint64_t sub_1CFED55F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CFED563C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFED2054(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for MultilayerCircularGaugeLayer()
{
  result = qword_1EDEC3740;
  if (!qword_1EDEC3740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFED5734()
{
  v0 = MEMORY[0x1E69E63B0];
  sub_1CFED9610(319, &qword_1EDEC4D70, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
  if (v1 <= 0x3F)
  {
    sub_1CFF0E15C();
    if (v2 <= 0x3F)
    {
      sub_1CFED9860(319, &qword_1EDEC16D8, v0, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1CFF0C7CC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CFED5858()
{
  sub_1CFED5E9C();
  if (v0 <= 0x3F)
  {
    sub_1CFED9610(319, &qword_1EDEC4D70, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D8], MEMORY[0x1E69E5F90]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1CFED5948(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 24) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v12 & 0x80000000) != 0)
      {
        v24 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v24);
        }

        else
        {
          return (*(v7 + 48))((v24 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1CFED5B74(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 24) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_54:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v13 & 0x80000000) != 0)
  {
    v25 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 16) & ~v10;
    if (v8 == v14)
    {
      v26 = *(v6 + 56);

      v26(v25);
    }

    else
    {
      v27 = *(v9 + 56);
      v28 = (v25 + v11 + v12) & ~v12;

      v27(v28);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v24 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v24 = a2 - 1;
    }

    *a1 = v24;
  }
}

void sub_1CFED5E9C()
{
  if (!qword_1EDEC1748)
  {
    type metadata accessor for MultilayerCircularGaugeLayer();
    v0 = sub_1CFF0E65C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1748);
    }
  }
}

uint64_t sub_1CFED5F48(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1CFF0E17C();
}

uint64_t sub_1CFED6118@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = *(a1 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v9 = a1[2];
  v37 = a1[3];
  v8 = v37;
  *(v7 + 2) = v9;
  *(v7 + 3) = v8;
  v11 = a1[4];
  v36 = a1[5];
  v10 = v36;
  *(v7 + 4) = v11;
  *(v7 + 5) = v10;
  (*(v3 + 32))(&v7[v6], v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1CFE607AC();
  v35 = v12;
  v13 = sub_1CFF0D62C();
  v14 = sub_1CFF0D86C();
  v34 = sub_1CFED9254(&qword_1EDEC1A70, sub_1CFE607AC);
  v56 = v11;
  v57 = v34;
  v33[1] = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1CFED9254(&qword_1EDEC1C28, MEMORY[0x1E697C4E8]);
  v64 = v13;
  v65 = v14;
  v66 = WitnessTable;
  v67 = v16;
  swift_getOpaqueTypeMetadata2();
  sub_1CFF0D62C();
  v17 = MEMORY[0x1E69E6370];
  v38 = MEMORY[0x1E6980A08];
  sub_1CFED9860(255, &qword_1EDEC1A78, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v33[2] = v18;
  v19 = sub_1CFF0D62C();
  v64 = v13;
  v65 = v14;
  v66 = WitnessTable;
  v67 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = MEMORY[0x1E697EBF8];
  v20 = swift_getWitnessTable();
  v21 = sub_1CFED929C(&qword_1EDEC1A80, &qword_1EDEC1A78, v17);
  v52 = v20;
  v53 = v21;
  v22 = swift_getWitnessTable();
  v64 = v19;
  v65 = v22;
  swift_getOpaqueTypeMetadata2();
  sub_1CFF0DFDC();
  v23 = sub_1CFF0D62C();
  v50 = swift_getWitnessTable();
  v51 = v34;
  v24 = swift_getWitnessTable();
  v64 = v23;
  v65 = v14;
  v66 = v24;
  v67 = v16;
  swift_getOpaqueTypeMetadata2();
  sub_1CFF0D62C();
  sub_1CFF0D62C();
  swift_getTupleTypeMetadata2();
  sub_1CFF0E16C();
  swift_getWitnessTable();
  sub_1CFF0DFFC();
  sub_1CFED9300();
  swift_getTupleTypeMetadata3();
  sub_1CFF0E16C();
  swift_getWitnessTable();
  sub_1CFF0E01C();
  swift_getWitnessTable();
  v58 = sub_1CFF0D5AC();
  v59 = v25;
  sub_1CFF0D5BC();
  v26 = swift_getWitnessTable();
  sub_1CFF0DD4C();

  v42 = v64;
  v43 = v65;
  v44 = v66;
  v45 = v67;
  sub_1CFF0D62C();
  v48 = v26;
  v49 = MEMORY[0x1E697F568];
  v27 = swift_getWitnessTable();
  sub_1CFF0DD9C();

  v42 = v58;
  v43 = v59;
  v44 = v60;
  v45 = v61;
  v46 = v62;
  v47 = v63;
  v28 = MEMORY[0x1E69E7DE0];
  sub_1CFED9860(255, &qword_1EDEC1AA8, MEMORY[0x1E69E7DE0], v38);
  v29 = sub_1CFF0D62C();
  v30 = sub_1CFED929C(&qword_1EDEC1AB0, &qword_1EDEC1AA8, v28);
  v40 = v27;
  v41 = v30;
  v31 = swift_getWitnessTable();
  sub_1CFE7C9C4(&v42, v29, v31);

  v58 = v64;
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v63 = v69;
  sub_1CFE7C9C4(&v58, v29, v31);
}

uint64_t sub_1CFED6844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a4;
  v39 = a6;
  v34 = a2;
  v35 = a1;
  v37 = a7;
  sub_1CFE607AC();
  v32 = v9;
  v33 = a3;
  sub_1CFF0D62C();
  v10 = sub_1CFF0D86C();
  v31 = sub_1CFED9254(&qword_1EDEC1A70, sub_1CFE607AC);
  v36 = a5;
  v50 = a5;
  v51 = v31;
  swift_getWitnessTable();
  v11 = sub_1CFED9254(&qword_1EDEC1C28, MEMORY[0x1E697C4E8]);
  swift_getOpaqueTypeMetadata2();
  sub_1CFF0D62C();
  v12 = MEMORY[0x1E69E6370];
  sub_1CFED9860(255, &qword_1EDEC1A78, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v30[1] = v13;
  sub_1CFF0D62C();
  v14 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = MEMORY[0x1E697EBF8];
  WitnessTable = swift_getWitnessTable();
  v43 = sub_1CFED929C(&qword_1EDEC1A80, &qword_1EDEC1A78, v12);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1CFF0DFDC();
  v15 = sub_1CFF0D62C();
  v40 = swift_getWitnessTable();
  v41 = v31;
  v46 = v15;
  v47 = v14;
  v48 = swift_getWitnessTable();
  v49 = v11;
  swift_getOpaqueTypeMetadata2();
  sub_1CFF0D62C();
  sub_1CFF0D62C();
  swift_getTupleTypeMetadata2();
  sub_1CFF0E16C();
  swift_getWitnessTable();
  sub_1CFF0DFFC();
  sub_1CFED9300();
  swift_getTupleTypeMetadata3();
  sub_1CFF0E16C();
  swift_getWitnessTable();
  v16 = sub_1CFF0E01C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v30 - v21;
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v24 = v38;
  v30[-6] = v33;
  v30[-5] = v24;
  v25 = v39;
  v30[-4] = v36;
  v30[-3] = v25;
  v26 = v35;
  v30[-2] = v34;
  v30[-1] = v26;
  sub_1CFF0E0EC();
  sub_1CFF0E00C();
  v27 = swift_getWitnessTable();
  sub_1CFE7C9C4(v19, v16, v27);
  v28 = *(v17 + 8);
  v28(v19, v16);
  sub_1CFE7C9C4(v22, v16, v27);
  v28(v22, v16);
}

uint64_t sub_1CFED6DB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v84 = a2;
  v82 = a1;
  v91 = a7;
  sub_1CFED93B4();
  v87 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v85 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFED9300();
  v90 = v13;
  v89 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v69 - v16;
  v81 = a4;
  v83 = a6;
  sub_1CFF0DFDC();
  sub_1CFE607AC();
  v17 = sub_1CFF0D62C();
  v18 = sub_1CFF0D86C();
  WitnessTable = swift_getWitnessTable();
  v20 = sub_1CFED9254(&qword_1EDEC1A70, sub_1CFE607AC);
  v108 = WitnessTable;
  v109 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1CFED9254(&qword_1EDEC1C28, MEMORY[0x1E697C4E8]);
  v104 = v17;
  v105 = v18;
  v106 = v21;
  v107 = v22;
  swift_getOpaqueTypeMetadata2();
  sub_1CFF0D62C();
  sub_1CFED9860(255, &qword_1EDEC1A78, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  sub_1CFF0D62C();
  swift_getTupleTypeMetadata2();
  v23 = sub_1CFF0E16C();
  v24 = swift_getWitnessTable();
  v77 = v23;
  v76 = v24;
  v79 = sub_1CFF0DFFC();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v95 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v97 = &v69 - v27;
  v80 = a3;
  v28 = sub_1CFF0D62C();
  v74 = a5;
  v103[7] = a5;
  v103[8] = v20;
  v29 = swift_getWitnessTable();
  v104 = v28;
  v105 = v18;
  v106 = v29;
  v107 = v22;
  swift_getOpaqueTypeMetadata2();
  sub_1CFF0D62C();
  v30 = sub_1CFF0D62C();
  v73 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v69 - v31;
  v104 = v28;
  v105 = v18;
  v106 = v29;
  v107 = v22;
  v103[5] = swift_getOpaqueTypeConformance2();
  v103[6] = MEMORY[0x1E697EBF8];
  v33 = swift_getWitnessTable();
  v34 = sub_1CFED929C(&qword_1EDEC1A80, &qword_1EDEC1A78, MEMORY[0x1E69E6370]);
  v103[3] = v33;
  v103[4] = v34;
  v35 = swift_getWitnessTable();
  v104 = v30;
  v105 = v35;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v96 = &v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v93 = &v69 - v38;
  sub_1CFF0E6DC();
  v75 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v39 = v80;
  v40 = v81;
  v104 = v80;
  v105 = v81;
  v41 = v74;
  v42 = v83;
  v106 = v74;
  v107 = v83;
  v69 = type metadata accessor for MultilayerCircularGauge();
  v43 = v84;
  v44 = v82;
  sub_1CFED7884(v84, v69, v32);
  v45 = v32;
  v46 = v96;
  sub_1CFF0DCFC();
  v73[1](v45, v30);
  v104 = v30;
  v105 = v35;
  v71 = MEMORY[0x1E6985688];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v93;
  v48 = OpaqueTypeMetadata2;
  sub_1CFE7C9C4(v46, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v49 = *(v92 + 8);
  v72 = v92 + 8;
  v73 = v49;
  v50 = (v49)(v46, v48);
  MEMORY[0x1EEE9AC00](v50);
  *(&v69 - 6) = v39;
  *(&v69 - 5) = v40;
  *(&v69 - 4) = v41;
  *(&v69 - 3) = v42;
  *(&v69 - 2) = v44;
  *(&v69 - 1) = v43;
  sub_1CFF0D8DC();
  v51 = v95;
  sub_1CFF0DFEC();
  v52 = v79;
  v81 = swift_getWitnessTable();
  sub_1CFE7C9C4(v51, v52, v81);
  v53 = v78;
  v83 = *(v78 + 8);
  (v83)(v51, v52);
  v54 = v85;
  sub_1CFED8B28(v69, v85);
  v55 = sub_1CFED9254(&qword_1EDEC1980, sub_1CFED93B4);
  v56 = v86;
  v57 = v87;
  sub_1CFF0DCFC();
  sub_1CFED98F8(v54);
  v58 = v96;
  v59 = v47;
  v60 = OpaqueTypeMetadata2;
  (*(v92 + 16))(v96, v59, OpaqueTypeMetadata2);
  v104 = v58;
  (*(v53 + 16))(v51, v97, v52);
  v105 = v51;
  v61 = v89;
  v62 = v88;
  v63 = v90;
  (*(v89 + 16))(v88, v56, v90);
  v106 = v62;
  v103[0] = v60;
  v103[1] = v52;
  v64 = v60;
  v103[2] = v63;
  v100 = OpaqueTypeConformance2;
  v101 = v81;
  v98 = v57;
  v99 = v55;
  v102 = swift_getOpaqueTypeConformance2();
  sub_1CFED5F48(&v104, 3uLL, v103);
  v65 = *(v61 + 8);
  v65(v56, v63);
  v66 = v83;
  (v83)(v97, v52);
  v67 = v73;
  (v73)(v93, v64);
  v65(v62, v63);
  (v66)(v95, v52);
  (v67)(v96, v64);
}

uint64_t sub_1CFED7884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v48 = a3;
  v4 = sub_1CFF0D86C();
  v45 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a2 + 16);
  sub_1CFE607AC();
  v7 = sub_1CFF0D62C();
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = *(a2 + 32);
  v11 = sub_1CFED9254(&qword_1EDEC1A70, sub_1CFE607AC);
  v57 = v10;
  v58 = v11;
  v46 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v36 = WitnessTable;
  v35 = sub_1CFED9254(&qword_1EDEC1C28, MEMORY[0x1E697C4E8]);
  v53 = v7;
  v54 = v4;
  v55 = WitnessTable;
  v56 = v35;
  v39 = MEMORY[0x1E697CD70];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v33 = &v33 - v13;
  v14 = sub_1CFF0D62C();
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v34 = &v33 - v15;
  sub_1CFED9860(255, &qword_1EDEC1A78, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v16 = sub_1CFF0D62C();
  v40 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v38 = &v33 - v20;
  sub_1CFF0DE1C();
  sub_1CFF0D85C();
  v21 = v36;
  v22 = v35;
  sub_1CFF0DD3C();
  (*(v45 + 8))(v6, v4);
  (*(v44 + 8))(v9, v7);
  sub_1CFF0D55C();
  sub_1CFF0E0EC();
  v53 = v7;
  v54 = v4;
  v55 = v21;
  v56 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = OpaqueTypeMetadata2;
  v24 = v34;
  v25 = v33;
  sub_1CFF0DDDC();
  (*(v41 + 8))(v25, v23);
  v51 = OpaqueTypeConformance2;
  v52 = MEMORY[0x1E697EBF8];
  v26 = swift_getWitnessTable();
  sub_1CFF0DD7C();
  (*(v42 + 8))(v24, v14);
  v27 = sub_1CFED929C(&qword_1EDEC1A80, &qword_1EDEC1A78, MEMORY[0x1E69E6370]);
  v49 = v26;
  v50 = v27;
  v28 = swift_getWitnessTable();
  v29 = v38;
  sub_1CFE7C9C4(v18, v16, v28);
  v30 = *(v40 + 8);
  v30(v18, v16);
  sub_1CFE7C9C4(v29, v16, v28);
  return (v30)(v29, v16);
}

uint64_t sub_1CFED7ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a5;
  v26 = a3;
  v30 = a2;
  v31 = a1;
  v32 = a7;
  v27 = a4;
  v29 = a6;
  sub_1CFF0DFDC();
  sub_1CFE607AC();
  v7 = sub_1CFF0D62C();
  v8 = sub_1CFF0D86C();
  WitnessTable = swift_getWitnessTable();
  v47 = sub_1CFED9254(&qword_1EDEC1A70, sub_1CFE607AC);
  v9 = swift_getWitnessTable();
  v10 = sub_1CFED9254(&qword_1EDEC1C28, MEMORY[0x1E697C4E8]);
  v42 = v7;
  v43 = v8;
  v25 = v8;
  v44 = v9;
  v45 = v10;
  swift_getOpaqueTypeMetadata2();
  sub_1CFF0D62C();
  sub_1CFED9860(255, &qword_1EDEC1A78, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v11 = sub_1CFF0D62C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  sub_1CFF0E6DC();
  v24 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v42 = v26;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v18 = type metadata accessor for MultilayerCircularGauge();
  sub_1CFED8334(v30, v18, v14);
  v42 = v7;
  v43 = v25;
  v44 = v9;
  v45 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = MEMORY[0x1E697EBF8];
  v19 = swift_getWitnessTable();
  v20 = sub_1CFED929C(&qword_1EDEC1A80, &qword_1EDEC1A78, MEMORY[0x1E69E6370]);
  v38 = v19;
  v39 = v20;
  v21 = swift_getWitnessTable();
  sub_1CFE7C9C4(v14, v11, v21);
  v22 = *(v12 + 8);
  v22(v14, v11);
  v36 = 0;
  v37 = 1;
  v42 = &v36;
  (*(v12 + 16))(v14, v17, v11);
  v43 = v14;
  v35[0] = MEMORY[0x1E6981840];
  v35[1] = v11;
  v33 = MEMORY[0x1E6981838];
  v34 = v21;
  sub_1CFED5F48(&v42, 2uLL, v35);
  v22(v17, v11);
  v22(v14, v11);
}

uint64_t sub_1CFED8334@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a1;
  v59 = a3;
  v4 = sub_1CFF0D86C();
  v40 = v4;
  v57 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2[3];
  v47 = a2[5];
  v6 = sub_1CFF0DFDC();
  v54 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  sub_1CFE607AC();
  v9 = sub_1CFF0D62C();
  v52 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v38 - v10;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1CFED9254(&qword_1EDEC1A70, sub_1CFE607AC);
  v71 = WitnessTable;
  v72 = v12;
  v56 = MEMORY[0x1E697E858];
  v13 = swift_getWitnessTable();
  v39 = sub_1CFED9254(&qword_1EDEC1C28, MEMORY[0x1E697C4E8]);
  v67 = v9;
  v68 = v4;
  v69 = v13;
  v70 = v39;
  v46 = MEMORY[0x1E697CD70];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v50 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v38 = &v38 - v14;
  v15 = sub_1CFF0D62C();
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v38 - v16;
  sub_1CFED9860(255, &qword_1EDEC1A78, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  v17 = sub_1CFF0D62C();
  v49 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v41 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v45 = &v38 - v20;
  *&v21 = a2[2];
  *(&v21 + 1) = v48;
  *&v22 = a2[4];
  *(&v22 + 1) = v47;
  v60 = v21;
  v61 = v22;
  v62 = v55;
  sub_1CFF0D84C();
  sub_1CFF0DFCC();
  v23 = v44;
  sub_1CFF0DE1C();
  (*(v54 + 8))(v8, v6);
  v24 = v53;
  sub_1CFF0D85C();
  v25 = v40;
  v26 = v39;
  sub_1CFF0DD3C();
  (*(v57 + 8))(v24, v25);
  (*(v52 + 8))(v23, v9);
  sub_1CFF0D55C();
  sub_1CFF0D55C();
  sub_1CFF0E0EC();
  v67 = v9;
  v68 = v25;
  v69 = v13;
  v70 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = OpaqueTypeMetadata2;
  v28 = v42;
  v29 = v38;
  sub_1CFF0DDDC();
  (*(v50 + 8))(v29, v27);
  v65 = OpaqueTypeConformance2;
  v66 = MEMORY[0x1E697EBF8];
  v30 = swift_getWitnessTable();
  v31 = v41;
  sub_1CFF0DD7C();
  (*(v51 + 8))(v28, v15);
  v32 = sub_1CFED929C(&qword_1EDEC1A80, &qword_1EDEC1A78, MEMORY[0x1E69E6370]);
  v63 = v30;
  v64 = v32;
  v33 = swift_getWitnessTable();
  v34 = v45;
  sub_1CFE7C9C4(v31, v17, v33);
  v35 = *(v49 + 8);
  v35(v31, v17);
  sub_1CFE7C9C4(v34, v17, v33);
  return (v35)(v34, v17);
}

uint64_t sub_1CFED8B28@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1CFF0D55C();
  if (v6 < v5)
  {
    v5 = v6;
  }

  v7 = v5 / 5.0;
  sub_1CFF0D55C();
  if (v9 < v8)
  {
    v8 = v9;
  }

  v10 = (v8 - v8 / 5.0) * 0.5;
  *a2 = sub_1CFF0E0EC();
  a2[1] = v11;
  sub_1CFED9954();
  return sub_1CFED8D44(v2, a1[2], a1[3], a1[4], a1[5], a2 + *(v12 + 44), v7, v10);
}

uint64_t sub_1CFED8BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v16[1] = a6;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v14 = type metadata accessor for MultilayerCircularGauge();
  sub_1CFE7C9C4(a1 + *(v14 + 60), a3, a5);
  sub_1CFE7C9C4(v13, a3, a5);
  (*(v11 + 8))(v13, a3);
}

uint64_t sub_1CFED8D44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v25 = a6;
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v23 = a5;
  v29 = a5;
  v14 = type metadata accessor for MultilayerCircularGauge();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &KeyPath - v16;
  sub_1CFF0E6DC();
  v24 = sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = *a1;
  KeyPath = swift_getKeyPath();
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = v23;
  *(v19 + 32) = a4;
  *(v19 + 40) = v20;
  *(v19 + 48) = a7;
  *(v19 + 56) = a8;
  (*(v15 + 32))(v19 + v18, v17, v14);
  sub_1CFED5E9C();
  sub_1CFED951C();
  sub_1CFED9254(&qword_1EDEC1740, sub_1CFED5E9C);
  sub_1CFED9254(&qword_1EDEC49A0, MEMORY[0x1E69695A8]);
  sub_1CFED96DC();

  sub_1CFF0E06C();
}

uint64_t sub_1CFED8FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  sub_1CFF0E6DC();
  sub_1CFF0E6CC();
  sub_1CFF0E66C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = type metadata accessor for MultilayerCircularGaugeLayer();
  v11 = v10[6];
  v12 = *(a1 + v10[7]) * a4;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16) - v13;
  v15 = (*a1 - v13) / v14 * 4.71238898 + 2.35619449;
  v16 = v10[9];
  v17 = *(a1 + v10[8]);
  v18 = (*(a1 + 8) - v13) / v14 * 4.71238898 + 2.35619449;
  v19 = *(a1 + v16);
  v20 = *(a1 + v16 + 8);
  v21 = *(a1 + 16);
  sub_1CFED951C();
  v23 = *(v22 + 36);
  v24 = sub_1CFF0E15C();
  (*(*(v24 - 8) + 16))(a3 + v23, a1 + v11, v24);

  *a3 = v12;
  *(a3 + 8) = a5;
  *(a3 + 16) = v15;
  *(a3 + 24) = v18;
  *(a3 + 32) = v17;
  *(a3 + 40) = v19;
  *(a3 + 48) = v20;
  *(a3 + 56) = v21;
  return result;
}

uint64_t sub_1CFED9198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for MultilayerCircularGauge() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1CFED6844(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_1CFED9254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFED929C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CFED9860(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1CFED9300()
{
  if (!qword_1EDEC1A20)
  {
    sub_1CFED93B4();
    sub_1CFED9254(&qword_1EDEC1980, sub_1CFED93B4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDEC1A20);
    }
  }
}

void sub_1CFED93B4()
{
  if (!qword_1EDEC1978)
  {
    sub_1CFED9418();
    sub_1CFED9664();
    v0 = sub_1CFF0E01C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1978);
    }
  }
}

void sub_1CFED9418()
{
  if (!qword_1EDEC1918)
  {
    sub_1CFED5E9C();
    sub_1CFF0C7CC();
    sub_1CFED951C();
    sub_1CFED9254(&qword_1EDEC1740, sub_1CFED5E9C);
    sub_1CFED9254(&qword_1EDEC49A0, MEMORY[0x1E69695A8]);
    v0 = sub_1CFF0E07C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1918);
    }
  }
}

void sub_1CFED951C()
{
  if (!qword_1EDEC1EC8)
  {
    sub_1CFED9584();
    sub_1CFF0D6AC();
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC1EC8);
    }
  }
}

void sub_1CFED9584()
{
  if (!qword_1EDEC2010)
  {
    sub_1CFED9610(255, &qword_1EDEC1AE8, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
    v0 = sub_1CFF0D62C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2010);
    }
  }
}

void sub_1CFED9610(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1CFED9664()
{
  result = qword_1EDEC1920;
  if (!qword_1EDEC1920)
  {
    sub_1CFED9418();
    sub_1CFED96DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1920);
  }

  return result;
}

unint64_t sub_1CFED96DC()
{
  result = qword_1EDEC1ED0;
  if (!qword_1EDEC1ED0)
  {
    sub_1CFED951C();
    sub_1CFED975C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1ED0);
  }

  return result;
}

unint64_t sub_1CFED975C()
{
  result = qword_1EDEC2018;
  if (!qword_1EDEC2018)
  {
    sub_1CFED9584();
    sub_1CFEB3E94();
    sub_1CFED97DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC2018);
  }

  return result;
}

unint64_t sub_1CFED97DC()
{
  result = qword_1EDEC1AF0;
  if (!qword_1EDEC1AF0)
  {
    sub_1CFED9610(255, &qword_1EDEC1AE8, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEC1AF0);
  }

  return result;
}

void sub_1CFED9860(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1CFED98F8(uint64_t a1)
{
  sub_1CFED93B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFED9954()
{
  if (!qword_1EDEC2098)
  {
    sub_1CFED9418();
    v0 = sub_1CFF0D58C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC2098);
    }
  }
}

uint64_t sub_1CFED99BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MultilayerCircularGauge() - 8);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v8 = v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return sub_1CFED8FF8(a1, v8, a2, v6, v7);
}

uint64_t sub_1CFED9A8C(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v55 = a1;
  v56 = a2;
  v4 = sub_1CFF0E29C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v48 - v8;
  v54 = sub_1CFF0C7AC();
  v59 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v65 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEDF4DC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v48 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v48 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - v22;
  v24 = v5 + 16;
  v64 = *(v5 + 16);
  v64(&v48 - v22, v2, v4, v21);
  v63 = v5;
  v27 = *(v5 + 56);
  v25 = v5 + 56;
  v26 = v27;
  v27(v23, 0, 1, v4);
  v27(v19, 1, 1, v4);
  v28 = sub_1CFEDEAD8(v23, v19);
  v29 = v19;
  v30 = v28;
  sub_1CFEDF584(v29, sub_1CFEDF4DC);
  sub_1CFEDF584(v23, sub_1CFEDF4DC);
  result = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    v69 = MEMORY[0x1E69E7CC0];
    sub_1CFEF3C74(0, v30 & ~(v30 >> 63), 0);
    v66 = v69;
    v32 = v61;
    (v64)(v61, v2, v4);
    v26(v32, 0, 1, v4);
    if ((v30 & 0x8000000000000000) == 0)
    {
      v33 = v4;
      v48 = v30;
      v49 = v26;
      v34 = 0;
      v35 = v63;
      v62 = (v63 + 4);
      ++v63;
      v64 = (v35 + 6);
      v30 = v58;
      v51 = v3;
      v52 = v59 + 32;
      v24 = v57;
      v50 = v25;
      while (!__OFADD__(v34, 1))
      {
        v61 = (v34 + 1);
        v37 = v12;
        sub_1CFEDF5E4(v32, v24, sub_1CFEDF4DC);
        v38 = *v64;
        if ((*v64)(v24, 1, v33) == 1)
        {
          goto LABEL_19;
        }

        v12 = v32;
        v39 = *v62;
        (*v62)(v30, v24, v33);
        v24 = v33;
        v40 = v67;
        v55(v30);
        v67 = v40;
        if (v40)
        {
          goto LABEL_20;
        }

        v60 = *v63;
        v60(v30, v33);
        v41 = v66;
        v69 = v66;
        v43 = *(v66 + 16);
        v42 = *(v66 + 24);
        v30 = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          sub_1CFEF3C74(v42 > 1, v43 + 1, 1);
          v41 = v69;
        }

        *(v41 + 16) = v30;
        v44 = (*(v59 + 80) + 32) & ~*(v59 + 80);
        v66 = v41;
        (*(v59 + 32))(v41 + v44 + *(v59 + 72) * v43, v65, v54);
        v32 = v12;
        v45 = v12;
        v12 = v37;
        sub_1CFEDF64C(v45, v37, sub_1CFEDF4DC);
        if (v38(v37, 1, v33) == 1)
        {
          goto LABEL_18;
        }

        v46 = v53;
        v39(v53, v37, v33);
        sub_1CFE5C014();
        sub_1CFEDF718(&qword_1EDEC4A80, MEMORY[0x1E696B418]);
        v47 = sub_1CFF0E4CC();
        v24 = v57;
        v30 = v58;
        if (v47)
        {
          v60(v46, v33);
          v36 = 1;
        }

        else
        {
          v68 = 1;
          sub_1CFEDF718(&qword_1EDEC4A78, MEMORY[0x1E696B418]);
          sub_1CFF0E8BC();
          v60(v46, v33);
          v36 = 0;
        }

        v49(v32, v36, 1, v33);
        ++v34;
        if (v61 == v48)
        {
          sub_1CFEDF584(v32, sub_1CFEDF4DC);
          return v66;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    (*v63)(v30, v24);
    sub_1CFEDF584(v12, sub_1CFEDF4DC);

    __break(1u);
  }

  return result;
}

uint64_t sub_1CFEDA160(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v23 = sub_1CFF0C7AC();
  v26 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a4;
  v9 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1CFEF3C74(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v28 = v4;
    v11 = 0;
    v10 = v30;
    v12 = v27;
    if (v27 <= a3)
    {
      v12 = a3;
    }

    v21 = v12 - a3 + 1;
    v22 = v26 + 32;
    while (v11 < v9)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }

      v29 = a3 + v11;
      v14 = v8;
      v15 = v28;
      v24(&v29);
      v28 = v15;
      if (v15)
      {
        goto LABEL_22;
      }

      v30 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1CFEF3C74(v16 > 1, v17 + 1, 1);
        v10 = v30;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v17;
      v8 = v14;
      (*(v26 + 32))(v18, v14, v23);
      if (v27 < a3)
      {
        goto LABEL_18;
      }

      if (v21 == ++v11)
      {
        goto LABEL_19;
      }

      if (v13 == v9)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_1CFEDA398(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x1E69E7CC0];
  sub_1CFEF3D14(0, v4, 0);
  v5 = v16;
  for (i = (a3 + 32); ; ++i)
  {
    v14 = *i;
    a1(&v15, &v14);
    if (v3)
    {
      break;
    }

    v9 = v15;
    v16 = v5;
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (v11 >= v10 >> 1)
    {
      v13 = v15;
      sub_1CFEF3D14((v10 > 1), v11 + 1, 1);
      v9 = v13;
      v5 = v16;
    }

    *(v5 + 16) = v11 + 1;
    *(v5 + 16 * v11 + 32) = v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFEDA4AC(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  sub_1CFEF3D34(0, v4, 0);
  v5 = v15;
  for (i = (a3 + 32); ; ++i)
  {
    v13 = *i;
    a1(&v14, &v13);
    if (v3)
    {
      break;
    }

    v9 = v14;
    v15 = v5;
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1CFEF3D34((v10 > 1), v11 + 1, 1);
      v5 = v15;
    }

    *(v5 + 16) = v11 + 1;
    *(v5 + 8 * v11 + 32) = v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFEDA5C0(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1CFEF3E54(0, v4, 0);
  v5 = v18;
  v8 = *(type metadata accessor for IndividualOvernightMetricChartPoint(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    a1(v17, v9);
    if (v3)
    {
      break;
    }

    v11 = v17[0];
    v12 = v17[1];
    v18 = v5;
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1CFEF3E54((v13 > 1), v14 + 1, 1);
      v5 = v18;
    }

    *(v5 + 16) = v14 + 1;
    v15 = v5 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
    v9 += v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFEDA730(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for SleepingSampleViewModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1CFEF3E74(0, v10, 0);
  v11 = v21;
  v12 = *(sub_1CFF0CB6C() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1CFEF3E74(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1CFEDF64C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for SleepingSampleViewModel);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFEDA92C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_1CFF0CD6C();
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1CFEF3CC4(0, v9, 0);
  v10 = v22;
  v11 = *(sub_1CFF0CC0C() - 8);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v18 = v6 + 32;
  v17 = *(v11 + 72);
  while (1)
  {
    v20(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1CFEF3CC4(v13 > 1, v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v19);
    v12 += v17;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

void *sub_1CFEDAB88(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void, double))
{
  sub_1CFEDF760(0, &qword_1EDEC4B28, type metadata accessor for IndividualOvernightMetricChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for IndividualOvernightMetricChartPoint(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v31 = &v27 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = *(a4(0, v16) - 8);
  v28 = v13;
  v20 = (v13 + 48);
  v21 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v32 = *(v19 + 72);
  v22 = MEMORY[0x1E69E7CC0];
  v29 = v12;
  v30 = a2;
  while (1)
  {
    a1(v21);
    if (v4)
    {
      break;
    }

    if ((*v20)(v11, 1, v12) == 1)
    {
      sub_1CFEDF0DC(v11, &qword_1EDEC4B28, type metadata accessor for IndividualOvernightMetricChartPoint);
    }

    else
    {
      v23 = v31;
      sub_1CFEDF64C(v11, v31, type metadata accessor for IndividualOvernightMetricChartPoint);
      sub_1CFEDF64C(v23, v33, type metadata accessor for IndividualOvernightMetricChartPoint);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1CFE97CA4(0, v22[2] + 1, 1, v22);
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_1CFE97CA4(v24 > 1, v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      sub_1CFEDF64C(v33, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for IndividualOvernightMetricChartPoint);
      v12 = v29;
    }

    v21 += v32;
    if (!--v18)
    {
      return v22;
    }
  }

  return v22;
}

void *sub_1CFEDAEDC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_1CFEDF760(0, &qword_1EC512AB8, type metadata accessor for BaselineRelativeChartPoint, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for BaselineRelativeChartPoint();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(sub_1CFF0CD6C() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x1E69E7CC0];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_1CFEDF0DC(v9, &qword_1EC512AB8, type metadata accessor for BaselineRelativeChartPoint);
    }

    else
    {
      v20 = v28;
      sub_1CFEDF64C(v9, v28, type metadata accessor for BaselineRelativeChartPoint);
      sub_1CFEDF64C(v20, v30, type metadata accessor for BaselineRelativeChartPoint);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1CFE97DFC(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_1CFE97DFC(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_1CFEDF64C(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for BaselineRelativeChartPoint);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t SleepingSampleViewModel.dataType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFF0CB6C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SleepingSampleViewModel.dataType.setter(uint64_t a1)
{
  v3 = sub_1CFF0CB6C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SleepingSampleViewModel.chronologicalBaselineComparisons.getter()
{
  type metadata accessor for SleepingSampleViewModel(0);
}

uint64_t SleepingSampleViewModel.chronologicalBaselineComparisons.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepingSampleViewModel(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

id SleepingSampleViewModel.preferredAggregateValueUnit.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepingSampleViewModel(0) + 28));

  return v1;
}

void SleepingSampleViewModel.preferredAggregateValueUnit.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepingSampleViewModel(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t SleepingSampleViewModel.featureStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepingSampleViewModel(0) + 32);
  v4 = sub_1CFF0CE6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepingSampleViewModel.featureStatus.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepingSampleViewModel(0) + 32);
  v4 = sub_1CFF0CE6C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SleepingSampleViewModel.init(dataType:dayRange:chronologicalBaselineComparisons:preferredAggregateValueUnit:featureStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1CFF0CB6C();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for SleepingSampleViewModel(0);
  v14 = v13[5];
  v15 = sub_1CFF0CADC();
  (*(*(v15 - 8) + 32))(a6 + v14, a2, v15);
  *(a6 + v13[6]) = a3;
  *(a6 + v13[7]) = a4;
  v16 = v13[8];
  v17 = sub_1CFF0CE6C();
  v18 = *(*(v17 - 8) + 32);

  return v18(a6 + v16, a5, v17);
}

int64_t SleepingSampleViewModel.filtered(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SleepingSampleViewModel(0);
  v7 = sub_1CFF0CADC();
  sub_1CFEDF718(&qword_1EC512658, MEMORY[0x1E69A2E08]);
  v8 = sub_1CFF0E4CC();
  result = sub_1CFEDF5E4(v3, a2, type metadata accessor for SleepingSampleViewModel);
  if ((v8 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v12[2] = a1;
    v10 = *(v6 + 24);
    result = sub_1CFE9ACA4(sub_1CFEDBB10, v12);
    v11 = *(*(a2 + v10) + 16);
    if (v11 < result)
    {
      __break(1u);
    }

    else
    {
      sub_1CFE9DF04(result, v11);
      return (*(*(v7 - 8) + 24))(a2 + *(v6 + 20), a1, v7);
    }
  }

  return result;
}

uint64_t sub_1CFEDB93C()
{
  v0 = sub_1CFF0E29C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE5C014();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFF0CA8C();
  sub_1CFF0CCAC();
  sub_1CFEDF718(qword_1EDEC4A88, MEMORY[0x1E696B418]);
  if (sub_1CFF0E48C())
  {
    v7 = sub_1CFF0E49C() ^ 1;
  }

  else
  {
    v7 = 1;
  }

  (*(v1 + 8))(v3, v0);
  sub_1CFEDF584(v6, sub_1CFE5C014);
  return v7 & 1;
}

uint64_t SleepingSampleViewModel.baselineComparisonForToday.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1CFE5C014();
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFF0E29C();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v27 = sub_1CFF0CD6C();
  v12 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + *(type metadata accessor for SleepingSampleViewModel(0) + 24));
  v16 = *(v15 + 16);
  if (v16)
  {
    v24 = a1;
    (*(v12 + 16))(v14, v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * (v16 - 1), v27);
    sub_1CFF0CCAC();
    sub_1CFF0CA8C();
    v17 = v26;
    (*(v26 + 16))(v8, &v5[*(v25 + 36)], v6);
    sub_1CFEDF584(v5, sub_1CFE5C014);
    sub_1CFEDF718(&qword_1EDEC4A80, MEMORY[0x1E696B418]);
    v18 = sub_1CFF0E4CC();
    v19 = *(v17 + 8);
    v19(v8, v6);
    v19(v11, v6);
    if (v18)
    {
      a1 = v24;
      v20 = v27;
      (*(v12 + 32))(v24, v14, v27);
      v21 = 0;
    }

    else
    {
      v20 = v27;
      (*(v12 + 8))(v14, v27);
      v21 = 1;
      a1 = v24;
    }

    v22 = v20;
  }

  else
  {
    v21 = 1;
    v22 = v27;
  }

  return (*(v12 + 56))(a1, v21, 1, v22);
}

uint64_t SleepingSampleViewModel.primaryTintColor.getter()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1CFEDF760(0, &qword_1EC512A88, MEMORY[0x1E69A2E38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_1CFF0CB9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEDF760(0, &qword_1EC512A90, MEMORY[0x1E69A2F20], v0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_1CFF0CD6C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  SleepingSampleViewModel.baselineComparisonForToday.getter(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = &qword_1EC512A90;
    v16 = MEMORY[0x1E69A2F20];
    v17 = v10;
LABEL_6:
    sub_1CFEDF0DC(v17, v15, v16);
    return sub_1CFF0DE6C();
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_1CFF0CD5C();
  v18 = sub_1CFF0CB8C();
  (*(v5 + 8))(v7, v4);
  if (!v18)
  {
    (*(v12 + 8))(v14, v11);
    return sub_1CFF0DE6C();
  }

  sub_1CFF0CD4C();
  v19 = sub_1CFF0CAFC();
  if ((*(*(v19 - 8) + 48))(v3, 1, v19) == 1)
  {
    (*(v12 + 8))(v14, v11);
    v15 = &qword_1EC512A88;
    v16 = MEMORY[0x1E69A2E38];
    v17 = v3;
    goto LABEL_6;
  }

  sub_1CFEDF0DC(v3, &qword_1EC512A88, MEMORY[0x1E69A2E38]);
  if (sub_1CFF0CC9C())
  {
    if (qword_1EDEC4A30 != -1)
    {
      swift_once();
    }

    v21 = &qword_1EDEC4A38;
  }

  else
  {
    if (qword_1EDEC4A40 != -1)
    {
      swift_once();
    }

    v21 = &qword_1EDEC4A48;
  }

  v22 = *v21;
  v23 = sub_1CFF0DE3C();
  (*(v12 + 8))(v14, v11);
  return v23;
}

uint64_t SleepingSampleViewModel.backgroundColor.getter()
{
  v0 = sub_1CFF0CFFC();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1CFEDF760(0, &qword_1EC512A88, MEMORY[0x1E69A2E38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  v7 = sub_1CFF0CB9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEDF760(0, &qword_1EC512A90, MEMORY[0x1E69A2F20], v3);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_1CFF0CD6C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  SleepingSampleViewModel.baselineComparisonForToday.getter(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = &qword_1EC512A90;
    v19 = MEMORY[0x1E69A2F20];
    v20 = v13;
LABEL_6:
    sub_1CFEDF0DC(v20, v18, v19);
    return sub_1CFF0DE6C();
  }

  (*(v15 + 32))(v17, v13, v14);
  sub_1CFF0CD5C();
  v21 = sub_1CFF0CB8C();
  (*(v8 + 8))(v10, v7);
  if (!v21)
  {
    (*(v15 + 8))(v17, v14);
    return sub_1CFF0DE6C();
  }

  sub_1CFF0CD4C();
  v22 = sub_1CFF0CAFC();
  if ((*(*(v22 - 8) + 48))(v6, 1, v22) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v18 = &qword_1EC512A88;
    v19 = MEMORY[0x1E69A2E38];
    v20 = v6;
    goto LABEL_6;
  }

  sub_1CFEDF0DC(v6, &qword_1EC512A88, MEMORY[0x1E69A2E38]);
  if (sub_1CFF0CC9C())
  {
    if (qword_1EDEC23A8 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDEC82A0;
  }

  else
  {
    if (qword_1EDEC23B0 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDEC82B8;
  }

  v25 = v29;
  v26 = __swift_project_value_buffer(v29, v24);
  (*(v28 + 16))(v2, v26, v25);
  v27 = sub_1CFF0DEFC();
  (*(v15 + 8))(v17, v14);
  return v27;
}

uint64_t SleepingSampleViewModel.availability.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1CFEDF760(0, &qword_1EC512A90, MEMORY[0x1E69A2F20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  SleepingSampleViewModel.baselineComparisonForToday.getter(&v11 - v3);
  v5 = sub_1CFF0CD6C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CFEDF0DC(v4, &qword_1EC512A90, MEMORY[0x1E69A2F20]);
  }

  else
  {
    v7 = sub_1CFF0CD3C();
    (*(v6 + 8))(v4, v5);
    if (v7)
    {
      v8 = *MEMORY[0x1E69A2F80];
      v9 = sub_1CFF0CE4C();
      return (*(*(v9 - 8) + 104))(a1, v8, v9);
    }
  }

  type metadata accessor for SleepingSampleViewModel(0);
  return sub_1CFF0CE5C();
}

BOOL SleepingSampleViewModel.hasConfigurationIssue.getter()
{
  sub_1CFEDF760(0, &qword_1EC512A90, MEMORY[0x1E69A2F20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_1CFF0CE4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  SleepingSampleViewModel.baselineComparisonForToday.getter(v2);
  v10 = sub_1CFF0CD6C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v2, 1, v10) == 1)
  {
    sub_1CFEDF0DC(v2, &qword_1EC512A90, MEMORY[0x1E69A2F20]);
LABEL_5:
    type metadata accessor for SleepingSampleViewModel(0);
    sub_1CFF0CE5C();
    goto LABEL_6;
  }

  v12 = sub_1CFF0CD3C();
  (*(v11 + 8))(v2, v10);
  if ((v12 & 1) == 0)
  {
    goto LABEL_5;
  }

  (*(v4 + 104))(v6, *MEMORY[0x1E69A2F80], v3);
LABEL_6:
  (*(v4 + 32))(v9, v6, v3);
  v13 = (*(v4 + 88))(v9, v3) == *MEMORY[0x1E69A2F70];
  (*(v4 + 8))(v9, v3);
  return v13;
}

uint64_t SleepingSampleViewModel.Summary.Variant.hashValue.getter()
{
  v1 = *v0;
  sub_1CFF0EC3C();
  MEMORY[0x1D3879980](v1);
  return sub_1CFF0EC7C();
}

uint64_t sub_1CFEDCCF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_1CFEDCDA8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) + 20);
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 40);

  return v8(v3 + v6, a1, v7);
}

uint64_t SleepingSampleViewModel.Summary.unit.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepingSampleViewModel.Summary(0) + 24));

  return v1;
}

uint64_t SleepingSampleViewModel.Summary.unit.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SleepingSampleViewModel.Summary(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SleepingSampleViewModel.Summary.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepingSampleViewModel.Summary(0) + 28));

  return v1;
}

uint64_t SleepingSampleViewModel.Summary.description.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SleepingSampleViewModel.Summary(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SleepingSampleViewModel.Summary.shortenedDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepingSampleViewModel.Summary(0) + 32));

  return v1;
}

uint64_t SleepingSampleViewModel.Summary.shortenedDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SleepingSampleViewModel.Summary(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SleepingSampleViewModel.summary.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1CFEDF760(0, &qword_1EC512A98, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v38 - v4;
  v6 = sub_1CFF0C55C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFF0C5BC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1CFEDF760(0, &qword_1EC512A90, MEMORY[0x1E69A2F20], v2);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  SleepingSampleViewModel.baselineComparisonForToday.getter(&v38 - v11);
  v13 = sub_1CFF0CD6C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1CFEDF0DC(v12, &qword_1EC512A90, MEMORY[0x1E69A2F20]);
  }

  else
  {
    v15 = sub_1CFF0CD2C();
    (*(v14 + 8))(v12, v13);
    if (v15 > 0)
    {
      v40 = v15;
      sub_1CFE9CF84();
      sub_1CFF0E8EC();
      sub_1CFF0C5AC();
      v16 = type metadata accessor for SleepingSampleViewModel.Summary(0);
      result = sub_1CFF0C56C();
      *a1 = 1;
      v18 = &a1[v16[6]];
      *v18 = 0;
      v18[1] = 0;
      v19 = &a1[v16[7]];
      *v19 = 0;
      v19[1] = 0;
      v20 = v16[8];
LABEL_7:
      v24 = &a1[v20];
      *v24 = 0;
      v24[1] = 0;
      return result;
    }
  }

  SleepingSampleViewModel.formattedCurrentAggregateValue.getter(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1CFEDF0DC(v5, &qword_1EC512A98, MEMORY[0x1E6968848]);
    v21 = type metadata accessor for SleepingSampleViewModel.Summary(0);
    result = SleepingSampleViewModel.noDataString.getter();
    *a1 = 0;
    v22 = &a1[v21[6]];
    *v22 = 0;
    v22[1] = 0;
    v23 = &a1[v21[7]];
    *v23 = 0;
    v23[1] = 0;
    v20 = v21[8];
    goto LABEL_7;
  }

  v25 = v39;
  (*(v7 + 32))(v39, v5, v6);
  v26 = type metadata accessor for SleepingSampleViewModel.Summary(0);
  (*(v7 + 16))(&a1[v26[5]], v25, v6);
  v38 = SleepingSampleViewModel.localizedAggregateValueUnitString.getter();
  v28 = v27;
  v42 = 0;
  v29 = sub_1CFEDDC08(&v42);
  v31 = v30;
  v41 = 1;
  v32 = sub_1CFEDDC08(&v41);
  v34 = v33;
  result = (*(v7 + 8))(v25, v6);
  *a1 = 2;
  v35 = &a1[v26[6]];
  *v35 = v38;
  v35[1] = v28;
  v36 = &a1[v26[7]];
  *v36 = v29;
  v36[1] = v31;
  v37 = &a1[v26[8]];
  *v37 = v32;
  v37[1] = v34;
  return result;
}

uint64_t SleepingSampleViewModel.warmupDaysRemaining.getter()
{
  sub_1CFEDF760(0, &qword_1EC512A90, MEMORY[0x1E69A2F20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  SleepingSampleViewModel.baselineComparisonForToday.getter(&v7 - v1);
  v3 = sub_1CFF0CD6C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1CFEDF0DC(v2, &qword_1EC512A90, MEMORY[0x1E69A2F20]);
    return 0;
  }

  else
  {
    v6 = sub_1CFF0CD2C();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t SleepingSampleViewModel.formattedCurrentAggregateValue.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_1CFF0C55C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFF0CB9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEDF760(0, &qword_1EC512A90, MEMORY[0x1E69A2F20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v24 = v1;
  SleepingSampleViewModel.baselineComparisonForToday.getter(&v24 - v11);
  v13 = sub_1CFF0CD6C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1CFEDF0DC(v12, &qword_1EC512A90, MEMORY[0x1E69A2F20]);
LABEL_5:
    v22 = 1;
    v21 = v25;
    return (*(v3 + 56))(v21, v22, 1, v2);
  }

  sub_1CFF0CD5C();
  (*(v14 + 8))(v12, v13);
  v15 = sub_1CFF0CB8C();
  (*(v7 + 8))(v9, v6);
  if (!v15)
  {
    goto LABEL_5;
  }

  v16 = type metadata accessor for SleepingSampleViewModel(0);
  v17 = v24;
  v18 = *(v24 + *(v16 + 28));
  v19 = v15;
  HKQuantity.formattedAttributedValue(for:unit:)(v17, v18, v5);

  v20 = v25;
  (*(v3 + 32))(v25, v5, v2);
  v21 = v20;
  v22 = 0;
  return (*(v3 + 56))(v21, v22, 1, v2);
}

uint64_t SleepingSampleViewModel.localizedAggregateValueUnitString.getter()
{
  v1 = v0;
  v2 = sub_1CFF0CB9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEDF760(0, &qword_1EC512A90, MEMORY[0x1E69A2F20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  SleepingSampleViewModel.baselineComparisonForToday.getter(&v14 - v7);
  v9 = sub_1CFF0CD6C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1CFEDF0DC(v8, &qword_1EC512A90, MEMORY[0x1E69A2F20]);
  }

  else
  {
    sub_1CFF0CD5C();
    (*(v10 + 8))(v8, v9);
    v11 = sub_1CFF0CB8C();
    (*(v3 + 8))(v5, v2);
    if (v11)
    {

      v12 = type metadata accessor for SleepingSampleViewModel(0);
      return SleepingSampleDataType.localizedUnitString(for:)(*(v1 + *(v12 + 28))).value._countAndFlagsBits;
    }
  }

  return 0;
}

id sub_1CFEDDC08(unsigned __int8 *a1)
{
  v3 = sub_1CFF0CCEC();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x1E69E6720];
  sub_1CFEDF760(0, &qword_1EC512A88, MEMORY[0x1E69A2E38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28[-v7];
  v9 = sub_1CFF0CB9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1CFEDF760(0, &qword_1EC512A90, MEMORY[0x1E69A2F20], v5);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28[-v14];
  v16 = sub_1CFF0CD6C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = *a1;
  SleepingSampleViewModel.baselineComparisonForToday.getter(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1CFEDF0DC(v15, &qword_1EC512A90, MEMORY[0x1E69A2F20]);
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    sub_1CFF0CD5C();
    v20 = sub_1CFF0CB8C();
    (*(v10 + 8))(v12, v9);
    if (v20)
    {
      sub_1CFF0CD4C();
      v21 = sub_1CFF0CAFC();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v8, 1, v21) != 1)
      {
        v24 = sub_1CFF0CAEC();
        (*(v22 + 8))(v8, v21);
        v25 = v30;
        sub_1CFF0CCFC();
        v26 = *(v1 + *(type metadata accessor for SleepingSampleViewModel(0) + 28));
        v33 = v29;
        v27 = HKQuantity.formatted(for:classification:middle:unit:variant:)(v1, v25, v24, v26, &v33);

        (*(v31 + 8))(v25, v32);
        (*(v17 + 8))(v19, v16);
        return v27;
      }

      sub_1CFEDF0DC(v8, &qword_1EC512A88, MEMORY[0x1E69A2E38]);
    }

    (*(v17 + 8))(v19, v16);
  }

  return 0;
}

uint64_t SleepingSampleViewModel.noDataString.getter()
{
  v0 = sub_1CFF0C5BC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1CFF0C80C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1CFF0E55C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFF0E4DC();
  type metadata accessor for HealthBalanceUI();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_1CFF0C7FC();
  sub_1CFF0E5AC();
  sub_1CFF0C5AC();
  return sub_1CFF0C56C();
}

void *SleepingSampleViewModel.chartPoints.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepingSampleViewModel(0) + 24));
  v4 = v0;
  return sub_1CFEDAEDC(sub_1CFEDF16C, &v3, v1);
}

uint64_t sub_1CFEDE2A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFF0C89C();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CFF0C7AC();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFF0E29C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  sub_1CFE5C014();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CFF0CC7C();
  v31 = v17;
  if (v17)
  {
    if ((sub_1CFF0CC8C() & 1) == 0)
    {
      goto LABEL_12;
    }

    v37 = a1;
    v29 = 0;
  }

  else
  {
    v29 = v16;
    v37 = a1;
  }

  type metadata accessor for SleepingSampleViewModel(0);
  sub_1CFF0CA8C();
  sub_1CFF0CCAC();
  sub_1CFEDF718(qword_1EDEC4A88, MEMORY[0x1E696B418]);
  if ((sub_1CFF0E48C() & 1) == 0)
  {
    (*(v7 + 8))(v12, v6);
    sub_1CFEDF584(v15, sub_1CFE5C014);
    a1 = v37;
    goto LABEL_12;
  }

  v18 = sub_1CFF0E49C();
  v19 = *(v7 + 8);
  v19(v12, v6);
  sub_1CFEDF584(v15, sub_1CFE5C014);
  a1 = v37;
  if ((v18 & 1) == 0)
  {
LABEL_12:
    v23 = type metadata accessor for BaselineRelativeChartPoint();
    return (*(*(v23 - 8) + 56))(a1, 1, 1, v23);
  }

  sub_1CFF0CCAC();
  v20 = v30;
  sub_1CFF0CAAC();
  v21 = v34;
  sub_1CFF0E28C();
  (*(v32 + 8))(v20, v33);
  v19(v9, v6);
  if (sub_1CFF0CC9C())
  {
    if (qword_1EDEC4A30 != -1)
    {
      swift_once();
    }

    v22 = &qword_1EDEC4A38;
  }

  else
  {
    if (qword_1EDEC4A40 != -1)
    {
      swift_once();
    }

    v22 = &qword_1EDEC4A48;
  }

  v25 = *v22;
  v26 = sub_1CFF0DE3C();
  (*(v35 + 32))(a1, v21, v36);
  v27 = type metadata accessor for BaselineRelativeChartPoint();
  v28 = a1 + *(v27 + 20);
  *v28 = v29;
  *(v28 + 8) = v31 & 1;
  *(a1 + *(v27 + 24)) = v26;
  return (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
}

uint64_t SleepingSampleViewModel.emphasizedChartPoint.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFF0CD6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEDF760(0, &qword_1EC512A90, MEMORY[0x1E69A2F20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  SleepingSampleViewModel.baselineComparisonForToday.getter(&v14 - v10);
  sub_1CFEDF198(v11, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1CFEDF0DC(v11, &qword_1EC512A90, MEMORY[0x1E69A2F20]);
    v12 = type metadata accessor for BaselineRelativeChartPoint();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1CFEDE2A4(a1);
    (*(v3 + 8))(v5, v2);
    return sub_1CFEDF0DC(v11, &qword_1EC512A90, MEMORY[0x1E69A2F20]);
  }
}

uint64_t SleepingSampleViewModel.keyDatesForTimeAxis.getter()
{
  sub_1CFE5C014();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = v0 + *(type metadata accessor for SleepingSampleViewModel(0) + 20);
  sub_1CFF0CA8C();
  v8 = v4;
  v5 = sub_1CFED9A8C(sub_1CFE9E2BC, v7);
  sub_1CFEDF584(v3, sub_1CFE5C014);
  return v5;
}

uint64_t sub_1CFEDEAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFF0E29C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  sub_1CFEDF6B4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_1CFEDF5E4(a1, v13, sub_1CFEDF4DC);
  sub_1CFEDF5E4(a2, &v13[v15], sub_1CFEDF4DC);
  v16 = v5[6];
  LODWORD(a1) = v16(v13, 1, v4);
  v17 = v16(&v13[v15], 1, v4);
  v18 = v17;
  if (a1 == 1)
  {
    if (v17 == 1)
    {
      return 0;
    }
  }

  else
  {
    v16 = v5[4];
    v16(v10, v13, v4);
    if (v18 != 1)
    {
LABEL_11:
      v16(v7, &v13[v15], v4);
      sub_1CFEDF718(&qword_1EDEC4A78, MEMORY[0x1E696B418]);
      sub_1CFF0E8CC();
      v23 = v5[1];
      v23(v7, v4);
      v23(v10, v4);
      return v25;
    }

    sub_1CFE5C014();
    sub_1CFEDF718(&qword_1EDEC4A78, MEMORY[0x1E696B418]);
    sub_1CFF0E8CC();
    v20 = v5[1];
    ++v5;
    v20(v10, v4);
    result = v25 + 1;
    if (!__OFADD__(v25, 1))
    {
      return result;
    }

    __break(1u);
  }

  (v5[4])(v10, &v13[v15], v4);
  sub_1CFE5C014();
  v7 = *(v21 + 36);
  sub_1CFEDF718(&qword_1EDEC4A78, MEMORY[0x1E696B418]);
  sub_1CFF0E8CC();
  v22 = v5[1];
  ++v5;
  v22(v10, v4);
  result = v25 - 1;
  if (__OFSUB__(v25, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t _s15HealthBalanceUI23SleepingSampleViewModelV7SummaryV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for SleepingSampleViewModel.Summary(0);
  if ((sub_1CFF0C54C() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = &a1[v5];
  v7 = *&a1[v5 + 8];
  v8 = &a2[v5];
  v9 = *(v8 + 1);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_1CFF0EBCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v12 = v4[7];
  v13 = &a1[v12];
  v14 = *&a1[v12 + 8];
  v15 = &a2[v12];
  v16 = *(v15 + 1);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *v13 == *v15 && v14 == v16;
    if (!v17 && (sub_1CFF0EBCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = v4[8];
  v19 = &a1[v18];
  v20 = *&a1[v18 + 8];
  v21 = &a2[v18];
  v22 = *(v21 + 1);
  if (v20)
  {
    if (v22)
    {
      v23 = *v19 == *v21 && v20 == v22;
      if (v23 || (sub_1CFF0EBCC() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v22)
  {
    return 1;
  }

  return 0;
}

uint64_t _s15HealthBalanceUI23SleepingSampleViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1CFF0CB6C();
  sub_1CFEDF718(&qword_1EDEC4CD0, MEMORY[0x1E69A2E68]);
  sub_1CFF0E63C();
  sub_1CFF0E63C();
  if (v8 == v7 && (v4 = type metadata accessor for SleepingSampleViewModel(0), (sub_1CFF0CABC() & 1) != 0) && (sub_1CFE91DC8(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) != 0 && (sub_1CFE62B04(0, &qword_1EDEC4A28), (sub_1CFF0E89C() & 1) != 0))
  {
    v5 = MEMORY[0x1D3877B70](a1 + *(v4 + 32), a2 + *(v4 + 32));
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1CFEDF0DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFEDF760(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CFEDF198(uint64_t a1, uint64_t a2)
{
  sub_1CFEDF760(0, &qword_1EC512A90, MEMORY[0x1E69A2F20], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFEDF230()
{
  result = qword_1EC512AA0;
  if (!qword_1EC512AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512AA0);
  }

  return result;
}

void sub_1CFEDF2AC()
{
  sub_1CFF0CB6C();
  if (v0 <= 0x3F)
  {
    sub_1CFF0CADC();
    if (v1 <= 0x3F)
    {
      sub_1CFEDF760(319, &qword_1EDEC1768, MEMORY[0x1E69A2F20], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1CFE62B04(319, &qword_1EDEC1698);
        if (v3 <= 0x3F)
        {
          sub_1CFF0CE6C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1CFEDF3E0()
{
  sub_1CFF0C55C();
  if (v0 <= 0x3F)
  {
    sub_1CFEDF47C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFEDF47C()
{
  if (!qword_1EC512660)
  {
    v0 = sub_1CFF0E8AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC512660);
    }
  }
}

void sub_1CFEDF4DC()
{
  if (!qword_1EDEC4A68)
  {
    sub_1CFF0E29C();
    sub_1CFEDF718(&qword_1EDEC4A78, MEMORY[0x1E696B418]);
    sub_1CFEB25F8();
    v0 = sub_1CFF0E4BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC4A68);
    }
  }
}

uint64_t sub_1CFEDF584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFEDF5E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFEDF64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CFEDF6B4()
{
  if (!qword_1EDEC4A60)
  {
    sub_1CFEDF4DC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDEC4A60);
    }
  }
}

uint64_t sub_1CFEDF718(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CFEDF760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1CFEDF7C4()
{
  result = sub_1CFEDF7E4();
  qword_1EC512AC0 = result;
  return result;
}

id sub_1CFEDF7E4()
{
  v0 = sub_1CFF0C80C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB88]) init];
  [v4 setBoundaryStyle_];
  v5 = objc_opt_self();
  v6 = sub_1CFF0E56C();
  sub_1CFF0C7FC();
  v7 = sub_1CFF0C7DC();
  (*(v1 + 8))(v3, v0);
  v8 = [v5 dateFormatFromTemplate:v6 options:0 locale:v7];

  if (v8)
  {
    v12[2] = sub_1CFF0E59C();
    v12[3] = v9;
    v12[0] = 97;
    v12[1] = 0xE100000000000000;
    sub_1CFE60C24();
    v10 = sub_1CFF0E8DC();

    if (v10)
    {

      v8 = sub_1CFF0E56C();
    }
  }

  [v4 setDateTemplate_];

  return v4;
}

double CLKDevice.scaledValue(_:overrides:)(uint64_t a1, double a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E695B500]) initWithDevice:v2 identitySizeClass:2];
  sub_1CFEDFA88(a1);
  sub_1CFEDFD78();
  sub_1CFEC7590();
  v6 = sub_1CFF0E41C();

  [v5 scaledValue:v6 withOverrides:a2];
  v8 = v7;

  return v8;
}

uint64_t sub_1CFEDFA88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v32 = MEMORY[0x1E69E7CC0];
    sub_1CFEF3E14(0, v1, 0);
    v2 = v32;
    v4 = a1 + 64;
    v5 = sub_1CFF0E8FC();
    v6 = 0;
    v7 = *(a1 + 36);
    v30 = v1;
    v31 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v10 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v11 = v4;
      v12 = *(*(a1 + 56) + 8 * v5);
      v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v32 = v2;
      v16 = *(v2 + 16);
      v15 = *(v2 + 24);
      v17 = v2;
      if (v16 >= v15 >> 1)
      {
        v29 = v14;
        sub_1CFEF3E14((v15 > 1), v16 + 1, 1);
        v14 = v29;
        v17 = v32;
      }

      *(v17 + 16) = v16 + 1;
      v18 = v17 + 16 * v16;
      *(v18 + 32) = v13;
      *(v18 + 40) = v14;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_27;
      }

      v19 = *(v11 + 8 * v10);
      if ((v19 & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      v2 = v17;
      v4 = v11;
      v7 = v31;
      if (v31 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v20 = v19 & (-2 << (v5 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v9 = v30;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v9 = v30;
        v23 = (a1 + 72 + 8 * v10);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1CFEE0120(v5, v31, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        sub_1CFEE0120(v5, v31, 0);
      }

LABEL_4:
      ++v6;
      v5 = v8;
      if (v6 == v9)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (*(v2 + 16))
    {
      sub_1CFEC7518();
      v26 = sub_1CFF0EA6C();
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC8];
    }

    v32 = v26;

    sub_1CFEDFDC4(v27, 1, &v32);

    return v32;
  }

  return result;
}

unint64_t sub_1CFEDFD78()
{
  result = qword_1EC512A40;
  if (!qword_1EC512A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC512A40);
  }

  return result;
}

void sub_1CFEDFDC4(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_1CFEC3D40(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_1CFEC463C(v16, v6 & 1);
    v11 = sub_1CFEC3D40(v9);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1CFEDFD78();
    v11 = sub_1CFF0EBEC();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1CFEC5CEC();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_1CFE9E1D8();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v10;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1CFF0E96C();
    MEMORY[0x1D3879330](0xD00000000000001BLL, 0x80000001CFF158D0);
    sub_1CFEDFD78();
    sub_1CFF0EA0C();
    MEMORY[0x1D3879330](39, 0xE100000000000000);
    sub_1CFF0EA2C();
    __break(1u);
    return;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v26 = *v6;
      v27 = *a3;
      v9 = *(v6 - 1);
      v10 = v26;
      v28 = sub_1CFEC3D40(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_1CFEC463C(v32, 1);
        v28 = sub_1CFEC3D40(v9);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v34[6] + 8 * v28) = v9;
      *(v34[7] + 8 * v28) = v10;
      v35 = v34[2];
      v15 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v36;
      v6 += 2;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_1CFEE0120(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 sub_1CFEE012C@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v8 = v1;
  sub_1CFE825E8();
  sub_1CFF0C8DC();

  v3 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = v3;
  v12 = *(v1 + 80);
  v4 = *(v1 + 32);
  v8 = *(v1 + 16);
  v9 = v4;
  sub_1CFE5307C(&v8, v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CFEE01D8(uint64_t a1)
{
  v3 = *(v1 + 64);
  v14[2] = *(v1 + 48);
  v14[3] = v3;
  v15 = *(v1 + 80);
  v4 = *(v1 + 32);
  v14[0] = *(v1 + 16);
  v14[1] = v4;
  sub_1CFE5307C(v14, v12);
  v5 = sub_1CFEE069C(v14, a1);
  sub_1CFE531B0(v14);
  if (v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[0] = v1;
    sub_1CFE825E8();
    sub_1CFF0C8CC();
    sub_1CFE531B0(a1);
  }

  else
  {
    v8 = *(v1 + 64);
    v12[2] = *(v1 + 48);
    v12[3] = v8;
    v13 = *(v1 + 80);
    v9 = *(v1 + 32);
    v12[0] = *(v1 + 16);
    v12[1] = v9;
    v10 = *(a1 + 48);
    *(v1 + 48) = *(a1 + 32);
    *(v1 + 64) = v10;
    *(v1 + 80) = *(a1 + 64);
    v11 = *(a1 + 16);
    *(v1 + 16) = *a1;
    *(v1 + 32) = v11;
    return sub_1CFE531B0(v12);
  }
}

uint64_t sub_1CFEE0324()
{
  type metadata accessor for GlobalOvernightMetricsChartAnimationState();
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  *(v0 + 24) = v1;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  result = sub_1CFF0C90C();
  qword_1EDEC82D0 = v0;
  return result;
}

uint64_t sub_1CFEE038C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v11[0] = v3;
  sub_1CFE825E8();
  sub_1CFF0C8DC();

  v4 = *(v3 + 32);
  v5 = *(v3 + 48);
  v6 = *(v3 + 64);
  v12 = *(v3 + 80);
  v11[2] = v5;
  v11[3] = v6;
  v11[1] = v4;
  v11[0] = *(v3 + 16);
  *(a2 + 64) = v12;
  v7 = *(v3 + 64);
  *(a2 + 32) = *(v3 + 48);
  *(a2 + 48) = v7;
  v8 = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v8;
  return sub_1CFE5307C(v11, v10);
}

uint64_t sub_1CFEE043C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v1;
  v6 = *(a1 + 64);
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  sub_1CFE5307C(v5, v4);
  return sub_1CFEE01D8(v5);
}

uint64_t sub_1CFEE0490(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 48) = *(a2 + 32);
  *(a1 + 64) = v2;
  *(a1 + 80) = *(a2 + 64);
  v3 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v3;
  sub_1CFE5307C(a2, v5);
}

uint64_t sub_1CFEE0500()
{

  v1 = OBJC_IVAR____TtC15HealthBalanceUI41GlobalOvernightMetricsChartAnimationState___observationRegistrar;
  v2 = sub_1CFF0C91C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GlobalOvernightMetricsChartAnimationState()
{
  result = qword_1EDEC27C0;
  if (!qword_1EDEC27C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFEE0600()
{
  result = sub_1CFF0C91C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CFEE0774(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1CFE976F0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1CFEE0860(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1CFE97A28(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for MultilayerCircularGaugeLayer();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1CFEE098C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1CFE97A5C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1CFEE0A80(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1CFE97B80(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1CFEE0B6C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1CFE97930(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t View.balanceAXIDComponents(_:)()
{

  sub_1CFEE098C(v0);
  sub_1CFEB0828();
  sub_1CFEE0D50(&qword_1EDEC1710, sub_1CFEB0828);
  sub_1CFF0E47C();

  sub_1CFF0DDCC();
}

uint64_t sub_1CFEE0D50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for BalanceWidgetSystemSmallSpecs()
{
  result = qword_1EDEC4740;
  if (!qword_1EDEC4740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFEE0E0C()
{
  result = sub_1CFF0D43C();
  if (v1 <= 0x3F)
  {
    result = sub_1CFF0D61C();
    if (v2 <= 0x3F)
    {
      result = sub_1CFF0E2DC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1CFEE0EA8()
{
  sub_1CFEE24B4(0, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for OvernightMetricsWarmupProgress();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEC1EB4(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1CFEE2508(v2, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
  }

  else
  {
    sub_1CFE83D94(v2, v6);
    v7 = sub_1CFF0CA3C();
    v8 = sub_1CFF0CA5C();
    result = sub_1CFE83DF8(v6);
    if (__OFSUB__(v7, v8))
    {
      __break(1u);
      return result;
    }

    if (v7 - v8 > 0)
    {
      return 0;
    }
  }

  type metadata accessor for BalanceWidgetSystemSmallSpecs();
  if (sub_1CFF0D60C())
  {
    return 0x4050E00000000000;
  }

  else
  {
    return 0x4052C00000000000;
  }
}

void *sub_1CFEE1080@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v84 = a2;
  v85 = a1;
  v4 = sub_1CFF0E2DC();
  v82 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v80 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v81 = v67 - v7;
  sub_1CFEE24B4(0, &qword_1EDEC1A58, MEMORY[0x1E6980E30]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v79 = v67 - v9;
  v10 = sub_1CFF0D43C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEC4A40 != -1)
  {
    swift_once();
  }

  v83 = v4;
  v73 = qword_1EDEC4A48;
  sub_1CFF0DE3C();
  v14 = *MEMORY[0x1E697DBA8];
  v15 = (v11 + 104);
  v88 = *(v11 + 104);
  v88(v13, v14, v10);
  sub_1CFF0D42C();
  v18 = *(v11 + 8);
  v17 = (v11 + 8);
  v16 = v18;
  v18(v13, v10);
  v78 = sub_1CFF0DEBC();

  if (qword_1EDEC4A30 != -1)
  {
    swift_once();
  }

  v72 = qword_1EDEC4A38;
  sub_1CFF0DE3C();
  v87 = v14;
  v19 = v14;
  v20 = v88;
  v88(v13, v19, v10);
  v89 = v3;
  sub_1CFF0D42C();
  v16(v13, v10);
  v77 = sub_1CFF0DEBC();

  v71 = type metadata accessor for BalanceWidgetViewModel();
  v76 = *(v85 + *(v71 + 28));
  v21 = v20;
  v22 = v16;
  v23 = v17;
  v24 = v15;
  v25 = v10;
  if (v76 == 1 && (v21(v13, v87, v10), v26 = sub_1CFF0D42C(), v22(v13, v10), (v26 & 1) != 0))
  {
    v27 = [objc_opt_self() systemGray3Color];
    v28 = sub_1CFF0DE3C();
  }

  else
  {
    v29 = [objc_opt_self() systemGray5Color];
    v28 = sub_1CFF0DE3C();
  }

  v75 = v28;
  v21(v13, v87, v10);
  v30 = sub_1CFF0D42C();
  v22(v13, v10);
  v86 = v22;
  v67[2] = v23;
  if (v30)
  {
    v31 = sub_1CFF0DE8C();
  }

  else
  {
    v31 = sub_1CFF0DEAC();
  }

  v92[0] = v31;
  v74 = sub_1CFF0D51C();
  v32 = *(v85 + *(v71 + 24));
  v33 = v73;
  v85 = sub_1CFF0DE3C();
  v34 = v72;
  v35 = sub_1CFF0DE3C();
  v36 = 0x3FE0000000000000;
  if (v32)
  {
    v36 = 0x3FC999999999999ALL;
  }

  v71 = v36;
  v37 = 0x4028000000000000;
  if (v32)
  {
    v37 = 0x4026000000000000;
  }

  v72 = v37;
  v73 = v35;
  if (v32)
  {
    v38 = 0.45;
  }

  else
  {
    v38 = 0.5;
  }

  v39 = objc_opt_self();
  v40 = [v39 systemGray2Color];
  v92[0] = sub_1CFF0DE3C();
  v70 = sub_1CFF0D51C();
  v41 = v87;
  v88(v13, v87, v10);
  v42 = sub_1CFF0D42C();
  v43 = v86;
  v86(v13, v25);
  v44 = &selRef_systemGrayColor;
  if ((v42 & 1) == 0)
  {
    v44 = &selRef_systemGray4Color;
  }

  v45 = [v39 *v44];
  v92[0] = sub_1CFF0DE3C();
  v69 = sub_1CFF0D51C();
  v92[0] = sub_1CFF0DE9C();
  v68 = sub_1CFF0D51C();
  v67[1] = v24;
  v88(v13, v41, v25);
  v46 = sub_1CFF0D42C();
  v43(v13, v25);
  if (v46)
  {
    v47 = sub_1CFF0DEEC();
    v48 = v67[0];
  }

  else
  {
    v48 = v67[0];
    v49 = [v67[0] systemGray3Color];
    v47 = sub_1CFF0DE3C();
  }

  v92[0] = v47;
  v67[0] = sub_1CFF0D51C();
  v88(v13, v41, v25);
  v50 = sub_1CFF0D42C();
  v86(v13, v25);
  if (v50)
  {
    v51 = sub_1CFF0DEAC();
  }

  else
  {
    v52 = [v48 systemGrayColor];
    v51 = sub_1CFF0DE3C();
  }

  v92[0] = v51;
  v53 = sub_1CFF0D51C();
  v54 = type metadata accessor for BalanceWidgetSystemSmallSpecs();
  v55 = v89;
  sub_1CFF0D60C();
  v91 = 0;
  v56 = v76 ^ 1;
  v57 = sub_1CFF0DB2C();
  v58 = v79;
  (*(*(v57 - 8) + 56))(v79, 1, 1, v57);
  sub_1CFF0DB5C();
  sub_1CFEE2508(v58, &qword_1EDEC1A58, MEMORY[0x1E6980E30]);
  sub_1CFF0DB3C();
  v59 = sub_1CFF0DB8C();

  v97 = 0;
  v95 = 1;
  v92[0] = v78;
  v92[1] = v77;
  v92[2] = v75;
  LOBYTE(v92[3]) = 0;
  *(&v92[3] + 1) = v99[0];
  HIDWORD(v92[3]) = *(v99 + 3);
  LOBYTE(v92[4]) = 1;
  *(&v92[4] + 1) = *v98;
  HIDWORD(v92[4]) = *&v98[3];
  v92[5] = v74;
  v92[6] = v71;
  LOBYTE(v92[7]) = 0;
  HIDWORD(v92[7]) = *&v96[3];
  *(&v92[7] + 1) = *v96;
  v92[8] = 0x4024000000000000;
  v92[9] = v85;
  v92[10] = v73;
  v92[11] = 0x3FE0000000000000;
  v92[12] = v72;
  LOBYTE(v92[13]) = v91;
  *&v92[14] = v38;
  *&v92[15] = xmmword_1CFF13440;
  *&v92[17] = xmmword_1CFF13450;
  *&v92[19] = xmmword_1CFF13460;
  v92[21] = 0x3FB5C28F5C28F5C3;
  memset(&v92[22], 0, 24);
  LOWORD(v92[25]) = 1;
  *(&v92[25] + 2) = *&v93[7];
  HIWORD(v92[25]) = v94;
  v92[26] = v70;
  v92[27] = v69;
  v92[28] = v68;
  v92[29] = v67[0];
  v92[30] = v53;
  LOBYTE(v92[31]) = v56;
  *(&v92[31] + 1) = *v93;
  HIDWORD(v92[31]) = *&v93[3];
  v92[32] = 0;
  v92[33] = v59;
  v92[34] = 0;
  v61 = v81;
  v60 = v82;
  v62 = v83;
  (*(v82 + 16))(v81, v55 + *(v54 + 24), v83);
  v63 = v80;
  sub_1CFF0E2CC();
  sub_1CFE58378();
  LOBYTE(v59) = sub_1CFF0E4CC();
  v64 = *(v60 + 8);
  v64(v63, v62);
  if (v59)
  {
    v64(v61, v62);
    memcpy(v90, v92, sizeof(v90));
    static OvernightMetricsChartSpec.accented(_:)(v90, v84);
    return sub_1CFE583D0(v92);
  }

  sub_1CFF0E2BC();
  v65 = sub_1CFF0E4CC();
  v64(v63, v62);
  v64(v61, v62);
  if (v65)
  {
    memcpy(v90, v92, sizeof(v90));
    static OvernightMetricsChartSpec.vibrant(_:)(v90, v84);
    return sub_1CFE583D0(v92);
  }

  return memcpy(v84, v92, 0x118uLL);
}

uint64_t sub_1CFEE1AFC()
{
  sub_1CFEE24B4(0, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for OvernightMetricsWarmupProgress();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BalanceWidgetSystemSmallSpecs();
  result = sub_1CFF0D60C();
  if ((result & 1) == 0)
  {
    sub_1CFEC1EB4(v2);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_1CFEE2508(v2, qword_1EDEC3470, type metadata accessor for OvernightMetricsWarmupProgress);
      return sub_1CFEBFD10();
    }

    sub_1CFE83D94(v2, v6);
    v8 = sub_1CFF0CA3C();
    v9 = sub_1CFF0CA5C();
    result = sub_1CFE83DF8(v6);
    if (__OFSUB__(v8, v9))
    {
      __break(1u);
      return result;
    }

    if (v8 - v9 <= 0)
    {
      return sub_1CFEBFD10();
    }
  }

  return result;
}

uint64_t sub_1CFEE1CD0()
{
  v20 = sub_1CFF0DB9C();
  v0 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E6980E30];
  sub_1CFEE24B4(0, &qword_1EDEC1A58, MEMORY[0x1E6980E30]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1CFF0DBEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEBFD10();
  v11 = MEMORY[0x1E6980F30];
  if ((v12 & 1) == 0)
  {
    v11 = MEMORY[0x1E6980F10];
  }

  (*(v8 + 104))(v10, *v11, v7);
  v13 = *MEMORY[0x1E6980E28];
  v14 = sub_1CFF0DB2C();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v6, v13, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  sub_1CFF0DB7C();
  sub_1CFEE2508(v6, &qword_1EDEC1A58, v3);
  (*(v8 + 8))(v10, v7);
  v16 = v20;
  (*(v0 + 104))(v2, *MEMORY[0x1E6980EA8], v20);
  sub_1CFF0DBCC();

  (*(v0 + 8))(v2, v16);
  sub_1CFF0DB4C();
  v17 = sub_1CFF0DB8C();

  return v17;
}

uint64_t sub_1CFEE1FE0()
{
  v0 = sub_1CFF0E2DC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BalanceWidgetSystemSmallSpecs();
  sub_1CFF0E2BC();
  sub_1CFE58378();
  v4 = sub_1CFF0E4CC();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return sub_1CFF0DEAC();
  }

  v6 = sub_1CFEBFD10();
  if (v7)
  {
    return sub_1CFF0DECC();
  }

  if (v6 == 1)
  {
    if (qword_1EDEC1688 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDEC1690;
  }

  else if (v6)
  {
    if (qword_1EDEC4A30 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDEC4A38;
  }

  else
  {
    if (qword_1EDEC4A40 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDEC4A48;
  }

  v9 = v8;
  return sub_1CFF0DE3C();
}

uint64_t sub_1CFEE21BC()
{
  v19 = sub_1CFF0DB9C();
  v0 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E6980E30];
  sub_1CFEE24B4(0, &qword_1EDEC1A58, MEMORY[0x1E6980E30]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1CFF0DBEC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E6980F30], v7, v9);
  v12 = *MEMORY[0x1E6980E28];
  v13 = sub_1CFF0DB2C();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v6, v12, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  sub_1CFF0DB7C();
  sub_1CFEE2508(v6, &qword_1EDEC1A58, v3);
  (*(v8 + 8))(v11, v7);
  v15 = v19;
  (*(v0 + 104))(v2, *MEMORY[0x1E6980EA8], v19);
  sub_1CFF0DBCC();

  (*(v0 + 8))(v2, v15);
  sub_1CFF0DB4C();
  v16 = sub_1CFF0DB8C();

  return v16;
}

void sub_1CFEE24B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFF0E8AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFEE2508(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1CFEE24B4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CFEE2564()
{
  sub_1CFF0D6EC();
  type metadata accessor for BalanceWidgetSystemSmallSpecs();
  sub_1CFF0D6FC();
  return sub_1CFF0D7BC();
}

uint64_t OvernightMetricsWarmupProgress.overallProgress.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFF0CA6C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OvernightMetricsWarmupProgress.overallProgress.setter(uint64_t a1)
{
  v3 = sub_1CFF0CA6C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t OvernightMetricsWarmupProgress.progressByDataType.getter()
{
  type metadata accessor for OvernightMetricsWarmupProgress();
}

uint64_t type metadata accessor for OvernightMetricsWarmupProgress()
{
  result = qword_1EDEC34A0;
  if (!qword_1EDEC34A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OvernightMetricsWarmupProgress.progressByDataType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OvernightMetricsWarmupProgress() + 20);

  *(v1 + v3) = a1;
  return result;
}

void static OvernightMetricsWarmupProgress.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1CFF0CA4C())
  {
    v4 = *(type metadata accessor for OvernightMetricsWarmupProgress() + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);

    sub_1CFEBD428(v5, v6);
  }
}

uint64_t sub_1CFEE280C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x506C6C617265766FLL;
  }
}

uint64_t sub_1CFEE2858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x506C6C617265766FLL && a2 == 0xEF73736572676F72;
  if (v6 || (sub_1CFF0EBCC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CFF165B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CFF0EBCC();

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

uint64_t sub_1CFEE2944(uint64_t a1)
{
  v2 = sub_1CFEE2BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFEE2980(uint64_t a1)
{
  v2 = sub_1CFEE2BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OvernightMetricsWarmupProgress.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1CFEE30FC(0, &qword_1EC512AC8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFEE2BA4();
  sub_1CFF0EC9C();
  v13 = 0;
  sub_1CFF0CA6C();
  sub_1CFEE3240(&qword_1EC512AD8, MEMORY[0x1E69A2DC0]);
  sub_1CFF0EB7C();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for OvernightMetricsWarmupProgress() + 20));
    v11[15] = 1;
    sub_1CFEE2BF8();
    sub_1CFEE2CA4();
    sub_1CFF0EB7C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1CFEE2BA4()
{
  result = qword_1EC512AD0;
  if (!qword_1EC512AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512AD0);
  }

  return result;
}

void sub_1CFEE2BF8()
{
  if (!qword_1EDEC17A8)
  {
    sub_1CFF0CB6C();
    sub_1CFF0CA6C();
    sub_1CFEE3240(&qword_1EDEC5190, MEMORY[0x1E69A2E68]);
    v0 = sub_1CFF0E43C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEC17A8);
    }
  }
}

unint64_t sub_1CFEE2CA4()
{
  result = qword_1EC512AE0;
  if (!qword_1EC512AE0)
  {
    sub_1CFEE2BF8();
    sub_1CFEE3240(&qword_1EC5126C8, MEMORY[0x1E69A2E68]);
    sub_1CFEE3240(&qword_1EC512AD8, MEMORY[0x1E69A2DC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512AE0);
  }

  return result;
}

uint64_t OvernightMetricsWarmupProgress.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_1CFF0CA6C();
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFEE30FC(0, &qword_1EC512AE8, MEMORY[0x1E69E6F48]);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for OvernightMetricsWarmupProgress();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFEE2BA4();
  sub_1CFF0EC8C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_1CFEE3240(&qword_1EC512AF0, MEMORY[0x1E69A2DC0]);
  v15 = v26;
  v16 = v24;
  sub_1CFF0EB0C();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  sub_1CFEE2BF8();
  v28 = 1;
  sub_1CFEE3160();
  sub_1CFF0EB0C();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_1CFEE3288(v18, v22);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1CFE83DF8(v18);
}

void sub_1CFEE30FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFEE2BA4();
    v7 = a3(a1, &type metadata for OvernightMetricsWarmupProgress.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1CFEE3160()
{
  result = qword_1EC512AF8;
  if (!qword_1EC512AF8)
  {
    sub_1CFEE2BF8();
    sub_1CFEE3240(&qword_1EC512728, MEMORY[0x1E69A2E68]);
    sub_1CFEE3240(&qword_1EC512AF0, MEMORY[0x1E69A2DC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512AF8);
  }

  return result;
}

uint64_t sub_1CFEE3240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFEE3288(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OvernightMetricsWarmupProgress();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CFEE32EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1CFF0CA4C())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);

    sub_1CFEBD428(v7, v8);
  }
}

void sub_1CFEE33AC()
{
  sub_1CFF0CA6C();
  if (v0 <= 0x3F)
  {
    sub_1CFEE2BF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1CFEE3444()
{
  result = qword_1EC512B00;
  if (!qword_1EC512B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512B00);
  }

  return result;
}

unint64_t sub_1CFEE349C()
{
  result = qword_1EC512B08;
  if (!qword_1EC512B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512B08);
  }

  return result;
}

unint64_t sub_1CFEE34F4()
{
  result = qword_1EC512B10;
  if (!qword_1EC512B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC512B10);
  }

  return result;
}

uint64_t sub_1CFEE3548(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1CFEE3590(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CFEE35DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1CFEE3624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CFEE3684(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1CFEE36CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CFEE371C(uint64_t result, uint64_t a2, double a3)
{
  v5 = result;
  v6 = *(v3 + 8);
  if (a3 < 1.0)
  {
    v7 = *(v6 + 16);
    v8 = sub_1CFF0CB6C();
    v9 = *(v8 - 8);
    if (v7)
    {
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v22 = *(v9 + 56);
      v24 = *(v8 - 8);
      v22(v5, 1, 1, v8);
      (*(v24 + 16))(a2, v6 + v10, v8);
      v11 = a2;
      v12 = 0;
    }

    else
    {
      v22 = *(v9 + 56);
      v22(v5, 1, 1, v8);
      v11 = a2;
      v12 = 1;
    }

    return (v22)(v11, v12, 1, v8);
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(a3, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = *(v6 + 16);
  if (!v13)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v14 = v13 - 1;
  if (v14 >= ((a3 - 1) & ~((a3 - 1) >> 63)))
  {
    v15 = (a3 - 1) & ~((a3 - 1) >> 63);
  }

  else
  {
    v15 = v14;
  }

  if (v15 + 1 < v14)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = v14;
  }

  v17 = sub_1CFF0CB6C();
  v18 = *(v17 - 8);
  v25 = v18;
  v19 = *(v18 + 72);
  v20 = *(v18 + 16);
  v21 = v6 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v20(v5, v21 + v19 * v15, v17);
  v23 = *(v25 + 56);
  v23(v5, 0, 1, v17);
  v20(a2, v21 + v19 * v16, v17);

  return (v23)(a2, 0, 1, v17);
}

double sub_1CFEE3A10(int8x16_t a1)
{
  v21 = a1;
  sub_1CFEEACA0(0, &qword_1EDEC1C78);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v20 - v5;
  v8 = *(v1 + 8);
  LOBYTE(v22) = *v1;
  v7 = v22;
  v23 = v8;
  v10 = sub_1CFEE454C(*v21.i64);
  result = 0.0;
  if (v7 == 1)
  {
    v20[1] = v20;
    v27 = v9;
    v28 = v10;
    v29 = xmmword_1CFF13660;
    *&v12 = MEMORY[0x1EEE9AC00](v9);
    v20[-6] = v13;
    v20[-5] = v10;
    *&v20[-4] = v12;
    v20[-2] = 0x3FF0000000000000;
    sub_1CFEEAD04();
    sub_1CFEEADC8();
    v15 = v14;
    v16 = sub_1CFEE9FB8(&qword_1EDEC20C8, sub_1CFEEADC8);

    v22 = &type metadata for OvernightMetricsChartAnimationValues.SevenDayMetricsState;
    v23 = v15;
    v24 = v15;
    v25 = v16;
    v26 = v16;
    swift_getOpaqueTypeConformance2();
    sub_1CFF0D63C();

    *v17.i64 = *v21.i64 - trunc(*v21.i64);
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v21 = vbslq_s8(vnegq_f64(v18), v17, v21);
    sub_1CFF0D64C();
    if (*v21.i64 == 0.0)
    {
      if (*(*&v23 + 16) >= 2uLL)
      {

        sub_1CFEE4C0C(v19);
      }

      (*(v4 + 8))(v6, v3);
    }

    else
    {
      (*(v4 + 8))(v6, v3, v21);
    }

    return v24;
  }

  return result;
}

uint64_t sub_1CFEE3CE8@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>)
{
  v59 = a2;
  sub_1CFEEACA0(0, &qword_1EDEC1C80);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v51 - v7;
  v9 = *(v2 + 8);
  if (*v2)
  {
    LOBYTE(v71) = 1;
    *(&v71 + 1) = v9;
    v12 = sub_1CFEE3A10(v59);
    v14 = *(v11 + 16);
    *&v66 = v10;
    *(&v66 + 1) = v11;
    if (v14 > 1)
    {
      v12 = 1.0;
    }

    *v67.i64 = v12;
    *&v67.i64[1] = v12;
    v68.i64[0] = v13;
    v68.i64[1] = v13;
    v69 = xmmword_1CFF13690;
    v70 = 0x3FE0000000000000;
    *&v71 = v10;
    *(&v71 + 1) = v11;
    *v72.i64 = v12;
    *&v72.i64[1] = v12;
    v73.i64[0] = v13;
    v73.i64[1] = v13;
    *v74 = xmmword_1CFF13690;
    *&v74[16] = 0x3FE0000000000000;
    sub_1CFE5307C(&v66, &v61);
    result = sub_1CFE531B0(&v71);
    v16 = v70;
    v18 = v68;
    v17 = v69;
    v20 = v66;
    v19 = v67;
  }

  else
  {
    v58 = v6;
    LOBYTE(v71) = 0;
    *(&v71 + 1) = v9;
    v21 = sub_1CFEE454C(*v59.i64);
    v57 = &v51;
    v23 = 0.26;
    v24 = *(v21 + 16) > 1uLL;
    if (*(v21 + 16) > 1uLL)
    {
      v23 = 0.5;
    }

    *&v71 = v22;
    *(&v71 + 1) = v21;
    v53 = v21;
    v25 = vdup_n_s32(v24);
    v26.i64[0] = v25.u32[0];
    v26.i64[1] = v25.u32[1];
    __asm { FMOV            V3.2D, #1.0 }

    v72 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v26, 0x3FuLL)), _Q3, xmmword_1CFF13670);
    v73 = _Q3;
    *v74 = v23;
    *&v74[8] = xmmword_1CFF13680;
    MEMORY[0x1EEE9AC00](v21);
    v56 = &v51 - 4;
    *(&v51 - 2) = 0x3FF0000000000000;
    sub_1CFEEA008();
    v55 = v32;
    sub_1CFEEA1BC();
    v54 = v33;
    sub_1CFEEA7A0();
    v35 = v34;
    sub_1CFEEA348();
    v52 = v36;
    sub_1CFEEA4A4();
    v51 = v37;
    sub_1CFEEA5D8();
    v39 = v38;
    sub_1CFEEA6DC();
    v41 = v40;
    v42 = sub_1CFEE9FB8(&qword_1EDEC20D8, sub_1CFEEA7A0);

    *&v66 = &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState;
    *(&v66 + 1) = v35;
    v67.i64[0] = v35;
    v67.i64[1] = v42;
    v68.i64[0] = v42;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v66 = &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState;
    *(&v66 + 1) = v41;
    v67.i64[0] = v35;
    v67.i64[1] = OpaqueTypeConformance2;
    v68.i64[0] = v42;
    v44 = swift_getOpaqueTypeConformance2();
    *&v66 = &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState;
    *(&v66 + 1) = v39;
    v67.i64[0] = v35;
    v67.i64[1] = v44;
    v68.i64[0] = v42;
    v45 = swift_getOpaqueTypeConformance2();
    *&v66 = &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState;
    *(&v66 + 1) = v51;
    v67.i64[0] = v35;
    v67.i64[1] = v45;
    v68.i64[0] = v42;
    v46 = swift_getOpaqueTypeConformance2();
    *&v66 = &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState;
    *(&v66 + 1) = v52;
    v67.i64[0] = v35;
    v67.i64[1] = v46;
    v68.i64[0] = v42;
    v47 = swift_getOpaqueTypeConformance2();
    *&v66 = &type metadata for OvernightMetricsChartAnimationValues.IndividualMetricsState;
    *(&v66 + 1) = v54;
    v67.i64[0] = v35;
    v67.i64[1] = v47;
    v68.i64[0] = v42;
    swift_getOpaqueTypeConformance2();
    sub_1CFF0D63C();

    *v48.i64 = *v59.i64 - trunc(*v59.i64);
    v49.f64[0] = NAN;
    v49.f64[1] = NAN;
    v59 = vbslq_s8(vnegq_f64(v49), v48, v59);
    sub_1CFF0D64C();
    if (*v59.i64 == 0.0)
    {
      if (*(*(&v71 + 1) + 16) >= 2uLL)
      {

        sub_1CFEE4C0C(v50);
      }

      (*(v58 + 8))(v8, v5);

      *&v71 = MEMORY[0x1E69E7CD0];
    }

    else
    {
      (*(v58 + 8))(v8, v5, v59);
    }

    v63 = v73;
    v64 = *v74;
    v65 = *&v74[16];
    v61 = v71;
    v62 = v72;
    v68 = v73;
    v69 = *v74;
    v70 = *&v74[16];
    v66 = v71;
    v67 = v72;
    sub_1CFE5307C(&v61, &v60);
    result = sub_1CFE531B0(&v66);
    v16 = v65;
    v18 = v63;
    v17 = v64;
    v20 = v61;
    v19 = v62;
  }

  *a1 = v20;
  *(a1 + 16) = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = v17;
  *(a1 + 64) = v16;
  return result;
}