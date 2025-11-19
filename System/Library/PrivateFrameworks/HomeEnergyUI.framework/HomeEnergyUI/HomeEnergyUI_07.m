uint64_t sub_20D88C8A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v36 - v5;
  v7 = sub_20D9727B8();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20D972628();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v36 - v20;
  if ((*(v1 + 16) & 1) == 0)
  {
    v37 = v19;
    v40 = v18;
    v41 = v6;
    v42 = result;
    v43 = v1;
    v22 = type metadata accessor for HistoricalUsageSnapshot();
    v23 = a1 + *(v22 + 40);
    sub_20D971D78();
    v24 = a1 + *(v22 + 52);
    v25 = *(type metadata accessor for HistoricalUsageSnapshotDerivedInfo(0) + 64);
    v26 = v8[13];
    v26(v11, *MEMORY[0x277CC99B8], v7);
    v38 = v25;
    v39 = v24;
    v27 = sub_20D9727C8();
    v28 = v8[1];
    result = v28(v11, v7);
    if (__OFADD__(v27, 5))
    {
      __break(1u);
    }

    else
    {
      v26(v11, *MEMORY[0x277CC9968], v7);
      v29 = v41;
      sub_20D972758();
      v28(v11, v7);
      v30 = v42;
      if ((*(v13 + 48))(v29, 1, v42) == 1)
      {
        sub_20D7DFFB8(v29);
        v31 = v40;
        (*(v13 + 16))(v40, v21, v30);
        v32 = v43;
        sub_20D88BE64(v31);
        result = (*(v13 + 8))(v21, v30);
      }

      else
      {
        v33 = v37;
        (*(v13 + 32))(v37, v29, v30);
        v34 = v40;
        (*(v13 + 16))(v40, v33, v30);
        v32 = v43;
        sub_20D88BE64(v34);
        v35 = *(v13 + 8);
        v35(v33, v30);
        result = (v35)(v21, v30);
      }

      *(v32 + 16) = 1;
    }
  }

  return result;
}

uint64_t HistoricalUsageIntervalModel.deinit()
{
  v1 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel__currentScrolledDate;
  v2 = sub_20D972628();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel___observationRegistrar;
  v4 = sub_20D972898();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t HistoricalUsageIntervalModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel__currentScrolledDate;
  v2 = sub_20D972628();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12HomeEnergyUI28HistoricalUsageIntervalModel___observationRegistrar;
  v4 = sub_20D972898();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_20D88CE08@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for HistoricalUsageIntervalModel();
  result = sub_20D975688();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for HistoricalUsageIntervalModel()
{
  result = qword_27C839E00;
  if (!qword_27C839E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D88CEAC()
{
  result = sub_20D972628();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_20D972898();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_20D88CFE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D88D048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v30 = a6;
  v28[0] = a4;
  v28[1] = a5;
  v31 = sub_20D972208();
  v9 = *(v31 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v31);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20D972248();
  v13 = *(v29 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v29);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20D9726E8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_20D975058();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  if (sub_20D88E98C(a3) == 1)
  {
    v32 = a1;
    v33 = a2;

    MEMORY[0x20F323340](1701736227, 0xE400000000000000);
  }

  else
  {
  }

  sub_20D975068();
  sub_20D9726B8();
  v21 = v30;

  sub_20D975108();
  sub_20D9721E8();
  sub_20D9721F8();
  v22 = sub_20D9725E8();
  v24 = v23;
  (*(v9 + 8))(v12, v31);
  (*(v13 + 8))(v16, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7B0, &qword_20D979500);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20D979110;
  *(v25 + 56) = MEMORY[0x277D837D0];
  *(v25 + 64) = sub_20D84E340();
  *(v25 + 32) = v22;
  *(v25 + 40) = v24;
  v26 = sub_20D9750C8();

  return v26;
}

uint64_t sub_20D88D380@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, uint64_t a4@<D1>)
{
  LODWORD(v163) = a1;
  v140 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E18, &qword_20D97AA10);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v138 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v137 = &v118 - v10;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E20, &qword_20D97AA18);
  v11 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v135 = &v118 - v12;
  v166 = sub_20D971EE8();
  v146 = *(v166 - 8);
  v13 = *(v146 + 64);
  MEMORY[0x28223BE20](v166);
  v134 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E28, &qword_20D97AA20);
  v15 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v139 = &v118 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E30, &qword_20D97AA28);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v142 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v143 = &v118 - v22;
  MEMORY[0x28223BE20](v21);
  v144 = &v118 - v23;
  v156 = sub_20D972018();
  v24 = *(v156 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v156);
  v155 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_20D971F88();
  v158 = *(v161 - 8);
  v27 = *(v158 + 64);
  MEMORY[0x28223BE20](v161);
  v160 = &v118 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_20D971F78();
  v131 = *(v164 - 8);
  v29 = *(v131 + 64);
  v30 = MEMORY[0x28223BE20](v164);
  v165 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v154 = &v118 - v32;
  v33 = sub_20D971F98();
  v153 = *(v33 - 8);
  v34 = *(v153 + 64);
  MEMORY[0x28223BE20](v33);
  v152 = (&v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E38, &qword_20D97AA30);
  v36 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v159 = &v118 - v37;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E40, &qword_20D97AA38);
  v148 = *(v149 - 1);
  v38 = *(v148 + 64);
  MEMORY[0x28223BE20](v149);
  v147 = &v118 - v39;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E48, &qword_20D97AA40);
  v141 = *(v145 - 8);
  v40 = *(v141 + 64);
  MEMORY[0x28223BE20](v145);
  v133 = (&v118 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839980, &qword_20D97A4D0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v130 = &v118 - v44;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E50, &qword_20D97AA48);
  v127 = *(v129 - 8);
  v45 = *(v127 + 64);
  MEMORY[0x28223BE20](v129);
  v124 = &v118 - v46;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E58, &unk_20D97AA50);
  v123 = *(v125 - 8);
  v47 = *(v123 + 64);
  MEMORY[0x28223BE20](v125);
  v121 = &v118 - v48;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
  v126 = *(v128 - 8);
  v49 = *(v126 + 64);
  MEMORY[0x28223BE20](v128);
  v122 = &v118 - v50;
  v120 = sub_20D972168();
  v51 = *(v120 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v120);
  v119 = &v118 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20D9757B8();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  v58 = &v118 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_20D9726E8();
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59 - 8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839700, &qword_20D97E480);
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  v64 = MEMORY[0x28223BE20](v61);
  v66 = &v118 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v64);
  v132 = &v118 - v68;
  if (qword_281126890 != -1)
  {
    result = swift_once();
  }

  if (!byte_28112ABE0)
  {
    a4 = qword_28112ABD8;
  }

  v151 = v24;
  if (a3 >= 0.0)
  {
    goto LABEL_9;
  }

  v69 = rint(a3 / *&a4);
  if ((*&v69 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v69 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v69 < 9.22337204e18)
  {
LABEL_9:
    sub_20D9726A8();
    sub_20D7E6420();
    sub_20D972118();
    (*(v55 + 104))(v58, *MEMORY[0x277D84670], v54);
    v70 = v132;
    MEMORY[0x20F3202E0](v58, a4, 0, v61);
    (*(v55 + 8))(v58, v54);
    v71 = *(v62 + 8);
    v71(v66, v61);
    if (v163)
    {
      v72 = v119;
      sub_20D972158();
      MEMORY[0x20F3202C0](v72, v61);
      (*(v51 + 8))(v72, v120);
      v71(v70, v61);
      (*(v62 + 32))(v70, v66, v61);
    }

    v118 = v71;
    v119 = (v62 + 8);
    v73 = [objc_opt_self() kilowattHours];
    sub_20D88F7E0();
    v74 = v122;
    sub_20D971CA8();
    v75 = v124;
    sub_20D971CE8();
    v76 = v130;
    (*(v62 + 16))(v130, v70, v61);
    v77 = *(v62 + 56);
    v120 = v61;
    v77(v76, 0, 1, v61);
    v78 = v133;
    sub_20D972138();
    v79 = v121;
    sub_20D971C38();
    (*(v141 + 8))(v78, v145);
    sub_20D7E3944(v76, &qword_27C839980, &qword_20D97A4D0);
    (*(v127 + 8))(v75, v129);
    v80 = v147;
    v81 = v125;
    sub_20D971CC8();
    (*(v123 + 8))(v79, v81);
    sub_20D7EBC4C(&qword_281126E80, &qword_27C839E40, &qword_20D97AA38);
    v82 = v128;
    v83 = v149;
    sub_20D971CF8();
    (*(v148 + 8))(v80, v83);
    (*(v126 + 8))(v74, v82);
    v84 = v152;
    sub_20D971FA8();
    v85 = v153;
    v86 = v159;
    (*(v153 + 16))(v159, v84, v33);
    v87 = *(v150 + 36);
    v88 = sub_20D88F880(&qword_281126E48, MEMORY[0x277CC8C08]);
    sub_20D9753B8();
    (*(v85 + 8))(v84, v33);
    v158 += 8;
    v152 = (v131 + 32);
    v153 = v131 + 16;
    ++v151;
    LODWORD(v150) = *MEMORY[0x277CC8A10];
    v149 = (v146 + 104);
    v148 = v146 + 56;
    v147 = (v146 + 48);
    v133 = (v146 + 32);
    v141 = v146 + 8;
    v146 = v131 + 8;
    v89 = v139;
    v90 = v143;
    v91 = v144;
    v145 = v88;
    v162 = v33;
    v163 = v87;
    while (1)
    {
      v95 = v160;
      sub_20D9753D8();
      sub_20D88F880(&qword_281126E50, MEMORY[0x277CC8BF8]);
      v96 = v161;
      v97 = sub_20D974FD8();
      (*v158)(v95, v96);
      if (v97)
      {
        sub_20D7E3944(v86, &qword_27C839E38, &qword_20D97AA30);
        return v118(v132, v120);
      }

      v98 = sub_20D9753F8();
      v99 = v154;
      v100 = v164;
      (*v153)(v154);
      v98(v167, 0);
      sub_20D9753E8();
      (*v152)(v165, v99, v100);
      v101 = v155;
      sub_20D971F58();
      sub_20D971EF8();
      sub_20D88F880(&qword_281126E70, MEMORY[0x277CC8A30]);
      sub_20D972028();
      (*v151)(v101, v156);
      v102 = v166;
      (*v149)(v90, v150, v166);
      (*v148)(v90, 0, 1, v102);
      v103 = *(v157 + 48);
      sub_20D7EB7E8(v91, v89, &qword_27C839E30, &qword_20D97AA28);
      sub_20D7EB7E8(v90, v89 + v103, &qword_27C839E30, &qword_20D97AA28);
      v104 = v91;
      v105 = *v147;
      if ((*v147)(v89, 1, v102) == 1)
      {
        break;
      }

      v107 = v142;
      sub_20D7EB7E8(v89, v142, &qword_27C839E30, &qword_20D97AA28);
      if (v105(v89 + v103, 1, v166) == 1)
      {
        sub_20D7E3944(v90, &qword_27C839E30, &qword_20D97AA28);
        v91 = v144;
        sub_20D7E3944(v144, &qword_27C839E30, &qword_20D97AA28);
        (*v141)(v107, v166);
        goto LABEL_13;
      }

      v108 = v134;
      v109 = v166;
      (*v133)(v134, v89 + v103, v166);
      sub_20D88F880(&qword_281126E78, MEMORY[0x277CC8A18]);
      v110 = sub_20D974FD8();
      v111 = *v141;
      v112 = v108;
      v90 = v143;
      (*v141)(v112, v109);
      sub_20D7E3944(v90, &qword_27C839E30, &qword_20D97AA28);
      v113 = v144;
      sub_20D7E3944(v144, &qword_27C839E30, &qword_20D97AA28);
      v111(v107, v109);
      v91 = v113;
      sub_20D7E3944(v89, &qword_27C839E30, &qword_20D97AA28);
      if (v110)
      {
        goto LABEL_22;
      }

LABEL_15:
      (*v146)(v165, v164);
      v86 = v159;
    }

    sub_20D7E3944(v90, &qword_27C839E30, &qword_20D97AA28);
    sub_20D7E3944(v104, &qword_27C839E30, &qword_20D97AA28);
    v106 = v105(v89 + v103, 1, v166);
    v91 = v104;
    if (v106 == 1)
    {
      sub_20D7E3944(v89, &qword_27C839E30, &qword_20D97AA28);
LABEL_22:
      v114 = v135;
      sub_20D971F68();
      v115 = v137;
      sub_20D974568();
      v116 = sub_20D974578();
      (*(*(v116 - 8) + 56))(v115, 0, 1, v116);
      sub_20D7EBC4C(&qword_281124BD0, &qword_27C839E20, &qword_20D97AA18);
      v117 = sub_20D971FE8();
      sub_20D7EB7E8(v115, v138, &qword_27C839E18, &qword_20D97AA10);
      sub_20D88F82C();
      v90 = v143;
      sub_20D972068();
      v89 = v139;
      sub_20D7E3944(v115, &qword_27C839E18, &qword_20D97AA10);
      v117(v167, 0);
      v91 = v144;
      v92 = v114;
      v93 = &qword_27C839E20;
      v94 = &qword_20D97AA18;
    }

    else
    {
LABEL_13:
      v92 = v89;
      v93 = &qword_27C839E28;
      v94 = &qword_20D97AA20;
    }

    sub_20D7E3944(v92, v93, v94);
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_20D88E98C(uint64_t a1)
{
  v58 = a1;
  v1 = sub_20D9727B8();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = *(v49 + 64);
  MEMORY[0x28223BE20](v1);
  v48 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E10, &qword_20D97AA08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v45 - v6;
  v7 = sub_20D972308();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D972318();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v51 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20D972188();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_20D972838();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_20D9727D8();
  v46 = *(v17 - 8);
  v47 = v17;
  v18 = *(v46 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20D9726E8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v45 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v45 - v29;
  v31 = sub_20D972408();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v45 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v45 - v37;
  v39 = sub_20D972248();
  (*(*(v39 - 8) + 56))(v30, 1, 1, v39);
  v40 = sub_20D972208();
  (*(*(v40 - 8) + 56))(v26, 1, 1, v40);
  sub_20D9726A8();
  sub_20D972738();
  sub_20D972818();
  sub_20D972178();
  v45 = v20;
  sub_20D972268();
  v41 = v52;
  sub_20D9722F8();
  v42 = v51;
  sub_20D9722D8();
  (*(v55 + 8))(v41, v56);
  sub_20D972278();
  (*(v53 + 8))(v42, v54);
  v43 = *(v32 + 8);
  v56 = v31;
  v43(v36, v31);
  sub_20D9723C8();
  sub_20D9726A8();
  sub_20D85CBD0();
  sub_20D972038();
  sub_20D975598();
  v43(v38, v56);
  return v59;
}

uint64_t sub_20D88F060(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v58 = a1;
  v2 = sub_20D9727B8();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2);
  v46[2] = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E10, &qword_20D97AA08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = v46 - v7;
  v8 = sub_20D972308();
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v50 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20D972318();
  v51 = *(v11 - 8);
  v52 = v11;
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11);
  v49 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D972188();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v56 = sub_20D972838();
  v59 = *(v56 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20D9727D8();
  v46[0] = *(v19 - 8);
  v46[1] = v19;
  v20 = *(v46[0] + 64);
  MEMORY[0x28223BE20](v19);
  v21 = sub_20D9726E8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8396E8, &unk_20D9798C0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v46 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83CA50, &qword_20D97C920);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = v46 - v29;
  v31 = sub_20D972408();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = v46 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = v46 - v37;
  v39 = sub_20D972248();
  (*(*(v39 - 8) + 56))(v30, 1, 1, v39);
  v40 = sub_20D972208();
  (*(*(v40 - 8) + 56))(v26, 1, 1, v40);
  sub_20D9726A8();
  sub_20D972738();
  sub_20D972818();
  sub_20D972178();
  sub_20D972268();
  v41 = v50;
  sub_20D9722F8();
  v42 = v49;
  sub_20D9722D8();
  (*(v53 + 8))(v41, v54);
  sub_20D972278();
  (*(v51 + 8))(v42, v52);
  v43 = *(v32 + 8);
  v53 = v32 + 8;
  v54 = v31;
  v52 = v43;
  v43(v36, v31);
  v44 = *(v59 + 16);
  v59 += 16;
  v44(v18, v57, v56);
  sub_20D9723F8();
  sub_20D9723C8();
  sub_20D9726A8();
  sub_20D85CBD0();
  sub_20D972038();
  sub_20D975598();
  v52(v38, v54);
  return v60;
}

uint64_t sub_20D88F7B4()
{
  result = sub_20D88F8C8();
  qword_28112ABD8 = result;
  byte_28112ABE0 = v1 & 1;
  return result;
}

unint64_t sub_20D88F7E0()
{
  result = qword_281124BB8;
  if (!qword_281124BB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281124BB8);
  }

  return result;
}

unint64_t sub_20D88F82C()
{
  result = qword_281126E68;
  if (!qword_281126E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281126E68);
  }

  return result;
}

uint64_t sub_20D88F880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D88F8C8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_20D975078();
  v2 = [v0 initWithSuiteName_];

  if (v2 && (v3 = sub_20D975078(), [v2 doubleForKey_], v5 = v4, v3, v2, v5 > 0.0))
  {
    return *&v5;
  }

  else
  {
    return 0;
  }
}

uint64_t static HomeEnergyUIUtilities.fetchGridForecastAdvice()()
{
  v1 = sub_20D972628();
  v0[6] = v1;
  v2 = *(v1 - 8);
  v0[7] = v2;
  v3 = *(v2 + 64) + 15;
  v0[8] = swift_task_alloc();
  v4 = *(*(type metadata accessor for GridForecastSnapshot(0) - 8) + 64) + 15;
  v0[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D88FAA8, 0, 0);
}

uint64_t sub_20D88FAA8()
{
  *(v0 + 80) = sub_20D9752E8();
  *(v0 + 88) = sub_20D9752D8();
  v2 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D88FB40, v2, v1);
}

uint64_t sub_20D88FB40()
{
  v1 = *(v0 + 88);

  if (qword_281125EB8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x2822009F8](sub_20D88FBD8, 0, 0);
}

uint64_t sub_20D88FBD8()
{
  v1 = *(v0 + 80);
  *(v0 + 96) = sub_20D9752D8();
  v3 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D88FC64, v3, v2);
}

uint64_t sub_20D88FC64()
{
  v1 = *(v0 + 96);

  *(v0 + 104) = qword_281125EC0;

  return MEMORY[0x2822009F8](sub_20D88FCD8, 0, 0);
}

uint64_t sub_20D88FCD8()
{
  v1 = *(v0 + 80);
  *(v0 + 112) = sub_20D9752D8();
  v3 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D88FD64, v3, v2);
}

uint64_t sub_20D88FD64()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[9];

  swift_getKeyPath();
  v0[5] = v2;
  sub_20D890058();
  sub_20D972858();

  v4 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  sub_20D8900B0(v2 + v4, v3);

  return MEMORY[0x2822009F8](sub_20D88FE48, 0, 0);
}

uint64_t sub_20D88FE48()
{
  v18 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_20D9725C8();
  v5 = GridForecastSnapshot.createPillAdvice(referenceTime:)(v2);
  v7 = v6;
  (*(v4 + 8))(v2, v3);
  sub_20D890114(v1);
  if (qword_2811270D8 != -1)
  {
    swift_once();
  }

  v8 = sub_20D9734F8();
  __swift_project_value_buffer(v8, qword_2811270E0);

  v9 = sub_20D9734D8();
  v10 = sub_20D975478();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D987930, &v17);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_20D7F4DC8(v5, v7, &v17);
    _os_log_impl(&dword_20D7C9000, v9, v10, "%s Grid Forecast advice (Pill) string: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v12, -1, -1);
    MEMORY[0x20F324260](v11, -1, -1);
  }

  v14 = v0[8];
  v13 = v0[9];

  v15 = v0[1];

  return v15(v5, v7);
}

unint64_t sub_20D890058()
{
  result = qword_281125EB0;
  if (!qword_281125EB0)
  {
    type metadata accessor for GridForecastSnapshotManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281125EB0);
  }

  return result;
}

uint64_t sub_20D8900B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridForecastSnapshot(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D890114(uint64_t a1)
{
  v2 = type metadata accessor for GridForecastSnapshot(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static HomeEnergyUIUtilities.getVersion()()
{
  type metadata accessor for HomeEnergyUIUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = [v1 infoDictionary];
  if (v2)
  {
    v3 = v2;
    v4 = sub_20D974F48();

    if (*(v4 + 16) && (v5 = sub_20D8D4A48(0x656C646E75424643, 0xEF6E6F6973726556), (v6 & 1) != 0))
    {
      sub_20D7EB630(*(v4 + 56) + 32 * v5, v9);

      if (swift_dynamicCast())
      {

        return v8;
      }
    }

    else
    {
    }
  }

  return 6369134;
}

uint64_t static HomeEnergyUIUtilities.dynamicTypeSizeAsString(_:)(uint64_t a1)
{
  v2 = sub_20D973D58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CDF9F8])
  {
    return 0x6C6C616D53782ELL;
  }

  if (v7 == *MEMORY[0x277CDF9E0])
  {
    return 0x6C6C616D732ELL;
  }

  if (v7 == *MEMORY[0x277CDF9E8])
  {
    return 0x6D756964656D2ELL;
  }

  if (v7 == *MEMORY[0x277CDF9D8])
  {
    return 0x656772616C2ELL;
  }

  if (v7 == *MEMORY[0x277CDF9F0])
  {
    return 0x656772614C782ELL;
  }

  if (v7 == *MEMORY[0x277CDFA00])
  {
    return 0x656772614C78782ELL;
  }

  if (v7 == *MEMORY[0x277CDFA10])
  {
    return 0x6772614C7878782ELL;
  }

  v9 = v7;
  result = 0x697373656363612ELL;
  if (v9 != *MEMORY[0x277CDF988] && v9 != *MEMORY[0x277CDF998] && v9 != *MEMORY[0x277CDF9A8] && v9 != *MEMORY[0x277CDF9B8] && v9 != *MEMORY[0x277CDF9D0])
  {
    (*(v3 + 8))(v6, v2);
    return 0xD000000000000019;
  }

  return result;
}

uint64_t sub_20D8905E4@<X0>(char a1@<W0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = sub_20D972208();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_20D972248();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    sub_20D9721F8();
    sub_20D9721E8();
    v17 = sub_20D9725E8();
    v19 = v18;
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v16, v11);
    v43 = v17;
    v44 = v19;
    sub_20D7E1EF8();
    v20 = sub_20D9745C8();
    v22 = v21;
    v24 = v23;
    if (a2)
    {
      v25 = sub_20D9748B8();
    }

    else
    {
      v25 = sub_20D9748E8();
    }

    v43 = v25;
    v32 = sub_20D974518();
    v34 = v33;
    v36 = v35;
    sub_20D7EADC0(v20, v22, v24 & 1);

    sub_20D974488();
    v26 = sub_20D974558();
    v27 = v37;
    v39 = v38;
    v29 = v40;

    sub_20D7EADC0(v32, v34, v36 & 1);

    result = sub_20D974CC8();
    v28 = v39 & 1;
    *(&v31 + 1) = v41;
    v30 = 0xBFF921FB54442D18;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0uLL;
  }

  *a3 = v26;
  *(a3 + 8) = v27;
  *(a3 + 16) = v28;
  *(a3 + 24) = v29;
  *(a3 + 32) = v30;
  *(a3 + 40) = v31;
  return result;
}

unint64_t HomeEnergyState.description.getter()
{
  result = 1701602377;
  switch(*v0)
  {
    case 1:
    case 0xD:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t HomeEnergyState.symbol.getter()
{
  v1 = *v0;
  v2 = 0x616C732E69666977;
  v3 = 0xD000000000000016;
  if (v1 != 4)
  {
    v3 = 0;
  }

  if (v1 != 8)
  {
    v2 = v3;
  }

  if (v1 == 10)
  {
    return 0xD000000000000016;
  }

  else
  {
    return v2;
  }
}

uint64_t HomeEnergyState.short.getter()
{
  result = *v0;
  switch(*v0)
  {
    case 1:
      if (qword_281126E98 != -1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    case 2:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 3:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 4:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 5:
    case 6:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 7:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 8:
    case 0xA:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 9:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 0xB:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 0xC:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    case 0xD:
      if (qword_281126E98 == -1)
      {
        goto LABEL_23;
      }

LABEL_24:
      swift_once();
LABEL_23:
      result = sub_20D971FF8();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t HomeEnergyState.medium.getter()
{
  v1 = *v0;
  if (v1 > 7)
  {
    if (*v0 > 0xAu)
    {
      if (v1 != 11)
      {
        if (v1 == 12)
        {
          if (qword_281126E98 == -1)
          {
            return sub_20D971FF8();
          }

          goto LABEL_29;
        }

        goto LABEL_28;
      }

      if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    else
    {
      if (v1 != 8)
      {
        if (v1 == 10)
        {
          if (qword_281126E98 == -1)
          {
            return sub_20D971FF8();
          }

          goto LABEL_29;
        }

        goto LABEL_28;
      }

      if (qword_281126E98 == -1)
      {
        return sub_20D971FF8();
      }
    }

    goto LABEL_29;
  }

  if (*v0 <= 4u)
  {
    if (v1 != 1)
    {
      if (v1 == 3)
      {
        if (qword_281126E98 == -1)
        {
          return sub_20D971FF8();
        }

        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

LABEL_29:
    swift_once();
    return sub_20D971FF8();
  }

  if (v1 - 5 < 2)
  {
    if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    goto LABEL_29;
  }

  if (v1 == 7)
  {
    if (qword_281126E98 == -1)
    {
      return sub_20D971FF8();
    }

    goto LABEL_29;
  }

LABEL_28:
  v3 = *v0;
  return HomeEnergyState.short.getter();
}

HomeEnergyUI::HomeEnergyState_optional __swiftcall HomeEnergyState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 14;
  if (rawValue < 0xE)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_20D8914F0()
{
  result = qword_27C839E60;
  if (!qword_27C839E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839E60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HomeEnergyState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeEnergyState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static OnboardingContext.postalAddress(streetLine1:streetLine2:streetLine3:city:state:postalCode:country:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v56 = a8;
  v55[1] = a7;
  v55[4] = a13;
  v59 = a12;
  v60 = a14;
  v55[3] = a11;
  v57 = a10;
  v55[2] = a9;
  v62 = sub_20D971D28();
  v20 = *(v62 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v62);
  v23 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
  if (a2)
  {
    v24 = a1;
  }

  else
  {
    v24 = 0;
  }

  v25 = 0xE000000000000000;
  if (a2)
  {
    v26 = a2;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v66 = v24;
  v67[0] = v26;
  if (a4)
  {
    v27 = a3;
  }

  else
  {
    v27 = 0;
  }

  if (a4)
  {
    v28 = a4;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  v67[1] = v27;
  v67[2] = v28;
  if (a6)
  {
    v29 = a5;
  }

  else
  {
    v29 = 0;
  }

  if (a6)
  {
    v25 = a6;
  }

  v67[3] = v29;
  v67[4] = v25;
  v30 = (v20 + 8);

  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  do
  {
    v61 = v33;
    v34 = 3;
    if (v32 > 3)
    {
      v34 = v32;
    }

    v35 = -v34;
    v36 = &v67[2 * v32++];
    while (1)
    {
      if (v35 + v32 == 1)
      {
        __break(1u);
        return result;
      }

      v38 = *(v36 - 1);
      v37 = *v36;
      v63 = v38;
      v64 = v37;

      sub_20D971D08();
      sub_20D7E1EF8();
      v39 = sub_20D975548();
      v41 = v40;
      (*v30)(v23, v62);

      v42 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) == 0)
      {
        v42 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (v42)
      {
        break;
      }

      ++v32;
      v36 += 2;
      if (v32 == 4)
      {
        v33 = v61;
        goto LABEL_33;
      }
    }

    v33 = v61;
    result = swift_isUniquelyReferenced_nonNull_native();
    v65 = v33;
    if ((result & 1) == 0)
    {
      result = sub_20D95D9D8(0, *(v33 + 16) + 1, 1);
      v33 = v65;
    }

    v44 = *(v33 + 16);
    v43 = *(v33 + 24);
    if (v44 >= v43 >> 1)
    {
      result = sub_20D95D9D8((v43 > 1), v44 + 1, 1);
      v33 = v65;
    }

    *(v33 + 16) = v44 + 1;
    v45 = v33 + 16 * v44;
    *(v45 + 32) = v38;
    *(v45 + 40) = v37;
  }

  while (v32 != 3);
LABEL_33:
  swift_arrayDestroy();
  v63 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8398E8, &unk_20D97ABF0);
  sub_20D8767E0();
  sub_20D974F98();

  v46 = sub_20D975078();

  v47 = v58;
  [v58 setStreet_];

  if (v56)
  {
    v48 = sub_20D975078();
    [v47 setCity_];
  }

  v49 = v60;
  if (v57)
  {
    v50 = sub_20D975078();
    [v47 setState_];
  }

  if (v59)
  {
    v51 = sub_20D975078();
    [v47 setPostalCode_];
  }

  if (v49)
  {
    v52 = sub_20D975168();
    v53 = sub_20D975078();
    v54 = &selRef_setISOCountryCode_;
    if (v52 != 2)
    {
      v54 = &selRef_setCountry_;
    }

    [v47 *v54];
  }

  return v47;
}

void *OnboardingContext.home.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t OnboardingContext.__allocating_init(home:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  OnboardingContext.init(home:)(a1);
  return v5;
}

uint64_t OnboardingContext.init(home:)(uint64_t a1)
{
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F98];
  *(v1 + 72) = MEMORY[0x277D84F90];
  *(v1 + 80) = 0;
  v5 = MEMORY[0x277D84FA0];
  *(v1 + 88) = v4;
  *(v1 + 96) = v5;
  *(v1 + 104) = v3;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0;
  v6 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  v7 = sub_20D972628();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations) = v3;
  v8 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_selectedServiceLocation);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t OnboardingContext.__allocating_init(config:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  OnboardingContext.init(config:)(a1);
  return v5;
}

uint64_t OnboardingContext.init(config:)(uint64_t *a1)
{
  v2 = *a1;
  v15 = *(a1 + 1);
  v3 = a1[3];
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F98];
  *(v1 + 72) = MEMORY[0x277D84F90];
  *(v1 + 80) = 0;
  v6 = MEMORY[0x277D84FA0];
  *(v1 + 88) = v5;
  *(v1 + 96) = v6;
  *(v1 + 104) = v4;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0;
  v7 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  v8 = sub_20D972628();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations) = v4;
  v9 = (v1 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_selectedServiceLocation);
  *v9 = 0;
  v9[1] = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v13 = *(v1 + 64);
  *(v1 + 40) = v2;
  *(v1 + 48) = v15;
  *(v1 + 64) = v3;
  sub_20D89D2F8(v10, v11);
  return v1;
}

void sub_20D891D74(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 32);
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;

  sub_20D891DD8();
}

void sub_20D891DD8()
{
  v1 = v0;
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CF8);

  oslog = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    if (*(v1 + 32))
    {
      v6 = *(v1 + 24);
      v7 = *(v1 + 32);
    }

    else
    {
      v7 = 0xE300000000000000;
      v6 = 7104878;
    }

    v8 = sub_20D7F4DC8(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_20D7C9000, oslog, v3, "Setting utility id %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_20D891F90()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

void sub_20D891FDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  sub_20D891DD8();
}

uint64_t (*sub_20D892034(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D892088;
}

void *sub_20D8920A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = v3[5];
  v5 = v3[6];
  v6 = v3[7];
  v7 = v3[8];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_20D89D35C(v4, v5);
}

void sub_20D8920F4(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  swift_beginAccess();
  v7 = v6[5];
  v8 = v6[6];
  v9 = v6[7];
  v10 = v6[8];
  v6[5] = v2;
  v6[6] = v3;
  v6[7] = v4;
  v6[8] = v5;
  sub_20D89D35C(v2, v3);
  sub_20D89D2F8(v7, v8);
  sub_20D892194();
}

void sub_20D892194()
{
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  __swift_project_value_buffer(v1, qword_27C840CF8);

  v2 = sub_20D9734D8();
  v3 = sub_20D975448();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    if (*(v0 + 48))
    {
      if (*(v0 + 40))
      {
        v6 = sub_20D9731D8();
        if (!v7)
        {
          v6 = sub_20D9731B8();
        }

        v8 = v7;
      }

      else
      {
        v6 = 0;
        v8 = 0xE000000000000000;
      }
    }

    else
    {
      v8 = 0xE300000000000000;
      v6 = 7104878;
    }

    v9 = sub_20D7F4DC8(v6, v8, &v10);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_20D7C9000, v2, v3, "Setting utility config %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  sub_20D894E94();
}

void *sub_20D892340@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_20D89D35C(v3, v4);
}

void sub_20D892390(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = a1[1];
  *(v1 + 5) = *a1;
  *(v1 + 7) = v7;
  sub_20D89D2F8(v3, v4);
  sub_20D892194();
}

uint64_t (*sub_20D8923E8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D89243C;
}

uint64_t sub_20D892454(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;
}

uint64_t sub_20D8924B4()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t sub_20D8924EC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

void sub_20D892584(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
  v5 = v2;
}

void *sub_20D8925DC()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void sub_20D892620(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

uint64_t sub_20D8926B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;
}

uint64_t sub_20D892718()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t sub_20D892750(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t sub_20D8927E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_20D971D28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v23[2] = a2;
  v23[3] = a3;

  sub_20D971D18();
  sub_20D7E1EF8();
  v15 = sub_20D975548();
  v17 = v16;
  (*(v9 + 8))(v12, v8);
  swift_beginAccess();

  v18 = *(v4 + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23[0] = *(v4 + 88);
  *(v4 + 88) = 0x8000000000000000;
  sub_20D8D5550(v15, v17, v14, v13, isUniquelyReferenced_nonNull_native);

  *(v4 + 88) = v23[0];
  swift_endAccess();

  v20 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v20 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    swift_beginAccess();
    sub_20D89D0C8(v23, v14, v13);
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    sub_20D89D3BC(v14, v13);
    swift_endAccess();
  }
}

void sub_20D8929FC()
{
  v1 = v0;
  v62 = *MEMORY[0x277D85DE8];
  v58 = sub_20D971D28();
  v2 = *(v58 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = v0[6];
  if (v5)
  {
    v6 = v0[5];
    v8 = v0[7];
    v7 = v0[8];
    v9 = v6;

    sub_20D89EA1C(v5);
    v10 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7D0, &qword_20D97AC00);
    v11 = sub_20D975228();

    v61.value._countAndFlagsBits = 0;
    v12 = [v10 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

    countAndFlagsBits = v61.value._countAndFlagsBits;
    if (v12)
    {
      v14 = type metadata accessor for AccountDetailsDataModel();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      v17 = countAndFlagsBits;
      v18 = v12;
      v19 = sub_20D876308(v18);

      v20 = *(v5 + 16);
      if (v20)
      {
        v50 = v18;
        v51 = v6;
        v52 = v8;
        v53 = v7;
        v55 = (v2 + 8);

        v54 = v5;
        v21 = (v5 + 56);
        v56 = v19;
        do
        {
          v22 = *(v21 - 2);
          v23 = *(v21 - 1);
          v24 = *v21;

          v25._countAndFlagsBits = v23;
          v25._object = v24;
          v26 = AccountDetailsDataModel.getInfo(tafFieldKey:)(v25);
          if (v26.value._object)
          {
            v59 = v22;
            v61 = v26;

            v27 = v1;
            v28 = v57;
            sub_20D971D18();
            sub_20D7E1EF8();
            v29 = sub_20D975548();
            v31 = v30;
            v32 = v28;
            v1 = v27;
            (*v55)(v32, v58);

            swift_beginAccess();

            v33 = v27[11];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v60 = v27[11];
            v27[11] = 0x8000000000000000;
            sub_20D8D5550(v29, v31, v23, v24, isUniquelyReferenced_nonNull_native);

            v27[11] = v60;
            swift_endAccess();

            v35 = HIBYTE(v31) & 0xF;
            if ((v31 & 0x2000000000000000) == 0)
            {
              v35 = v29 & 0xFFFFFFFFFFFFLL;
            }

            if (v35)
            {
              swift_beginAccess();
              sub_20D89D0C8(&v60, v23, v24);
              swift_endAccess();
            }

            else
            {
              swift_beginAccess();
              sub_20D89D3BC(v23, v24);
              swift_endAccess();

              swift_bridgeObjectRelease_n();
            }
          }

          else
          {
          }

          v21 += 5;
          --v20;
        }

        while (v20);

        sub_20D89D2F8(v51, v54);
      }

      else
      {

        sub_20D89D2F8(v6, v5);
      }
    }

    else
    {
      v36 = v61.value._countAndFlagsBits;
      v37 = sub_20D9720F8();

      swift_willThrow();
      if (qword_27C838488 != -1)
      {
        swift_once();
      }

      v38 = sub_20D9734F8();
      __swift_project_value_buffer(v38, qword_27C840CF8);
      v39 = v37;
      v40 = sub_20D9734D8();
      v41 = sub_20D975458();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = v6;
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v61.value._countAndFlagsBits = v45;
        *v42 = 136315394;
        *(v42 + 4) = sub_20D7F4DC8(0xD00000000000001DLL, 0x800000020D987CA0, &v61.value._countAndFlagsBits);
        *(v42 + 12) = 2112;
        v46 = v37;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 14) = v47;
        *v44 = v47;
        _os_log_impl(&dword_20D7C9000, v40, v41, "%s ERROR fetching MeCard: %@", v42, 0x16u);
        sub_20D7E3944(v44, &unk_27C839E80, &qword_20D979610);
        MEMORY[0x20F324260](v44, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x20F324260](v45, -1, -1);
        MEMORY[0x20F324260](v42, -1, -1);

        sub_20D89D2F8(v43, v5);
      }

      else
      {

        sub_20D89D2F8(v6, v5);
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

uint64_t sub_20D89301C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 88);
  if (*(v2 + 16))
  {

    v3 = sub_20D8D4A48(1701667150, 0xE400000000000000);
    if (v4)
    {
      v5 = (*(v2 + 56) + 16 * v3);
      v6 = *v5;
      v7 = v5[1];

      return v6;
    }
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  v9 = *(v1 + 88);
  if (*(v9 + 16))
  {
    v10 = *(v1 + 88);

    v11 = sub_20D8D4A48(0x6D614E7473726946, 0xE900000000000065);
    if (v12)
    {
      v13 = (*(v9 + 56) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];

      v16 = sub_20D975078();

      [v8 setGivenName_];
    }

    else
    {
    }
  }

  v17 = *(v1 + 88);
  if (*(v17 + 16))
  {
    v18 = *(v1 + 88);

    v19 = sub_20D8D4A48(0x656D614E7473614CLL, 0xE800000000000000);
    if (v20)
    {
      v21 = (*(v17 + 56) + 16 * v19);
      v22 = *v21;
      v23 = v21[1];

      v24 = sub_20D975078();

      [v8 setFamilyName_];
    }

    else
    {
    }
  }

  v25 = [objc_opt_self() stringFromContact:v8 style:0];
  if (v25)
  {
    v26 = v25;
    v6 = sub_20D975098();
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_20D893244()
{
  swift_beginAccess();
  sub_20D8ADFBC(0, 0, 1701667150, 0xE400000000000000);
  sub_20D8ADFBC(0, 0, 0x6D614E7473726946, 0xE900000000000065);
  sub_20D8ADFBC(0, 0, 0x656D614E7473614CLL, 0xE800000000000000);
  swift_endAccess();
  swift_beginAccess();
  sub_20D89D3BC(1701667150, 0xE400000000000000);

  sub_20D89D3BC(0x6D614E7473726946, 0xE900000000000065);

  sub_20D89D3BC(0x656D614E7473614CLL, 0xE800000000000000);
  swift_endAccess();
}

uint64_t sub_20D893370()
{
  swift_beginAccess();
  v1 = v0[6];
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[5];
    swift_beginAccess();
    v5 = v0[12];
    sub_20D89D35C(v4, v1);

    v7 = sub_20D89D6BC(v6, v3);

    sub_20D89D2F8(v4, v1);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_20D893430()
{
  swift_beginAccess();
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[5];
    v3 = v0[7];
    v4 = v0[8];
    v5 = *(v1 + 16);
    if (v5)
    {
      v18 = v0[5];
      v19 = MEMORY[0x277D84F90];
      v6 = v2;

      sub_20D95D9D8(0, v5, 0);
      v7 = v19;
      v8 = (v1 + 56);
      do
      {
        v10 = *(v8 - 1);
        v9 = *v8;
        v11 = *(v19 + 16);
        v12 = *(v19 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_20D95D9D8((v12 > 1), v11 + 1, 1);
        }

        *(v19 + 16) = v11 + 1;
        v13 = v19 + 16 * v11;
        *(v13 + 32) = v10;
        *(v13 + 40) = v9;
        v8 += 5;
        --v5;
      }

      while (v5);
      v2 = v18;
    }

    else
    {
      v15 = v2;

      v7 = MEMORY[0x277D84F90];
    }

    v16 = sub_20D81A0F4(v7);

    v14 = sub_20D89D6BC(v4, v16);

    sub_20D89D2F8(v2, v1);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_20D8935BC()
{
  swift_beginAccess();
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[5];
    v4 = v0[7];
    v3 = v0[8];
    v5 = *(v1 + 16);
    v6 = v2;

    v8 = (v1 + 56);
    v9 = -v5;
    v10 = -1;
    do
    {
      if (v9 + v10 == -1)
      {
        goto LABEL_13;
      }

      if (++v10 >= *(v1 + 16))
      {
        __break(1u);
        return result;
      }

      if (*(v8 - 1) == 0x6C69616D45 && *v8 == 0xE500000000000000)
      {
        break;
      }

      v8 += 5;
      result = sub_20D9757C8();
    }

    while ((result & 1) == 0);
    swift_beginAccess();
    v12 = v0[11];
    if (!*(v12 + 16))
    {
LABEL_13:
      sub_20D89D2F8(v2, v1);
      goto LABEL_15;
    }

    v13 = sub_20D8D4A48(0x6C69616D45, 0xE500000000000000);
    if (v14)
    {
      v15 = (*(v12 + 56) + 16 * v13);
      v16 = *v15;
      v17 = v15[1];

      v18 = sub_20D89F098(0xD000000000000019, 0x800000020D987CC0, v16, v17);

      sub_20D89D2F8(v2, v1);
      v19 = v18 ^ 1;
      return v19 & 1;
    }

    sub_20D89D2F8(v2, v1);
  }

LABEL_15:
  v19 = 0;
  return v19 & 1;
}

void sub_20D893784(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;

  sub_20D8937E8();
}

void sub_20D8937E8()
{
  v1 = v0;
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CF8);

  oslog = sub_20D9734D8();
  v3 = sub_20D975478();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v1 + 104);

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C7F0, &qword_20D97B4A0);
    v8 = MEMORY[0x20F323400](v6, v7);
    v10 = v9;

    v11 = sub_20D7F4DC8(v8, v10, &v13);

    *(v4 + 4) = v11;
    _os_log_impl(&dword_20D7C9000, oslog, v3, "Setting factors %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_20D8939B8()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
}

void sub_20D8939F0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;

  sub_20D8937E8();
}

uint64_t (*sub_20D893A3C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D893A90;
}

void sub_20D893AA8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
  v5 = v2;
}

void *sub_20D893B00()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void sub_20D893B44(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_20D893BDC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 128);
  *(v4 + 120) = v3;
  *(v4 + 128) = v2;
}

uint64_t sub_20D893C3C()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t sub_20D893C88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

void sub_20D893D2C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 144);
  *(v4 + 136) = v3;
  *(v4 + 144) = v2;

  sub_20D893D90();
}

void sub_20D893D90()
{
  v1 = v0;
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CF8);

  oslog = sub_20D9734D8();
  v3 = sub_20D975448();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    if (*(v1 + 144))
    {
      v6 = *(v1 + 136);
      v7 = *(v1 + 144);
    }

    else
    {
      v7 = 0xE300000000000000;
      v6 = 7104878;
    }

    v8 = sub_20D7F4DC8(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_20D7C9000, oslog, v3, "Setting access token %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_20D893F48()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

void sub_20D893F94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 144);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;

  sub_20D893D90();
}

uint64_t (*sub_20D893FEC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D894040;
}

void sub_20D894058(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 160);
  *(v4 + 152) = v3;
  *(v4 + 160) = v2;

  sub_20D8940BC();
}

void sub_20D8940BC()
{
  v1 = v0;
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CF8);

  oslog = sub_20D9734D8();
  v3 = sub_20D975448();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    if (*(v1 + 160))
    {
      v6 = *(v1 + 152);
      v7 = *(v1 + 160);
    }

    else
    {
      v7 = 0xE300000000000000;
      v6 = 7104878;
    }

    v8 = sub_20D7F4DC8(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_20D7C9000, oslog, v3, "Setting refresh token %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_20D894274()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

void sub_20D8942C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 160);
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;

  sub_20D8940BC();
}

uint64_t (*sub_20D894318(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D89436C;
}

uint64_t sub_20D894384(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_20D7EB7E8(a1, &v11 - v6, &qword_27C8389E8, &qword_20D9768D0);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  swift_beginAccess();
  sub_20D89F454(v7, v8 + v9);
  swift_endAccess();
  sub_20D894470();
  return sub_20D7E3944(v7, &qword_27C8389E8, &qword_20D9768D0);
}

uint64_t sub_20D894470()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26 - v3;
  v5 = sub_20D972628();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  swift_beginAccess();
  sub_20D7EB7E8(v0 + v13, v4, &qword_27C8389E8, &qword_20D9768D0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_20D7E3944(v4, &qword_27C8389E8, &qword_20D9768D0);
  }

  (*(v6 + 32))(v12, v4, v5);
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v15 = sub_20D9734F8();
  __swift_project_value_buffer(v15, qword_27C840CF8);
  (*(v6 + 16))(v10, v12, v5);
  v16 = sub_20D9734D8();
  v17 = sub_20D975448();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v18 = 136315138;
    sub_20D8A093C(&qword_281127730, MEMORY[0x277CC9578]);
    v19 = sub_20D9757A8();
    v21 = v20;
    v22 = *(v6 + 8);
    v22(v10, v5);
    v23 = sub_20D7F4DC8(v19, v21, &v28);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_20D7C9000, v16, v17, "Setting expiration date %s", v18, 0xCu);
    v24 = v27;
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x20F324260](v24, -1, -1);
    MEMORY[0x20F324260](v18, -1, -1);

    return (v22)(v12, v5);
  }

  else
  {

    v25 = *(v6 + 8);
    v25(v10, v5);
    return (v25)(v12, v5);
  }
}

uint64_t sub_20D894808@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  swift_beginAccess();
  return sub_20D7EB7E8(v1 + v3, a1, &qword_27C8389E8, &qword_20D9768D0);
}

uint64_t sub_20D894870(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  swift_beginAccess();
  sub_20D89F454(a1, v1 + v3);
  swift_endAccess();
  sub_20D894470();
  return sub_20D7E3944(a1, &qword_27C8389E8, &qword_20D9768D0);
}

uint64_t (*sub_20D8948EC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D894950;
}

void sub_20D894968(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  sub_20D8949D4();
}

void sub_20D8949D4()
{
  v1 = v0;
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CF8);

  oslog = sub_20D9734D8();
  v3 = sub_20D975448();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v6 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations;
    swift_beginAccess();
    v7 = *(v1 + v6);

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C7F0, &qword_20D97B4A0);
    v9 = MEMORY[0x20F323400](v7, v8);
    v11 = v10;

    v12 = sub_20D7F4DC8(v9, v11, &v14);

    *(v4 + 4) = v12;
    _os_log_impl(&dword_20D7C9000, oslog, v3, "Setting locations %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_20D894BAC()
{
  v1 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

void sub_20D894BF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_20D8949D4();
}

uint64_t (*sub_20D894C50(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20D894CB4;
}

uint64_t sub_20D894CCC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v7 = *(a1 + 24);
    return a3(result);
  }

  return result;
}

uint64_t sub_20D894D10(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_selectedServiceLocation);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_20D894D7C()
{
  v1 = (v0 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_selectedServiceLocation);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_20D894DD4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_selectedServiceLocation);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

void sub_20D894E94()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[5];
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[8];
  if (v4)
  {
    v6 = v1[7];
    v7 = v1[8];
    sub_20D89D35C(v2, v1[6]);
    v8 = v2;
    sub_20D89D2F8(v2, v4);
    if (v2)
    {
      if (qword_27C838488 != -1)
      {
        swift_once();
      }

      v9 = sub_20D9734F8();
      __swift_project_value_buffer(v9, qword_27C840CF8);
      v10 = sub_20D9734D8();
      v11 = sub_20D975478();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D987F40, &v19);
        _os_log_impl(&dword_20D7C9000, v10, v11, "%s Creating subscription service", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x20F324260](v13, -1, -1);
        MEMORY[0x20F324260](v12, -1, -1);
      }

      v14 = objc_allocWithZone(sub_20D9732A8());
      v15 = sub_20D973298();
      swift_beginAccess();
      v16 = v1[10];
      v1[10] = v15;
    }
  }

  else
  {
    v17 = v1[7];
    v18 = v1[8];
    sub_20D89D35C(v2, 0);
    sub_20D89D2F8(v2, 0);
  }
}

void sub_20D895094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E90, &qword_20D97AC08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D97ABE0;
  *(inited + 32) = 25705;
  v13 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  *(inited + 72) = v13;
  *(inited + 80) = 0x7954726F74636166;
  *(inited + 88) = 0xEA00000000006570;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 120) = v13;
  *(inited + 128) = 0x74616E6974736564;
  *(inited + 136) = 0xEB000000006E6F69;
  *(inited + 144) = 0;
  *(inited + 152) = 0xE000000000000000;
  *(inited + 168) = v13;
  *(inited + 176) = 0x736B6E696C5FLL;
  *(inited + 184) = 0xE600000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839E98, &qword_20D97AC10);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_20D977210;
  *(v14 + 32) = 0x796669726576;
  *(v14 + 40) = 0xE600000000000000;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 64) = 1684956531;
  *(v14 + 72) = 0xE400000000000000;
  *(v14 + 80) = a3;
  *(v14 + 88) = a4;

  v15 = sub_20D8D6930(v14);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EA0, &qword_20D97AC18);
  swift_arrayDestroy();
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EA8, &unk_20D97AC20);
  *(inited + 192) = v15;
  sub_20D8D6720(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EB0, &qword_20D979E50);
  swift_arrayDestroy();
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v16 = sub_20D9734F8();
  __swift_project_value_buffer(v16, qword_27C840CF8);

  v17 = sub_20D9734D8();
  v18 = sub_20D975448();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27[0] = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_20D7F4DC8(0xD000000000000035, 0x800000020D987CE0, v27);
    *(v19 + 12) = 2080;
    v21 = sub_20D974F58();
    v23 = sub_20D7F4DC8(v21, v22, v27);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_20D7C9000, v17, v18, "%s factorDict %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v20, -1, -1);
    MEMORY[0x20F324260](v19, -1, -1);
  }

  sub_20D973398();
  v24 = sub_20D973388();
  swift_beginAccess();
  v25 = *(v26 + 112);
  *(v26 + 112) = v24;
}

uint64_t OnboardingContext.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_20D89D2F8(*(v0 + 40), *(v0 + 48));
  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 128);

  v9 = *(v0 + 144);

  v10 = *(v0 + 160);

  sub_20D7E3944(v0 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate, &qword_27C8389E8, &qword_20D9768D0);
  v11 = *(v0 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations);

  v12 = *(v0 + OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_selectedServiceLocation + 8);

  return v0;
}

uint64_t OnboardingContext.__deallocating_deinit()
{
  OnboardingContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t OnboardingContext.submitTAF(fields:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_20D9752E8();
  v2[10] = sub_20D9752D8();
  v4 = sub_20D975298();
  v2[11] = v4;
  v2[12] = v3;

  return MEMORY[0x2822009F8](sub_20D895600, v4, v3);
}

uint64_t sub_20D895600()
{
  v37 = v0;
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[13] = v2;
  if (v2)
  {
    v3 = v0[8];
    v4 = *(v3 + 16);
    v2;

    if (v4)
    {
      v5 = sub_20D8D4A48(0x656E6F6850, 0xE500000000000000);
      v3 = v0[8];
      if (v6)
      {
        v7 = (*(v3 + 56) + 16 * v5);
        v8 = *v7;
        v9 = v7[1];

        v10 = sub_20D89F518();
        v12 = v11;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36[0] = v3;
        sub_20D8D5550(v10, v12, 0x656E6F6850, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
      }
    }

    v0[14] = v3;
    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v14 = sub_20D9734F8();
    __swift_project_value_buffer(v14, qword_27C840CF8);
    v15 = sub_20D9734D8();
    v16 = sub_20D975478();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36[0] = v18;
      *v17 = 136315394;
      *(v17 + 4) = sub_20D7F4DC8(0xD000000000000012, 0x800000020D987D20, v36);
      *(v17 + 12) = 2080;

      v19 = sub_20D974F58();
      v21 = v20;

      v22 = sub_20D7F4DC8(v19, v21, v36);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_20D7C9000, v15, v16, "%s Submitting information %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v18, -1, -1);
      MEMORY[0x20F324260](v17, -1, -1);
    }

    sub_20D973328();

    v23 = sub_20D9732F8();
    v0[15] = v23;
    v24 = *(MEMORY[0x277D181F0] + 4);
    v35 = (*MEMORY[0x277D181F0] + MEMORY[0x277D181F0]);
    v25 = swift_task_alloc();
    v0[16] = v25;
    *v25 = v0;
    v25[1] = sub_20D895AA4;

    return v35(v3, v23);
  }

  else
  {
    v27 = v0[10];

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v28 = sub_20D9734F8();
    __swift_project_value_buffer(v28, qword_27C840CF8);
    v29 = sub_20D9734D8();
    v30 = sub_20D975458();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_20D7F4DC8(0xD000000000000012, 0x800000020D987D20, v36);
      _os_log_impl(&dword_20D7C9000, v29, v30, "%s Unable to find subscription service", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x20F324260](v32, -1, -1);
      MEMORY[0x20F324260](v31, -1, -1);
    }

    sub_20D89F4C4();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_20D895AA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v10 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = sub_20D895D8C;
  }

  else
  {
    v8 = *(v3 + 112);

    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = sub_20D895BC8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

void *sub_20D895BC8()
{
  v1 = v0[17];
  v2 = v0[10];

  if (v1 >> 62)
  {
    if (v0[17] < 0)
    {
      v15 = v0[17];
    }

    v3 = sub_20D975748();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
    v16 = v0[17];

    v6 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  v22 = MEMORY[0x277D84F90];
  result = sub_20D95D9F8(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = v22;
  v7 = v1 & 0xC000000000000001;
  v8 = v0[17] + 32;
  do
  {
    if (v7)
    {
      v9 = MEMORY[0x20F323850](v5, v0[17]);
    }

    else
    {
      v9 = *(v8 + 8 * v5);
    }

    v10 = v9;
    v11 = sub_20D973378();

    v13 = *(v22 + 16);
    v12 = *(v22 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_20D95D9F8((v12 > 1), v13 + 1, 1);
    }

    ++v5;
    *(v22 + 16) = v13 + 1;
    *(v22 + 8 * v13 + 32) = v11;
  }

  while (v3 != v5);
  v14 = v0[17];

LABEL_16:
  v18 = v0[13];
  v17 = v0[14];
  v19 = v0[9];
  swift_beginAccess();
  v20 = *(v19 + 104);
  *(v19 + 104) = v6;

  sub_20D8937E8();

  v21 = v0[1];

  return v21();
}

uint64_t sub_20D895D8C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];

  swift_bridgeObjectRelease_n();
  v5 = v0[18];
  v6 = v0[1];

  return v6();
}

uint64_t OnboardingContext.verifyAddressAndSubmitTAF()()
{
  v1[8] = v0;
  sub_20D9752E8();
  v1[9] = sub_20D9752D8();
  v3 = sub_20D975298();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](sub_20D895EAC, v3, v2);
}

uint64_t sub_20D895EAC()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 88);
  v0[12] = v2;

  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_20D895F74;
  v4 = v0[8];

  return OnboardingContext.submitTAF(fields:)(v2);
}

uint64_t sub_20D895F74()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_20D8960F4;
  }

  else
  {
    v7 = v2[12];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_20D896090;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D896090()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D8960F4()
{
  v31 = v0;
  v1 = v0[14];
  v2 = v0[12];

  v0[5] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  if ((swift_dynamicCast() & 1) != 0 && (v4 = v0[6], v0[15] = v4, v5 = sub_20D973368(), v5 == sub_20D973368()))
  {
    v6 = *(v0[8] + 88);
    v0[7] = v6;

    v7 = sub_20D84B8EC(&unk_28249A7D0);
    swift_arrayDestroy();

    v9 = sub_20D815B64(v8);
    v10 = sub_20D89D6BC(v9, v7);

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v6;
      sub_20D8D5550(21333, 0xE200000000000000, 0x7972746E756F43, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      v0[16] = v6;
      v0[7] = v6;

      v13 = sub_20D89F744(v12);
      v0[17] = v13;

      sub_20D973328();
      v14 = sub_20D9732F8();
      v0[18] = v14;
      v15 = *(MEMORY[0x277D18280] + 4);
      v16 = swift_task_alloc();
      v0[19] = v16;
      *v16 = v0;
      v16[1] = sub_20D8964A0;

      return MEMORY[0x282172660](v13, v14);
    }

    v21 = v0[9];

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v22 = sub_20D9734F8();
    __swift_project_value_buffer(v22, qword_27C840CF8);
    v23 = sub_20D9734D8();
    v24 = sub_20D975458();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D987D40, &v30);
      _os_log_impl(&dword_20D7C9000, v23, v24, "%s Skipping AVS. TAF responses do not contain all AVS required fields.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x20F324260](v26, -1, -1);
      MEMORY[0x20F324260](v25, -1, -1);
    }

    v27 = v0[14];
    sub_20D89F6F0();
    swift_allocError();
    *v28 = v4;
    swift_willThrow();
  }

  else
  {
    v17 = v0[9];

    v18 = v0[14];
    swift_willThrow();
    v19 = v0[14];
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_20D8964A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = a1;

  v7 = *(v3 + 144);
  if (v1)
  {

    v8 = *(v4 + 80);
    v9 = *(v4 + 88);
    v10 = sub_20D896DC0;
  }

  else
  {

    v8 = *(v4 + 80);
    v9 = *(v4 + 88);
    v10 = sub_20D8965E8;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_20D8965E8()
{
  v59 = v0;
  v1 = v0[20];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v43 = v0[20];
    }

    if (sub_20D975748())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x20F323850](0, v0[20]);
      v57 = v0[20];
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v0[20] + 32);
LABEL_6:

      v3 = sub_20D973358();

      v4 = sub_20D973218();
      v6 = v5;
      v7 = v0[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58[0] = v7;
      sub_20D8D5550(v4, v6, 0x4C73736572646441, 0xEC00000031656E69, isUniquelyReferenced_nonNull_native);
      v0[7] = v7;
      v9 = sub_20D973228();
      sub_20D8ADFBC(v9, v10, 0x4C73736572646441, 0xEC00000032656E69);
      v11 = sub_20D973238();
      sub_20D8ADFBC(v11, v12, 0x4C73736572646441, 0xEC00000033656E69);
      v13 = sub_20D973248();
      v15 = v14;
      v16 = v0[7];
      v17 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D8D5550(v13, v15, 2037672259, 0xE400000000000000, v17);
      v0[7] = v16;
      v18 = sub_20D973258();
      v20 = v19;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D8D5550(v18, v20, 0x6574617453, 0xE500000000000000, v21);
      v0[7] = v16;
      v22 = sub_20D9731F8();
      v24 = v23;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D8D5550(v22, v24, 0x6F436C6174736F50, 0xEA00000000006564, v25);
      v0[7] = v16;
      v26 = sub_20D973268();
      v28 = v27;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v58[0] = v16;
      sub_20D8D5550(v26, v28, 0x7972746E756F43, 0xE700000000000000, v29);
      v30 = v16;
      v0[21] = v16;
      v0[7] = v16;
      if (qword_27C838488 != -1)
      {
        swift_once();
      }

      v31 = sub_20D9734F8();
      __swift_project_value_buffer(v31, qword_27C840CF8);
      v32 = sub_20D9734D8();
      v33 = sub_20D975478();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v58[0] = v35;
        *v34 = 136315394;
        *(v34 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D987D40, v58);
        *(v34 + 12) = 2080;

        v36 = sub_20D974F58();
        v38 = v37;

        v39 = sub_20D7F4DC8(v36, v38, v58);

        *(v34 + 14) = v39;
        _os_log_impl(&dword_20D7C9000, v32, v33, "%s Responses copy %s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v35, -1, -1);
        MEMORY[0x20F324260](v34, -1, -1);
      }

      v40 = swift_task_alloc();
      v0[22] = v40;
      *v40 = v0;
      v40[1] = sub_20D896C18;
      v41 = v0[8];

      return OnboardingContext.submitTAF(fields:)(v30);
    }

    __break(1u);
    goto LABEL_24;
  }

  v44 = v0[20];
  v45 = v0[9];

  if (qword_27C838488 != -1)
  {
LABEL_24:
    swift_once();
  }

  v46 = sub_20D9734F8();
  __swift_project_value_buffer(v46, qword_27C840CF8);
  v47 = sub_20D9734D8();
  v48 = sub_20D975458();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v58[0] = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D987D40, v58);
    _os_log_impl(&dword_20D7C9000, v47, v48, "%s Address Verification failed! Will ignore error and throw the first error from submitTAF() received.", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x20F324260](v50, -1, -1);
    MEMORY[0x20F324260](v49, -1, -1);
  }

  v51 = v0[16];
  v52 = v0[17];
  v53 = v0[14];
  v54 = v0[15];
  sub_20D89F6F0();
  swift_allocError();
  *v55 = v54;
  swift_willThrow();

  v56 = v0[1];

  return v56();
}

uint64_t sub_20D896C18()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_20D896F88;
  }

  else
  {
    v7 = v2[21];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_20D896D34;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D896D34()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_20D896DC0()
{
  v15 = v0;
  v1 = v0[9];

  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CF8);
  v3 = sub_20D9734D8();
  v4 = sub_20D975458();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_20D7F4DC8(0xD00000000000001BLL, 0x800000020D987D40, &v14);
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s Address Verification failed! Will ignore error and throw the first error from submitTAF() received.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[14];
  v10 = v0[15];
  sub_20D89F6F0();
  swift_allocError();
  *v11 = v10;
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_20D896F88()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[9];

  v5 = v0[23];
  v6 = v0[1];

  return v6();
}

uint64_t OnboardingContext.requestOTP()()
{
  v1[8] = v0;
  sub_20D9752E8();
  v1[9] = sub_20D9752D8();
  v3 = sub_20D975298();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](sub_20D8970B0, v3, v2);
}

uint64_t sub_20D8970B0()
{
  v28 = v0;
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[12] = v2;
  if (v2)
  {
    v3 = v0[8];
    swift_beginAccess();
    v4 = *(v3 + 112);
    v0[13] = v4;
    if (v4)
    {
      sub_20D973328();
      v2;
      v5 = v4;
      v6 = sub_20D9732F8();
      v0[14] = v6;
      v7 = *(MEMORY[0x277D181E0] + 4);
      v26 = (*MEMORY[0x277D181E0] + MEMORY[0x277D181E0]);
      v8 = swift_task_alloc();
      v0[15] = v8;
      *v8 = v0;
      v8[1] = sub_20D8974B8;

      return v26(v5, v6);
    }

    v17 = v0[9];
    v18 = v2;

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v19 = sub_20D9734F8();
    __swift_project_value_buffer(v19, qword_27C840CF8);
    v20 = sub_20D9734D8();
    v21 = sub_20D975458();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_20D7F4DC8(0x4F74736575716572, 0xEC00000029285054, v27);
      _os_log_impl(&dword_20D7C9000, v20, v21, "%s Unable to find factor", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x20F324260](v23, -1, -1);
      MEMORY[0x20F324260](v22, -1, -1);
    }

    sub_20D89F4C4();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
  }

  else
  {
    v10 = v0[9];

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v11 = sub_20D9734F8();
    __swift_project_value_buffer(v11, qword_27C840CF8);
    v12 = sub_20D9734D8();
    v13 = sub_20D975458();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_20D7F4DC8(0x4F74736575716572, 0xEC00000029285054, v27);
      _os_log_impl(&dword_20D7C9000, v12, v13, "%s Unable to find subscription service", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F324260](v15, -1, -1);
      MEMORY[0x20F324260](v14, -1, -1);
    }

    sub_20D89F4C4();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
  }

  v25 = v0[1];

  return v25(0);
}

uint64_t sub_20D8974B8(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v9 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = *(v3 + 80);
    v6 = *(v3 + 88);
    v7 = sub_20D897798;
  }

  else
  {

    v5 = *(v3 + 80);
    v6 = *(v3 + 88);
    v7 = sub_20D8975D8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20D8975D8()
{
  v16 = v0;
  v1 = *(v0 + 72);

  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_27C840CF8);
  v3 = sub_20D9734D8();
  v4 = sub_20D975478();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 136);
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D7F4DC8(0x4F74736575716572, 0xEC00000029285054, &v15);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v5;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s Requested OTP with result %{BOOL}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  else
  {
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
  }

  v12 = *(v0 + 8);
  v13 = *(v0 + 136);

  return v12(v13);
}

uint64_t sub_20D897798()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[16];
  v6 = v0[1];

  return v6(0);
}

uint64_t OnboardingContext.verifyOTP(otpCode:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = sub_20D972628();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = sub_20D9733C8();
  v3[24] = v8;
  v9 = *(v8 - 8);
  v3[25] = v9;
  v10 = *(v9 + 64) + 15;
  v3[26] = swift_task_alloc();
  sub_20D9752E8();
  v3[27] = sub_20D9752D8();
  v12 = sub_20D975298();
  v3[28] = v12;
  v3[29] = v11;

  return MEMORY[0x2822009F8](sub_20D8979A8, v12, v11);
}

uint64_t sub_20D8979A8()
{
  v34 = v0;
  v1 = v0[19];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[30] = v2;
  if (v2)
  {
    v3 = v0[19];
    swift_beginAccess();
    v4 = *(v3 + 112);
    v0[31] = v4;
    if (v4)
    {
      sub_20D973328();
      v2;
      v5 = v4;
      v6 = sub_20D9732F8();
      v0[32] = v6;
      v7 = *(MEMORY[0x277D181B0] + 4);
      v32 = (*MEMORY[0x277D181B0] + MEMORY[0x277D181B0]);
      v8 = swift_task_alloc();
      v0[33] = v8;
      *v8 = v0;
      v8[1] = sub_20D897DD0;
      v9 = v0[26];
      v10 = v0[17];
      v11 = v0[18];

      return v32(v9, v5, v10, v11, v6);
    }

    v20 = v0[27];
    v21 = v2;

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v22 = sub_20D9734F8();
    __swift_project_value_buffer(v22, qword_27C840CF8);
    v23 = sub_20D9734D8();
    v24 = sub_20D975458();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_20D7F4DC8(0xD000000000000013, 0x800000020D987D60, v33);
      _os_log_impl(&dword_20D7C9000, v23, v24, "%s Unable to find factor", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x20F324260](v26, -1, -1);
      MEMORY[0x20F324260](v25, -1, -1);
    }

    sub_20D89F4C4();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();
  }

  else
  {
    v13 = v0[27];

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v14 = sub_20D9734F8();
    __swift_project_value_buffer(v14, qword_27C840CF8);
    v15 = sub_20D9734D8();
    v16 = sub_20D975458();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_20D7F4DC8(0xD000000000000013, 0x800000020D987D60, v33);
      _os_log_impl(&dword_20D7C9000, v15, v16, "%s Unable to find subscription service", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x20F324260](v18, -1, -1);
      MEMORY[0x20F324260](v17, -1, -1);
    }

    sub_20D89F4C4();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
  }

  v28 = v0[26];
  v30 = v0[22];
  v29 = v0[23];

  v31 = v0[1];

  return v31(0);
}

uint64_t sub_20D897DD0()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v8 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = *(v2 + 224);
    v5 = *(v2 + 232);
    v6 = sub_20D898734;
  }

  else
  {

    v4 = *(v2 + 224);
    v5 = *(v2 + 232);
    v6 = sub_20D897EEC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D897EEC()
{
  v62 = v0;
  v1 = v0[26];
  v2 = sub_20D9733A8();
  if (v2)
  {
    v3 = v0[27];

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v4 = sub_20D9734F8();
    __swift_project_value_buffer(v4, qword_27C840CF8);
    v5 = v2;
    v6 = sub_20D9734D8();
    v7 = sub_20D975478();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v2;
      v10 = v5;
      _os_log_impl(&dword_20D7C9000, v6, v7, "Found tokens in verification response: %@", v8, 0xCu);
      sub_20D7E3944(v9, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v9, -1, -1);
      MEMORY[0x20F324260](v8, -1, -1);
    }

    v56 = v0[31];
    v57 = v0[30];
    v11 = v0[25];
    v12 = v0[23];
    v58 = v0[24];
    v59 = v0[26];
    v13 = v0[21];
    v14 = v0[22];
    v60 = v2;
    v15 = v0[19];
    v16 = v0[20];

    v17 = sub_20D9732B8();
    v19 = v18;
    swift_beginAccess();
    v20 = v15[18];
    v15[17] = v17;
    v15[18] = v19;

    sub_20D893D90();
    v21 = sub_20D9732C8();
    v23 = v22;
    swift_beginAccess();
    v24 = v15[20];
    v15[19] = v21;
    v15[20] = v23;

    sub_20D8940BC();
    sub_20D9725C8();
    sub_20D9732D8();
    sub_20D972558();
    (*(v13 + 8))(v14, v16);
    (*(v13 + 56))(v12, 0, 1, v16);
    v25 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
    swift_beginAccess();
    sub_20D89F454(v12, v15 + v25);
    swift_endAccess();
    v2 = v60;
    sub_20D894470();

    sub_20D7E3944(v12, &qword_27C8389E8, &qword_20D9768D0);
    (*(v11 + 8))(v59, v58);
LABEL_7:
    v26 = v0[26];
    v28 = v0[22];
    v27 = v0[23];

    v29 = v0[1];

    return v29(v2 != 0);
  }

  v31 = v0[26];
  v32 = sub_20D9733B8();
  v0[35] = v33;
  if (!v33)
  {
    v43 = v0[27];

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v44 = sub_20D9734F8();
    __swift_project_value_buffer(v44, qword_27C840CF8);
    v45 = sub_20D9734D8();
    v46 = sub_20D975458();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v0[30];
    v49 = v0[31];
    v50 = v0[25];
    v51 = v0[26];
    v52 = v0[24];
    if (v47)
    {
      v53 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v54 = v61;
      *v53 = 136315138;
      *(v53 + 4) = sub_20D7F4DC8(0xD000000000000013, 0x800000020D987D60, &v61);
      _os_log_impl(&dword_20D7C9000, v45, v46, "%s Account Verification response doesn't contain a token set or auth code.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      v55 = v54;
      v2 = 0;
      MEMORY[0x20F324260](v55, -1, -1);
      MEMORY[0x20F324260](v53, -1, -1);

      (*(v50 + 8))(v51, v52);
    }

    else
    {

      (*(v50 + 8))(v51, v52);
    }

    goto LABEL_7;
  }

  v34 = v32;
  v35 = v33;
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v36 = sub_20D9734F8();
  __swift_project_value_buffer(v36, qword_27C840CF8);

  v37 = sub_20D9734D8();
  v38 = sub_20D975478();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v61 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_20D7F4DC8(v34, v35, &v61);
    _os_log_impl(&dword_20D7C9000, v37, v38, "Found auth code in verification response: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x20F324260](v40, -1, -1);
    MEMORY[0x20F324260](v39, -1, -1);
  }

  v41 = swift_task_alloc();
  v0[36] = v41;
  *v41 = v0;
  v41[1] = sub_20D898524;
  v42 = v0[19];

  return OnboardingContext.createAccessToken(authCode:)(v34, v35);
}

uint64_t sub_20D898524()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = v2[35];

  v6 = v2[29];
  v7 = v2[28];
  if (v0)
  {
    v8 = sub_20D8987D4;
  }

  else
  {
    v8 = sub_20D898678;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_20D898678()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v6 = v0[25];

  (*(v6 + 8))(v4, v5);
  v7 = v0[26];
  v8 = v0[22];
  v9 = v0[23];

  v10 = v0[1];

  return v10(1);
}

uint64_t sub_20D898734()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[27];

  v5 = v0[34];
  v6 = v0[26];
  v8 = v0[22];
  v7 = v0[23];

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_20D8987D4()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v6 = v0[25];

  (*(v6 + 8))(v4, v5);
  v7 = v0[37];
  v8 = v0[26];
  v10 = v0[22];
  v9 = v0[23];

  v11 = v0[1];

  return v11(0);
}

uint64_t OnboardingContext.createAccessToken(authCode:)(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_20D972628();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  sub_20D9752E8();
  v3[21] = sub_20D9752D8();
  v9 = sub_20D975298();
  v3[22] = v9;
  v3[23] = v8;

  return MEMORY[0x2822009F8](sub_20D8989C0, v9, v8);
}

uint64_t sub_20D8989C0()
{
  v27 = v0;
  v1 = v0[16];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[24] = v2;
  if (v2)
  {
    v3 = qword_27C838488;
    v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_20D9734F8();
    v0[25] = __swift_project_value_buffer(v4, qword_27C840CF8);
    v5 = sub_20D9734D8();
    v6 = sub_20D975478();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D987D80, v26);
      _os_log_impl(&dword_20D7C9000, v5, v6, "%s About to generate tokens", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F324260](v8, -1, -1);
      MEMORY[0x20F324260](v7, -1, -1);
    }

    sub_20D973328();
    v9 = sub_20D9732F8();
    v0[26] = v9;
    v10 = *(MEMORY[0x277D181C8] + 4);
    v25 = (*MEMORY[0x277D181C8] + MEMORY[0x277D181C8]);
    v11 = swift_task_alloc();
    v0[27] = v11;
    *v11 = v0;
    v11[1] = sub_20D898D5C;
    v13 = v0[14];
    v12 = v0[15];

    return v25(v13, v12, v9);
  }

  else
  {
    v15 = v0[21];

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v16 = sub_20D9734F8();
    __swift_project_value_buffer(v16, qword_27C840CF8);
    v17 = sub_20D9734D8();
    v18 = sub_20D975458();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D987D80, v26);
      _os_log_impl(&dword_20D7C9000, v17, v18, "%s Unable to find subscription service", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x20F324260](v20, -1, -1);
      MEMORY[0x20F324260](v19, -1, -1);
    }

    sub_20D89F4C4();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    v23 = v0[19];
    v22 = v0[20];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_20D898D5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v9 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = *(v3 + 176);
    v6 = *(v3 + 184);
    v7 = sub_20D89916C;
  }

  else
  {

    v5 = *(v3 + 176);
    v6 = *(v3 + 184);
    v7 = sub_20D898E78;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20D898E78()
{
  v31 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[21];

  v4 = v1;
  v5 = sub_20D9734D8();
  v6 = sub_20D975478();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[28];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D987D80, &v30);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v7;
    *v9 = v7;
    v11 = v7;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s ---: Tokens %@", v8, 0x16u);
    sub_20D7E3944(v9, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v12 = v0[28];
  v13 = v0[24];
  v14 = v0[19];
  v15 = v0[20];
  v16 = v0[17];
  v17 = v0[18];
  v18 = v0[16];
  v19 = sub_20D9732B8();
  v21 = v20;
  swift_beginAccess();
  v22 = v18[18];
  v18[17] = v19;
  v18[18] = v21;

  sub_20D893D90();
  v23 = sub_20D9732C8();
  v25 = v24;
  swift_beginAccess();
  v26 = v18[20];
  v18[19] = v23;
  v18[20] = v25;

  sub_20D8940BC();
  sub_20D9725C8();
  sub_20D9732D8();
  sub_20D972558();
  (*(v17 + 8))(v14, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v27 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  swift_beginAccess();
  sub_20D89F454(v15, v18 + v27);
  swift_endAccess();
  sub_20D894470();

  sub_20D7E3944(v15, &qword_27C8389E8, &qword_20D9768D0);

  v28 = v0[1];

  return v28();
}

uint64_t sub_20D89916C()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[21];

  v4 = v0[29];
  v6 = v0[19];
  v5 = v0[20];

  v7 = v0[1];

  return v7();
}

uint64_t OnboardingContext.fetchServiceLocations()()
{
  v6 = *MEMORY[0x277D85DE8];
  v1[22] = v0;
  sub_20D9752E8();
  v1[23] = sub_20D9752D8();
  v2 = sub_20D975298();
  v1[24] = v2;
  v1[25] = v3;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_20D8992BC, v2, v3);
}

uint64_t sub_20D8992BC()
{
  v24 = v0;
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = v0[22];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[26] = v2;
  if (v2)
  {
    v3 = v0[22];
    swift_beginAccess();
    v4 = *(v3 + 144);
    if (v4)
    {
      v5 = *(v3 + 136);
      v6 = v4;
    }

    else
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    v0[27] = v6;
    sub_20D973328();
    v2;

    v17 = sub_20D9732F8();
    v0[28] = v17;
    v18 = MEMORY[0x277D18190];
    v19 = *(MEMORY[0x277D18190] + 4);
    v20 = *MEMORY[0x277D18190];
    v21 = swift_task_alloc();
    v0[29] = v21;
    *v21 = v0;
    v21[1] = sub_20D8995A4;
    v22 = *MEMORY[0x277D85DE8];

    return ((v20 + v18))(v5, v6, v17);
  }

  else
  {
    v7 = v0[23];

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v8 = sub_20D9734F8();
    __swift_project_value_buffer(v8, qword_27C840CF8);
    v9 = sub_20D9734D8();
    v10 = sub_20D975458();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_20D7F4DC8(0xD000000000000017, 0x800000020D987DA0, v23);
      _os_log_impl(&dword_20D7C9000, v9, v10, "%s Unable to find subscription service", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F324260](v12, -1, -1);
      MEMORY[0x20F324260](v11, -1, -1);
    }

    v13 = v0[1];
    v14 = *MEMORY[0x277D85DE8];
    v15 = MEMORY[0x277D84F90];

    return v13(v15);
  }
}

uint64_t sub_20D8995A4(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 232);
  v12 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v5 = *(v3 + 192);
    v6 = *(v3 + 200);
    v7 = sub_20D899AC4;
  }

  else
  {
    v8 = *(v3 + 216);

    v5 = *(v3 + 192);
    v6 = *(v3 + 200);
    v7 = sub_20D8996FC;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20D8996FC()
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 240);
  v2 = *(v0 + 184);

  if (v1 >> 62)
  {
    if (*(v0 + 240) < 0)
    {
      v27 = *(v0 + 240);
    }

    v3 = sub_20D975748();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v38 = MEMORY[0x277D84F90];
      sub_20D95D9F8(0, v3 & ~(v3 >> 63), 0);
      if (v3 < 0)
      {
        __break(1u);
      }

      v4 = 0;
      v5 = v38;
      v6 = v1 & 0xC000000000000001;
      v7 = *(v0 + 248);
      v36 = *(v0 + 240) + 32;
      v37 = v6;
      while (1)
      {
        if (v37)
        {
          v8 = MEMORY[0x20F323850](v4, *(v0 + 240));
        }

        else
        {
          v8 = *(v36 + 8 * v4);
        }

        v9 = v8;
        *(v0 + 152) = v8;
        v10 = sub_20D971C98();
        v11 = *(v10 + 48);
        v12 = *(v10 + 52);
        swift_allocObject();
        sub_20D971C88();
        sub_20D973288();
        sub_20D8A093C(&unk_27C839ED0, MEMORY[0x277D18178]);
        v13 = sub_20D971C78();
        if (v7)
        {
        }

        else
        {
          v18 = v13;
          v19 = v14;

          v20 = objc_opt_self();
          v21 = sub_20D9721D8();
          *(v0 + 160) = 0;
          v22 = [v20 JSONObjectWithData:v21 options:0 error:v0 + 160];

          v23 = *(v0 + 160);
          if (v22)
          {
            sub_20D9755A8();
            sub_20D84D374(v18, v19);
            swift_unknownObjectRelease();
          }

          else
          {
            v24 = v23;
            v25 = sub_20D9720F8();

            swift_willThrow();
            sub_20D84D374(v18, v19);

            v39 = 0u;
            v40 = 0u;
          }

          *(v0 + 16) = v39;
          *(v0 + 32) = v40;
          if (*(v0 + 40))
          {
            sub_20D7E39A4((v0 + 16), (v0 + 48));
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C7F0, &qword_20D97B4A0);
            if (swift_dynamicCast())
            {
              v15 = *(v0 + 168);
              if (v15)
              {

                goto LABEL_11;
              }
            }
          }
        }

        v15 = MEMORY[0x277D84F98];
LABEL_11:
        v17 = *(v38 + 16);
        v16 = *(v38 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_20D95D9F8((v16 > 1), v17 + 1, 1);
        }

        v7 = 0;
        ++v4;
        *(v38 + 16) = v17 + 1;
        *(v38 + 8 * v17 + 32) = v15;
        if (v3 == v4)
        {
          v26 = *(v0 + 240);

          goto LABEL_26;
        }
      }
    }
  }

  v28 = *(v0 + 240);

  v5 = MEMORY[0x277D84F90];
LABEL_26:
  v29 = *(v0 + 208);
  v30 = *(v0 + 176);
  v31 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_serviceLocations;
  swift_beginAccess();
  v32 = *(v30 + v31);
  *(v30 + v31) = v5;

  sub_20D8949D4();

  v33 = *(v0 + 8);
  v34 = *MEMORY[0x277D85DE8];

  return v33(v5);
}

uint64_t sub_20D899AC4()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[23];

  v5 = v0[1];
  v6 = v0[31];
  v7 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t OnboardingContext.createSubscription(serviceLocationID:address:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = sub_20D972698();
  v5[19] = v6;
  v7 = *(v6 - 8);
  v5[20] = v7;
  v8 = *(v7 + 64) + 15;
  v5[21] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v10 = sub_20D972628();
  v5[23] = v10;
  v11 = *(v10 - 8);
  v5[24] = v11;
  v12 = *(v11 + 64) + 15;
  v5[25] = swift_task_alloc();
  sub_20D9752E8();
  v5[26] = sub_20D9752D8();
  v14 = sub_20D975298();
  v5[27] = v14;
  v5[28] = v13;

  return MEMORY[0x2822009F8](sub_20D899D04, v14, v13);
}

uint64_t sub_20D899D04()
{
  v30 = v0;
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[18];
  v5 = OBJC_IVAR____TtC12HomeEnergyUI17OnboardingContext_expirationDate;
  swift_beginAccess();
  sub_20D7EB7E8(v4 + v5, v3, &qword_27C8389E8, &qword_20D9768D0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[26];
    v7 = v0[22];

    sub_20D7E3944(v7, &qword_27C8389E8, &qword_20D9768D0);
    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v8 = sub_20D9734F8();
    __swift_project_value_buffer(v8, qword_27C840CF8);
    v9 = sub_20D9734D8();
    v10 = sub_20D975458();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D987DC0, &v29);
      _os_log_impl(&dword_20D7C9000, v9, v10, "%s No expiration date found", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x20F324260](v12, -1, -1);
      MEMORY[0x20F324260](v11, -1, -1);
    }

    v13 = v0[25];
    v14 = v0[21];
    v15 = v0[22];

    v16 = v0[1];

    return v16(0);
  }

  else
  {
    v18 = v0[18];
    (*(v0[24] + 32))(v0[25], v0[22], v0[23]);
    v19 = *(v18 + 16);
    if (v19)
    {
      v21 = v0[20];
      v20 = v0[21];
      v22 = v0[19];
      v23 = [v19 uniqueIdentifier];
      sub_20D972678();

      v24 = sub_20D972648();
      v26 = v25;
      (*(v21 + 8))(v20, v22);
    }

    else
    {
      v24 = 0;
      v26 = 0xE000000000000000;
    }

    v0[29] = v24;
    v0[30] = v26;
    sub_20D972CD8();
    v27 = *(MEMORY[0x277D07650] + 4);

    v28 = swift_task_alloc();
    v0[31] = v28;
    *v28 = v0;
    v28[1] = sub_20D89A044;

    return MEMORY[0x28215C940](v24, v26);
  }
}

uint64_t sub_20D89A044(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = a1;

  v4 = *(v2 + 224);
  v5 = *(v2 + 216);

  return MEMORY[0x2822009F8](sub_20D89A16C, v5, v4);
}

uint64_t sub_20D89A16C()
{
  if (v0[32])
  {
    v50 = v0[32];
    v1 = v0[30];

    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v2 = v0[17];
    v3 = sub_20D9734F8();
    v0[33] = __swift_project_value_buffer(v3, qword_27C840CF8);

    v4 = sub_20D9734D8();
    v5 = sub_20D975448();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[16];
      v6 = v0[17];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v54 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D987DC0, &v54);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_20D7F4DC8(v7, v6, &v54);
      _os_log_impl(&dword_20D7C9000, v4, v5, "%s Given address %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v9, -1, -1);
      MEMORY[0x20F324260](v8, -1, -1);
    }

    v10 = v0[18];
    swift_beginAccess();
    if (*(v10 + 32))
    {
      v49 = *(v10 + 24);
      v11 = *(v10 + 32);
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v0[34] = v11;
    v26 = v0[18];
    swift_beginAccess();
    if (*(v26 + 144))
    {
      v27 = *(v26 + 136);
      v28 = *(v26 + 144);
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    v0[35] = v28;
    v29 = v0[18];
    swift_beginAccess();
    if (*(v29 + 160))
    {
      v30 = *(v29 + 152);
      v31 = *(v29 + 160);
    }

    else
    {
      v31 = 0xE000000000000000;
    }

    v0[36] = v31;
    v32 = v0[18];

    sub_20D89301C();
    v0[37] = v33;
    v34 = *(MEMORY[0x277D07658] + 4);
    v48 = *MEMORY[0x277D07658] + MEMORY[0x277D07658];
    v35 = swift_task_alloc();
    v0[38] = v35;
    *v35 = v0;
    v35[1] = sub_20D89A67C;
    v36 = v0[25];
    v37 = v0[14];
    v38 = v0[15];
    v52 = v0[16];
    v53 = v0[17];

    __asm { BR              X8 }
  }

  v12 = v0[26];

  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v13 = v0[30];
  v14 = sub_20D9734F8();
  __swift_project_value_buffer(v14, qword_27C840CF8);

  v15 = sub_20D9734D8();
  v16 = sub_20D975458();

  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[30];
  if (v17)
  {
    v19 = v0[29];
    v21 = v0[24];
    v20 = v0[25];
    v22 = v0[23];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v54 = v24;
    *v23 = 136315138;
    v25 = sub_20D7F4DC8(v19, v18, &v54);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_20D7C9000, v15, v16, "Error fetching Energy Site for %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x20F324260](v24, -1, -1);
    MEMORY[0x20F324260](v23, -1, -1);

    (*(v21 + 8))(v20, v22);
  }

  else
  {
    v40 = v0[24];
    v39 = v0[25];
    v41 = v0[23];
    v42 = v0[30];

    (*(v40 + 8))(v39, v41);
  }

  v43 = v0[25];
  v44 = v0[21];
  v45 = v0[22];

  v46 = v0[1];

  return v46(0);
}

uint64_t sub_20D89A67C(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *(*v2 + 296);
  v7 = *v2;
  *(v4 + 320) = a1;
  v4[39] = v1;

  v8 = v3[36];
  v9 = v3[35];
  v10 = v3[34];

  v11 = v4[27];
  v12 = v4[28];
  if (v1)
  {
    v13 = sub_20D89AA28;
  }

  else
  {
    v13 = sub_20D89A83C;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_20D89A83C()
{
  v24 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 208);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = (v0 + 320);
    v6 = *(v0 + 320);
    v7 = *(v0 + 256);
    v8 = *(v0 + 192);
    v22 = *(v0 + 200);
    v9 = *(v0 + 184);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D987DC0, &v23);
    *(v10 + 12) = 1024;
    *(v10 + 14) = v6;
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s Created utility subscription: %{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);

    (*(v8 + 8))(v22, v9);
  }

  else
  {
    v12 = *(v0 + 256);
    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v15 = *(v0 + 184);

    (*(v14 + 8))(v13, v15);
    v5 = (v0 + 320);
  }

  v16 = *v5;
  v17 = *(v0 + 200);
  v19 = *(v0 + 168);
  v18 = *(v0 + 176);

  v20 = *(v0 + 8);

  return v20(v16);
}

uint64_t sub_20D89AA28()
{
  v1 = v0[32];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v7 = v0[21];
  v6 = v0[22];

  (*(v5 + 8))(v3, v4);

  v8 = v0[1];
  v9 = v0[39];

  return v8(0);
}

uint64_t static OnboardingContext.utilityInformation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_20D89AB08, 0, 0);
}

uint64_t sub_20D89AB08()
{
  sub_20D973328();
  v1 = sub_20D9732F8();
  v0[5] = v1;
  v2 = *(MEMORY[0x277D18270] + 4);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_20D89ABBC;
  v5 = v0[3];
  v4 = v0[4];

  return MEMORY[0x282172650](v5, v4, v1);
}

uint64_t sub_20D89ABBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_20D89AD70;
  }

  else
  {

    v5 = sub_20D89ACD8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20D89ACD8()
{
  v11 = v0;
  v1 = v0[7];
  if (v1)
  {
    UtilityConfigurationHelper.init(config:)(v1, &v8);
    v2 = v8;
    v3 = v9;
    v4 = v10;
  }

  else
  {
    v2 = 0;
    v4 = 0;
    v3 = 0uLL;
  }

  v5 = v0[2];
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 24) = v4;
  v6 = v0[1];

  return v6();
}

uint64_t sub_20D89AD70()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_20D89ADF4()
{
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EE0, &qword_20D97AC88);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EE8, &qword_20D97AC90);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  v5 = *(MEMORY[0x277D858E8] + 4);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_20D89AF10;

  return MEMORY[0x282200600](v0 + 2, v2, v3, 0, 0, &unk_20D97ACA0, v4, v2);
}

uint64_t sub_20D89AF10()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20D89B028, 0, 0);
}

uint64_t sub_20D89B040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EE0, &qword_20D97AC88);
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for ElectricUtility();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F20, &qword_20D97AE90) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F28, &unk_20D97AE98);
  v3[20] = v11;
  v12 = *(v11 - 8);
  v3[21] = v12;
  v13 = *(v12 + 64) + 15;
  v3[22] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400) - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D89B25C, 0, 0);
}

uint64_t sub_20D89B25C()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v34 = **(v0 + 80);
    v3 = sub_20D975318();
    v4 = *(v3 - 8);
    v33 = *(v4 + 56);
    v31 = v3;
    v32 = (v4 + 48);
    v30 = (v4 + 8);
    v5 = (v1 + 40);
    do
    {
      v35 = v2;
      v10 = *(v0 + 184);
      v9 = *(v0 + 192);
      v11 = *(v5 - 1);
      v12 = *v5;
      v33(v9, 1, 1, v3);
      v13 = swift_allocObject();
      v13[2] = 0;
      v14 = v13 + 2;
      v13[3] = 0;
      v13[4] = v11;
      v13[5] = v12;
      sub_20D7EB7E8(v9, v10, &unk_27C839F30, &qword_20D978400);
      LODWORD(v10) = (*v32)(v10, 1, v3);

      v15 = *(v0 + 184);
      if (v10 == 1)
      {
        sub_20D7E3944(*(v0 + 184), &unk_27C839F30, &qword_20D978400);
        if (*v14)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_20D975308();
        (*v30)(v15, v3);
        if (*v14)
        {
LABEL_9:
          v18 = v13[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v16 = sub_20D975298();
          v17 = v19;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v16 = 0;
      v17 = 0;
LABEL_10:
      v20 = swift_allocObject();
      *(v20 + 16) = &unk_20D97AEB8;
      *(v20 + 24) = v13;

      if (v17 | v16)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v17;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 192);
      v8 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v34;
      swift_task_create();

      sub_20D7E3944(v7, &unk_27C839F30, &qword_20D978400);
      v5 += 2;
      v2 = v35 - 1;
      v3 = v31;
    }

    while (v35 != 1);
  }

  v21 = *(v0 + 176);
  v22 = *(v0 + 96);
  v23 = **(v0 + 80);
  sub_20D9752A8();
  *(v0 + 200) = MEMORY[0x277D84F90];
  v24 = *(MEMORY[0x277D856B0] + 4);
  v25 = swift_task_alloc();
  *(v0 + 208) = v25;
  *v25 = v0;
  v25[1] = sub_20D89B5A8;
  v26 = *(v0 + 176);
  v27 = *(v0 + 152);
  v28 = *(v0 + 160);

  return MEMORY[0x2822002E8](v27, 0, 0, v28);
}

uint64_t sub_20D89B5A8()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20D89B6A4, 0, 0);
}

uint64_t sub_20D89B6A4()
{
  v1 = v0[19];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    v2 = v0[24];
    v3 = v0[25];
    v4 = v0[23];
    v6 = v0[17];
    v5 = v0[18];
    v7 = v0[14];
    v8 = v0[9];
    (*(v0[21] + 8))(v0[22], v0[20]);
    *v8 = v3;

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[15];
    v12 = v0[16];
    v13 = v0[14];
    sub_20D8A0878(v1, v13);
    if ((*(v12 + 48))(v13, 1, v11) == 1)
    {
      sub_20D7E3944(v0[14], &qword_27C839EE0, &qword_20D97AC88);
    }

    else
    {
      v14 = v0[25];
      v16 = v0[17];
      v15 = v0[18];
      sub_20D8A069C(v0[14], v15);
      sub_20D8A05DC(v15, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v0[25];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_20D8D45F8(0, v18[2] + 1, 1, v0[25]);
      }

      v20 = v18[2];
      v19 = v18[3];
      if (v20 >= v19 >> 1)
      {
        v18 = sub_20D8D45F8(v19 > 1, v20 + 1, 1, v18);
      }

      v21 = v0[17];
      v22 = v0[16];
      sub_20D8A0640(v0[18]);
      v18[2] = v20 + 1;
      sub_20D8A069C(v21, v18 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v20);
      v0[25] = v18;
    }

    v23 = *(MEMORY[0x277D856B0] + 4);
    v24 = swift_task_alloc();
    v0[26] = v24;
    *v24 = v0;
    v24[1] = sub_20D89B5A8;
    v25 = v0[22];
    v26 = v0[19];
    v27 = v0[20];

    return MEMORY[0x2822002E8](v26, 0, 0, v27);
  }
}

uint64_t sub_20D89B940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_20D9721C8();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = type metadata accessor for ElectricUtility();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838B78, &qword_20D97A5A0) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D89BAA4, 0, 0);
}

uint64_t sub_20D89BAA4()
{
  sub_20D973328();
  v1 = sub_20D9732F8();
  v0[13] = v1;
  v2 = *(MEMORY[0x277D18270] + 4);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_20D89BB58;
  v5 = v0[3];
  v4 = v0[4];

  return MEMORY[0x282172650](v5, v4, v1);
}

uint64_t sub_20D89BB58(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *v2;
  *(*v2 + 120) = a1;

  v6 = *(v3 + 104);
  if (v1)
  {

    v7 = sub_20D89C4F4;
  }

  else
  {

    v7 = sub_20D89BCA0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20D89BCA0()
{
  v47 = v0;
  v1 = v0[15];
  if (!v1)
  {
    (*(v0[9] + 56))(v0[2], 1, 1, v0[8]);
LABEL_8:
    v29 = v0[11];
    v28 = v0[12];
    v30 = v0[10];
    v31 = v0[7];

    v32 = v0[1];

    return v32();
  }

  v2 = v0[12];
  v3 = v0[15];
  v4 = sub_20D9731A8();
  v5 = sub_20D973168();

  sub_20D9732E8();
  sub_20D9721B8();

  v6 = sub_20D9731D8();
  if (v7)
  {
    v8 = v7;
    v41 = v6;
  }

  else
  {
    v41 = sub_20D9731B8();
    v8 = v9;
  }

  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[8];
  v13 = v0[6];
  v42 = v0[11];
  v43 = v0[5];
  v39 = v0[3];
  v40 = v0[4];
  v14 = sub_20D9731B8();
  v16 = v15;
  sub_20D7EB7E8(v10, v11 + *(v12 + 32), &qword_27C838B78, &qword_20D97A5A0);
  v17 = v1;
  UtilityConfigurationHelper.init(config:)(v17, &v44);
  v18 = v44;
  v19 = v46;
  *v11 = v39;
  v11[1] = v40;
  v11[2] = v41;
  v11[3] = v8;
  v11[4] = v14;
  v11[5] = v16;
  v11[6] = 0;
  v20 = v11 + *(v12 + 36);
  *v20 = v18;
  *(v20 + 8) = v45;
  *(v20 + 3) = v19;
  sub_20D7EB7E8(v10, v42, &qword_27C838B78, &qword_20D97A5A0);
  if ((*(v13 + 48))(v42, 1, v43) == 1)
  {
    v22 = v0[11];
    v21 = v0[12];
    v23 = v0[4];

    sub_20D7E3944(v21, &qword_27C838B78, &qword_20D97A5A0);

    sub_20D7E3944(v22, &qword_27C838B78, &qword_20D97A5A0);
    v25 = v0[9];
    v24 = v0[10];
    v26 = v0[8];
    v27 = v0[2];
    sub_20D8A05DC(v24, v27);
    (*(v25 + 56))(v27, 0, 1, v26);
    sub_20D8A0640(v24);
    goto LABEL_8;
  }

  v34 = v0[4];
  (*(v0[6] + 32))(v0[7], v0[11], v0[5]);
  v35 = objc_opt_self();

  v0[16] = [v35 sharedSession];
  v36 = *(MEMORY[0x277CC9D20] + 4);
  v37 = swift_task_alloc();
  v0[17] = v37;
  *v37 = v0;
  v37[1] = sub_20D89C008;
  v38 = v0[7];

  return MEMORY[0x28211ED00](v38, 0);
}

uint64_t sub_20D89C008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 136);
  v8 = *v4;
  v6[18] = a1;
  v6[19] = a2;
  v6[20] = a3;

  v9 = v5[16];
  if (v3)
  {

    v10 = sub_20D89C59C;
  }

  else
  {

    v10 = sub_20D89C154;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_20D89C154()
{
  v47 = v0;
  v2 = v0[18];
  v1 = v0[19];
  sub_20D8A08E8(v2, v1);
  v3 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v4 = sub_20D9721D8();
  v5 = [v3 initWithData_];

  sub_20D84D374(v2, v1);
  if (v5)
  {
    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v6 = v0[15];
    v7 = sub_20D9734F8();
    __swift_project_value_buffer(v7, qword_27C840CF8);
    v8 = v6;
    v9 = sub_20D9734D8();
    v10 = sub_20D975478();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[20];
    v13 = v0[18];
    v44 = v13;
    v45 = v0[19];
    v14 = v0[15];
    v15 = v0[12];
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];
    if (v11)
    {
      v43 = v0[12];
      v19 = swift_slowAlloc();
      v42 = v16;
      v20 = swift_slowAlloc();
      v46 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D987F60, &v46);
      *(v19 + 12) = 2080;
      v21 = sub_20D9731B8();
      v41 = v12;
      v23 = sub_20D7F4DC8(v21, v22, &v46);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_20D7C9000, v9, v10, "%s Fetched logo for %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v20, -1, -1);
      MEMORY[0x20F324260](v19, -1, -1);

      sub_20D84D374(v44, v45);
      (*(v17 + 8))(v42, v18);
      v24 = v43;
    }

    else
    {

      sub_20D84D374(v44, v45);
      (*(v17 + 8))(v16, v18);
      v24 = v15;
    }

    sub_20D7E3944(v24, &qword_27C838B78, &qword_20D97A5A0);
    *(v0[10] + 48) = v5;
  }

  else
  {
    v25 = v0[20];
    v26 = v0[15];
    v27 = v0[12];
    v29 = v0[6];
    v28 = v0[7];
    v30 = v0[5];
    sub_20D84D374(v0[18], v0[19]);

    (*(v29 + 8))(v28, v30);
    sub_20D7E3944(v27, &qword_27C838B78, &qword_20D97A5A0);
  }

  v32 = v0[9];
  v31 = v0[10];
  v33 = v0[8];
  v34 = v0[2];
  sub_20D8A05DC(v31, v34);
  (*(v32 + 56))(v34, 0, 1, v33);
  sub_20D8A0640(v31);
  v36 = v0[11];
  v35 = v0[12];
  v37 = v0[10];
  v38 = v0[7];

  v39 = v0[1];

  return v39();
}

uint64_t sub_20D89C4F4()
{
  (*(v0[9] + 56))(v0[2], 1, 1, v0[8]);
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_20D89C59C()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);

  (*(v3 + 8))(v2, v4);
  sub_20D7E3944(v1, &qword_27C838B78, &qword_20D97A5A0);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);
  sub_20D8A05DC(v5, v8);
  (*(v6 + 56))(v8, 0, 1, v7);
  sub_20D8A0640(v5);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 80);
  v12 = *(v0 + 56);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t OnboardingContext.sort(foundUtilities:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = sub_20D9752E8();
  v2[9] = sub_20D9752D8();

  return MEMORY[0x2822009F8](sub_20D89C724, 0, 0);
}

uint64_t sub_20D89C724()
{
  v1 = v0[6];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EE0, &qword_20D97AC88);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EE8, &qword_20D97AC90);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v1;
  v5 = *(MEMORY[0x277D858E8] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_20D89C840;

  return MEMORY[0x282200600](v0 + 5, v2, v3, 0, 0, &unk_20D97ACB0, v4, v2);
}

uint64_t sub_20D89C840()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_20D89C958, 0, 0);
}

uint64_t sub_20D89C958()
{
  v1 = v0[8];
  v2 = v0[9];
  v0[12] = v0[5];
  v4 = sub_20D975298();

  return MEMORY[0x2822009F8](sub_20D89C9D8, v4, v3);
}

uint64_t sub_20D89C9D8()
{
  v18 = v0;
  v17[0] = *(v0 + 96);

  sub_20D89D898(v17);
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  v3 = v17[0];
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v4 = sub_20D9734F8();
  __swift_project_value_buffer(v4, qword_27C840CF8);

  v5 = sub_20D9734D8();
  v6 = sub_20D975478();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000015, 0x800000020D987DF0, v17);
    *(v7 + 12) = 2080;
    v9 = type metadata accessor for ElectricUtility();
    v10 = MEMORY[0x20F323400](v3, v9);
    v12 = sub_20D7F4DC8(v10, v11, v17);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s Sorted utility list %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  v13 = *(v0 + 56);
  swift_beginAccess();
  v14 = *(v13 + 72);
  *(v13 + 72) = v3;

  v15 = *(v0 + 8);

  return v15();
}

HomeEnergyUI::OnboardingContextError_optional __swiftcall OnboardingContextError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_20D89CC60@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_20D89CC80(uint64_t a1, uint64_t a2)
{
  v4 = sub_20D8A0588();
  v5 = sub_20D7DDF10();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t sub_20D89CCF0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_20D973158();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_20D8A093C(&qword_27C839F40, MEMORY[0x277D180E0]);
  v36 = a2;
  v13 = sub_20D974F78();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_20D8A093C(&qword_27C839F48, MEMORY[0x277D180E0]);
      v23 = sub_20D974FD8();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_20D96F9F0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_20D89CFD0(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_20D975888();
  MEMORY[0x20F323A50](a2);
  v7 = sub_20D9758A8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_20D96FC94(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_20D89D0C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_20D975888();
  sub_20D975158();
  v9 = sub_20D9758A8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_20D9757C8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_20D96FDE0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_20D89D218(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_20D975878();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_20D96FF60(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_20D89D2F8(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

void *sub_20D89D35C(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

uint64_t sub_20D89D3BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_20D975888();
  sub_20D975158();
  v7 = sub_20D9758A8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_20D9757C8() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_20D9703F8();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_20D89D4F8(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_20D89D4F8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_20D9755F8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_20D975888();

        sub_20D975158();
        v15 = sub_20D9758A8();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_20D89D6BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v22 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v22 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v22);
          ++v11;
        }

        while (!v7);
        v11 = v22;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a1 + 40);
      sub_20D975888();

      sub_20D975158();
      v16 = sub_20D9758A8();
      v17 = -1 << *(a1 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v19 = ~v17;
      while (1)
      {
        v20 = (*(a1 + 48) + 16 * v18);
        v21 = *v20 == v14 && v20[1] == v13;
        if (v21 || (sub_20D9757C8() & 1) != 0)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t sub_20D89D898(void **a1)
{
  v2 = *(type metadata accessor for ElectricUtility() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20D9562BC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20D89D940(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20D89D940(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20D975798();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ElectricUtility();
        v6 = sub_20D975268();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ElectricUtility() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20D89DC9C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20D89DA6C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20D89DA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v41 = type metadata accessor for ElectricUtility();
  v8 = *(*(v41 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *(v16 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v36 = *a4;
    v30 = v19;
    v23 = v36 + v19 * a3;
LABEL_5:
    v34 = v20;
    v35 = a3;
    v32 = v23;
    v33 = v22;
    v24 = v22;
    while (1)
    {
      sub_20D8A05DC(v23, v18);
      sub_20D8A05DC(v20, v14);
      v25 = *(v18 + 3);
      v39 = *(v18 + 2);
      v40 = v25;
      v26 = *(v14 + 3);
      v37 = *(v14 + 2);
      v38 = v26;
      sub_20D7E1EF8();
      v27 = sub_20D975558();
      sub_20D8A0640(v14);
      result = sub_20D8A0640(v18);
      if (v27 != -1)
      {
LABEL_4:
        a3 = v35 + 1;
        v20 = v34 + v30;
        v22 = v33 - 1;
        v23 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_20D8A069C(v23, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_20D8A069C(v11, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20D89DC9C(int64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v121 = type metadata accessor for ElectricUtility();
  v116 = *(v121 - 8);
  v9 = *(v116 + 64);
  v10 = MEMORY[0x28223BE20](v121);
  v111 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v120 = &v106 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v106 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v106 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    v109 = a4;
    while (1)
    {
      v23 = v21;
      v24 = v21 + 1;
      v113 = v22;
      if (v24 >= v20)
      {
        v31 = v24;
      }

      else
      {
        v119 = v20;
        v108 = v6;
        v25 = *v118;
        v26 = *(v116 + 72);
        v5 = *v118 + v26 * v24;
        sub_20D8A05DC(v5, v19);
        sub_20D8A05DC(v25 + v26 * v23, v16);
        v27 = *(v19 + 3);
        v124 = *(v19 + 2);
        v125 = v27;
        v28 = *(v16 + 3);
        v122 = *(v16 + 2);
        v123 = v28;
        sub_20D7E1EF8();
        v117 = sub_20D975558();
        sub_20D8A0640(v16);
        result = sub_20D8A0640(v19);
        v107 = v23;
        v29 = v23 + 2;
        v30 = v25 + v26 * (v23 + 2);
        while (1)
        {
          v31 = v119;
          if (v119 == v29)
          {
            break;
          }

          v32 = v117 == -1;
          sub_20D8A05DC(v30, v19);
          sub_20D8A05DC(v5, v16);
          v33 = *(v19 + 3);
          v124 = *(v19 + 2);
          v125 = v33;
          v34 = *(v16 + 3);
          v122 = *(v16 + 2);
          v123 = v34;
          v35 = sub_20D975558();
          sub_20D8A0640(v16);
          result = sub_20D8A0640(v19);
          ++v29;
          v30 += v26;
          v5 += v26;
          if (((v32 ^ (v35 != -1)) & 1) == 0)
          {
            v31 = v29 - 1;
            break;
          }
        }

        v6 = v108;
        a4 = v109;
        v23 = v107;
        if (v117 == -1)
        {
          if (v31 < v107)
          {
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
            return result;
          }

          if (v107 < v31)
          {
            v36 = v31;
            v37 = v26 * (v31 - 1);
            v5 = v31 * v26;
            v119 = v31;
            v38 = v107;
            v39 = v107 * v26;
            v115 = v26;
            do
            {
              if (v38 != --v36)
              {
                v40 = *v118;
                if (!*v118)
                {
                  goto LABEL_134;
                }

                sub_20D8A069C(v40 + v39, v111);
                if (v39 < v37 || v40 + v39 >= (v40 + v5))
                {
                  swift_arrayInitWithTakeFrontToBack();
                  v26 = v115;
                }

                else
                {
                  v26 = v115;
                  if (v39 != v37)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                result = sub_20D8A069C(v111, v40 + v37);
              }

              ++v38;
              v37 -= v26;
              v5 -= v26;
              v39 += v26;
            }

            while (v38 < v36);
            v6 = v108;
            a4 = v109;
            v23 = v107;
            v31 = v119;
          }
        }
      }

      v41 = v118[1];
      if (v31 >= v41)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v31, v23))
      {
        goto LABEL_126;
      }

      if (v31 - v23 >= a4)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v23, a4))
      {
        goto LABEL_127;
      }

      if ((v23 + a4) >= v41)
      {
        v5 = v118[1];
      }

      else
      {
        v5 = v23 + a4;
      }

      if (v5 < v23)
      {
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (v31 == v5)
      {
LABEL_32:
        v5 = v31;
        if (v31 < v23)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v107 = v23;
        v108 = v6;
        v88 = *v118;
        v89 = *(v116 + 72);
        v90 = *v118 + v89 * (v31 - 1);
        v91 = -v89;
        v92 = v23 - v31;
        v112 = v89;
        v93 = v88 + v31 * v89;
        v114 = v5;
        do
        {
          v119 = v31;
          a4 = v93;
          v115 = v92;
          v117 = v90;
          v94 = v90;
          do
          {
            sub_20D8A05DC(a4, v19);
            sub_20D8A05DC(v94, v16);
            v95 = *(v19 + 3);
            v124 = *(v19 + 2);
            v125 = v95;
            v96 = *(v16 + 3);
            v122 = *(v16 + 2);
            v123 = v96;
            sub_20D7E1EF8();
            v97 = sub_20D975558();
            sub_20D8A0640(v16);
            result = sub_20D8A0640(v19);
            if (v97 != -1)
            {
              break;
            }

            if (!v88)
            {
              goto LABEL_131;
            }

            v98 = v120;
            sub_20D8A069C(a4, v120);
            swift_arrayInitWithTakeFrontToBack();
            sub_20D8A069C(v98, v94);
            v94 += v91;
            a4 += v91;
          }

          while (!__CFADD__(v92++, 1));
          v31 = v119 + 1;
          v90 = v117 + v112;
          v5 = v114;
          v92 = v115 - 1;
          v93 += v112;
        }

        while (v119 + 1 != v114);
        v23 = v107;
        v6 = v108;
        if (v114 < v107)
        {
          goto LABEL_125;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v22 = v113;
      }

      else
      {
        result = sub_20D8D42B4(0, *(v113 + 2) + 1, 1, v113);
        v22 = result;
      }

      a4 = *(v22 + 2);
      v42 = *(v22 + 3);
      v43 = a4 + 1;
      if (a4 >= v42 >> 1)
      {
        result = sub_20D8D42B4((v42 > 1), a4 + 1, 1, v22);
        v22 = result;
      }

      *(v22 + 2) = v43;
      v44 = &v22[16 * a4];
      *(v44 + 4) = v23;
      *(v44 + 5) = v5;
      v45 = *v110;
      if (!*v110)
      {
        goto LABEL_135;
      }

      v114 = v5;
      if (a4)
      {
        v46 = v45;
        while (1)
        {
          v5 = v43 - 1;
          if (v43 >= 4)
          {
            break;
          }

          if (v43 == 3)
          {
            v47 = *(v22 + 4);
            v48 = *(v22 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_53:
            if (v50)
            {
              goto LABEL_114;
            }

            v63 = &v22[16 * v43];
            v65 = *v63;
            v64 = *(v63 + 1);
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_117;
            }

            v69 = &v22[16 * v5 + 32];
            v71 = *v69;
            v70 = *(v69 + 1);
            v57 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v57)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v67, v72))
            {
              goto LABEL_121;
            }

            if (v67 + v72 >= v49)
            {
              if (v49 < v72)
              {
                v5 = v43 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          v73 = &v22[16 * v43];
          v75 = *v73;
          v74 = *(v73 + 1);
          v57 = __OFSUB__(v74, v75);
          v67 = v74 - v75;
          v68 = v57;
LABEL_67:
          if (v68)
          {
            goto LABEL_116;
          }

          v76 = &v22[16 * v5];
          v78 = *(v76 + 4);
          v77 = *(v76 + 5);
          v57 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v57)
          {
            goto LABEL_119;
          }

          if (v79 < v67)
          {
            goto LABEL_3;
          }

LABEL_74:
          a4 = v5 - 1;
          if (v5 - 1 >= v43)
          {
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
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (!*v118)
          {
            goto LABEL_132;
          }

          v84 = v22;
          v85 = *&v22[16 * a4 + 32];
          v86 = *&v22[16 * v5 + 40];
          sub_20D89E558(*v118 + *(v116 + 72) * v85, *v118 + *(v116 + 72) * *&v22[16 * v5 + 32], *v118 + *(v116 + 72) * v86, v46);
          if (v6)
          {
          }

          if (v86 < v85)
          {
            goto LABEL_110;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v84 = sub_20D9560B0(v84);
          }

          if (a4 >= *(v84 + 2))
          {
            goto LABEL_111;
          }

          v87 = &v84[16 * a4];
          *(v87 + 4) = v85;
          *(v87 + 5) = v86;
          v126 = v84;
          result = sub_20D956024(v5);
          v22 = v126;
          v43 = *(v126 + 16);
          if (v43 <= 1)
          {
            goto LABEL_3;
          }
        }

        v51 = &v22[16 * v43 + 32];
        v52 = *(v51 - 64);
        v53 = *(v51 - 56);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_112;
        }

        v56 = *(v51 - 48);
        v55 = *(v51 - 40);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_113;
        }

        v58 = &v22[16 * v43];
        v60 = *v58;
        v59 = *(v58 + 1);
        v57 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v57)
        {
          goto LABEL_115;
        }

        v57 = __OFADD__(v49, v61);
        v62 = v49 + v61;
        if (v57)
        {
          goto LABEL_118;
        }

        if (v62 >= v54)
        {
          v80 = &v22[16 * v5 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v57 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v57)
          {
            goto LABEL_122;
          }

          if (v49 < v83)
          {
            v5 = v43 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_53;
      }

LABEL_3:
      v20 = v118[1];
      v21 = v114;
      a4 = v109;
      if (v114 >= v20)
      {
        goto LABEL_96;
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_96:
  v5 = *v110;
  if (!*v110)
  {
    goto LABEL_136;
  }

  a4 = v22;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    result = a4;
  }

  else
  {
LABEL_129:
    result = sub_20D9560B0(a4);
  }

  v126 = result;
  v100 = *(result + 16);
  if (v100 >= 2)
  {
    v101 = v116;
    while (*v118)
    {
      a4 = v100 - 1;
      v102 = *(result + 16 * v100);
      v103 = result;
      v104 = *(result + 16 * (v100 - 1) + 40);
      sub_20D89E558(*v118 + *(v101 + 72) * v102, *v118 + *(v101 + 72) * *(result + 16 * (v100 - 1) + 32), *v118 + *(v101 + 72) * v104, v5);
      if (v6)
      {
      }

      if (v104 < v102)
      {
        goto LABEL_123;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_20D9560B0(v103);
      }

      if (v100 - 2 >= *(v103 + 2))
      {
        goto LABEL_124;
      }

      v105 = &v103[16 * v100];
      *v105 = v102;
      *(v105 + 1) = v104;
      v126 = v103;
      sub_20D956024(a4);
      result = v126;
      v100 = *(v126 + 16);
      if (v100 <= 1)
      {
      }
    }

    goto LABEL_133;
  }
}

uint64_t sub_20D89E558(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = a4;
  v47 = type metadata accessor for ElectricUtility();
  v7 = *(*(v47 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v47);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v41 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v15 != -1)
  {
    v17 = (a2 - a1) / v15;
    v54 = a1;
    v18 = v46;
    v53 = v46;
    if (v17 < v16 / v15)
    {
      v19 = v17 * v15;
      if (v46 < a1 || a1 + v19 <= v46)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v46 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v18 = v46;
LABEL_17:
      v21 = v18 + v19;
      v52 = v18 + v19;
      if (v19 >= 1 && a2 < a3)
      {
        do
        {
          sub_20D8A05DC(a2, v13);
          sub_20D8A05DC(v18, v10);
          v23 = *(v13 + 3);
          v50 = *(v13 + 2);
          v51 = v23;
          v24 = *(v10 + 3);
          v48 = *(v10 + 2);
          v49 = v24;
          sub_20D7E1EF8();
          v25 = sub_20D975558();
          sub_20D8A0640(v10);
          sub_20D8A0640(v13);
          if (v25 == -1)
          {
            if (a1 < a2 || a1 >= a2 + v15)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v15;
          }

          else
          {
            if (a1 < v18 || a1 >= v18 + v15)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v53 = v18 + v15;
            v18 += v15;
          }

          a1 += v15;
          v54 = a1;
        }

        while (v18 < v21 && a2 < a3);
      }

LABEL_59:
      sub_20D9560DC(&v54, &v53, &v52);
      return 1;
    }

    v20 = v16 / v15 * v15;
    v45 = v10;
    if (v46 < a2 || a2 + v20 <= v46)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v46 == a2)
      {
LABEL_39:
        v26 = v18 + v20;
        if (v20 >= 1)
        {
          v27 = -v15;
          v28 = v18 + v20;
          v29 = a3;
          v42 = v27;
          v43 = a1;
          do
          {
            v41 = v26;
            v30 = a2 + v27;
            v44 = a2;
            while (1)
            {
              if (a2 <= a1)
              {
                v54 = a2;
                v52 = v41;
                goto LABEL_59;
              }

              v32 = v29;
              v33 = v29 + v27;
              v34 = v28 + v27;
              sub_20D8A05DC(v34, v13);
              v35 = v13;
              v36 = v45;
              sub_20D8A05DC(v30, v45);
              v37 = *(v35 + 24);
              v50 = *(v35 + 16);
              v51 = v37;
              v38 = *(v36 + 24);
              v48 = *(v36 + 16);
              v49 = v38;
              sub_20D7E1EF8();
              v39 = sub_20D975558();
              v40 = v36;
              v13 = v35;
              sub_20D8A0640(v40);
              sub_20D8A0640(v35);
              if (v39 == -1)
              {
                break;
              }

              v26 = v34;
              v29 = v33;
              if (v32 < v28 || v33 >= v28)
              {
                swift_arrayInitWithTakeFrontToBack();
                a1 = v43;
              }

              else
              {
                a1 = v43;
                if (v32 != v28)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v28 = v34;
              v31 = v34 > v46;
              v27 = v42;
              a2 = v44;
              if (!v31)
              {
                goto LABEL_57;
              }
            }

            v29 = v33;
            if (v32 < v44 || v33 >= v44)
            {
              a2 = v30;
              swift_arrayInitWithTakeFrontToBack();
              v27 = v42;
              a1 = v43;
            }

            else
            {
              a2 = v30;
              v27 = v42;
              a1 = v43;
              if (v32 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }
          }

          while (v28 > v46);
        }

LABEL_57:
        v54 = a2;
        v52 = v26;
        goto LABEL_59;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v18 = v46;
    goto LABEL_39;
  }

LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_20D89EA1C(uint64_t a1)
{
  v1 = MEMORY[0x277D84FA0];
  v45 = MEMORY[0x277D84FA0];
  v2 = *(a1 + 16);
  if (v2)
  {
    v40 = *MEMORY[0x277CBD0C8];
    v41 = *MEMORY[0x277CBCFC0];
    v42 = *MEMORY[0x277CBD098];
    v3 = *MEMORY[0x277CBD000];
    v4 = (a1 + 56);
    v5 = *MEMORY[0x277CBCFF8];
    while (1)
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = v6 == 1701667150 && v7 == 0xE400000000000000;
      if (v8 || (v9 = *(v4 - 1), v10 = *v4, (sub_20D9757C8() & 1) != 0) || (v6 == 0x6D614E7473726946 ? (v11 = v7 == 0xE900000000000065) : (v11 = 0), v11 || (sub_20D9757C8() & 1) != 0 || v6 == 0x656D614E7473614CLL && v7 == 0xE800000000000000 || (sub_20D9757C8() & 1) != 0))
      {
        v12 = sub_20D975098();
        sub_20D89D0C8(&v44, v12, v13);
      }

      else if ((v6 != 0x656E6F6850 || v7 != 0xE500000000000000) && (sub_20D9757C8() & 1) == 0 && (v6 != 0x6C69616D45 || v7 != 0xE500000000000000) && (sub_20D9757C8() & 1) == 0 && (v6 != 0x4C73736572646441 || v7 != 0xEC00000031656E69))
      {
        v16 = sub_20D9757C8();
        v17 = v6 == 2037672259 && v7 == 0xE400000000000000;
        v18 = v17;
        if ((v16 & 1) == 0 && !v18)
        {
          v19 = sub_20D9757C8();
          v20 = v6 == 0x6574617453 && v7 == 0xE500000000000000;
          v21 = v20;
          if ((v19 & 1) == 0 && !v21 && (sub_20D9757C8() & 1) == 0 && (v6 != 0x6F436C6174736F50 || v7 != 0xEA00000000006564) && (sub_20D9757C8() & 1) == 0 && (v6 != 0x7972746E756F43 || v7 != 0xE700000000000000) && (sub_20D9757C8() & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      v14 = sub_20D975098();
      sub_20D89D0C8(&v44, v14, v15);

LABEL_18:
      v4 += 5;
      if (!--v2)
      {
        v1 = v45;
        break;
      }
    }
  }

  v22 = *(v1 + 16);
  if (v22)
  {
    v23 = sub_20D815C94(*(v1 + 16), 0);
    v24 = sub_20D8177F0(&v44, v23 + 4, v22, v1);
    sub_20D817AE4();
    if (v24 == v22)
    {
      goto LABEL_59;
    }

    __break(1u);
  }

  v23 = MEMORY[0x277D84F90];
LABEL_59:
  v44 = MEMORY[0x277D84F90];
  v25 = sub_20D9679F4(v23);

  sub_20D95AFAC(v25);
  v26 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  MEMORY[0x20F3233D0]();
  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v39 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_20D975258();
  }

  sub_20D975278();
  v27 = v44;
  if (qword_27C838488 != -1)
  {
    swift_once();
  }

  v28 = sub_20D9734F8();
  __swift_project_value_buffer(v28, qword_27C840CF8);
  v29 = sub_20D9734D8();
  v30 = sub_20D975478();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_20D7F4DC8(0xD000000000000018, 0x800000020D987FC0, &v43);
    *(v31 + 12) = 2080;

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83C7D0, &qword_20D97AC00);
    v34 = MEMORY[0x20F323400](v27, v33);
    v36 = v35;

    v37 = sub_20D7F4DC8(v34, v36, &v43);

    *(v31 + 14) = v37;
    _os_log_impl(&dword_20D7C9000, v29, v30, "%s Contact keys: %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v32, -1, -1);
    MEMORY[0x20F324260](v31, -1, -1);
  }

  return v27;
}

uint64_t sub_20D89F098(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839268, &qword_20D978090);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v27 - v10;
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v28[0] = a3;
    v28[1] = a4;
    v27[0] = a1;
    v27[1] = a2;
    v13 = sub_20D9726E8();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    sub_20D7E1EF8();
    v14 = sub_20D975568();
    v16 = v15;
    v18 = v17;
    sub_20D7E3944(v11, &qword_27C839268, &qword_20D978090);
    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v19 = (((v14 ^ v16) & 0xFFFFFFFFFFFFC000) != 0) & ~v18;
    v20 = sub_20D9734F8();
    __swift_project_value_buffer(v20, qword_27C840CF8);

    v21 = sub_20D9734D8();
    v22 = sub_20D975478();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_13;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28[0] = v24;
    *v23 = 136315650;
    *(v23 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D987FA0, v28);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_20D7F4DC8(a1, a2, v28);
    *(v23 + 22) = 1024;
  }

  else
  {
    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v25 = sub_20D9734F8();
    __swift_project_value_buffer(v25, qword_27C840CF8);

    v21 = sub_20D9734D8();
    v22 = sub_20D975478();

    if (!os_log_type_enabled(v21, v22))
    {

      return 1;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28[0] = v24;
    *v23 = 136315650;
    *(v23 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D987FA0, v28);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_20D7F4DC8(a1, a2, v28);
    *(v23 + 22) = 1024;
    v19 = 1;
  }

  *(v23 + 24) = v19;
  _os_log_impl(&dword_20D7C9000, v21, v22, "%s Regex pattern: %s Validation: %{BOOL}d", v23, 0x1Cu);
  swift_arrayDestroy();
  MEMORY[0x20F324260](v24, -1, -1);
  MEMORY[0x20F324260](v23, -1, -1);
LABEL_13:

  return v19;
}

uint64_t sub_20D89F454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_20D89F4C4()
{
  result = qword_27C839EB8;
  if (!qword_27C839EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839EB8);
  }

  return result;
}

uint64_t sub_20D89F518()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBDB70]);
  v1 = sub_20D975078();
  v2 = [v0 initWithStringValue_];

  v3 = [v2 fullyQualifiedDigits];
  if (!v3)
  {
    if (qword_27C838488 != -1)
    {
      swift_once();
    }

    v4 = sub_20D9734F8();
    __swift_project_value_buffer(v4, qword_27C840CF8);
    v5 = sub_20D9734D8();
    v6 = sub_20D975478();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D987F80, &v12);
      _os_log_impl(&dword_20D7C9000, v5, v6, "%s could not get fullyQualifiedDigits", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F324260](v8, -1, -1);
      MEMORY[0x20F324260](v7, -1, -1);
    }

    v3 = [v2 digits];
  }

  v9 = v3;
  v10 = sub_20D975098();

  return v10;
}

unint64_t sub_20D89F6F0()
{
  result = qword_27C839EC8;
  if (!qword_27C839EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839EC8);
  }

  return result;
}

uint64_t sub_20D89F744(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v2 = sub_20D8D4A48(0x4C73736572646441, 0xEC00000031656E69);
  if (v3)
  {
    v4 = (*(a1 + 56) + 16 * v2);
    v37 = v4[1];
    v38 = *v4;

    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  else if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v5 = sub_20D8D4A48(0x4C73736572646441, 0xEC00000032656E69);
  if (v6)
  {
    v7 = (*(a1 + 56) + 16 * v5);
    v8 = v7[1];
    v36 = *v7;

    if (*(a1 + 16))
    {
      goto LABEL_6;
    }

LABEL_18:
    if (!*(a1 + 16))
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

LABEL_6:
  v9 = sub_20D8D4A48(0x4C73736572646441, 0xEC00000033656E69);
  if (v10)
  {
    v11 = (*(a1 + 56) + 16 * v9);
    v12 = v11[1];
    v35 = *v11;

    if (!*(a1 + 16))
    {
      goto LABEL_18;
    }
  }

  else if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v13 = sub_20D8D4A48(2037672259, 0xE400000000000000);
  if ((v14 & 1) == 0)
  {
    goto LABEL_18;
  }

  v15 = (*(a1 + 56) + 16 * v13);
  v16 = *v15;
  v17 = v15[1];

  if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

LABEL_19:
  v18 = sub_20D8D4A48(0x6574617453, 0xE500000000000000);
  if (v19)
  {
    v20 = (*(a1 + 56) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];

    if (!*(a1 + 16))
    {
      goto LABEL_29;
    }
  }

  else if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

  v23 = sub_20D8D4A48(0x6F436C6174736F50, 0xEA00000000006564);
  if (v24)
  {
    v25 = (*(a1 + 56) + 16 * v23);
    v27 = *v25;
    v26 = v25[1];

    if (!*(a1 + 16))
    {
      goto LABEL_29;
    }
  }

  else if (!*(a1 + 16))
  {
    goto LABEL_29;
  }

  v28 = sub_20D8D4A48(0x7972746E756F43, 0xE700000000000000);
  if (v29)
  {
    v30 = (*(a1 + 56) + 16 * v28);
    v32 = *v30;
    v31 = v30[1];
  }

LABEL_29:
  v33 = objc_allocWithZone(sub_20D973278());
  return sub_20D973208();
}

uint64_t sub_20D89FA28(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20D805810;

  return sub_20D89B040(a1, a2, v6);
}

unint64_t sub_20D89FADC()
{
  result = qword_27C839EF0;
  if (!qword_27C839EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839EF0);
  }

  return result;
}

uint64_t type metadata accessor for OnboardingContext()
{
  result = qword_27C839F00;
  if (!qword_27C839F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20D89FB84()
{
  sub_20D8A0484();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_20D8A0484()
{
  if (!qword_281126E20)
  {
    sub_20D972628();
    v0 = sub_20D975508();
    if (!v1)
    {
      atomic_store(v0, &qword_281126E20);
    }
  }
}

uint64_t getEnumTagSinglePayload for OnboardingContextError(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_20D8A0588()
{
  result = qword_27C839F10;
  if (!qword_27C839F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839F10);
  }

  return result;
}

uint64_t sub_20D8A05DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElectricUtility();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D8A0640(uint64_t a1)
{
  v2 = type metadata accessor for ElectricUtility();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D8A069C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElectricUtility();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D8A0700(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D7EB52C;

  return sub_20D89B940(a1, v4, v5, v7, v6);
}

uint64_t sub_20D8A07C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20D7EB52C;

  return sub_20D84B000(a1, v5);
}

uint64_t sub_20D8A0878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EE0, &qword_20D97AC88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D8A08E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20D8A093C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static UtilityIntegrationStrings.electricitySurplusTitle.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.electricityUsageTitle.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D9750F8();
}

uint64_t static UtilityIntegrationStrings.aboutElectricityUsage.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.aboutEnergyUsageDescription.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.howElectricityMeasured.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.viewingElectricityUsage.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.viewingElectricityUsageDescription.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.whatImpactsElectricityUsage.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.whatImpactsElectricityUsageDescription.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.highestConsumers.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.electricSystemsBullet.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.electricWaterHeatersBullet.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.evChargingBullet.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.refrigeratorsBullet.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.washersAndDryersBullet.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.lightingBullet.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.ceilingFansBullet.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.toasterOvensBullet.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.ledLighting.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.aboutElectricityRatesTitle.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.aboutElectricityRatesDescription.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.touTitle.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.touDescription.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.tieredPlanDescription.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.tieredPlanSecondDescription.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.fixedPlanDescription.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t sub_20D8A2B68()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.flatPlanDescription.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.unsupportedPlanTitle.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.unsupportedPlanDescription.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t static UtilityIntegrationStrings.electricityRatesTitle.getter()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20D974FE8();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v4 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t _s12HomeEnergyUI25UtilityIntegrationStringsV33howElectricityMeasuredDescriptionSSvgZ_0()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_20D975038();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_20D975028();
  sub_20D975018();
  sub_20D85CBD0();
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t _s12HomeEnergyUI25UtilityIntegrationStringsV20electricityUsageFrom11utilityNameS2S_tFZ_0()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_20D975038();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_20D975028();
  sub_20D975018();
  sub_20D975008();
  sub_20D975018();
  sub_20D85CBD0();
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  sub_20D975578();
  sub_20D975008();

  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t _s12HomeEnergyUI25UtilityIntegrationStringsV17utilityRateFooter0G4NameS2S_tFZ_0()
{
  v0 = sub_20D9726E8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_20D975058();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_20D975038();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_20D975028();
  sub_20D975018();
  sub_20D975008();
  sub_20D975018();
  sub_20D975048();
  if (qword_281126E98 != -1)
  {
    swift_once();
  }

  v6 = qword_28112ABE8;
  sub_20D9726B8();
  return sub_20D975108();
}

uint64_t sub_20D8A392C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_20D972C58();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20D95D484(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_20D95D484(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_20D8A3C64(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(BOOL, uint64_t, uint64_t))
{
  v27 = a7;
  v30 = a6;
  v34 = a1;
  v35 = a2;
  v10 = a4(0);
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v32 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v31 = *(a3 + 16);
  if (v31)
  {
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    v28 = a5;
    v29 = a3;
    while (v17 < *(a3 + 16))
    {
      v19 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v20 = *(v33 + 72);
      sub_20D8AC45C(a3 + v19 + v20 * v17, v16, a5);
      v21 = v34(v16);
      if (v7)
      {
        sub_20D8ACF38(v16, v30);

        goto LABEL_15;
      }

      if (v21)
      {
        sub_20D8AC4C4(v16, v32, a5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27(0, *(v18 + 16) + 1, 1);
          v18 = v36;
        }

        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        if (v24 >= v23 >> 1)
        {
          v27(v23 > 1, v24 + 1, 1);
          v18 = v36;
        }

        *(v18 + 16) = v24 + 1;
        v25 = v18 + v19 + v24 * v20;
        a5 = v28;
        result = sub_20D8AC4C4(v32, v25, v28);
        a3 = v29;
      }

      else
      {
        result = sub_20D8ACF38(v16, v30);
      }

      if (v31 == ++v17)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
LABEL_15:

    return v18;
  }

  return result;
}

uint64_t sub_20D8A3EBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20D974048();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838FA0, &qword_20D977960);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for FeaturedHoursChart(0);
  sub_20D7EB7E8(v1 + *(v12 + 20), v11, &qword_27C838FA0, &qword_20D977960);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20D973D58();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_20D975468();
    v16 = sub_20D9742C8();
    sub_20D973408();

    sub_20D974038();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t FeaturedHoursChart.body.getter@<X0>(uint64_t a1@<X8>)
{
  v120 = a1;
  v109 = type metadata accessor for FeaturedHoursChart(0);
  v110 = *(v109 - 1);
  v2 = *(v110 + 64);
  MEMORY[0x28223BE20](v109);
  v125 = v3;
  v113 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F50, &qword_20D97AF50);
  v112 = *(v114 - 8);
  v4 = *(v112 + 64);
  MEMORY[0x28223BE20](v114);
  v111 = &v96 - v5;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F58, &qword_20D97AF58);
  v115 = *(v117 - 8);
  v6 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v127 = &v96 - v7;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F60, &qword_20D97AF60);
  v118 = *(v119 - 8);
  v8 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v116 = &v96 - v9;
  v99 = sub_20D972398();
  v98 = *(v99 - 8);
  v10 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v97 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_20D972308();
  v106 = *(v108 - 8);
  v12 = *(v106 + 64);
  MEMORY[0x28223BE20](v108);
  v104 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_20D972318();
  v105 = *(v107 - 8);
  v14 = *(v105 + 64);
  MEMORY[0x28223BE20](v107);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_20D973D58();
  v102 = *(v103 - 8);
  v17 = *(v102 + 64);
  v18 = MEMORY[0x28223BE20](v103);
  v101 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v100 = &v96 - v20;
  v126 = sub_20D972408();
  v124 = *(v126 - 8);
  v21 = *(v124 + 64);
  v22 = MEMORY[0x28223BE20](v126);
  v96 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v96 - v25;
  MEMORY[0x28223BE20](v24);
  v123 = &v96 - v27;
  v28 = sub_20D972628();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v96 - v34;
  v36 = type metadata accessor for FeaturedHoursInfo();
  v37 = *(v1 + v36[6]);
  (*(v29 + 16))(v35, v1, v28);
  v38 = *(v1 + v36[5]);
  sub_20D972498();
  v132 = v33;
  v133 = v35;

  v39 = sub_20D8A3C64(sub_20D8A5024, v131, v37, type metadata accessor for FeaturedInterval, type metadata accessor for FeaturedInterval, type metadata accessor for FeaturedInterval, sub_20D95DA18);
  v129 = v33;
  v130 = v35;
  v122 = sub_20D95A5E4(sub_20D8A5044, v128, v39);

  v40 = *(v29 + 8);
  v40(v33, v28);
  v41 = v28;
  v42 = v1;
  v40(v35, v41);
  sub_20D974398();
  v121 = sub_20D9744C8();

  v44 = *(v1 + v36[14]);
  if (v44)
  {
    goto LABEL_4;
  }

  v45 = v100;
  sub_20D8A3EBC(v100);
  v46 = v102;
  v47 = v101;
  v48 = v103;
  (*(v102 + 104))(v101, *MEMORY[0x277CDFA00], v103);
  v49 = sub_20D973D48();
  v50 = *(v46 + 8);
  v50(v47, v48);
  v43 = (v50)(v45, v48);
  if ((v49 & 1) == 0)
  {
LABEL_4:
    MEMORY[0x20F320230](v43);
    v57 = v104;
    sub_20D9722E8();
    sub_20D9722D8();
    (*(v106 + 8))(v57, v108);
    sub_20D972278();
    (*(v105 + 8))(v16, v107);
    v58 = *(v124 + 8);
    v108 = (v124 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v58(v26, v126);
  }

  else
  {
    v51 = v96;
    MEMORY[0x20F320230](v43);
    v52 = v104;
    sub_20D9722E8();
    sub_20D9722D8();
    (*(v106 + 8))(v52, v108);
    sub_20D972278();
    (*(v105 + 8))(v16, v107);
    v53 = *(v124 + 8);
    v108 = (v124 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v54 = v51;
    v55 = v126;
    v53(v54, v126);
    v56 = v97;
    sub_20D972388();
    sub_20D9723D8();
    (*(v98 + 8))(v56, v99);
    v53(v26, v55);
  }

  sub_20D8AB5C4(*(v42 + *(v109 + 6)), v44, v138);
  v109 = &v96;
  MEMORY[0x28223BE20](v59);
  *(&v96 - 4) = v42;
  *(&v96 - 3) = v138;
  v60 = v121;
  *(&v96 - 2) = v122;
  *(&v96 - 1) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F68, &qword_20D97AF68);
  sub_20D8AB77C();
  v61 = v111;
  sub_20D973878();
  v62 = v113;
  sub_20D8AC45C(v42, v113, type metadata accessor for FeaturedHoursChart);
  v63 = *(v110 + 80);
  v64 = swift_allocObject();
  sub_20D8AC4C4(v62, v64 + ((v63 + 16) & ~v63), type metadata accessor for FeaturedHoursChart);
  sub_20D974C48();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FB0, &qword_20D97AFB0);
  v66 = sub_20D7EBC4C(&qword_281127080, &qword_27C839F50, &qword_20D97AF50);
  v110 = sub_20D8ABBAC();
  v67 = v114;
  sub_20D974658();

  (*(v112 + 8))(v61, v67);
  v68 = v42;
  sub_20D8AC45C(v42, v62, type metadata accessor for FeaturedHoursChart);
  v69 = swift_allocObject();
  v70 = v138[7];
  *(v69 + 112) = v138[6];
  *(v69 + 128) = v70;
  *(v69 + 144) = v139;
  v71 = v138[3];
  *(v69 + 48) = v138[2];
  *(v69 + 64) = v71;
  v72 = v138[5];
  *(v69 + 80) = v138[4];
  *(v69 + 96) = v72;
  v73 = v138[1];
  *(v69 + 16) = v138[0];
  *(v69 + 32) = v73;
  sub_20D8AC4C4(v62, v69 + ((v63 + 152) & ~v63), type metadata accessor for FeaturedHoursChart);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FB8, &qword_20D97AFB8);
  v134 = v67;
  v135 = v65;
  v136 = v66;
  v137 = v110;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FC0, &qword_20D97AFC0);
  v77 = sub_20D8ABCB4();
  v134 = v76;
  v135 = v77;
  v78 = swift_getOpaqueTypeConformance2();
  v79 = v116;
  v80 = v117;
  v81 = v127;
  sub_20D974648();

  v82 = (*(v115 + 8))(v81, v80);
  MEMORY[0x28223BE20](v82);
  *(&v96 - 4) = v68;
  *(&v96 - 3) = v138;
  v83 = v123;
  *(&v96 - 2) = v122;
  *(&v96 - 1) = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FC8, &qword_20D97AFC8);
  v134 = v80;
  v135 = v74;
  v136 = OpaqueTypeConformance2;
  v137 = v78;
  swift_getOpaqueTypeConformance2();
  sub_20D8ABD7C();
  v84 = v120;
  v85 = v119;
  sub_20D9745E8();

  (*(v118 + 8))(v79, v85);
  LOBYTE(v74) = sub_20D974338();
  sub_20D973AD8();
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v93 = v92;

  v94 = v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A000, &qword_20D97B000) + 36);
  *v94 = v74;
  *(v94 + 8) = v87;
  *(v94 + 16) = v89;
  *(v94 + 24) = v91;
  *(v94 + 32) = v93;
  *(v94 + 40) = 0;
  return (*(v124 + 8))(v83, v126);
}

uint64_t sub_20D8A5024(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_20D878C9C(a1) & 1;
}

uint64_t sub_20D8A5064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v132 = a4;
  v131 = a3;
  v158 = a2;
  v147 = a5;
  v140 = sub_20D973978();
  v136 = *(v140 - 8);
  v6 = *(v136 + 64);
  MEMORY[0x28223BE20](v140);
  v135 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FA8, &unk_20D97E110);
  v139 = *(v141 - 8);
  v8 = *(v139 + 64);
  MEMORY[0x28223BE20](v141);
  v137 = &v121 - v9;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A120, &qword_20D97B278);
  v145 = *(v146 - 8);
  v10 = *(v145 + 64);
  v11 = MEMORY[0x28223BE20](v146);
  v144 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v138 = &v121 - v13;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F78, &qword_20D97AF78);
  v142 = *(v143 - 8);
  v14 = *(v142 + 64);
  v15 = MEMORY[0x28223BE20](v143);
  v156 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v155 = &v121 - v17;
  v152 = sub_20D972628();
  v126 = *(v152 - 8);
  v18 = *(v126 + 64);
  MEMORY[0x28223BE20](v152);
  v20 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A128, &qword_20D97B280);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  KeyPath = &v121 - v27;
  MEMORY[0x28223BE20](v26);
  v148 = &v121 - v28;
  OpaqueTypeConformance2 = sub_20D973648();
  v121 = *(OpaqueTypeConformance2 - 8);
  v29 = *(v121 + 64);
  MEMORY[0x28223BE20](OpaqueTypeConformance2);
  v31 = &v121 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F70, &qword_20D97AF70);
  v128 = *(v129 - 8);
  v32 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v125 = &v121 - v33;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A130, &qword_20D97B288);
  v134 = *(v154 - 8);
  v34 = *(v134 + 64);
  v35 = MEMORY[0x28223BE20](v154);
  v153 = &v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v157 = &v121 - v37;
  v151 = type metadata accessor for FeaturedHoursChart(0);
  v122 = *(v151 - 8);
  v38 = *(v122 + 64);
  v39 = MEMORY[0x28223BE20](v151);
  v124 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v121 - v41;
  v43 = sub_20D975448();
  v150 = a1;
  sub_20D8AC45C(a1, v42, type metadata accessor for FeaturedHoursChart);
  sub_20D8ADABC();
  v44 = sub_20D9754F8();
  v45 = os_log_type_enabled(v44, v43);
  v133 = v25;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v163 = v47;
    *v46 = 136315138;
    v48 = sub_20D877FD4();
    v50 = v49;
    sub_20D8ACF38(v42, type metadata accessor for FeaturedHoursChart);
    v51 = sub_20D7F4DC8(v48, v50, &v163);

    *(v46 + 4) = v51;
    _os_log_impl(&dword_20D7C9000, v44, v43, "%s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x20F324260](v47, -1, -1);
    MEMORY[0x20F324260](v46, -1, -1);
  }

  else
  {

    sub_20D8ACF38(v42, type metadata accessor for FeaturedHoursChart);
  }

  v52 = type metadata accessor for FeaturedHoursInfo();
  v53 = v150;
  v54 = (v150 + v52[8]);
  v56 = *v54;
  v55 = v54[1];
  *&v163 = v56;
  *(&v163 + 1) = v55;
  v57 = sub_20D7E1EF8();
  v58 = v152;
  sub_20D973708();
  v59 = (v53 + v52[9]);
  v60 = v59[1];
  *&v163 = *v59;
  *(&v163 + 1) = v60;
  v61 = *(v53 + v52[5]);

  sub_20D972498();
  v130 = v57;
  sub_20D973708();
  (*(v126 + 8))(v20, v58);

  LODWORD(v126) = *(v53 + *(v151 + 24));
  if (v126 == 1)
  {
    v62 = *(v151 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    sub_20D973B78();
  }

  v63 = *(v158 + 16);
  sub_20D973638();
  *&v163 = *(v53 + v52[7]);
  v64 = MEMORY[0x277CDF6A8];
  v65 = MEMORY[0x277CBB2F8];
  v66 = MEMORY[0x277CDF6A0];
  v67 = v125;
  v68 = OpaqueTypeConformance2;
  sub_20D9735B8();
  (*(v121 + 8))(v31, v68);
  if (*(v53 + v52[15]) == 1)
  {
    v69 = *(v53 + v52[13]) * 0.5 + 1.0;
  }

  *&v163 = v68;
  *(&v163 + 1) = v64;
  *&v164 = v65;
  *(&v164 + 1) = v66;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = v129;
  sub_20D9735F8();
  (*(v128 + 8))(v67, v70);
  v159 = v131;
  KeyPath = swift_getKeyPath();
  v71 = v124;
  sub_20D8AC45C(v53, v124, type metadata accessor for FeaturedHoursChart);
  v72 = (*(v122 + 80) + 16) & ~*(v122 + 80);
  v73 = (v123 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  sub_20D8AC4C4(v71, v74 + v72, type metadata accessor for FeaturedHoursChart);
  v75 = v74 + v73;
  v76 = v158;
  v77 = *(v158 + 112);
  *(v75 + 96) = *(v158 + 96);
  *(v75 + 112) = v77;
  *(v75 + 128) = *(v76 + 128);
  v78 = *(v76 + 48);
  *(v75 + 32) = *(v76 + 32);
  *(v75 + 48) = v78;
  v79 = *(v76 + 80);
  *(v75 + 64) = *(v76 + 64);
  *(v75 + 80) = v79;
  v80 = *(v76 + 16);
  *v75 = *v76;
  *(v75 + 16) = v80;
  *(v74 + ((v73 + 143) & 0xFFFFFFFFFFFFFFF8)) = v132;

  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A138, &qword_20D97B2B0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A140, &qword_20D97B2B8);
  v131 = sub_20D7EBC4C(&qword_281126EC0, &qword_27C83A138, &qword_20D97B2B0);
  v128 = sub_20D8AC52C(&unk_281127720, MEMORY[0x277CC95F0]);
  v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F80, &qword_20D97AF80);
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F88, &qword_20D97AF88);
  v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F90, &qword_20D97AF90);
  v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839F98, &qword_20D97AF98);
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C839FA0, &unk_20D97AFA0);
  *&v163 = v70;
  *(&v163 + 1) = OpaqueTypeConformance2;
  v86 = swift_getOpaqueTypeConformance2();
  *&v163 = v85;
  *(&v163 + 1) = v86;
  v87 = swift_getOpaqueTypeConformance2();
  v88 = sub_20D7EBC4C(&qword_281127040, &qword_27C839F98, &qword_20D97AF98);
  *&v163 = v83;
  *(&v163 + 1) = v84;
  v89 = v150;
  *&v164 = v87;
  *(&v164 + 1) = v88;
  v90 = swift_getOpaqueTypeConformance2();
  *&v163 = v82;
  *(&v163 + 1) = v90;
  v91 = swift_getOpaqueTypeConformance2();
  *&v163 = v81;
  *(&v163 + 1) = v91;
  swift_getOpaqueTypeConformance2();
  sub_20D974B88();
  v92 = (v89 + v52[10]);
  v94 = *v92;
  v93 = v92[1];
  *&v163 = v94;
  *(&v163 + 1) = v93;
  sub_20D973708();
  if (v126)
  {
    v95 = *(v151 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    sub_20D973B78();
  }

  v96 = *(v158 + 40) ^ 0x8000000000000000;
  v97 = v135;
  sub_20D973958();
  *&v163 = *(v89 + v52[12]);
  v98 = MEMORY[0x277CE0F78];
  v99 = MEMORY[0x277CBB450];
  v100 = MEMORY[0x277CE0F60];
  v101 = v137;
  v102 = v140;
  sub_20D9735B8();
  (*(v136 + 8))(v97, v102);
  v103 = (v89 + v52[13]);
  v104 = v103[1];
  v163 = *v103;
  v164 = v104;
  v165 = *(v103 + 4);
  v159 = v102;
  v160 = v98;
  v161 = v99;
  v162 = v100;
  swift_getOpaqueTypeConformance2();
  v105 = v138;
  v106 = v141;
  sub_20D973628();
  (*(v139 + 8))(v101, v106);
  v107 = v134;
  v108 = v153;
  (*(v134 + 16))(v153, v157, v154);
  v159 = v108;
  v109 = v142;
  v111 = v155;
  v110 = v156;
  v112 = v143;
  (*(v142 + 16))(v156, v155, v143);
  v160 = v110;
  v113 = v145;
  v114 = v144;
  v115 = v146;
  (*(v145 + 16))(v144, v105, v146);
  v161 = v114;
  sub_20D8EEC20(&v159, v147);
  v116 = *(v113 + 8);
  v116(v105, v115);
  v117 = *(v109 + 8);
  v117(v111, v112);
  v118 = *(v107 + 8);
  v119 = v154;
  v118(v157, v154);
  v116(v114, v115);
  v117(v156, v112);
  return (v118)(v153, v119);
}

uint64_t sub_20D8A60E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v104 = a4;
  v83 = a3;
  v108 = a5;
  v7 = sub_20D973788();
  v106 = *(v7 - 8);
  v107 = v7;
  v8 = *(v106 + 64);
  MEMORY[0x28223BE20](v7);
  v105 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_20D974118();
  v100 = *(v103 - 8);
  v10 = *(v100 + 64);
  MEMORY[0x28223BE20](v103);
  v88 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83A128, &qword_20D97B280);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v80[1] = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v85 = sub_20D973648();
  v82 = *(v85 - 8);
  v16 = *(v82 + 64);
  MEMORY[0x28223BE20](v85);
  v81 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F70, &qword_20D97AF70);
  v87 = *(v89 - 8);
  v18 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v111 = v80 - v19;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839FA0, &unk_20D97AFA0);
  v90 = *(v91 - 8);
  v20 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v86 = v80 - v21;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F90, &qword_20D97AF90);
  v92 = *(v97 - 8);
  v22 = *(v92 + 64);
  MEMORY[0x28223BE20](v97);
  v112 = v80 - v23;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F88, &qword_20D97AF88);
  v98 = *(v101 - 8);
  v24 = *(v98 + 64);
  MEMORY[0x28223BE20](v101);
  v94 = v80 - v25;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F80, &qword_20D97AF80);
  v99 = *(v102 - 8);
  v26 = *(v99 + 64);
  MEMORY[0x28223BE20](v102);
  v96 = v80 - v27;
  v28 = sub_20D972628();
  v95 = *(v28 - 8);
  v29 = *(v95 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for FeaturedInterval();
  v33 = *(a1 + v32[5]);
  sub_20D972498();
  v34 = type metadata accessor for FeaturedHoursInfo();
  v35 = (a2 + *(v34 + 32));
  v37 = *v35;
  v36 = v35[1];
  v114 = v37;
  v115 = v36;
  sub_20D7E1EF8();
  v110 = a1;
  sub_20D973708();
  v84 = v34;
  v38 = (a2 + *(v34 + 36));
  v40 = *v38;
  v39 = v38[1];
  v114 = v40;
  v115 = v39;
  v93 = v31;
  v113 = v28;
  sub_20D973708();
  v41 = type metadata accessor for FeaturedHoursChart(0);
  v42 = *(v41 + 24);
  v109 = a2;
  if (*(a2 + v42) == 1)
  {
    v43 = *(v41 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A40, &unk_20D976D50);
    sub_20D973B78();
  }

  v44 = *(v83 + 16);
  v45 = v81;
  sub_20D973638();
  v46 = v110;
  v114 = *(v110 + v32[9]);
  v47 = MEMORY[0x277CDF6A8];
  v48 = MEMORY[0x277CBB2F8];
  v49 = MEMORY[0x277CDF6A0];
  v50 = v85;
  sub_20D9735B8();
  (*(v82 + 8))(v45, v50);
  if ((*(v46 + v32[10]) & 1) == 0)
  {
    v51 = *(v46 + v32[6]);
  }

  if ((*(v46 + v32[11]) & 1) == 0)
  {
    v52 = *(v46 + v32[6]);
  }

  sub_20D9741C8();
  v53 = *MEMORY[0x277CE0118];
  v54 = v100;
  v83 = *(v100 + 104);
  v55 = v88;
  v56 = v103;
  (v83)(v88, v53, v103);
  v114 = v50;
  v115 = v47;
  v116 = v48;
  v117 = v49;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = v86;
  v59 = v89;
  v60 = v111;
  sub_20D9735D8();
  v61 = *(v54 + 8);
  v61(v55, v56);
  (*(v87 + 8))(v60, v59);
  (v83)(v55, v53, v56);
  v114 = v59;
  v115 = OpaqueTypeConformance2;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v91;
  sub_20D9735A8();
  v61(v55, v56);
  (*(v90 + 8))(v58, v63);
  v64 = v105;
  sub_20D973778();
  v65 = sub_20D974C48();
  v111 = v66;
  MEMORY[0x28223BE20](v65);
  v67 = v109;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839F98, &qword_20D97AF98);
  v114 = v63;
  v115 = v62;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_20D7EBC4C(&qword_281127040, &qword_27C839F98, &qword_20D97AF98);
  v71 = v94;
  v72 = v112;
  v73 = v97;
  sub_20D973588();
  (*(v106 + 8))(v64, v107);
  (*(v92 + 8))(v72, v73);
  if (*(v67 + *(v84 + 60)) == 1)
  {
    v74 = *(v67 + *(v84 + 52)) * 0.5 + 1.0;
  }

  v114 = v73;
  v115 = v68;
  v116 = v69;
  v117 = v70;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = v96;
  v77 = v101;
  sub_20D9735F8();
  (*(v98 + 8))(v71, v77);
  v114 = v77;
  v115 = v75;
  swift_getOpaqueTypeConformance2();
  v78 = v102;
  sub_20D9735E8();
  (*(v99 + 8))(v76, v78);
  return (*(v95 + 8))(v93, v113);
}