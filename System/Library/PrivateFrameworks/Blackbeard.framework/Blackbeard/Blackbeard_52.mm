uint64_t AppSectionDensity.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E642A584()
{
  result = qword_1ED0796B0;
  if (!qword_1ED0796B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0796B0);
  }

  return result;
}

unint64_t sub_1E642A5DC()
{
  result = qword_1EE2D9F80;
  if (!qword_1EE2D9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F80);
  }

  return result;
}

unint64_t sub_1E642A634()
{
  result = qword_1EE2D9F88;
  if (!qword_1EE2D9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F88);
  }

  return result;
}

unint64_t sub_1E642A68C()
{
  result = qword_1EE2D9F68;
  if (!qword_1EE2D9F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F68);
  }

  return result;
}

unint64_t sub_1E642A6E4()
{
  result = qword_1EE2D9F70;
  if (!qword_1EE2D9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F70);
  }

  return result;
}

unint64_t sub_1E642A73C()
{
  result = qword_1EE2D9F50;
  if (!qword_1EE2D9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F50);
  }

  return result;
}

unint64_t sub_1E642A794()
{
  result = qword_1EE2D9F58;
  if (!qword_1EE2D9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F58);
  }

  return result;
}

unint64_t sub_1E642A7EC()
{
  result = qword_1EE2D9F38;
  if (!qword_1EE2D9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F38);
  }

  return result;
}

unint64_t sub_1E642A844()
{
  result = qword_1EE2D9F40;
  if (!qword_1EE2D9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F40);
  }

  return result;
}

unint64_t sub_1E642A89C()
{
  result = qword_1EE2D9F20;
  if (!qword_1EE2D9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F20);
  }

  return result;
}

unint64_t sub_1E642A8F4()
{
  result = qword_1EE2D9F28;
  if (!qword_1EE2D9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F28);
  }

  return result;
}

unint64_t sub_1E642A94C()
{
  result = qword_1EE2D9F08;
  if (!qword_1EE2D9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F08);
  }

  return result;
}

unint64_t sub_1E642A9A4()
{
  result = qword_1EE2D9F10;
  if (!qword_1EE2D9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F10);
  }

  return result;
}

unint64_t sub_1E642A9FC()
{
  result = qword_1EE2D9F90;
  if (!qword_1EE2D9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F90);
  }

  return result;
}

unint64_t sub_1E642AA54()
{
  result = qword_1EE2D9F98;
  if (!qword_1EE2D9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9F98);
  }

  return result;
}

uint64_t sub_1E642AAA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 65 && a2 == 0xE100000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 66 && a2 == 0xE100000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 67 && a2 == 0xE100000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 68 && a2 == 0xE100000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 69 && a2 == 0xE100000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 70 && a2 == 0xE100000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E65E6C18();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E642AC60@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_1E65E1918();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v42 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E65E07B8();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E18E8();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v37 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v40 = v27 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v41 = v27 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v27 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v39 = v27 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v27 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  v23 = v44;
  sub_1E65E4B48();
  v38 = v22;
  sub_1E65E18D8();
  if (v23 < 2)
  {
    v30 = 0;
    v33 = 0;
    v29 = 1.0;
    v32 = 0.5;
    v31 = 0x3FD999999999999ALL;
  }

  else
  {
    v31 = 0;
    v32 = 0.75;
    v33 = 0x4076800000000000;
    v30 = 0x4074600000000000;
    v29 = 0.75;
  }

  v28 = v23 > 1;
  sub_1E65E0678();
  v24 = sub_1E65E07C8();
  v25 = 2;
  if (v24)
  {
    v25 = 3;
  }

  v27[1] = v25;
  sub_1E65E0668();
  sub_1E65E0758();
  sub_1E65E0798();
  sub_1E65E0788();
  sub_1E65E07A8();
  sub_1E65E18D8();
  (*(v4 + 8))(v7, v34);
  sub_1E65E18C8();
  (*(v35 + 8))(v18, v36);
  sub_1E65E18D8();
  sub_1E63B0274();
  sub_1E65E18D8();
  sub_1E65E18D8();
  return sub_1E65E19D8();
}

uint64_t sub_1E642B1F0(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796C0, &qword_1E6601F28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9[-v5 - 8];
  sub_1E5E20198(21, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796B8, &qword_1E6601EB0);
  result = swift_dynamicCast();
  if (result)
  {
    v9[0] = a1 & 1;
    sub_1E65E4E98();

    sub_1E65E4E28();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1E642B340@<X0>(uint64_t *a1@<X8>)
{
  v139 = a1;
  v138 = type metadata accessor for ContentAvailabilityService();
  Description = v138[-1].Description;
  v2 = *(Description + 8);
  MEMORY[0x1EEE9AC00](v138);
  v125 = v3;
  v137 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for ArchivedSessionService();
  v122 = v123[-1].Description;
  v4 = v122[8];
  MEMORY[0x1EEE9AC00](v123);
  v120 = v5;
  v121 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for AppStateService();
  v145 = v135[-1].Description;
  v6 = *(v145 + 8);
  MEMORY[0x1EEE9AC00](v135);
  v116 = v7;
  v133 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v149 = &v109 - v10;
  v150 = type metadata accessor for LocalizationService();
  v143 = v150[-1].Description;
  v11 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v141 = v12;
  v142 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for CatalogService();
  v147 = v132[-1].Description;
  v13 = v147[8];
  MEMORY[0x1EEE9AC00](v132);
  v134 = v14;
  v146 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1E65D7848();
  v136 = *(v148 - 8);
  v15 = *(v136 + 64);
  v16 = MEMORY[0x1EEE9AC00](v148);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v109 - v17;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v19 = sub_1E65E3B68();
  __swift_project_value_buffer(v19, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v20 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v21 = type metadata accessor for AppEnvironment();
  v22 = v21[8];
  v128 = v21[7];
  v115 = v22;
  v23 = v21[12];
  v129 = v23;
  v127 = v21[14];
  v24 = v21[18];
  v140 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v124 = v18;
  sub_1E65E4EC8();

  v25 = v21[34];
  KeyPath = swift_getKeyPath();
  v26 = v147;
  v27 = v147[2];
  v130 = (v147 + 2);
  v131 = v27;
  v144 = v20;
  v28 = v20 + v23;
  v29 = v132;
  v27(v146, v28, v132);
  v30 = v136;
  v31 = *(v136 + 16);
  v113 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31(v113, v18, v148);
  v33 = v142;
  v32 = v143;
  (*(v143 + 16))(v142, v20 + v24, v150);
  sub_1E5DF650C(v20 + v25, &v151);
  v119 = *(v26 + 80);
  v34 = (v119 + 16) & ~v119;
  v118 = v119 | 7;
  v35 = (v134 + *(v30 + 80) + v34) & ~*(v30 + 80);
  v36 = (v15 + *(v32 + 80) + v35) & ~*(v32 + 80);
  v37 = v29;
  v38 = (v141 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v117 = v26[4];
  v147 = v26 + 4;
  v117(v39 + v34, v146, v37);
  (*(v30 + 32))(v39 + v35, v113, v148);
  (*(v32 + 32))(v39 + v36, v33, v150);
  sub_1E5DF599C(&v151, v39 + v38);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796B8, &qword_1E6601EB0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();

  v43 = sub_1E65E4E68();
  v44 = v139;
  v139[3] = v40;
  v44[4] = &off_1F5FAA810;
  *v44 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v142 = swift_allocObject();
  *(v142 + 1) = xmmword_1E65FECC0;
  v45 = sub_1E65E60A8();
  v46 = *(v45 - 8);
  v140 = *(v46 + 56);
  v141 = v46 + 56;
  v47 = v149;
  v143 = v45;
  v140(v149, 1, 1, v45);
  v48 = v145;
  v49 = *(v145 + 2);
  v113 = v145 + 16;
  KeyPath = v49;
  v50 = v144;
  v51 = v133;
  v52 = v135;
  v49(v133, v144 + v128, v135);
  v53 = (v48[80] + 32) & ~v48[80];
  v112 = v48[80];
  v111 = v53;
  v54 = (v116 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v110 = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  v56 = *(v48 + 4);
  v145 = v48 + 32;
  v116 = v56;
  v56(v55 + v53, v51, v52);
  *(v55 + v54) = v43;
  v57 = v43;
  swift_retain_n();
  v58 = sub_1E6059EAC(0, 0, v47, &unk_1E6601EC0, v55);
  v59 = v142;
  *(v142 + 4) = v58;
  v140(v47, 1, 1, v45);
  v60 = v122;
  v61 = v121;
  v62 = v123;
  (v122[2])(v121, v50 + v115, v123);
  v63 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v64 = (v120 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  *(v65 + 24) = 0;
  (v60[4])(v65 + v63, v61, v62);
  v150 = v57;
  *(v65 + v64) = v57;

  *(v59 + 5) = sub_1E6059EAC(0, 0, v47, &unk_1E6601ED0, v65);
  v66 = v140;
  v140(v47, 1, 1, v143);
  v67 = Description;
  v68 = *(Description + 2);
  v122 = Description + 16;
  v123 = v68;
  v69 = v144;
  v71 = v137;
  v70 = v138;
  (v68)(v137, v144 + v127, v138);
  v72 = v67[80];
  v121 = v72;
  v73 = (v72 + 32) & ~v72;
  v120 = v73;
  v125 = (v125 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = v125;
  v75 = swift_allocObject();
  *(v75 + 16) = 0;
  *(v75 + 24) = 0;
  Description = *(v67 + 4);
  (Description)(v75 + v73, v71, v70);
  *(v75 + v74) = v150;

  *(v59 + 6) = sub_1E6059EAC(0, 0, v47, &unk_1E6601EE0, v75);
  v76 = v143;
  v66(v47, 1, 1, v143);
  v77 = v66;
  v78 = v69;
  v79 = v69 + v128;
  v80 = v133;
  v81 = v135;
  KeyPath(v133, v79, v135);
  v82 = v110;
  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  *(v83 + 24) = 0;
  v116(v83 + v111, v80, v81);
  *(v83 + v82) = v150;

  v84 = sub_1E6059EAC(0, 0, v47, &unk_1E6601EF0, v83);
  v85 = v142;
  *(v142 + 7) = v84;
  v86 = v76;
  v87 = v76;
  v88 = v77;
  v77(v47, 1, 1, v86);
  v89 = v78 + v127;
  v90 = v78;
  v91 = v137;
  v92 = v138;
  (v123)(v137, v89, v138);
  v93 = v125;
  v94 = swift_allocObject();
  *(v94 + 16) = 0;
  *(v94 + 24) = 0;
  (Description)(v94 + v120, v91, v92);
  *(v94 + v93) = v150;

  v95 = v149;
  *(v85 + 8) = sub_1E6059EAC(0, 0, v149, &unk_1E6601F00, v94);
  v88(v95, 1, 1, v87);
  v96 = v90 + v129;
  v97 = v146;
  v98 = v132;
  v131(v146, v96, v132);
  v99 = (v119 + 32) & ~v119;
  v100 = (v134 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = swift_allocObject();
  *(v101 + 16) = 0;
  *(v101 + 24) = 0;
  v102 = v117;
  v117(v101 + v99, v97, v98);
  *(v101 + v100) = v150;

  v103 = v149;
  v104 = sub_1E6059EAC(0, 0, v149, &unk_1E6601F10, v101);
  v106 = v142;
  v105 = v143;
  *(v142 + 9) = v104;
  v140(v103, 1, 1, v105);
  v131(v97, v144 + v129, v98);
  v107 = swift_allocObject();
  *(v107 + 16) = 0;
  *(v107 + 24) = 0;
  v102(v107 + v99, v97, v98);
  *(v107 + v100) = v150;
  *(v106 + 10) = sub_1E6059EAC(0, 0, v103, &unk_1E6601F20, v107);
  result = (*(v136 + 8))(v124, v148);
  v139[5] = v106;
  return result;
}

uint64_t sub_1E642C1A8(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 184) = a5;
  *(v6 + 192) = a6;
  *(v6 + 168) = a3;
  *(v6 + 176) = a4;
  *(v6 + 160) = a1;
  v8 = sub_1E65D72D8();
  *(v6 + 200) = v8;
  v9 = *(v8 - 8);
  *(v6 + 208) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  v11 = type metadata accessor for LocalizationService();
  *(v6 + 232) = v11;
  Description = v11[-1].Description;
  *(v6 + 240) = Description;
  *(v6 + 248) = Description[8];
  *(v6 + 256) = swift_task_alloc();
  v13 = sub_1E65D7848();
  *(v6 + 264) = v13;
  v14 = *(v13 - 8);
  *(v6 + 272) = v14;
  *(v6 + 280) = *(v14 + 64);
  *(v6 + 288) = swift_task_alloc();
  v15 = sub_1E65D8258();
  *(v6 + 296) = v15;
  v16 = *(v15 - 8);
  *(v6 + 304) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = swift_task_alloc();
  v18 = sub_1E65D9CC8();
  *(v6 + 336) = v18;
  v19 = *(v18 - 8);
  *(v6 + 344) = v19;
  v20 = *(v19 + 64) + 15;
  *(v6 + 352) = swift_task_alloc();
  v21 = sub_1E65D88D8();
  *(v6 + 360) = v21;
  v22 = *(v21 - 8);
  *(v6 + 368) = v22;
  v23 = *(v22 + 64) + 15;
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  v24 = sub_1E65D8F78();
  *(v6 + 392) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v6 + 400) = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796C8, &qword_1E6601F30);
  *(v6 + 408) = v26;
  v27 = *(v26 - 8);
  *(v6 + 416) = v27;
  v28 = *(v27 + 64) + 15;
  *(v6 + 424) = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796D0, &qword_1E6601F38);
  *(v6 + 432) = v29;
  v30 = *(*(v29 - 8) + 64) + 15;
  *(v6 + 440) = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796D8, &qword_1E6601F40) - 8) + 64) + 15;
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  v32 = sub_1E65D9898();
  *(v6 + 472) = v32;
  v33 = *(v32 - 8);
  *(v6 + 480) = v33;
  *(v6 + 488) = *(v33 + 64);
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = swift_task_alloc();
  *(v6 + 709) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1E642C634, 0, 0);
}

uint64_t sub_1E642C634()
{
  v22 = v0;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  *(v0 + 528) = __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 709);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    *(v0 + 708) = v4;
    v7 = sub_1E65E5CE8();
    v9 = sub_1E5DFD4B0(v7, v8, &v21);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "[SampleContentItemsStateResolver] resolving for context %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E694F1C0](v6, -1, -1);
    MEMORY[0x1E694F1C0](v5, -1, -1);
  }

  v10 = *(v0 + 168);
  if (*(v0 + 709))
  {
    v11 = CatalogService.fetchRemoteWorkoutShelfLockupDescriptors.getter();
    *(v0 + 560) = v12;
    v20 = (v11 + *v11);
    v13 = v11[1];
    v14 = swift_task_alloc();
    *(v0 + 568) = v14;
    *v14 = v0;
    v15 = sub_1E642D3B4;
  }

  else
  {
    v16 = CatalogService.fetchRemoteSummaryShelfLockupDescriptors.getter();
    *(v0 + 536) = v17;
    v20 = (v16 + *v16);
    v18 = v16[1];
    v14 = swift_task_alloc();
    *(v0 + 544) = v14;
    *v14 = v0;
    v15 = sub_1E642C904;
  }

  v14[1] = v15;

  return v20();
}

uint64_t sub_1E642C904(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[10] = v2;
  v4[11] = a1;
  v4[12] = v1;
  v5 = v3[68];
  v9 = *v2;
  v4[69] = v1;

  if (v1)
  {
    v6 = sub_1E642EB68;
  }

  else
  {
    v7 = v4[67];

    v6 = sub_1E642CA28;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E642CA28()
{
  result = v0[11];
  v97 = *(result + 16);
  if (!v97)
  {
LABEL_12:

LABEL_13:
    v27 = v0[66];
    v28 = sub_1E65E3B48();
    v29 = sub_1E65E6338();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1E5DE9000, v28, v29, "[SampleContentItemsStateResolver] No items found", v30, 2u);
      MEMORY[0x1E694F1C0](v30, -1, -1);
    }

    v31 = sub_1E65E37A8();
    sub_1E6434EE0(&qword_1ED0796E0, MEMORY[0x1E699EE28]);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x1E699EE20], v31);
    swift_willThrow();
    v33 = v0[65];
    v34 = v0[63];
    v35 = v0[64];
    v36 = v0[62];
    v38 = v0[57];
    v37 = v0[58];
    v40 = v0[55];
    v39 = v0[56];
    v41 = v0[53];
    v42 = v0[50];
    v79 = v0[48];
    v81 = v0[47];
    v83 = v0[44];
    v85 = v0[41];
    v87 = v0[40];
    v89 = v0[39];
    v90 = v0[36];
    v92 = v0[32];
    v94 = v0[28];
    v96 = v0[27];

    v43 = v0[1];

    return v43();
  }

  v2 = 0;
  v3 = v0[60];
  v91 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v4 = MEMORY[0x1E69CB210];
  v5 = v0[52];
  v86 = v0[54];
  v88 = (v5 + 56);
  *(v0 + 176) = *(v3 + 80);
  v84 = *v4;
  v93 = v3;
  v95 = result;
  v78 = (v3 + 8);
  v80 = (v5 + 48);
  v82 = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  while (1)
  {
    if (v2 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v0[63];
    v9 = v0[58];
    v8 = v0[59];
    v10 = v0[57];
    v11 = v0[55];
    v12 = v99[51];
    v13 = v91 + *(v93 + 72) * v2;
    v14 = *(v93 + 16);
    v99[73] = v14;
    v99[74] = v82;
    v14(v7, v13, v8);
    sub_1E65D9868();
    v15 = sub_1E65D8028();
    (*(*(v15 - 8) + 104))(v10, v84, v15);
    swift_storeEnumTagMultiPayload();
    (*v88)(v10, 0, 1, v12);
    v16 = *(v86 + 48);
    sub_1E5DFD1CC(v9, v11, &qword_1ED0796D8, &qword_1E6601F40);
    sub_1E5DFD1CC(v10, v11 + v16, &qword_1ED0796D8, &qword_1E6601F40);
    v17 = *v80;
    v0 = v99;
    v18 = (*v80)(v11, 1, v12);
    v19 = v99[51];
    if (v18 == 1)
    {
      break;
    }

    sub_1E5DFD1CC(v99[55], v99[56], &qword_1ED0796D8, &qword_1E6601F40);
    v20 = v17(v11 + v16, 1, v19);
    v21 = v99[57];
    v22 = v99[58];
    v23 = v99[56];
    if (v20 == 1)
    {
      sub_1E5DFE50C(v99[57], &qword_1ED0796D8, &qword_1E6601F40);
      sub_1E5DFE50C(v22, &qword_1ED0796D8, &qword_1E6601F40);
      sub_1E5DFE50C(v23, &qword_1ED0796C8, &qword_1E6601F30);
      goto LABEL_4;
    }

    v77 = v99[55];
    v24 = v99[53];
    sub_1E6434E70(v11 + v16, v24);
    v25 = MEMORY[0x1E69CB218];
    sub_1E6434EE0(&qword_1EE2D7148, MEMORY[0x1E69CB218]);
    sub_1E6434EE0(&qword_1EE2D7140, v25);
    v26 = sub_1E65D7FD8();
    sub_1E5DFE50C(v24, &qword_1ED0796C8, &qword_1E6601F30);
    sub_1E5DFE50C(v21, &qword_1ED0796D8, &qword_1E6601F40);
    sub_1E5DFE50C(v22, &qword_1ED0796D8, &qword_1E6601F40);
    sub_1E5DFE50C(v23, &qword_1ED0796C8, &qword_1E6601F30);
    sub_1E5DFE50C(v77, &qword_1ED0796D8, &qword_1E6601F40);
    if (v26)
    {
      goto LABEL_19;
    }

LABEL_5:
    ++v2;
    (*v78)(v99[63], v99[59]);
    result = v95;
    if (v97 == v2)
    {
      goto LABEL_12;
    }
  }

  v6 = v99[58];
  sub_1E5DFE50C(v99[57], &qword_1ED0796D8, &qword_1E6601F40);
  sub_1E5DFE50C(v6, &qword_1ED0796D8, &qword_1E6601F40);
  if (v17(v11 + v16, 1, v19) != 1)
  {
LABEL_4:
    sub_1E5DFE50C(v99[55], &qword_1ED0796D0, &qword_1E6601F38);
    goto LABEL_5;
  }

  sub_1E5DFE50C(v99[55], &qword_1ED0796D8, &qword_1E6601F40);
LABEL_19:
  v44 = v99[65];
  v46 = v99[63];
  v45 = v99[64];
  v47 = v99[59];
  v48 = v99[60];
  v50 = v99[49];
  v49 = v99[50];

  v51 = *(v48 + 32);
  v99[75] = v51;
  v99[76] = (v48 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v51(v45, v46, v47);
  v51(v44, v45, v47);
  sub_1E65D9858();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v68 = v99[65];
    v69 = v99[59];
    sub_1E6434F28(v99[50], MEMORY[0x1E69CBDF0]);
    (*v78)(v68, v69);
    goto LABEL_13;
  }

  v52 = *v99[50];
  v99[77] = v52;
  v53 = *(v52 + 16);
  if (v53)
  {
    v54 = v99[46];
    v55 = v99[43];
    v56 = v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v57 = *(v54 + 72);
    v58 = (v55 + 32);
    v59 = MEMORY[0x1E69E7CC0];
    do
    {
      v61 = v99[47];
      v60 = v99[48];
      v62 = v99[45];
      sub_1E64345C0(v56, v60);
      sub_1E6434624(v60, v61);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1E6434F28(v99[47], MEMORY[0x1E69CB668]);
      }

      else
      {
        v63 = *v58;
        (*v58)(v99[44], v99[47], v99[42]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_1E64F610C(0, *(v59 + 2) + 1, 1, v59);
        }

        v65 = *(v59 + 2);
        v64 = *(v59 + 3);
        if (v65 >= v64 >> 1)
        {
          v59 = sub_1E64F610C(v64 > 1, v65 + 1, 1, v59);
        }

        v66 = v99[44];
        v67 = v99[42];
        *(v59 + 2) = v65 + 1;
        v63(&v59[((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v65], v66, v67);
      }

      v56 += v57;
      --v53;
    }

    while (v53);
  }

  else
  {
    v59 = MEMORY[0x1E69E7CC0];
  }

  v99[78] = v59;
  v70 = v99[65];
  v71 = v99[21];
  v72 = CatalogService.fetchRemoteCatalogLockups.getter();
  v99[79] = v73;
  v74 = sub_1E65D9808();
  v98 = (v72 + *v72);
  v75 = v72[1];
  v76 = swift_task_alloc();
  v99[80] = v76;
  *v76 = v99;
  v76[1] = sub_1E642DE64;

  return (v98)(v74, v59);
}

uint64_t sub_1E642D3B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = v1;
  v5 = v3[71];
  v9 = *v2;
  v4[72] = v1;

  if (v1)
  {
    v6 = sub_1E642ECDC;
  }

  else
  {
    v7 = v4[70];

    v6 = sub_1E642D4D8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E642D4D8()
{
  result = v0[14];
  v97 = *(result + 16);
  if (!v97)
  {
LABEL_12:

LABEL_13:
    v27 = v0[66];
    v28 = sub_1E65E3B48();
    v29 = sub_1E65E6338();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1E5DE9000, v28, v29, "[SampleContentItemsStateResolver] No items found", v30, 2u);
      MEMORY[0x1E694F1C0](v30, -1, -1);
    }

    v31 = sub_1E65E37A8();
    sub_1E6434EE0(&qword_1ED0796E0, MEMORY[0x1E699EE28]);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x1E699EE20], v31);
    swift_willThrow();
    v33 = v0[65];
    v34 = v0[63];
    v35 = v0[64];
    v36 = v0[62];
    v38 = v0[57];
    v37 = v0[58];
    v40 = v0[55];
    v39 = v0[56];
    v41 = v0[53];
    v42 = v0[50];
    v79 = v0[48];
    v81 = v0[47];
    v83 = v0[44];
    v85 = v0[41];
    v87 = v0[40];
    v89 = v0[39];
    v90 = v0[36];
    v92 = v0[32];
    v94 = v0[28];
    v96 = v0[27];

    v43 = v0[1];

    return v43();
  }

  v2 = 0;
  v3 = v0[60];
  v91 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v4 = MEMORY[0x1E69CB210];
  v5 = v0[52];
  v86 = v0[54];
  v88 = (v5 + 56);
  *(v0 + 176) = *(v3 + 80);
  v84 = *v4;
  v93 = v3;
  v95 = result;
  v78 = (v3 + 8);
  v80 = (v5 + 48);
  v82 = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  while (1)
  {
    if (v2 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v7 = v0[63];
    v9 = v0[58];
    v8 = v0[59];
    v10 = v0[57];
    v11 = v0[55];
    v12 = v99[51];
    v13 = v91 + *(v93 + 72) * v2;
    v14 = *(v93 + 16);
    v99[73] = v14;
    v99[74] = v82;
    v14(v7, v13, v8);
    sub_1E65D9868();
    v15 = sub_1E65D8028();
    (*(*(v15 - 8) + 104))(v10, v84, v15);
    swift_storeEnumTagMultiPayload();
    (*v88)(v10, 0, 1, v12);
    v16 = *(v86 + 48);
    sub_1E5DFD1CC(v9, v11, &qword_1ED0796D8, &qword_1E6601F40);
    sub_1E5DFD1CC(v10, v11 + v16, &qword_1ED0796D8, &qword_1E6601F40);
    v17 = *v80;
    v0 = v99;
    v18 = (*v80)(v11, 1, v12);
    v19 = v99[51];
    if (v18 == 1)
    {
      break;
    }

    sub_1E5DFD1CC(v99[55], v99[56], &qword_1ED0796D8, &qword_1E6601F40);
    v20 = v17(v11 + v16, 1, v19);
    v21 = v99[57];
    v22 = v99[58];
    v23 = v99[56];
    if (v20 == 1)
    {
      sub_1E5DFE50C(v99[57], &qword_1ED0796D8, &qword_1E6601F40);
      sub_1E5DFE50C(v22, &qword_1ED0796D8, &qword_1E6601F40);
      sub_1E5DFE50C(v23, &qword_1ED0796C8, &qword_1E6601F30);
      goto LABEL_4;
    }

    v77 = v99[55];
    v24 = v99[53];
    sub_1E6434E70(v11 + v16, v24);
    v25 = MEMORY[0x1E69CB218];
    sub_1E6434EE0(&qword_1EE2D7148, MEMORY[0x1E69CB218]);
    sub_1E6434EE0(&qword_1EE2D7140, v25);
    v26 = sub_1E65D7FD8();
    sub_1E5DFE50C(v24, &qword_1ED0796C8, &qword_1E6601F30);
    sub_1E5DFE50C(v21, &qword_1ED0796D8, &qword_1E6601F40);
    sub_1E5DFE50C(v22, &qword_1ED0796D8, &qword_1E6601F40);
    sub_1E5DFE50C(v23, &qword_1ED0796C8, &qword_1E6601F30);
    sub_1E5DFE50C(v77, &qword_1ED0796D8, &qword_1E6601F40);
    if (v26)
    {
      goto LABEL_19;
    }

LABEL_5:
    ++v2;
    (*v78)(v99[63], v99[59]);
    result = v95;
    if (v97 == v2)
    {
      goto LABEL_12;
    }
  }

  v6 = v99[58];
  sub_1E5DFE50C(v99[57], &qword_1ED0796D8, &qword_1E6601F40);
  sub_1E5DFE50C(v6, &qword_1ED0796D8, &qword_1E6601F40);
  if (v17(v11 + v16, 1, v19) != 1)
  {
LABEL_4:
    sub_1E5DFE50C(v99[55], &qword_1ED0796D0, &qword_1E6601F38);
    goto LABEL_5;
  }

  sub_1E5DFE50C(v99[55], &qword_1ED0796D8, &qword_1E6601F40);
LABEL_19:
  v44 = v99[65];
  v46 = v99[63];
  v45 = v99[64];
  v47 = v99[59];
  v48 = v99[60];
  v50 = v99[49];
  v49 = v99[50];

  v51 = *(v48 + 32);
  v99[75] = v51;
  v99[76] = (v48 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v51(v45, v46, v47);
  v51(v44, v45, v47);
  sub_1E65D9858();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v68 = v99[65];
    v69 = v99[59];
    sub_1E6434F28(v99[50], MEMORY[0x1E69CBDF0]);
    (*v78)(v68, v69);
    goto LABEL_13;
  }

  v52 = *v99[50];
  v99[77] = v52;
  v53 = *(v52 + 16);
  if (v53)
  {
    v54 = v99[46];
    v55 = v99[43];
    v56 = v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v57 = *(v54 + 72);
    v58 = (v55 + 32);
    v59 = MEMORY[0x1E69E7CC0];
    do
    {
      v61 = v99[47];
      v60 = v99[48];
      v62 = v99[45];
      sub_1E64345C0(v56, v60);
      sub_1E6434624(v60, v61);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1E6434F28(v99[47], MEMORY[0x1E69CB668]);
      }

      else
      {
        v63 = *v58;
        (*v58)(v99[44], v99[47], v99[42]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_1E64F610C(0, *(v59 + 2) + 1, 1, v59);
        }

        v65 = *(v59 + 2);
        v64 = *(v59 + 3);
        if (v65 >= v64 >> 1)
        {
          v59 = sub_1E64F610C(v64 > 1, v65 + 1, 1, v59);
        }

        v66 = v99[44];
        v67 = v99[42];
        *(v59 + 2) = v65 + 1;
        v63(&v59[((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v65], v66, v67);
      }

      v56 += v57;
      --v53;
    }

    while (v53);
  }

  else
  {
    v59 = MEMORY[0x1E69E7CC0];
  }

  v99[78] = v59;
  v70 = v99[65];
  v71 = v99[21];
  v72 = CatalogService.fetchRemoteCatalogLockups.getter();
  v99[79] = v73;
  v74 = sub_1E65D9808();
  v98 = (v72 + *v72);
  v75 = v72[1];
  v76 = swift_task_alloc();
  v99[80] = v76;
  *v76 = v99;
  v76[1] = sub_1E642DE64;

  return v98(v74, v59);
}

uint64_t sub_1E642DE64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 640);
  v6 = *v2;
  v4[81] = v1;

  v7 = v4[79];
  v8 = v4[78];

  if (v1)
  {
    v9 = sub_1E642EE50;
  }

  else
  {
    v4[82] = a1;
    v9 = sub_1E642DFC4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E642DFC4()
{
  v100 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 520);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  v5 = sub_1E5F9F4E0(sub_1E6434688, v4, v1);

  if (*(v5 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072928, &qword_1E65EC048);
    v6 = sub_1E65E6A28();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v99[0] = v6;

  sub_1E64346A8(v7, 1, v99);
  if (v2)
  {

    return swift_unexpectedError();
  }

  v9 = *(v0 + 616);
  v10 = *(v0 + 709);
  v11 = *(v0 + 520);

  v12 = v99[0];
  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = sub_1E6406F8C(sub_1E6434C14, v13, v9);

  if (v10)
  {
    v15 = &unk_1F5FA8CC8;
  }

  else
  {
    v15 = &unk_1F5FA8CF0;
  }

  v16 = sub_1E5F9B388(v15);
  v98 = v16;
  v91 = *(v14 + 2);
  if (v91)
  {
    v21 = 0;
    v22 = *(v0 + 304);
    v93 = v16 + 56;
    v82 = (v22 + 32);
    v89 = v22;
    v95 = (v22 + 8);
    v84 = MEMORY[0x1E69E7CC0];
    v87 = v14;
    while (1)
    {
      if (v21 >= *(v14 + 2))
      {
        __break(1u);
        return MEMORY[0x1EEE34850](v16, v17, v18, v19, v20);
      }

      v23 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v24 = *(v89 + 72);
      v25 = *(v89 + 16);
      v25(*(v0 + 328), &v14[v23 + v24 * v21], *(v0 + 296));
      v26 = sub_1E65D8238();
      if (v28 == -1)
      {
        goto LABEL_27;
      }

      if ((v28 & 1) == 0)
      {
        break;
      }

      if (*(v98 + 2))
      {
        v29 = *(v98 + 5);
        sub_1E65E6D28();
        sub_1E65D89A8();
        sub_1E65E5D78();

        v30 = sub_1E65E6D78();
        v31 = -1 << v98[32];
        v32 = v30 & ~v31;
        if ((*&v93[(v32 >> 3) & 0xFFFFFFFFFFFFFF8] >> v32))
        {
          v33 = ~v31;
          while (1)
          {
            v34 = *(*(v98 + 6) + v32);
            v35 = sub_1E65D89A8();
            v37 = v36;
            if (v35 == sub_1E65D89A8() && v37 == v38)
            {
              break;
            }

            v40 = sub_1E65E6C18();

            if (v40)
            {
              goto LABEL_34;
            }

            v32 = (v32 + 1) & v33;
            if (((*&v93[(v32 >> 3) & 0xFFFFFFFFFFFFFF8] >> v32) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

LABEL_34:
          v53 = *v82;
          (*v82)(*(v0 + 312), *(v0 + 328), *(v0 + 296));
          v54 = v84;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1E601D0D4(0, *(v84 + 16) + 1, 1);
            v54 = v84;
          }

          v14 = v87;
          v56 = *(v54 + 16);
          v55 = *(v54 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_1E601D0D4(v55 > 1, v56 + 1, 1);
            v54 = v84;
          }

          v57 = *(v0 + 312);
          v58 = *(v0 + 296);
          *(v54 + 16) = v56 + 1;
          v84 = v54;
          v16 = v53(v54 + v23 + v56 * v24, v57, v58);
          goto LABEL_31;
        }
      }

LABEL_30:
      v16 = (*v95)(*(v0 + 328), *(v0 + 296));
      v14 = v87;
LABEL_31:
      if (++v21 == v91)
      {
        goto LABEL_40;
      }
    }

    sub_1E61281C8(v26, v27, v28);
LABEL_27:
    v41 = *(v0 + 528);
    v25(*(v0 + 320), *(v0 + 328), *(v0 + 296));
    v42 = sub_1E65E3B48();
    v43 = sub_1E65E6328();
    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 320);
    v46 = *(v0 + 296);
    if (v44)
    {
      v47 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v99[0] = v86;
      *v47 = 136315138;
      *(v0 + 128) = sub_1E65D81D8();
      *(v0 + 136) = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      v49 = sub_1E65E6648();
      v51 = v50;
      (*v95)(v45, v46);

      v52 = sub_1E5DFD4B0(v49, v51, v99);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_1E5DE9000, v42, v43, "[SampleContentItemsStateResolver] Failed to determine the media type for lockup %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      MEMORY[0x1E694F1C0](v86, -1, -1);
      MEMORY[0x1E694F1C0](v47, -1, -1);
    }

    else
    {

      (*v95)(v45, v46);
    }

    goto LABEL_30;
  }

  v84 = MEMORY[0x1E69E7CC0];
LABEL_40:
  *(v0 + 664) = v84;
  v96 = *(v0 + 600);
  v97 = *(v0 + 608);
  v78 = *(v0 + 592);
  v76 = *(v0 + 584);
  v83 = *(v0 + 704);
  v74 = *(v0 + 520);
  v59 = *(v0 + 496);
  v60 = *(v0 + 472);
  v85 = v60;
  v61 = *(v0 + 288);
  v88 = v59;
  v90 = v61;
  v62 = *(v0 + 264);
  v63 = *(v0 + 272);
  v79 = *(v0 + 256);
  v92 = *(v0 + 280);
  v94 = *(v0 + 248);
  v64 = *(v0 + 240);
  v77 = *(v0 + 232);
  v80 = *(v0 + 192);
  v81 = *(v0 + 488);
  v75 = *(v0 + 184);
  v65 = *(v0 + 176);

  *(v0 + 144) = v84;
  v76(v59, v74, v60);
  (*(v63 + 16))(v61, v65, v62);
  (*(v64 + 16))(v79, v75, v77);
  sub_1E5DF650C(v80, v0 + 16);
  v66 = (v83 + 16) & ~v83;
  v67 = (v66 + v81 + *(v63 + 80)) & ~*(v63 + 80);
  v68 = (v92 + *(v64 + 80) + v67) & ~*(v64 + 80);
  v69 = swift_allocObject();
  *(v0 + 672) = v69;
  v96(v69 + v66, v88, v85);
  (*(v63 + 32))(v69 + v67, v90, v62);
  (*(v64 + 32))(v69 + v68, v79, v77);
  sub_1E5DF599C((v0 + 16), v69 + ((v94 + v68 + 7) & 0xFFFFFFFFFFFFFFF8));
  v70 = *(MEMORY[0x1E69CAD80] + 4);
  v71 = swift_task_alloc();
  *(v0 + 680) = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
  v73 = sub_1E65E3798();
  v20 = sub_1E6434E0C();
  *v71 = v0;
  v71[1] = sub_1E642E814;
  v16 = &unk_1E6601F50;
  v17 = v69;
  v18 = v72;
  v19 = v73;

  return MEMORY[0x1EEE34850](v16, v17, v18, v19, v20);
}

uint64_t sub_1E642E814(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 680);
  v6 = *v2;
  *(*v2 + 688) = v1;

  if (v1)
  {
    v7 = sub_1E642F794;
  }

  else
  {
    v8 = v4[84];
    v9 = v4[83];

    v4[87] = a1;
    v7 = sub_1E642E950;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E642E950()
{
  v1 = v0[65];
  v15 = v0[64];
  v16 = v0[63];
  v2 = v0[60];
  v13 = v0[87];
  v14 = v0[59];
  v17 = v0[62];
  v18 = v0[58];
  v19 = v0[57];
  v20 = v0[56];
  v21 = v0[55];
  v22 = v0[53];
  v23 = v0[50];
  v24 = v0[48];
  v25 = v0[47];
  v26 = v0[44];
  v27 = v0[41];
  v28 = v0[40];
  v29 = v0[39];
  v30 = v0[36];
  v31 = v0[32];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v8 = v0[22];
  v12 = v0[20];
  v9 = sub_1E65D9818();
  sub_1E63C4134(v8, v7, v9, v3);

  (*(v5 + 16))(v4, v3, v6);
  sub_1E65E3658();
  (*(v5 + 8))(v3, v6);
  (*(v2 + 8))(v1, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E642EB68()
{
  v1 = v0[67];

  v24 = v0[69];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[62];
  v7 = v0[57];
  v6 = v0[58];
  v9 = v0[55];
  v8 = v0[56];
  v10 = v0[53];
  v11 = v0[50];
  v14 = v0[48];
  v15 = v0[47];
  v16 = v0[44];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[39];
  v20 = v0[36];
  v21 = v0[32];
  v22 = v0[28];
  v23 = v0[27];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E642ECDC()
{
  v1 = v0[70];

  v24 = v0[72];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[62];
  v7 = v0[57];
  v6 = v0[58];
  v9 = v0[55];
  v8 = v0[56];
  v10 = v0[53];
  v11 = v0[50];
  v14 = v0[48];
  v15 = v0[47];
  v16 = v0[44];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[39];
  v20 = v0[36];
  v21 = v0[32];
  v22 = v0[28];
  v23 = v0[27];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E642EE50()
{
  v112 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 528);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 648);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v111[0] = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = *(v0 + 56);
    v10 = MEMORY[0x1E694E6C0](*(v0 + 64), *(v0 + 72));
    v12 = sub_1E5DFD4B0(v10, v11, v111);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "[SampleContentItemsStateResolver] Error fetching placeholders: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);

    v13 = v6;
  }

  else
  {
    v14 = *(v0 + 648);

    v13 = v14;
  }

  v15 = *(v0 + 520);
  v16 = swift_task_alloc();
  *(v16 + 16) = v15;
  v17 = sub_1E5F9F4E0(sub_1E6434688, v16, MEMORY[0x1E69E7CC0]);

  if (*(v17 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072928, &qword_1E65EC048);
    v18 = sub_1E65E6A28();
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC8];
  }

  v111[0] = v18;

  sub_1E64346A8(v19, 1, v111);
  v20 = *(v0 + 616);
  v21 = *(v0 + 709);
  v22 = *(v0 + 520);

  v23 = v111[0];
  v24 = swift_task_alloc();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  v25 = sub_1E6406F8C(sub_1E6434C14, v24, v20);

  if (v21)
  {
    v26 = &unk_1F5FA8CC8;
  }

  else
  {
    v26 = &unk_1F5FA8CF0;
  }

  v27 = sub_1E5F9B388(v26);
  v110 = v27;
  v102 = *(v25 + 2);
  v104 = v25;
  if (v102)
  {
    v32 = 0;
    v33 = *(v0 + 304);
    v105 = v27 + 56;
    v96 = (v33 + 32);
    v100 = v33;
    v107 = (v33 + 8);
    v97 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v32 >= *(v25 + 2))
      {
        __break(1u);
        return MEMORY[0x1EEE34850](v27, v28, v29, v30, v31);
      }

      v34 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v35 = *(v100 + 72);
      v36 = &v25[v34 + v35 * v32];
      v37 = *(v100 + 16);
      v37(*(v0 + 328), v36, *(v0 + 296));
      v38 = sub_1E65D8238();
      if (v40 == -1)
      {
        goto LABEL_26;
      }

      if ((v40 & 1) == 0)
      {
        break;
      }

      if (*(v110 + 2))
      {
        v41 = *(v110 + 5);
        sub_1E65E6D28();
        sub_1E65D89A8();
        sub_1E65E5D78();

        v42 = sub_1E65E6D78();
        v43 = -1 << v110[32];
        v44 = v42 & ~v43;
        if ((*&v105[(v44 >> 3) & 0xFFFFFFFFFFFFFF8] >> v44))
        {
          v45 = ~v43;
          while (1)
          {
            v46 = *(*(v110 + 6) + v44);
            v47 = sub_1E65D89A8();
            v49 = v48;
            if (v47 == sub_1E65D89A8() && v49 == v50)
            {
              break;
            }

            v52 = sub_1E65E6C18();

            if (v52)
            {
              goto LABEL_33;
            }

            v44 = (v44 + 1) & v45;
            if (((*&v105[(v44 >> 3) & 0xFFFFFFFFFFFFFF8] >> v44) & 1) == 0)
            {
              goto LABEL_29;
            }
          }

LABEL_33:
          v65 = *v96;
          (*v96)(*(v0 + 312), *(v0 + 328), *(v0 + 296));
          v66 = v97;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1E601D0D4(0, *(v97 + 16) + 1, 1);
            v66 = v97;
          }

          v68 = *(v66 + 16);
          v67 = *(v66 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_1E601D0D4(v67 > 1, v68 + 1, 1);
            v66 = v97;
          }

          v69 = *(v0 + 312);
          v70 = *(v0 + 296);
          *(v66 + 16) = v68 + 1;
          v97 = v66;
          v27 = v65(v66 + v34 + v68 * v35, v69, v70);
          goto LABEL_30;
        }
      }

LABEL_29:
      v27 = (*v107)(*(v0 + 328), *(v0 + 296));
LABEL_30:
      ++v32;
      v25 = v104;
      if (v32 == v102)
      {
        goto LABEL_39;
      }
    }

    sub_1E61281C8(v38, v39, v40);
LABEL_26:
    v53 = *(v0 + 528);
    v37(*(v0 + 320), *(v0 + 328), *(v0 + 296));
    v54 = sub_1E65E3B48();
    v55 = sub_1E65E6328();
    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 320);
    v58 = *(v0 + 296);
    if (v56)
    {
      v59 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v111[0] = v98;
      *v59 = 136315138;
      *(v0 + 128) = sub_1E65D81D8();
      *(v0 + 136) = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      v61 = sub_1E65E6648();
      v63 = v62;
      (*v107)(v57, v58);

      v64 = sub_1E5DFD4B0(v61, v63, v111);

      *(v59 + 4) = v64;
      _os_log_impl(&dword_1E5DE9000, v54, v55, "[SampleContentItemsStateResolver] Failed to determine the media type for lockup %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x1E694F1C0](v98, -1, -1);
      MEMORY[0x1E694F1C0](v59, -1, -1);
    }

    else
    {

      (*v107)(v57, v58);
    }

    goto LABEL_29;
  }

  v97 = MEMORY[0x1E69E7CC0];
LABEL_39:
  *(v0 + 664) = v97;
  v108 = *(v0 + 600);
  v109 = *(v0 + 608);
  v90 = *(v0 + 584);
  v71 = *(v0 + 704);
  v88 = *(v0 + 520);
  v72 = *(v0 + 496);
  v73 = *(v0 + 472);
  v95 = *(v0 + 488);
  v74 = *(v0 + 288);
  v99 = v72;
  v101 = v74;
  v103 = *(v0 + 280);
  v76 = *(v0 + 264);
  v75 = *(v0 + 272);
  v92 = *(v0 + 592);
  v93 = *(v0 + 256);
  v106 = *(v0 + 248);
  v77 = *(v0 + 240);
  v91 = *(v0 + 232);
  v94 = *(v0 + 192);
  v89 = *(v0 + 184);
  v78 = *(v0 + 176);

  *(v0 + 144) = v97;
  v90(v72, v88, v73);
  (*(v75 + 16))(v74, v78, v76);
  (*(v77 + 16))(v93, v89, v91);
  sub_1E5DF650C(v94, v0 + 16);
  v79 = (v71 + 16) & ~v71;
  v80 = (v79 + v95 + *(v75 + 80)) & ~*(v75 + 80);
  v81 = (v103 + *(v77 + 80) + v80) & ~*(v77 + 80);
  v82 = swift_allocObject();
  *(v0 + 672) = v82;
  v108(v82 + v79, v99, v73);
  (*(v75 + 32))(v82 + v80, v101, v76);
  (*(v77 + 32))(v82 + v81, v93, v91);
  sub_1E5DF599C((v0 + 16), v82 + ((v106 + v81 + 7) & 0xFFFFFFFFFFFFFFF8));
  v83 = *(MEMORY[0x1E69CAD80] + 4);
  v84 = swift_task_alloc();
  *(v0 + 680) = v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
  v86 = sub_1E65E3798();
  v31 = sub_1E6434E0C();
  *v84 = v0;
  v84[1] = sub_1E642E814;
  v27 = &unk_1E6601F50;
  v28 = v82;
  v29 = v85;
  v30 = v86;

  return MEMORY[0x1EEE34850](v27, v28, v29, v30, v31);
}

uint64_t sub_1E642F794()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[65];
  v4 = v0[59];
  v5 = v0[60];

  (*(v5 + 8))(v3, v4);
  v28 = v0[86];
  v6 = v0[65];
  v7 = v0[63];
  v8 = v0[64];
  v9 = v0[62];
  v11 = v0[57];
  v10 = v0[58];
  v13 = v0[55];
  v12 = v0[56];
  v14 = v0[53];
  v15 = v0[50];
  v18 = v0[48];
  v19 = v0[47];
  v20 = v0[44];
  v21 = v0[41];
  v22 = v0[40];
  v23 = v0[39];
  v24 = v0[36];
  v25 = v0[32];
  v26 = v0[28];
  v27 = v0[27];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E642F934(uint64_t a1, _BYTE *a2)
{
  v5 = v3;
  Description = type metadata accessor for CatalogService()[-1].Description;
  v8 = (*(Description + 80) + 16) & ~*(Description + 80);
  v9 = Description[8];
  v10 = *(sub_1E65D7848() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = type metadata accessor for LocalizationService()[-1].Description;
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = (v13[8] + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_1E5DFE6BC;

  return sub_1E642C1A8(a1, a2, v2 + v8, v2 + v11, v2 + v14, v2 + v15);
}

uint64_t sub_1E642FB10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1E65D9808();
  v4 = sub_1E65D8E48();
  v6 = v5;
  v7 = sub_1E65D8078();
  v9 = v8;
  v10 = sub_1E65D81B8();
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072088, &qword_1E65EA770) + 48);

  MEMORY[0x1E694D7C0](v12, v13);

  MEMORY[0x1E694D7C0](v4, v6);
  swift_bridgeObjectRelease_n();

  *a2 = v7;
  a2[1] = v9;
  v14 = sub_1E65D8258();
  return (*(*(v14 - 8) + 16))(a2 + v16, a1, v14);
}

uint64_t sub_1E642FC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v6 = sub_1E65D9CC8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65D88D8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E64345C0(a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1E65D8258();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a3, v14, v15);
    return (*(v16 + 56))(a3, 0, 1, v15);
  }

  else
  {
    v40[0] = a3;
    v40[1] = v3;
    (*(v7 + 32))(v10, v14, v6);
    sub_1E65D9808();
    v18 = sub_1E65D8E48();
    v20 = v19;
    v21 = sub_1E65D9C98();
    v22 = v6;
    v24 = v23;
    v25 = sub_1E65D9CB8();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    v41 = v21;
    v42 = v24;

    MEMORY[0x1E694D7C0](v27, v28);

    MEMORY[0x1E694D7C0](v18, v20);
    swift_bridgeObjectRelease_n();

    v29 = v43;
    if (*(v43 + 16))
    {
      v30 = v22;
      v31 = sub_1E6215038(v41, v42);
      v33 = v32;

      v34 = v40[0];
      if (v33)
      {
        v35 = *(v29 + 56);
        v36 = sub_1E65D8258();
        v37 = *(v36 - 8);
        (*(v37 + 16))(v34, v35 + *(v37 + 72) * v31, v36);
        (*(v7 + 8))(v10, v30);
        return (*(v37 + 56))(v34, 0, 1, v36);
      }

      else
      {
        (*(v7 + 8))(v10, v30);
        v39 = sub_1E65D8258();
        return (*(*(v39 - 8) + 56))(v34, 1, 1, v39);
      }
    }

    else
    {

      (*(v7 + 8))(v10, v22);
      v38 = sub_1E65D8258();
      return (*(*(v38 - 8) + 56))(v40[0], 1, 1, v38);
    }
  }
}

uint64_t sub_1E6430094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1E65E37C8();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = sub_1E65DA0B8();
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = *(*(sub_1E65D8BB8() - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = sub_1E65DAC98();
  v6[15] = v14;
  v15 = *(v14 - 8);
  v6[16] = v15;
  v16 = *(v15 + 64) + 15;
  v6[17] = swift_task_alloc();
  v17 = sub_1E65D72D8();
  v6[18] = v17;
  v18 = *(v17 - 8);
  v6[19] = v18;
  v19 = *(v18 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64302D8, 0, 0);
}

uint64_t sub_1E64302D8()
{
  v1 = v0[25];
  v27 = v0[24];
  v2 = v0[23];
  v22 = v0[22];
  v24 = v0[21];
  v32 = v0[20];
  v33 = v0[19];
  v21 = v0[18];
  v28 = v0[17];
  v25 = v0[16];
  v26 = v0[15];
  v31 = v0[14];
  v3 = v0[12];
  v30 = v0[13];
  v29 = v0[10];
  v18 = v0[11];
  v19 = v0[9];
  v20 = v0[8];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];
  v23 = v0[2];
  v9 = sub_1E65D9818();
  v10 = LocalizationService.localizedNumberFormatter.getter();

  v11 = sub_1E65D8248();
  sub_1E63C4134(v7, v4, v11, v1);

  v12 = sub_1E65D80A8();
  sub_1E63C4134(v7, v4, v12, v27);

  sub_1E63C4134(v7, v4, v9, v2);

  sub_1E65D8128();
  sub_1E65D8BA8();
  sub_1E6434F28(v31, MEMORY[0x1E69CB950]);
  sub_1E65DA098();
  (*(v3 + 8))(v30, v18);
  LODWORD(v4) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076480, &qword_1E65F56D0) + 48);
  sub_1E65DAC38();
  sub_1E65DC2D8();
  sub_1E65DAC78();
  sub_1E65D74C8();

  (*(v19 + 104))(v29, *MEMORY[0x1E699EE40], v20);
  v13 = *(v33 + 16);
  v13(v22, v2, v21);
  sub_1E65D8078();
  sub_1E65D80D8();
  v13(v24, v27, v21);
  v13(v32, v1, v21);
  sub_1E65E3758();
  (*(v25 + 8))(v28, v26);
  v14 = *(v33 + 8);
  v14(v2, v21);
  v14(v27, v21);
  v14(v1, v21);
  v15 = sub_1E65E3798();
  (*(*(v15 - 8) + 56))(v23, 0, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E64306C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64307F8, 0, 0);
}

uint64_t sub_1E64307F8()
{
  v1 = v0[2];
  active = AppStateService.makeAppDidBecomeActiveStream.getter();
  v0[10] = v3;
  v8 = (active + *active);
  v4 = active[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E64308F4;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E64308F4()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6430A0C, 0, 0);
}

uint64_t sub_1E6430A0C()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E6430AE8;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E6430AE8()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6430BE4, 0, 0);
}

uint64_t sub_1E6430BE4()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "App did become active - refreshing sample content items", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v9 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6430DA4, v9, v8);
  }
}

uint64_t sub_1E6430DA4()
{
  v1 = v0[13];
  v2 = v0[3];

  sub_1E65E4E78();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6430AE8;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E6430E5C(uint64_t a1)
{
  Description = type metadata accessor for AppStateService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E64306C4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6430F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D18, &qword_1E65F37A8);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64310B0, 0, 0);
}

uint64_t sub_1E64310B0()
{
  v1 = v0[3];
  v2 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E64311AC;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E64311AC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1E5FE0E84;
  }

  else
  {
    v4 = sub_1E64312DC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E64312DC()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E64313B8;
  v7 = v0[10];
  v8 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v8);
}

uint64_t sub_1E64313B8()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E64314B4, 0, 0);
}

uint64_t sub_1E64314B4()
{
  if (v0[2])
  {

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v1 = sub_1E65E3B68();
    __swift_project_value_buffer(v1, qword_1EE2EA2A0);
    v2 = sub_1E65E3B48();
    v3 = sub_1E65E6338();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1E5DE9000, v2, v3, "Archived Sessions Updated - refreshing sample content items", v4, 2u);
      MEMORY[0x1E694F1C0](v4, -1, -1);
    }

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6431674, v6, v5);
  }

  else
  {
    v7 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1E6431674()
{
  v1 = v0[15];
  v2 = v0[4];

  sub_1E65E4E78();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E64313B8;
  v5 = v0[10];
  v6 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t sub_1E643172C(uint64_t a1)
{
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6430F7C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E643184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072878, &qword_1E65EBED8);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078790, &qword_1E65FD650);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6431980, 0, 0);
}

uint64_t sub_1E6431980()
{
  v1 = v0[2];
  v2 = ContentAvailabilityService.makeNetworkConditionsUpdatedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6431A7C;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6431A7C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6431B94, 0, 0);
}

uint64_t sub_1E6431B94()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E6431C70;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E6431C70()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6431D6C, 0, 0);
}

uint64_t sub_1E6431D6C()
{
  if (*(v0 + 112) == 3)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "Network Conditions Updated — refreshing sample content items", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v9 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6431F2C, v9, v8);
  }
}

uint64_t sub_1E6431F2C()
{
  v1 = v0[13];
  v2 = v0[3];

  sub_1E65E4E78();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6431C70;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E6431FE4(uint64_t a1)
{
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E643184C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6432104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6432238, 0, 0);
}

uint64_t sub_1E6432238()
{
  v1 = v0[2];
  v2 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6432334;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6432334()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E643244C, 0, 0);
}

uint64_t sub_1E643244C()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E6432528;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E6432528()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6432624, 0, 0);
}

uint64_t sub_1E6432624()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "Significant Time Change — refreshing sample content items", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v9 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64327E4, v9, v8);
  }
}

uint64_t sub_1E64327E4()
{
  v1 = v0[13];
  v2 = v0[3];

  sub_1E65E4E78();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6432528;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E643289C(uint64_t a1)
{
  Description = type metadata accessor for AppStateService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6432104(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E64329BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6432AF0, 0, 0);
}

uint64_t sub_1E6432AF0()
{
  v1 = v0[2];
  v2 = ContentAvailabilityService.makeContentAvailabilityUpdatedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6432BEC;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6432BEC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6432D04, 0, 0);
}

uint64_t sub_1E6432D04()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E6432DE0;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E6432DE0()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6432EDC, 0, 0);
}

uint64_t sub_1E6432EDC()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "Content Availability Updated — refreshing sample content items", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v9 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E643309C, v9, v8);
  }
}

uint64_t sub_1E643309C()
{
  v1 = v0[13];
  v2 = v0[3];

  sub_1E65E4E78();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6432DE0;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E6433154(uint64_t a1)
{
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E64329BC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6433274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64333A8, 0, 0);
}

uint64_t sub_1E64333A8()
{
  v1 = v0[2];
  v2 = CatalogService.makeCatalogUpdatedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E64334A4;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E64334A4()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1E60EC658;
  }

  else
  {
    v4 = sub_1E64335D4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E64335D4()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E64336B0;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 15, 0, 0, v8);
}

uint64_t sub_1E64336B0()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E64337AC, 0, 0);
}

uint64_t sub_1E64337AC()
{
  if (*(v0 + 120) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v4 = sub_1E65E3B68();
    __swift_project_value_buffer(v4, qword_1EE2EA2A0);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "Catalog Updated — refreshing sample content items", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    sub_1E65E6058();
    *(v0 + 112) = sub_1E65E6048();
    v9 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E643396C, v9, v8);
  }
}

uint64_t sub_1E643396C()
{
  v1 = v0[14];
  v2 = v0[3];

  sub_1E65E4E78();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E64336B0;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 15, 0, 0, v6);
}

uint64_t sub_1E6433A24(uint64_t a1)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6433274(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6433B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796C0, &qword_1E6601F28);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6433CE0, 0, 0);
}

uint64_t sub_1E6433CE0()
{
  v1 = v0[2];
  v2 = CatalogService.makeSummaryShelfLockupDescriptorsCacheUpdatedStream.getter();
  v0[13] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1E6433DDC;
  v6 = v0[9];

  return v8(v6);
}

uint64_t sub_1E6433DDC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1E624733C;
  }

  else
  {
    v4 = sub_1E6433F0C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6433F0C()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1E6433FE8;
  v7 = v0[12];
  v8 = v0[10];

  return MEMORY[0x1EEE6D9C8](v0 + 20, 0, 0, v8);
}

uint64_t sub_1E6433FE8()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E64340E4, 0, 0);
}

uint64_t sub_1E64340E4()
{
  if (*(v0 + 160) == 1)
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 48);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v5 = sub_1E65E3B68();
    __swift_project_value_buffer(v5, qword_1EE2EA2A0);
    v6 = sub_1E65E3B48();
    v7 = sub_1E65E6338();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1E5DE9000, v6, v7, "Summary shelf lockup descriptors updated — refreshing summary sample content items", v8, 2u);
      MEMORY[0x1E694F1C0](v8, -1, -1);
    }

    *(v0 + 161) = 0;
    *(v0 + 136) = sub_1E65E6058();
    *(v0 + 144) = sub_1E65E6048();
    v10 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64342B8, v10, v9);
  }
}

uint64_t sub_1E64342B8()
{
  v1 = v0[18];
  v2 = v0[6];
  v3 = v0[3];

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6434334, 0, 0);
}

uint64_t sub_1E6434334()
{
  v1 = *(v0 + 136);
  *(v0 + 152) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E64343C0, v3, v2);
}

uint64_t sub_1E64343C0()
{
  v1 = v0[19];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  sub_1E65E4E18();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1E6433FE8;
  v7 = v0[12];
  v8 = v0[10];

  return MEMORY[0x1EEE6D9C8](v0 + 20, 0, 0, v8);
}

uint64_t sub_1E64344A0(uint64_t a1)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6433B44(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E64345C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D88D8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6434624(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D88D8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E64346A8(uint64_t a1, char a2, void *a3)
{
  v63 = sub_1E65D8258();
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072088, &qword_1E65EA770);
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v54 - v12);
  v58 = *(a1 + 16);
  if (!v58)
  {
    goto LABEL_24;
  }

  v54 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v60 + 80);
  v59 = a1;
  v16 = (v61 + 32);
  v56 = a1 + ((v15 + 32) & ~v15);
  sub_1E5DFD1CC(v56, v13, &qword_1ED072088, &qword_1E65EA770);
  v17 = v13[1];
  v66 = *v13;
  v18 = v66;
  v67 = v17;
  v19 = *v16;
  v57 = v14;
  v55 = v19;
  v19(v62, v13 + v14, v63);
  v20 = *a3;
  v22 = sub_1E6215038(v18, v17);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1E64237A8();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_1E6419DEC(v25, a2 & 1);
  v27 = *a3;
  v28 = sub_1E6215038(v18, v17);
  if ((v26 & 1) == (v29 & 1))
  {
    v22 = v28;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v32 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v33 = (v32[6] + 16 * v22);
      *v33 = v18;
      v33[1] = v17;
      v55((v32[7] + *(v61 + 72) * v22), v62, v63);
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v32[2] = v36;
      if (v58 != 1)
      {
        v37 = 1;
        while (v37 < *(v59 + 16))
        {
          sub_1E5DFD1CC(v56 + *(v60 + 72) * v37, v13, &qword_1ED072088, &qword_1E65EA770);
          v38 = v13[1];
          v66 = *v13;
          v39 = v66;
          v67 = v38;
          v40 = *v16;
          (*v16)(v62, v13 + v57, v63);
          v41 = *a3;
          v42 = sub_1E6215038(v39, v38);
          v44 = v41[2];
          v45 = (v43 & 1) == 0;
          v35 = __OFADD__(v44, v45);
          v46 = v44 + v45;
          if (v35)
          {
            goto LABEL_26;
          }

          v47 = v43;
          if (v41[3] < v46)
          {
            sub_1E6419DEC(v46, 1);
            v48 = *a3;
            v42 = sub_1E6215038(v39, v38);
            if ((v47 & 1) != (v49 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v47)
          {
            goto LABEL_11;
          }

          v50 = *a3;
          *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
          v51 = (v50[6] + 16 * v42);
          *v51 = v39;
          v51[1] = v38;
          v40((v50[7] + *(v61 + 72) * v42), v62, v63);
          v52 = v50[2];
          v35 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v35)
          {
            goto LABEL_27;
          }

          ++v37;
          v50[2] = v53;
          if (v58 == v37)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v30 = swift_allocError();
    swift_willThrow();
    v68 = v30;
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v61 + 8))(v62, v63);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1E65E6C68();
  __break(1u);
LABEL_29:
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD00000000000001BLL, 0x80000001E6611C70);
  sub_1E65E69B8();
  MEMORY[0x1E694D7C0](39, 0xE100000000000000);
  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E6434C30(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(sub_1E65D9898() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1E65D7848() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  Description = type metadata accessor for LocalizationService()[-1].Description;
  v14 = (v11 + v12 + *(Description + 80)) & ~*(Description + 80);
  v15 = (Description[8] + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_1E5DFA78C;

  return sub_1E6430094(a1, a2, v2 + v8, v2 + v11, v2 + v14, v2 + v15);
}

unint64_t sub_1E6434E0C()
{
  result = qword_1EE2D4888;
  if (!qword_1EE2D4888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074CD0, &qword_1E660EF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4888);
  }

  return result;
}

uint64_t sub_1E6434E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796C8, &qword_1E6601F30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6434EE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6434F28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6434F88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v30 = a2;
  v5 = type metadata accessor for AppComposer();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796E8, &qword_1E6601F58);
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = sub_1E65DBEF8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65DBDA8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a1;
  (*(v12 + 16))(v15, v30, v11);
  sub_1E65DBD98();
  sub_1E5E1DEAC(a1, &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v22 = swift_allocObject();
  sub_1E5E1FA80(&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = (v22 + ((v6 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v33;
  v25 = v34;
  *v23 = v33;
  v23[1] = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;
  type metadata accessor for AppFeature();
  sub_1E6435E3C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E6435E3C(&qword_1EE2D6BC0, MEMORY[0x1E699D2F8]);
  swift_bridgeObjectRetain_n();
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v27 = sub_1E65E4F08();
  (*(v35 + 8))(v10, v36);
  (*(v17 + 8))(v20, v16);
  return v27;
}

uint64_t sub_1E6435384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a4;
  v43 = a5;
  v44 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38 - v13;
  v15 = sub_1E65D7848();
  v40 = *(v15 - 8);
  v41 = v15;
  v16 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65DBED8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v45 = &v38 - v24;
  v25 = sub_1E65DB9F8();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = type metadata accessor for AppState();
  v28 = v27[6];
  v29 = *(a2 + *(type metadata accessor for AppComposer() + 20) + 8);
  sub_1E5FB9AF8();
  v30 = *(a1 + v27[16] + 8);
  if (*(v30 + 16) && (v31 = sub_1E6215038(v44, v39), (v32 & 1) != 0))
  {
    (*(v19 + 16))(v23, *(v30 + 56) + *(v19 + 72) * v31, v18);
    (*(v19 + 32))(v45, v23, v18);
  }

  else
  {
    (*(v19 + 104))(v45, *MEMORY[0x1E699D310], v18);
  }

  v33 = v27[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v14);
  sub_1E5DFE50C(v10, &qword_1ED071F78, &unk_1E65EA3F0);
  v35 = v40;
  v34 = v41;
  v36 = *(v40 + 48);
  if (v36(v14, 1, v41) == 1)
  {
    sub_1E65D77C8();
    if (v36(v14, 1, v34) != 1)
    {
      sub_1E5DFE50C(v14, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v35 + 32))(v42, v14, v34);
  }

  return sub_1E65DBCF8();
}

uint64_t sub_1E6435798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1E6435384(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_1E6435848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079270, &qword_1E6601400);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;

  sub_1E65DBCE8();
  v11 = sub_1E65DBED8();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = a1 + *(type metadata accessor for AppState() + 64) + 8;
  return sub_1E6408E94(v10, a3, a4);
}

uint64_t sub_1E6435950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6435974, 0, 0);
}

uint64_t sub_1E6435974()
{
  v2 = v0[8];
  v1 = v0[9];
  if (sub_1E65DB988() == v2 && v3 == v1)
  {
  }

  else
  {
    v5 = v0[8];
    v6 = v0[9];
    v7 = sub_1E65E6C18();

    if ((v7 & 1) == 0)
    {
      v8 = v0[9];

      v9 = v0[8];
      goto LABEL_9;
    }
  }

  v9 = sub_1E65DB998();
  v8 = v10;
LABEL_9:
  v11 = v0[10];
  v12 = v11 + *(type metadata accessor for AppComposer() + 20);
  v13 = v12 + *(type metadata accessor for AppEnvironment() + 40);
  v14 = AwardsService.fetchSeymourAchievementProgress.getter();
  v0[11] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v16 = swift_allocObject();
  v0[12] = v16;
  *(v16 + 16) = xmmword_1E65EA670;
  *(v16 + 32) = v9;
  *(v16 + 40) = v8;
  v20 = (v14 + *v14);
  v17 = v14[1];
  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_1E6435B3C;

  return v20(v16);
}

uint64_t sub_1E6435B3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_1E6435DD0;
  }

  else
  {
    v8 = v4[11];
    v9 = v4[12];

    v4[15] = a1;
    v7 = sub_1E6435C74;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6435C74()
{
  sub_1E6059D88(*(v0 + 120), v0 + 16);

  v1 = *(v0 + 48);
  if (v1 == 255)
  {
    v8 = sub_1E65DB938();
    sub_1E6435E3C(&qword_1ED076CD8, MEMORY[0x1E699D160]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x1E699D150], v8);
    swift_willThrow();
    v7 = *(v0 + 8);
  }

  else
  {
    v2 = *(v0 + 56);
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 24);
    v6 = v1 & 1;
    if (v6)
    {
      v5 = *(v0 + 24) & 1;
      v3 = 0;
    }

    *v2 = *(v0 + 16);
    *(v2 + 8) = v5;
    *(v2 + 16) = v4;
    *(v2 + 24) = v3;
    *(v2 + 32) = v6;
    v7 = *(v0 + 8);
  }

  return v7();
}

uint64_t sub_1E6435DD0()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[14];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6435E3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6435E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796F0, &qword_1E6601F68);
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v30 - v8;
  v9 = type metadata accessor for AppComposer();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65E35F8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = sub_1E65E35C8();
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v3;
  v31 = v3;
  sub_1E5E1DEAC(v3, v12);
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = v20 + v11;
  v32 = v21;
  v22 = swift_allocObject();
  sub_1E5E1FA80(v12, v22 + v20);
  sub_1E65E35E8();
  sub_1E65E35B8();
  sub_1E5E1DEAC(v3, v12);
  v23 = swift_allocObject();
  sub_1E5E1FA80(v12, v23 + v20);
  v24 = (v23 + ((v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = a1;
  v24[1] = a2;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  type metadata accessor for AppFeature();
  sub_1E6437E1C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E6437E1C(&qword_1EE2D6078, MEMORY[0x1E699ED30]);
  swift_bridgeObjectRetain_n();
  v26 = v36;
  v27 = v34;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  sub_1E65E4F08();
  (*(v37 + 8))(v26, v38);
  (*(v35 + 8))(v19, v27);
  sub_1E5E1DEAC(v31, v12);
  v28 = swift_allocObject();
  sub_1E5E1FA80(v12, v28 + v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  sub_1E5FEB2FC();
  return sub_1E65E34D8();
}

uint64_t sub_1E6436330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079700, &qword_1E6601F88);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796F8, &qword_1E6601F80);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = sub_1E65DAC98();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v16 = sub_1E65E3598();
  v4[17] = v16;
  v17 = *(v16 - 8);
  v4[18] = v17;
  v18 = *(v17 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v19 = *(*(sub_1E65D8BB8() - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v20 = sub_1E65DA0B8();
  v4[22] = v20;
  v21 = *(v20 - 8);
  v4[23] = v21;
  v22 = *(v21 + 64) + 15;
  v4[24] = swift_task_alloc();
  v23 = sub_1E65D7848();
  v4[25] = v23;
  v24 = *(v23 - 8);
  v4[26] = v24;
  v25 = *(v24 + 64) + 15;
  v4[27] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079708, &qword_1E6601FB0) - 8) + 64) + 15;
  v4[32] = swift_task_alloc();
  v28 = sub_1E65D8258();
  v4[33] = v28;
  v29 = *(v28 - 8);
  v4[34] = v29;
  v30 = *(v29 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v31 = sub_1E65D9CC8();
  v4[37] = v31;
  v32 = *(v31 - 8);
  v4[38] = v32;
  v33 = *(v32 + 64) + 15;
  v4[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64367D8, 0, 0);
}

uint64_t sub_1E64367D8()
{
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);

  sub_1E65D9C88();
  v7 = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 368) = v7;
  v8 = v5 + v7;
  v9 = type metadata accessor for AppEnvironment();
  *(v0 + 320) = v9;
  v10 = v8 + *(v9 + 48);
  v11 = CatalogService.fetchRemoteCatalogLockups.getter();
  *(v0 + 328) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078860, &qword_1E65FDBF0);
  v13 = *(v2 + 72);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v15 = swift_allocObject();
  *(v0 + 336) = v15;
  *(v15 + 16) = xmmword_1E65EA670;
  (*(v2 + 16))(v15 + v14, v1, v3);
  v19 = (v11 + *v11);
  v16 = v11[1];
  v17 = swift_task_alloc();
  *(v0 + 344) = v17;
  *v17 = v0;
  v17[1] = sub_1E64369B0;

  return v19(33, v15);
}

uint64_t sub_1E64369B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v7 = *(v3 + 336);
  v8 = *(v3 + 328);
  if (v1)
  {

    v9 = sub_1E6437298;
  }

  else
  {

    v9 = sub_1E6436B1C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E6436B1C()
{
  v1 = *(v0 + 352);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 280);
    v3 = *(v0 + 288);
    v4 = *(v0 + 264);
    v5 = *(v0 + 272);
    v6 = *(v0 + 352);
    (*(v5 + 16))(v2, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

    (*(v5 + 32))(v3, v2, v4);
    v7 = *(sub_1E65D81A8() + 16);

    if (v7)
    {
      v8 = *(v0 + 320);
      v9 = *(v0 + 288);
      v10 = *(v0 + 232);
      v12 = *(v0 + 208);
      v11 = *(v0 + 216);
      v13 = *(v0 + 200);
      v14 = *(v0 + 40);
      v15 = v14 + *(v0 + 368);
      v16 = sub_1E65D81A8();
      v17 = *v14;
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E63C4134(v11, &v15[*(v8 + 136)], v16, v10);

      (*(v12 + 8))(v11, v13);
      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v27 = *(v0 + 288);
    v28 = *(v0 + 232);
    v29 = sub_1E65D72D8();
    v60 = *(*(v29 - 8) + 56);
    (v60)(v28, v18, 1, v29);
    v30 = *(sub_1E65D8168() + 16);

    if (v30)
    {
      v31 = *(v0 + 320);
      v32 = *(v0 + 288);
      v34 = *(v0 + 216);
      v33 = *(v0 + 224);
      v35 = *(v0 + 208);
      v88 = *(v0 + 200);
      v36 = *(v0 + 40);
      v37 = v36 + *(v0 + 368);
      v38 = sub_1E65D8168();
      v39 = *v36;
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E63C4134(v34, &v37[*(v31 + 136)], v38, v33);

      (*(v35 + 8))(v34, v88);
    }

    v71 = *(v0 + 288);
    v76 = *(v0 + 272);
    v78 = *(v0 + 264);
    v70 = *(v0 + 240);
    v68 = *(v0 + 248);
    v69 = *(v0 + 232);
    v40 = *(v0 + 224);
    v65 = v40;
    v66 = *(v0 + 256);
    v41 = *(v0 + 192);
    v42 = *(v0 + 168);
    v72 = *(v0 + 184);
    v74 = *(v0 + 176);
    v82 = *(v0 + 160);
    v59 = *(v0 + 152);
    v89 = *(v0 + 144);
    v80 = *(v0 + 136);
    v43 = *(v0 + 120);
    v58 = *(v0 + 128);
    v44 = *(v0 + 104);
    v45 = *(v0 + 112);
    v46 = *(v0 + 96);
    v84 = *(v0 + 88);
    v61 = *(v0 + 80);
    v62 = *(v0 + 72);
    v86 = *(v0 + 64);
    v63 = *(v0 + 48);
    v64 = *(v0 + 56);
    v67 = *(v0 + 16);
    v60();
    sub_1E65D8128();
    sub_1E65D8BA8();
    sub_1E6437DBC(v42, MEMORY[0x1E69CB950]);
    sub_1E65DA098();
    sub_1E65DAC38();
    v47 = *(v45 + 8);
    v47(v43, v44);
    sub_1E65DC2D8();
    sub_1E65DA098();
    sub_1E65DAC78();
    v47(v43, v44);
    sub_1E65D74C8();

    sub_1E65E3588();
    (*(v89 + 16))(v59, v82, v80);
    sub_1E65DA0A8();
    sub_1E6437E1C(&qword_1ED078778, MEMORY[0x1E699ED20]);
    sub_1E65DC438();
    (*(v61 + 16))(v86, v84, v62);
    swift_storeEnumTagMultiPayload();
    sub_1E5DFD1CC(v86, v66, &qword_1ED079700, &qword_1E6601F88);
    (*(v64 + 56))(v66, 0, 1, v63);
    sub_1E5DFD1CC(v65, v68, &qword_1ED072D90, &qword_1E66040F0);
    sub_1E5DFD1CC(v69, v70, &qword_1ED072D90, &qword_1E66040F0);
    sub_1E65E35A8();
    sub_1E5DFE50C(v86, &qword_1ED079700, &qword_1E6601F88);
    (*(v61 + 8))(v84, v62);
    (*(v89 + 8))(v82, v80);
    (*(v72 + 8))(v41, v74);
    sub_1E5DFE50C(v65, &qword_1ED072D90, &qword_1E66040F0);
    sub_1E5DFE50C(v69, &qword_1ED072D90, &qword_1E66040F0);
    (*(v76 + 8))(v71, v78);
  }

  else
  {
    v19 = *(v0 + 248);
    v20 = *(v0 + 256);
    v21 = *(v0 + 240);
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    v24 = *(v0 + 16);

    (*(v23 + 56))(v20, 1, 1, v22);
    v25 = sub_1E65D72D8();
    v26 = *(*(v25 - 8) + 56);
    v26(v19, 1, 1, v25);
    v26(v21, 1, 1, v25);
    sub_1E65E35A8();
  }

  v48 = *(v0 + 288);
  v49 = *(v0 + 280);
  v51 = *(v0 + 248);
  v50 = *(v0 + 256);
  v53 = *(v0 + 232);
  v52 = *(v0 + 240);
  v55 = *(v0 + 216);
  v54 = *(v0 + 224);
  v73 = *(v0 + 192);
  v75 = *(v0 + 168);
  v77 = *(v0 + 160);
  v79 = *(v0 + 152);
  v81 = *(v0 + 128);
  v83 = *(v0 + 120);
  v85 = *(v0 + 96);
  v87 = *(v0 + 88);
  v90 = *(v0 + 64);
  (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_1E6437298()
{
  v1 = v0[36];
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v8 = v0[27];
  v7 = v0[28];
  v12 = v0[24];
  v13 = v0[21];
  v14 = v0[20];
  v15 = v0[19];
  v16 = v0[16];
  v17 = v0[15];
  v18 = v0[12];
  v19 = v0[11];
  v20 = v0[8];
  (*(v0[38] + 8))(v0[39], v0[37]);

  v9 = v0[1];
  v10 = v0[45];

  return v9();
}

uint64_t sub_1E6437400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFA78C;

  return sub_1E6436330(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E64374F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a4;
  v42 = a1;
  v44 = a5;
  v45 = a3;
  v6 = sub_1E65E3528();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1E65E3508();
  v9 = *(v40 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65E35D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v38 = &v37 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v37 - v25;
  v27 = *a2;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E0708();
  (*(v23 + 8))(v26, v22);
  v28 = v41;
  v29 = *(v42 + *(type metadata accessor for AppState() + 304));
  if (*(v29 + 16) && (v30 = sub_1E6215038(v45, v28), (v31 & 1) != 0))
  {
    v32 = *(v29 + 56) + *(v9 + 72) * v30;
    v33 = v39;
    v34 = v40;
    (*(v9 + 16))(v39, v32, v40);
    v35 = v38;
    sub_1E65E34E8();
    (*(v9 + 8))(v33, v34);
    (*(v13 + 32))(v21, v35, v12);
  }

  else
  {
    (*(v13 + 104))(v21, *MEMORY[0x1E699ED38], v12);
  }

  sub_1E65E3518();
  (*(v13 + 16))(v17, v21, v12);
  sub_1E65E34F8();
  return (*(v13 + 8))(v21, v12);
}

uint64_t sub_1E64378CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1E64374F4(a1, (v2 + v6), v8, v9, a2);
}

uint64_t sub_1E643797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079330, &qword_1E6601498);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  v11 = sub_1E65E3508();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a2, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  LODWORD(a2) = *(type metadata accessor for AppState() + 304);

  return sub_1E640906C(v10, a3, a4);
}

uint64_t sub_1E6437AB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1E65E3598();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0796F8, &qword_1E6601F80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for ArtworkDescriptor();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079700, &qword_1E6601F88);
  sub_1E65DC358();
  sub_1E65DC448();
  (*(v10 + 8))(v13, v9);
  v18 = *(a1 + *(type metadata accessor for AppComposer() + 20) + 8);
  sub_1E633BAC0(v17);
  (*(v5 + 8))(v8, v4);
  sub_1E64D2DD0(v17, a1, a2);
  v19 = sub_1E65E4B98();
  v21 = v20;
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v17, a1, v22);
  sub_1E6437DBC(v17, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v24 = (v22 + *(result + 36));
  *v24 = v19;
  v24[1] = v21;
  return result;
}

uint64_t sub_1E6437D3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E6437AB4(v4, a1);
}

uint64_t sub_1E6437DBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6437E1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6437E6C()
{
  if (*v0)
  {
    result = 0x6C616E7265747865;
  }

  else
  {
    result = 0x6C61636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E6437EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E6437F7C(uint64_t a1)
{
  v2 = sub_1E643AD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6437FB8(uint64_t a1)
{
  v2 = sub_1E643AD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6437FF4(uint64_t a1)
{
  v2 = sub_1E643AD88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6438030(uint64_t a1)
{
  v2 = sub_1E643AD88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643806C(uint64_t a1)
{
  v2 = sub_1E643ADDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E64380A8(uint64_t a1)
{
  v2 = sub_1E643ADDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteParticipantScope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079710, &qword_1E6601FE0);
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079718, &qword_1E6601FE8);
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v32 - v7;
  v8 = sub_1E65D8DE8();
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = type metadata accessor for RemoteParticipantScope(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079720, &qword_1E6601FF0);
  v42 = *(v18 - 8);
  v19 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E643AD34();
  v23 = v40;
  sub_1E65E6DA8();
  sub_1E643AECC(v41, v17, type metadata accessor for RemoteParticipantScope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v25 = *(v23 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v26 = v33;
    v25(v33, v17, v8);
    v44 = 1;
    sub_1E643AD88();
    v27 = v37;
    sub_1E65E6B18();
    sub_1E643AE30(&qword_1ED079738, MEMORY[0x1E69CBB90]);
    v28 = v39;
    sub_1E65E6B78();
    (*(v38 + 8))(v27, v28);
    v13 = v26;
  }

  else
  {
    v25(v13, v17, v8);
    v43 = 0;
    sub_1E643ADDC();
    v29 = v34;
    sub_1E65E6B18();
    sub_1E643AE30(&qword_1ED079738, MEMORY[0x1E69CBB90]);
    v30 = v36;
    sub_1E65E6B78();
    (*(v35 + 8))(v29, v30);
  }

  (*(v23 + 8))(v13, v8);
  return (*(v42 + 8))(v21, v18);
}

uint64_t RemoteParticipantScope.hash(into:)()
{
  v1 = sub_1E65D8DE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RemoteParticipantScope(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E643AECC(v0, v9, type metadata accessor for RemoteParticipantScope);
  v10 = swift_getEnumCaseMultiPayload() == 1;
  (*(v2 + 32))(v5, v9, v1);
  MEMORY[0x1E694E740](v10);
  sub_1E643AE30(&qword_1ED079748, MEMORY[0x1E69CBB90]);
  sub_1E65E5B48();
  return (*(v2 + 8))(v5, v1);
}

uint64_t RemoteParticipantScope.hashValue.getter()
{
  sub_1E65E6D28();
  RemoteParticipantScope.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t RemoteParticipantScope.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079750, &qword_1E6601FF8);
  v53 = *(v50 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v56 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079758, &qword_1E6602000);
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079760, &unk_1E6602008);
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for RemoteParticipantScope(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E643AD34();
  v24 = v57;
  sub_1E65E6D98();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v46 = v16;
  v47 = v19;
  v26 = v55;
  v25 = v56;
  v48 = 0;
  v45 = v21;
  v57 = v12;
  v27 = v54;
  v28 = sub_1E65E6AF8();
  v29 = (2 * *(v28 + 16)) | 1;
  v59 = v28;
  v60 = v28 + 32;
  v61 = 0;
  v62 = v29;
  v30 = sub_1E5FBE3F0();
  v31 = v8;
  v32 = v11;
  if (v30 == 2 || v61 != v62 >> 1)
  {
    v37 = sub_1E65E68F8();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
    *v39 = v57;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    goto LABEL_8;
  }

  if ((v30 & 1) == 0)
  {
    v63 = 0;
    sub_1E643ADDC();
    v42 = v48;
    sub_1E65E6A68();
    if (!v42)
    {
      sub_1E65D8DE8();
      sub_1E643AE30(&qword_1ED079768, MEMORY[0x1E69CBB90]);
      v35 = v47;
      v43 = v52;
      sub_1E65E6AD8();
      (*(v51 + 8))(v26, v43);
      (*(v27 + 8))(v11, v8);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v63 = 1;
  sub_1E643AD88();
  v33 = v25;
  v34 = v48;
  sub_1E65E6A68();
  if (v34)
  {
LABEL_8:
    (*(v27 + 8))(v32, v31);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  sub_1E65D8DE8();
  sub_1E643AE30(&qword_1ED079768, MEMORY[0x1E69CBB90]);
  v35 = v46;
  v36 = v50;
  sub_1E65E6AD8();
  (*(v53 + 8))(v33, v36);
  (*(v27 + 8))(v32, v31);
  swift_unknownObjectRelease();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v44 = v45;
  sub_1E643AFDC(v35, v45, type metadata accessor for RemoteParticipantScope);
  sub_1E643AFDC(v44, v49, type metadata accessor for RemoteParticipantScope);
  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t sub_1E6438E74()
{
  sub_1E65E6D28();
  RemoteParticipantScope.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t sub_1E6438ED4()
{
  if (*v0)
  {
    result = 0x65746F6D6572;
  }

  else
  {
    result = 0x6C61636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1E6438F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E6438FDC(uint64_t a1)
{
  v2 = sub_1E643AE78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6439018(uint64_t a1)
{
  v2 = sub_1E643AE78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6439054(uint64_t a1)
{
  v2 = sub_1E643AF88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6439090(uint64_t a1)
{
  v2 = sub_1E643AF88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E64390CC()
{
  if (*v0)
  {
    result = 0x696C696261706163;
  }

  else
  {
    result = 0x7069636974726170;
  }

  *v0;
  return result;
}

uint64_t sub_1E6439118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E64391FC(uint64_t a1)
{
  v2 = sub_1E643AF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6439238(uint64_t a1)
{
  v2 = sub_1E643AF34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BrowsingIdentity.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079770, &qword_1E6602018);
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v43 = &v32 - v4;
  v5 = sub_1E65DA2A8();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for RemoteParticipantScope(0);
  v8 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079778, &qword_1E6602020);
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = type metadata accessor for BrowsingIdentity(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079780, &unk_1E6602028);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v32 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E643AE78();
  sub_1E65E6DA8();
  sub_1E643AECC(v40, v18, type metadata accessor for BrowsingIdentity);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v25 - 8) + 48))(v18, 1, v25) == 1)
  {
    v44 = 0;
    sub_1E643AF88();
    sub_1E65E6B18();
    (*(v33 + 8))(v14, v34);
    return (*(v20 + 8))(v23, v19);
  }

  else
  {
    v27 = *(v25 + 48);
    sub_1E643AFDC(v18, v10, type metadata accessor for RemoteParticipantScope);
    v28 = v36;
    v29 = v37;
    (*(v36 + 32))(v42, &v18[v27], v37);
    v47 = 1;
    sub_1E643AF34();
    sub_1E65E6B18();
    v46 = 0;
    sub_1E643AE30(&qword_1ED079798, type metadata accessor for RemoteParticipantScope);
    v30 = v39;
    v31 = v41;
    sub_1E65E6B78();
    if (!v31)
    {
      v45 = 1;
      sub_1E643AE30(&qword_1ED0797A0, MEMORY[0x1E69CCBE8]);
      sub_1E65E6B78();
    }

    (*(v38 + 8))(v43, v30);
    (*(v28 + 8))(v42, v29);
    sub_1E643B734(v10, type metadata accessor for RemoteParticipantScope);
    return (*(v20 + 8))(v23, v19);
  }
}

uint64_t BrowsingIdentity.hash(into:)()
{
  v1 = sub_1E65DA2A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RemoteParticipantScope(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BrowsingIdentity(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E643AECC(v0, v13, type metadata accessor for BrowsingIdentity);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    return MEMORY[0x1E694E740](0);
  }

  v16 = *(v14 + 48);
  sub_1E643AFDC(v13, v9, type metadata accessor for RemoteParticipantScope);
  (*(v2 + 32))(v5, &v13[v16], v1);
  MEMORY[0x1E694E740](1);
  RemoteParticipantScope.hash(into:)();
  sub_1E643AE30(&qword_1ED0797B0, MEMORY[0x1E69CCBE8]);
  sub_1E65E5B48();
  (*(v2 + 8))(v5, v1);
  return sub_1E643B734(v9, type metadata accessor for RemoteParticipantScope);
}

uint64_t BrowsingIdentity.hashValue.getter()
{
  v1 = sub_1E65DA2A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RemoteParticipantScope(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BrowsingIdentity(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E6D28();
  sub_1E643AECC(v0, v13, type metadata accessor for BrowsingIdentity);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    MEMORY[0x1E694E740](0);
  }

  else
  {
    v15 = *(v14 + 48);
    sub_1E643AFDC(v13, v9, type metadata accessor for RemoteParticipantScope);
    (*(v2 + 32))(v5, &v13[v15], v1);
    MEMORY[0x1E694E740](1);
    RemoteParticipantScope.hash(into:)();
    sub_1E643AE30(&qword_1ED0797B0, MEMORY[0x1E69CCBE8]);
    sub_1E65E5B48();
    (*(v2 + 8))(v5, v1);
    sub_1E643B734(v9, type metadata accessor for RemoteParticipantScope);
  }

  return sub_1E65E6D78();
}

uint64_t BrowsingIdentity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0797B8, &qword_1E6602038);
  v48 = *(v50 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0797C0, &qword_1E6602040);
  v6 = *(v5 - 8);
  v46 = v5;
  v47 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0797C8, &qword_1E6602048);
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  v14 = type metadata accessor for BrowsingIdentity(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1E643AE78();
  v23 = v53;
  sub_1E65E6D98();
  if (!v23)
  {
    v53 = v14;
    v44 = v18;
    v45 = v20;
    v24 = v49;
    v25 = v50;
    v26 = v51;
    v27 = sub_1E65E6AF8();
    v28 = (2 * *(v27 + 16)) | 1;
    v55 = v27;
    v56 = v27 + 32;
    v57 = 0;
    v58 = v28;
    v29 = sub_1E5FBE3F0();
    if (v29 == 2 || v57 != v58 >> 1)
    {
      v33 = v10;
      v34 = sub_1E65E68F8();
      swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
      *v36 = v53;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v52 + 8))(v13, v33);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        v59 = 1;
        sub_1E643AF34();
        sub_1E65E6A68();
        v30 = v26;
        type metadata accessor for RemoteParticipantScope(0);
        v59 = 0;
        sub_1E643AE30(&qword_1ED0797D0, type metadata accessor for RemoteParticipantScope);
        v31 = v44;
        sub_1E65E6AD8();
        v32 = v52;
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
        v53 = v10;
        v47 = v40;
        v41 = *(v40 + 48);
        sub_1E65DA2A8();
        v59 = 1;
        sub_1E643AE30(&qword_1ED0797D8, MEMORY[0x1E69CCBE8]);
        sub_1E65E6AD8();
        (*(v48 + 8))(v24, v25);
        (*(v32 + 8))(v13, v53);
        swift_unknownObjectRelease();
        (*(*(v47 - 8) + 56))(v31, 0, 1);
        v42 = v45;
        sub_1E643AFDC(v31, v45, type metadata accessor for BrowsingIdentity);
      }

      else
      {
        v59 = 0;
        sub_1E643AF88();
        sub_1E65E6A68();
        v30 = v26;
        (*(v47 + 8))(v9, v46);
        (*(v52 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
        v42 = v45;
        (*(*(v39 - 8) + 56))(v45, 1, 1, v39);
      }

      sub_1E643AFDC(v42, v30, type metadata accessor for BrowsingIdentity);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_1E643A49C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1E65E6D28();
  a4(v6);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard22RemoteParticipantScopeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v31 = sub_1E65D8DE8();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = type metadata accessor for RemoteParticipantScope(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079870, &qword_1E6602820);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v30 - v20;
  v22 = *(v19 + 56);
  sub_1E643AECC(a1, &v30 - v20, type metadata accessor for RemoteParticipantScope);
  sub_1E643AECC(v30, &v21[v22], type metadata accessor for RemoteParticipantScope);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1E643AECC(v21, v16, type metadata accessor for RemoteParticipantScope);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = v31;
      (*(v3 + 32))(v9, &v21[v22], v31);
      v24 = MEMORY[0x1E69407C0](v16, v9);
      v25 = *(v3 + 8);
      v25(v9, v28);
      v26 = v16;
      v27 = v28;
      goto LABEL_6;
    }

LABEL_8:
    (*(v3 + 8))(v16, v31);
    sub_1E5DFE50C(v21, &qword_1ED079870, &qword_1E6602820);
    v24 = 0;
    return v24 & 1;
  }

  sub_1E643AECC(v21, v14, type metadata accessor for RemoteParticipantScope);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v16 = v14;
    goto LABEL_8;
  }

  v23 = v31;
  (*(v3 + 32))(v7, &v21[v22], v31);
  v24 = MEMORY[0x1E69407C0](v14, v7);
  v25 = *(v3 + 8);
  v25(v7, v23);
  v26 = v14;
  v27 = v23;
LABEL_6:
  v25(v26, v27);
  sub_1E643B734(v21, type metadata accessor for RemoteParticipantScope);
  return v24 & 1;
}

uint64_t _s10Blackbeard16BrowsingIdentityO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DA2A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v36 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v36 - v9;
  v10 = type metadata accessor for RemoteParticipantScope(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BrowsingIdentity(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079878, &qword_1E6602828);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v36 - v21;
  v23 = &v36 + *(v20 + 56) - v21;
  sub_1E643AECC(a1, &v36 - v21, type metadata accessor for BrowsingIdentity);
  sub_1E643AECC(a2, v23, type metadata accessor for BrowsingIdentity);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  v25 = *(*(v24 - 8) + 48);
  if (v25(v22, 1, v24) == 1)
  {
    if (v25(v23, 1, v24) == 1)
    {
      sub_1E643B734(v22, type metadata accessor for BrowsingIdentity);
      return 1;
    }

    goto LABEL_6;
  }

  sub_1E643AECC(v22, v17, type metadata accessor for BrowsingIdentity);
  v27 = *(v24 + 48);
  if (v25(v23, 1, v24) == 1)
  {
    (*(v5 + 8))(&v17[v27], v4);
    sub_1E643B734(v17, type metadata accessor for RemoteParticipantScope);
LABEL_6:
    sub_1E5DFE50C(v22, &qword_1ED079878, &qword_1E6602828);
    return 0;
  }

  sub_1E643AFDC(v23, v13, type metadata accessor for RemoteParticipantScope);
  v28 = *(v5 + 32);
  v28(v37, &v17[v27], v4);
  v29 = &v23[v27];
  v30 = v36;
  v28(v36, v29, v4);
  v31 = _s10Blackbeard22RemoteParticipantScopeO2eeoiySbAC_ACtFZ_0(v17, v13);
  sub_1E643B734(v17, type metadata accessor for RemoteParticipantScope);
  if (v31)
  {
    sub_1E643AE30(&qword_1ED079880, MEMORY[0x1E69CCBE8]);
    v32 = v37;
    sub_1E65E5E98();
    sub_1E65E5E98();
    v33 = *(v5 + 8);
    v33(v30, v4);
    v33(v32, v4);
    sub_1E643B734(v13, type metadata accessor for RemoteParticipantScope);
    v34 = v39 == v38;
    sub_1E643B734(v22, type metadata accessor for BrowsingIdentity);
    return v34;
  }

  v35 = *(v5 + 8);
  v35(v30, v4);
  v35(v37, v4);
  sub_1E643B734(v13, type metadata accessor for RemoteParticipantScope);
  sub_1E643B734(v22, type metadata accessor for BrowsingIdentity);
  return 0;
}

unint64_t sub_1E643AD34()
{
  result = qword_1ED079728;
  if (!qword_1ED079728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079728);
  }

  return result;
}

unint64_t sub_1E643AD88()
{
  result = qword_1ED079730;
  if (!qword_1ED079730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079730);
  }

  return result;
}

unint64_t sub_1E643ADDC()
{
  result = qword_1ED079740;
  if (!qword_1ED079740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079740);
  }

  return result;
}

uint64_t sub_1E643AE30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E643AE78()
{
  result = qword_1ED079788;
  if (!qword_1ED079788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079788);
  }

  return result;
}

uint64_t sub_1E643AECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E643AF34()
{
  result = qword_1ED079790;
  if (!qword_1ED079790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079790);
  }

  return result;
}

unint64_t sub_1E643AF88()
{
  result = qword_1ED0797A8;
  if (!qword_1ED0797A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0797A8);
  }

  return result;
}

uint64_t sub_1E643AFDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E643B160()
{
  result = qword_1ED0797E8;
  if (!qword_1ED0797E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0797E8);
  }

  return result;
}

unint64_t sub_1E643B1B8()
{
  result = qword_1ED0797F0;
  if (!qword_1ED0797F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0797F0);
  }

  return result;
}

unint64_t sub_1E643B210()
{
  result = qword_1ED0797F8;
  if (!qword_1ED0797F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0797F8);
  }

  return result;
}

unint64_t sub_1E643B268()
{
  result = qword_1ED079800;
  if (!qword_1ED079800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079800);
  }

  return result;
}

unint64_t sub_1E643B2C0()
{
  result = qword_1ED079808;
  if (!qword_1ED079808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079808);
  }

  return result;
}

unint64_t sub_1E643B318()
{
  result = qword_1ED079810;
  if (!qword_1ED079810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079810);
  }

  return result;
}

unint64_t sub_1E643B370()
{
  result = qword_1ED079818;
  if (!qword_1ED079818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079818);
  }

  return result;
}

unint64_t sub_1E643B3C8()
{
  result = qword_1ED079820;
  if (!qword_1ED079820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079820);
  }

  return result;
}

unint64_t sub_1E643B420()
{
  result = qword_1ED079828;
  if (!qword_1ED079828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079828);
  }

  return result;
}

unint64_t sub_1E643B478()
{
  result = qword_1ED079830;
  if (!qword_1ED079830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079830);
  }

  return result;
}

unint64_t sub_1E643B4D0()
{
  result = qword_1ED079838;
  if (!qword_1ED079838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079838);
  }

  return result;
}

unint64_t sub_1E643B528()
{
  result = qword_1ED079840;
  if (!qword_1ED079840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079840);
  }

  return result;
}

unint64_t sub_1E643B580()
{
  result = qword_1ED079848;
  if (!qword_1ED079848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079848);
  }

  return result;
}

unint64_t sub_1E643B5D8()
{
  result = qword_1ED079850;
  if (!qword_1ED079850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079850);
  }

  return result;
}

unint64_t sub_1E643B630()
{
  result = qword_1ED079858;
  if (!qword_1ED079858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079858);
  }

  return result;
}

unint64_t sub_1E643B688()
{
  result = qword_1ED079860;
  if (!qword_1ED079860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079860);
  }

  return result;
}

unint64_t sub_1E643B6E0()
{
  result = qword_1ED079868;
  if (!qword_1ED079868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079868);
  }

  return result;
}

uint64_t sub_1E643B734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_10Blackbeard16ResolvedURLRouteO4RootO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 6;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E643B7BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 16))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 < 7)
  {
    v5 = 0;
  }

  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E643B81C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

void *sub_1E643B878(void *result, unsigned int a2)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 2147483642;
  }

  else if (a2)
  {
    result[1] = a2 + 5;
  }

  return result;
}

void sub_1E643B8EC()
{
  sub_1E643B960();
  if (v0 <= 0x3F)
  {
    sub_1E5E0D158();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E643B960()
{
  if (!qword_1ED079898)
  {
    type metadata accessor for ResolvedURLRoute.Action(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0798A0, &qword_1E66028E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED079898);
    }
  }
}

void sub_1E643BA00()
{
  sub_1E643BA9C();
  if (v0 <= 0x3F)
  {
    sub_1E643BB10(319);
    if (v1 <= 0x3F)
    {
      sub_1E643BC20(319);
      if (v2 <= 0x3F)
      {
        sub_1E643BD40();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1E643BA9C()
{
  if (!qword_1ED0798B8)
  {
    type metadata accessor for RouteDestination();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ED0798B8);
    }
  }
}

void sub_1E643BB10(uint64_t a1)
{
  if (!qword_1ED0798C0)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for RouteDestination();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED0798C0);
    }
  }
}

void sub_1E643BC20(uint64_t a1)
{
  if (!qword_1ED0798C8)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0763E8, &qword_1E65F5500);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED0798C8);
    }
  }
}

void sub_1E643BD40()
{
  if (!qword_1ED0798D0)
  {
    type metadata accessor for RouteDestination();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED0798D0);
    }
  }
}

void sub_1E643BDAC(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RouteDestination();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v53[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v53[-v11];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v53[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v53[-v16];
  v18 = type metadata accessor for ResolvedURLRoute.Action(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v53[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E643CDCC(v2, v21, type metadata accessor for ResolvedURLRoute.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288);
      v24 = &v21[*(v23 + 48)];
      v25 = *v24;
      v26 = v24[1];
      v27 = v21[*(v23 + 64)];
      sub_1E5F9CE80(v21, v17);
      MEMORY[0x1E694E740](0);
      RouteResource.hash(into:)(a1);
      v28 = &v17[*(v4 + 20)];
      RouteSource.hash(into:)(a1);
      sub_1E61B7778(a1, *&v17[*(v4 + 24)]);
      if (v26 == 7)
      {
        v29 = 1;
        goto LABEL_20;
      }

      if (v26 == 6)
      {
        v29 = 0;
LABEL_20:
        MEMORY[0x1E694E740](v29);
LABEL_53:
        sub_1E65E6D48();
        v51 = v17;
        goto LABEL_56;
      }

      MEMORY[0x1E694E740](2);
      if (v26 > 2)
      {
        if (v26 == 3 || v26 == 4 || v26 == 5)
        {
          goto LABEL_52;
        }
      }

      else if (v26 <= 2)
      {
        goto LABEL_52;
      }

      v58 = 0x7974696C61646F6DLL;
      v59 = 0xE90000000000003ALL;
      MEMORY[0x1E694D7C0](v25, v26);
LABEL_52:
      sub_1E65E5D78();
      sub_1E5FFF3B4(v25, v26);

      goto LABEL_53;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
    v40 = &v21[v39[12]];
    v41 = *v40;
    v42 = v40[8];
    v43 = &v21[v39[16]];
    v44 = *v43;
    v45 = v43[1];
    v46 = v21[v39[20]];
    sub_1E5F9CE80(v21, v15);
    MEMORY[0x1E694E740](1);
    RouteResource.hash(into:)(a1);
    v47 = &v15[*(v4 + 20)];
    RouteSource.hash(into:)(a1);
    sub_1E61B7778(a1, *&v15[*(v4 + 24)]);
    v58 = v41;
    LOBYTE(v59) = v42;
    RoutingContextPresentationStyle.hash(into:)();
    if (v45 == 7)
    {
      v48 = 1;
      goto LABEL_22;
    }

    if (v45 == 6)
    {
      v48 = 0;
LABEL_22:
      MEMORY[0x1E694E740](v48);
LABEL_55:
      sub_1E65E6D48();
      sub_1E5F94E00(v41, v42);
      v51 = v15;
      goto LABEL_56;
    }

    MEMORY[0x1E694E740](2);
    if (v45 > 2)
    {
      if (v45 == 3 || v45 == 4 || v45 == 5)
      {
        goto LABEL_54;
      }
    }

    else if (v45 <= 2)
    {
      goto LABEL_54;
    }

    v58 = 0x7974696C61646F6DLL;
    v59 = 0xE90000000000003ALL;
    MEMORY[0x1E694D7C0](v44, v45);
LABEL_54:
    sub_1E65E5D78();
    sub_1E5FFF3B4(v44, v45);

    goto LABEL_55;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v49 = v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F0, &qword_1E65EC238) + 48)];
    sub_1E5F9CE80(v21, v9);
    MEMORY[0x1E694E740](3);
    RouteResource.hash(into:)(a1);
    v50 = &v9[*(v4 + 20)];
    RouteSource.hash(into:)(a1);
    sub_1E61B7778(a1, *&v9[*(v4 + 24)]);
    MEMORY[0x1E694E740](v49);
    v51 = v9;
LABEL_56:
    sub_1E643D84C(v51, type metadata accessor for RouteDestination);
    return;
  }

  v31 = *v21;
  v30 = *(v21 + 1);
  v32 = v21[16];
  v33 = *(v21 + 4);
  v56 = *(v21 + 3);
  v57 = v21[40];
  MEMORY[0x1E694E740](2);
  MEMORY[0x1E694E740](*(v31 + 16));
  v34 = *(v31 + 16);
  if (v34)
  {
    v54 = v32;
    v55 = v30;
    v35 = *(v4 + 20);
    v36 = *(v4 + 24);
    v37 = v31 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v38 = *(v5 + 72);
    do
    {
      sub_1E643CDCC(v37, v12, type metadata accessor for RouteDestination);
      RouteResource.hash(into:)(a1);
      RouteSource.hash(into:)(a1);
      sub_1E61B7778(a1, *&v12[v36]);
      sub_1E643D84C(v12, type metadata accessor for RouteDestination);
      v37 += v38;
      --v34;
    }

    while (v34);

    v30 = v55;
    LOBYTE(v32) = v54;
  }

  else
  {
  }

  v58 = v30;
  LOBYTE(v59) = v32;
  RoutingContextPresentationStyle.hash(into:)();
  if (v33 == 6)
  {
    v52 = 0;
    goto LABEL_24;
  }

  if (v33 != 7)
  {
    MEMORY[0x1E694E740](2);
    if (v33 > 2)
    {
      if (v33 == 3 || v33 == 4 || v33 == 5)
      {
        goto LABEL_57;
      }
    }

    else if (v33 <= 2)
    {
      goto LABEL_57;
    }

    v58 = 0x7974696C61646F6DLL;
    v59 = 0xE90000000000003ALL;
    MEMORY[0x1E694D7C0](v56, v33);
LABEL_57:
    sub_1E65E5D78();
    sub_1E5FFF3B4(v56, v33);

    goto LABEL_58;
  }

  v52 = 1;
LABEL_24:
  MEMORY[0x1E694E740](v52);
LABEL_58:
  sub_1E65E6D48();
  sub_1E5F94E00(v30, v32);
}

uint64_t sub_1E643C5F0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E65E6D28();
  if (v2 == 7)
  {
    MEMORY[0x1E694E740](1);
    return sub_1E65E6D78();
  }

  if (v2 != 6)
  {
    MEMORY[0x1E694E740](2);
    if (v2 > 2)
    {
      if (v2 == 3 || v2 == 4 || v2 == 5)
      {
        goto LABEL_14;
      }
    }

    else if (v2 <= 2)
    {
      goto LABEL_14;
    }

    MEMORY[0x1E694D7C0](v1, v2);
LABEL_14:
    sub_1E65E5D78();

    return sub_1E65E6D78();
  }

  MEMORY[0x1E694E740](0);
  return sub_1E65E6D78();
}

uint64_t sub_1E643C760()
{
  sub_1E65E6D28();
  sub_1E643BDAC(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E643C7A4()
{
  sub_1E65E6D28();
  sub_1E643BDAC(v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E643C7E8()
{
  result = qword_1ED0798D8;
  if (!qword_1ED0798D8)
  {
    type metadata accessor for ResolvedURLRoute.Action(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0798D8);
  }

  return result;
}

unint64_t sub_1E643C844()
{
  result = qword_1ED0798E0;
  if (!qword_1ED0798E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0798E0);
  }

  return result;
}

uint64_t sub_1E643C89C()
{
  v1 = v0[1];
  if (v1 == 7)
  {
    v2 = 1;
    return MEMORY[0x1E694E740](v2);
  }

  if (v1 == 6)
  {
    v2 = 0;
    return MEMORY[0x1E694E740](v2);
  }

  v4 = *v0;
  v5 = MEMORY[0x1E694E740](2);
  RootItem.rawValue.getter(v5);
  sub_1E65E5D78();
}

uint64_t sub_1E643C950()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E65E6D28();
  if (v2 == 7)
  {
    MEMORY[0x1E694E740](1);
  }

  else if (v2 == 6)
  {
    MEMORY[0x1E694E740](0);
  }

  else
  {
    v3 = MEMORY[0x1E694E740](2);
    RootItem.rawValue.getter(v3);
    sub_1E65E5D78();
  }

  return sub_1E65E6D78();
}

unint64_t sub_1E643C9F8()
{
  result = qword_1ED0798E8;
  if (!qword_1ED0798E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0798E8);
  }

  return result;
}

uint64_t sub_1E643CA4C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == 7)
  {
    if (v5 == 7)
    {
      sub_1E5FFF3B4(*a1, 7uLL);
      v6 = v4;
      v7 = 7;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v3 == 6)
  {
    if (v5 == 6)
    {
      sub_1E5FFF3B4(*a1, 6uLL);
      v6 = v4;
      v7 = 6;
LABEL_7:
      sub_1E5FFF3B4(v6, v7);
      return 1;
    }

    goto LABEL_9;
  }

  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
LABEL_9:
    sub_1E5FFF3A0(*a2, a2[1]);
    sub_1E5FFF3A0(v2, v3);
    sub_1E5FFF3B4(v2, v3);
    sub_1E5FFF3B4(v4, v5);
    return 0;
  }

  v9 = 0x65726F6C707865;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v10 = 0x686372616573;
      goto LABEL_32;
    }

    if (v3 == 4)
    {
      v10 = 0x7478654E7075;
LABEL_32:
      sub_1E5E05374(*a2, a2[1]);
      v11 = 0xE600000000000000;
      if (v5 <= 2)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }

    if (v3 != 5)
    {
LABEL_24:
      sub_1E5FFF3A0(v4, v5);
      sub_1E5FFF3A0(v2, v3);
      MEMORY[0x1E694D7C0](v2, v3);
      v10 = 0x7974696C61646F6DLL;
      v11 = 0xE90000000000003ALL;
      if (v5 <= 2)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }

    v10 = 0x736E616C70;
    sub_1E5E05374(*a2, a2[1]);
    v11 = 0xE500000000000000;
    if (v5 > 2)
    {
      goto LABEL_25;
    }

LABEL_33:
    switch(v5)
    {
      case 0:
        v12 = 0xE700000000000000;
        goto LABEL_41;
      case 1:
        v12 = 0xE600000000000000;
        v9 = 0x756F59726F66;
        goto LABEL_41;
      case 2:
        v12 = 0xE700000000000000;
        v9 = 0x7972617262696CLL;
        goto LABEL_41;
    }

LABEL_38:
    MEMORY[0x1E694D7C0](v4, v5);
    v9 = 0x7974696C61646F6DLL;
    v12 = 0xE90000000000003ALL;
    goto LABEL_41;
  }

  if (!v3)
  {
    sub_1E5E05374(*a2, a2[1]);
    v11 = 0xE700000000000000;
    v10 = 0x65726F6C707865;
    if (v5 > 2)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  if (v3 == 1)
  {
    v10 = 0x756F59726F66;
    goto LABEL_32;
  }

  if (v3 != 2)
  {
    goto LABEL_24;
  }

  v10 = 0x7972617262696CLL;
  sub_1E5E05374(*a2, a2[1]);
  v11 = 0xE700000000000000;
  if (v5 <= 2)
  {
    goto LABEL_33;
  }

LABEL_25:
  switch(v5)
  {
    case 3:
      v12 = 0xE600000000000000;
      v9 = 0x686372616573;
      break;
    case 4:
      v12 = 0xE600000000000000;
      v9 = 0x7478654E7075;
      break;
    case 5:
      v12 = 0xE500000000000000;
      v9 = 0x736E616C70;
      break;
    default:
      goto LABEL_38;
  }

LABEL_41:
  if (v10 == v9 && v11 == v12)
  {
    sub_1E5FFF3B4(v2, v3);
    sub_1E5FFF3B4(v4, v5);

    return 1;
  }

  else
  {
    v13 = sub_1E65E6C18();
    sub_1E5FFF3B4(v2, v3);
    sub_1E5FFF3B4(v4, v5);

    return v13 & 1;
  }
}

uint64_t sub_1E643CDCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E643CE34(uint64_t a1, uint64_t a2)
{
  v89 = type metadata accessor for RouteDestination();
  v4 = *(*(v89 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v89);
  v87 = &v83[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v88 = &v83[-v8];
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v83[-v9];
  v10 = type metadata accessor for ResolvedURLRoute.Action(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v83[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v83[-v16];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v83[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v83[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0798F0, &unk_1E6602A90);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v83[-v26];
  v28 = &v83[*(v25 + 56) - v26];
  sub_1E643CDCC(a1, &v83[-v26], type metadata accessor for ResolvedURLRoute.Action);
  sub_1E643CDCC(a2, v28, type metadata accessor for ResolvedURLRoute.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1E643CDCC(v27, v14, type metadata accessor for ResolvedURLRoute.Action);
      v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F0, &qword_1E65EC238) + 48);
      v73 = v14[v72];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_1E643D84C(v14, type metadata accessor for RouteDestination);
        goto LABEL_27;
      }

      v74 = v28[v72];
      v75 = v87;
      sub_1E5F9CE80(v28, v87);
      if (static RouteResource.== infix(_:_:)(v14, v75) & 1) != 0 && (static RouteSource.== infix(_:_:)(&v14[*(v89 + 20)], v75 + *(v89 + 20)) & 1) != 0 && (sub_1E63DAF94(*&v14[*(v89 + 24)], *(v75 + *(v89 + 24))))
      {
        sub_1E643D84C(v75, type metadata accessor for RouteDestination);
        sub_1E643D84C(v14, type metadata accessor for RouteDestination);
        sub_1E643D84C(v27, type metadata accessor for ResolvedURLRoute.Action);
        return v73 == v74;
      }

      sub_1E643D84C(v75, type metadata accessor for RouteDestination);
      sub_1E643D84C(v14, type metadata accessor for RouteDestination);
      v77 = v27;
      goto LABEL_40;
    }

    v87 = v27;
    sub_1E643CDCC(v27, v17, type metadata accessor for ResolvedURLRoute.Action);
    v38 = *v17;
    v37 = *(v17 + 1);
    v39 = v17[16];
    v41 = *(v17 + 3);
    v40 = *(v17 + 4);
    v42 = v17[40];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1E5FFF3B4(v41, v40);
      sub_1E5F94E00(v37, v39);

      v27 = v87;
      goto LABEL_27;
    }

    v89 = v40;
    LODWORD(v88) = v42;
    v44 = *v28;
    v43 = *(v28 + 1);
    v45 = v28[16];
    v46 = *(v28 + 3);
    v47 = *(v28 + 4);
    LODWORD(v86) = v28[40];
    v48 = sub_1E61B777C(v38, v44);

    if (v48 & 1) != 0 && (v92 = v37, LOBYTE(v93) = v39, v49 = v43, v90 = v43, LOBYTE(v91) = v45, (_s10Blackbeard31RoutingContextPresentationStyleO2eeoiySbAC_ACtFZ_0(&v92, &v90)))
    {
      v50 = v89;
      v92 = v41;
      v93 = v89;
      v90 = v46;
      v91 = v47;
      v51 = sub_1E643CA4C(&v92, &v90);
      sub_1E5F94E00(v49, v45);
      sub_1E5F94E00(v37, v39);
      sub_1E5FFF3B4(v46, v47);
      sub_1E5FFF3B4(v41, v50);
      if (v51)
      {
        v52 = v88;
        v53 = v86;
LABEL_11:
        v54 = v52 ^ v53;
        v55 = v87;
LABEL_35:
        sub_1E643D84C(v55, type metadata accessor for ResolvedURLRoute.Action);
        return v54 ^ 1u;
      }
    }

    else
    {
      sub_1E5FFF3B4(v46, v47);
      sub_1E5F94E00(v43, v45);
      sub_1E5FFF3B4(v41, v89);
      sub_1E5F94E00(v37, v39);
    }

LABEL_39:
    v77 = v87;
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload)
  {
    v87 = v27;
    sub_1E643CDCC(v27, v20, type metadata accessor for ResolvedURLRoute.Action);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
    v57 = v56[12];
    v58 = *&v20[v57];
    v59 = v20[v57 + 8];
    v60 = v56[16];
    v62 = *&v20[v60];
    v61 = *&v20[v60 + 8];
    v63 = v56[20];
    LODWORD(v86) = v20[v63];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E5FFF3B4(v62, v61);
      sub_1E5F94E00(v58, v59);
      sub_1E643D84C(v20, type metadata accessor for RouteDestination);
      v27 = v87;
      goto LABEL_27;
    }

    v64 = *&v28[v57];
    v65 = v28[v57 + 8];
    v66 = &v28[v60];
    v67 = *&v28[v60];
    v85 = *(v66 + 1);
    v84 = v28[v63];
    v68 = v88;
    sub_1E5F9CE80(v28, v88);
    if (static RouteResource.== infix(_:_:)(v20, v68) & 1) != 0 && (static RouteSource.== infix(_:_:)(&v20[*(v89 + 20)], v68 + *(v89 + 20)) & 1) != 0 && (sub_1E63DAF94(*&v20[*(v89 + 24)], *(v68 + *(v89 + 24))))
    {
      sub_1E643D84C(v20, type metadata accessor for RouteDestination);
      v92 = v58;
      LOBYTE(v93) = v59;
      v90 = v64;
      LOBYTE(v91) = v65;
      if (_s10Blackbeard31RoutingContextPresentationStyleO2eeoiySbAC_ACtFZ_0(&v92, &v90))
      {
        v92 = v62;
        v93 = v61;
        v69 = v67;
        v90 = v67;
        v70 = v85;
        v91 = v85;
        v71 = sub_1E643CA4C(&v92, &v90);
        sub_1E5F94E00(v64, v65);
        sub_1E5F94E00(v58, v59);
        sub_1E643D84C(v68, type metadata accessor for RouteDestination);
        sub_1E5FFF3B4(v69, v70);
        sub_1E5FFF3B4(v62, v61);
        if (v71)
        {
          v52 = v86;
          v53 = v84;
          goto LABEL_11;
        }
      }

      else
      {
        sub_1E643D84C(v68, type metadata accessor for RouteDestination);
        sub_1E5F94E00(v64, v65);
        sub_1E5F94E00(v58, v59);
        sub_1E5FFF3B4(v62, v61);
        sub_1E5FFF3B4(v67, v85);
      }
    }

    else
    {
      sub_1E5F94E00(v64, v65);
      sub_1E5F94E00(v58, v59);
      sub_1E5FFF3B4(v67, v85);
      sub_1E5FFF3B4(v62, v61);
      sub_1E643D84C(v20, type metadata accessor for RouteDestination);
      sub_1E643D84C(v68, type metadata accessor for RouteDestination);
    }

    goto LABEL_39;
  }

  v30 = v27;
  sub_1E643CDCC(v27, v22, type metadata accessor for ResolvedURLRoute.Action);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288);
  v32 = *(v31 + 48);
  v34 = *&v22[v32];
  v33 = *&v22[v32 + 8];
  v35 = *(v31 + 64);
  v36 = v22[v35];
  if (!swift_getEnumCaseMultiPayload())
  {
    v79 = *&v28[v32];
    v78 = *&v28[v32 + 8];
    v80 = v28[v35];
    v81 = v86;
    sub_1E5F9CE80(v28, v86);
    if (static RouteResource.== infix(_:_:)(v22, v81) & 1) != 0 && (static RouteSource.== infix(_:_:)(&v22[*(v89 + 20)], v81 + *(v89 + 20)) & 1) != 0 && (sub_1E63DAF94(*&v22[*(v89 + 24)], *(v81 + *(v89 + 24))))
    {
      sub_1E643D84C(v22, type metadata accessor for RouteDestination);
      v92 = v34;
      v93 = v33;
      v90 = v79;
      v91 = v78;
      v82 = sub_1E643CA4C(&v92, &v90);
      sub_1E643D84C(v86, type metadata accessor for RouteDestination);
      sub_1E5FFF3B4(v79, v78);
      sub_1E5FFF3B4(v34, v33);
      if (v82)
      {
        v54 = v36 ^ v80;
        v55 = v30;
        goto LABEL_35;
      }
    }

    else
    {
      sub_1E5FFF3B4(v79, v78);
      sub_1E5FFF3B4(v34, v33);
      sub_1E643D84C(v22, type metadata accessor for RouteDestination);
      sub_1E643D84C(v81, type metadata accessor for RouteDestination);
    }

    v77 = v30;
LABEL_40:
    sub_1E643D84C(v77, type metadata accessor for ResolvedURLRoute.Action);
    return 0;
  }

  sub_1E5FFF3B4(v34, v33);
  sub_1E643D84C(v22, type metadata accessor for RouteDestination);
  v27 = v30;
LABEL_27:
  sub_1E643D7E4(v27);
  return 0;
}

uint64_t sub_1E643D7E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0798F0, &unk_1E6602A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E643D84C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E643D8AC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6F436D6565646572;
    v6 = 0x74666947646E6573;
    if (a1 != 8)
    {
      v6 = 0x4E79636176697270;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x736B63617473;
    if (a1 != 5)
    {
      v7 = 0x53746E756F636361;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656372756F736572;
    v2 = 0x686372616573;
    v3 = 0xD000000000000014;
    if (a1 != 3)
    {
      v3 = 0x616C50646C697562;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1953460082;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1E643DA04(uint64_t a1)
{
  v2 = sub_1E643EC98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DA40(uint64_t a1)
{
  v2 = sub_1E643EC98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DA7C(uint64_t a1)
{
  v2 = sub_1E643ED40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DAB8(uint64_t a1)
{
  v2 = sub_1E643ED40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6441498(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E643DB24(uint64_t a1)
{
  v2 = sub_1E643EB48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DB60(uint64_t a1)
{
  v2 = sub_1E643EB48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DB9C(uint64_t a1)
{
  v2 = sub_1E643EB9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DBD8(uint64_t a1)
{
  v2 = sub_1E643EB9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DC14(uint64_t a1)
{
  v2 = sub_1E643EC44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DC50(uint64_t a1)
{
  v2 = sub_1E643EC44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DC8C()
{
  if (*v0)
  {
    result = 0x696669746E656469;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1E643DCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E643DD9C(uint64_t a1)
{
  v2 = sub_1E643EE90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DDD8(uint64_t a1)
{
  v2 = sub_1E643EE90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DE14(uint64_t a1)
{
  v2 = sub_1E643EE3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DE50(uint64_t a1)
{
  v2 = sub_1E643EE3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DE8C(uint64_t a1)
{
  v2 = sub_1E643EDE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DEC8(uint64_t a1)
{
  v2 = sub_1E643EDE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DF04(uint64_t a1)
{
  v2 = sub_1E643EBF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DF40(uint64_t a1)
{
  v2 = sub_1E643EBF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DF7C(uint64_t a1)
{
  v2 = sub_1E643ECEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643DFB8(uint64_t a1)
{
  v2 = sub_1E643ECEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E643DFF4(uint64_t a1)
{
  v2 = sub_1E643ED94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E643E030(uint64_t a1)
{
  v2 = sub_1E643ED94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t URLAction.encode(to:)(void *a1)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0798F8, &qword_1E6602AA0);
  v68 = *(v69 - 8);
  v3 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v64 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079900, &qword_1E6602AA8);
  v65 = *(v66 - 8);
  v5 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v64 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079908, &qword_1E6602AB0);
  v71 = *(v72 - 8);
  v7 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v64 - v8;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079910, &qword_1E6602AB8);
  v74 = *(v75 - 8);
  v9 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v64 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079918, &qword_1E6602AC0);
  v77 = *(v78 - 8);
  v11 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079920, &qword_1E6602AC8);
  v80 = *(v13 - 8);
  v81 = v13;
  v14 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079928, &qword_1E6602AD0);
  v88 = *(v16 - 8);
  v89 = v16;
  v17 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079930, &qword_1E6602AD8);
  v85 = *(v19 - 8);
  v86 = v19;
  v20 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v64 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079938, &qword_1E6602AE0);
  v82 = *(v22 - 8);
  v23 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079940, &qword_1E6602AE8);
  v83 = *(v26 - 8);
  v27 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v64 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079948, &qword_1E6602AF0);
  v31 = *(v30 - 8);
  v93 = v30;
  v94 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v64 - v33;
  v35 = *v1;
  *(&v90 + 1) = v1[1];
  v91 = v35;
  *&v90 = v1[2];
  v36 = *(v1 + 24);
  v37 = a1;
  v39 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(v37, v39);
  sub_1E643EB48();
  v92 = v34;
  sub_1E65E6DA8();
  if (v36 > 1)
  {
    if (v36 == 2)
    {
      LOBYTE(v96) = 2;
      sub_1E643EDE8();
      v49 = v84;
      v42 = v92;
      v41 = v93;
      sub_1E65E6B18();
      v50 = v86;
      sub_1E65E6B48();
      (*(v85 + 8))(v49, v50);
    }

    else
    {
      if (v36 != 3)
      {
        v51 = v92;
        v41 = v93;
        if (v90 | *(&v90 + 1) | v91)
        {
          if (v91 == 1 && v90 == 0)
          {
            LOBYTE(v96) = 5;
            sub_1E643ECEC();
            v52 = v76;
            sub_1E65E6B18();
            (*(v77 + 8))(v52, v78);
          }

          else
          {
            if (v91 == 2 && v90 == 0)
            {
              LOBYTE(v96) = 6;
              sub_1E643EC98();
              v57 = v73;
              sub_1E65E6B18();
              v58 = *(v74 + 8);
              v59 = v57;
              v60 = &v100;
            }

            else if (v91 == 3 && v90 == 0)
            {
              LOBYTE(v96) = 7;
              sub_1E643EC44();
              v61 = v70;
              sub_1E65E6B18();
              v58 = *(v71 + 8);
              v59 = v61;
              v60 = &v99;
            }

            else if (v91 == 4 && v90 == 0)
            {
              LOBYTE(v96) = 8;
              sub_1E643EBF0();
              v62 = v64;
              sub_1E65E6B18();
              v58 = *(v65 + 8);
              v59 = v62;
              v60 = &v97;
            }

            else
            {
              LOBYTE(v96) = 9;
              sub_1E643EB9C();
              v63 = v67;
              sub_1E65E6B18();
              v58 = *(v68 + 8);
              v59 = v63;
              v60 = v98;
            }

            v58(v59, *(v60 - 32));
          }
        }

        else
        {
          LOBYTE(v96) = 4;
          sub_1E643ED40();
          v56 = v79;
          sub_1E65E6B18();
          (*(v80 + 8))(v56, v81);
        }

        v54 = *(v94 + 8);
        v55 = v51;
        return v54(v55, v41);
      }

      LOBYTE(v96) = 3;
      sub_1E643ED94();
      v40 = v87;
      v42 = v92;
      v41 = v93;
      sub_1E65E6B18();
      v43 = v89;
      sub_1E65E6B68();
      (*(v88 + 8))(v40, v43);
    }

LABEL_15:
    v54 = *(v94 + 8);
    v55 = v42;
    return v54(v55, v41);
  }

  if (v36)
  {
    v53 = v22;
    LOBYTE(v96) = 1;
    sub_1E643EE3C();
    v42 = v92;
    v41 = v93;
    sub_1E65E6B18();
    v96 = v91;
    v97 = *(&v90 + 1);
    sub_1E5DF6D3C();
    sub_1E65E6B78();
    (*(v82 + 8))(v25, v53);
    goto LABEL_15;
  }

  v44 = v26;
  LOBYTE(v96) = 0;
  sub_1E643EE90();
  v46 = v92;
  v45 = v93;
  sub_1E65E6B18();
  LOBYTE(v96) = v91;
  v98[7] = 0;
  sub_1E643EEE4();
  v47 = v95;
  sub_1E65E6B78();
  if (!v47)
  {
    LOBYTE(v96) = 1;
    sub_1E65E6B48();
  }

  (*(v83 + 8))(v29, v44);
  return (*(v94 + 8))(v46, v45);
}

unint64_t sub_1E643EB48()
{
  result = qword_1ED079950;
  if (!qword_1ED079950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079950);
  }

  return result;
}

unint64_t sub_1E643EB9C()
{
  result = qword_1ED079958;
  if (!qword_1ED079958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079958);
  }

  return result;
}

unint64_t sub_1E643EBF0()
{
  result = qword_1ED079960;
  if (!qword_1ED079960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079960);
  }

  return result;
}

unint64_t sub_1E643EC44()
{
  result = qword_1ED079968;
  if (!qword_1ED079968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079968);
  }

  return result;
}

unint64_t sub_1E643EC98()
{
  result = qword_1ED079970;
  if (!qword_1ED079970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079970);
  }

  return result;
}

unint64_t sub_1E643ECEC()
{
  result = qword_1ED079978;
  if (!qword_1ED079978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079978);
  }

  return result;
}

unint64_t sub_1E643ED40()
{
  result = qword_1ED079980;
  if (!qword_1ED079980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079980);
  }

  return result;
}

unint64_t sub_1E643ED94()
{
  result = qword_1ED079988;
  if (!qword_1ED079988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079988);
  }

  return result;
}

unint64_t sub_1E643EDE8()
{
  result = qword_1ED079990;
  if (!qword_1ED079990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079990);
  }

  return result;
}

unint64_t sub_1E643EE3C()
{
  result = qword_1ED079998;
  if (!qword_1ED079998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079998);
  }

  return result;
}

unint64_t sub_1E643EE90()
{
  result = qword_1ED0799A0;
  if (!qword_1ED0799A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0799A0);
  }

  return result;
}

unint64_t sub_1E643EEE4()
{
  result = qword_1ED0799A8;
  if (!qword_1ED0799A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0799A8);
  }

  return result;
}

uint64_t URLAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799B0, &qword_1E6602AF8);
  v89 = *(v3 - 8);
  v90 = v3;
  v4 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v94 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799B8, &qword_1E6602B00);
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v69 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799C0, &qword_1E6602B08);
  v85 = *(v86 - 8);
  v9 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v98 = &v69 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799C8, &qword_1E6602B10);
  v84 = *(v83 - 8);
  v11 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v97 = &v69 - v12;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799D0, &qword_1E6602B18);
  v82 = *(v81 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v96 = &v69 - v14;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799D8, &qword_1E6602B20);
  v79 = *(v80 - 8);
  v15 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v93 = &v69 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799E0, &qword_1E6602B28);
  v77 = *(v78 - 8);
  v17 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v92 = &v69 - v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799E8, &qword_1E6602B30);
  v75 = *(v76 - 8);
  v19 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v91 = &v69 - v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799F0, &qword_1E6602B38);
  v72 = *(v73 - 8);
  v21 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v23 = &v69 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0799F8, &qword_1E6602B40);
  v74 = *(v24 - 8);
  v25 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v69 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079A00, &unk_1E6602B48);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v69 - v31;
  v33 = a1[3];
  v34 = a1[4];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1E643EB48();
  v35 = v100;
  sub_1E65E6D98();
  v36 = v35;
  if (v35)
  {
    return __swift_destroy_boxed_opaque_existential_1(v101);
  }

  v71 = v23;
  v37 = v27;
  v70 = v24;
  v38 = v96;
  v39 = v97;
  v100 = v29;
  v40 = v98;
  v41 = v99;
  v42 = sub_1E65E6AF8();
  v43 = (2 * *(v42 + 16)) | 1;
  v104 = v42;
  v105 = v42 + 32;
  v106 = 0;
  v107 = v43;
  v44 = sub_1E5FBE3F8();
  if (v44 == 10 || v106 != v107 >> 1)
  {
    v48 = sub_1E65E68F8();
    swift_allocError();
    v50 = v49;
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
    *v50 = &type metadata for URLAction;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6AF8], v48);
    swift_willThrow();
    (*(v100 + 8))(v32, v28);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v101);
  }

  if (v44 > 4u)
  {
    if (v44 <= 6u)
    {
      if (v44 == 5)
      {
        LOBYTE(v102) = 5;
        sub_1E643ECEC();
        sub_1E65E6A68();
        v69 = 0;
        (*(v82 + 8))(v38, v81);
        (*(v100 + 8))(v32, v28);
        swift_unknownObjectRelease();
        v64 = 0;
        v65 = 0;
        v66 = 4;
        v36 = 1;
      }

      else
      {
        LOBYTE(v102) = 6;
        sub_1E643EC98();
        sub_1E65E6A68();
        v69 = 0;
        (*(v84 + 8))(v39, v83);
        (*(v100 + 8))(v32, v28);
        swift_unknownObjectRelease();
        v64 = 0;
        v65 = 0;
        v66 = 4;
        v36 = 2;
      }
    }

    else if (v44 == 7)
    {
      LOBYTE(v102) = 7;
      sub_1E643EC44();
      sub_1E65E6A68();
      v69 = 0;
      (*(v85 + 8))(v40, v86);
      (*(v100 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v64 = 0;
      v65 = 0;
      v66 = 4;
      v36 = 3;
    }

    else if (v44 == 8)
    {
      LOBYTE(v102) = 8;
      sub_1E643EBF0();
      v53 = v95;
      sub_1E65E6A68();
      v69 = 0;
      (*(v87 + 8))(v53, v88);
      (*(v100 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v64 = 0;
      v65 = 0;
      v36 = 4;
      v66 = 4;
    }

    else
    {
      LOBYTE(v102) = 9;
      sub_1E643EB9C();
      v59 = v94;
      sub_1E65E6A68();
      v69 = 0;
      (*(v89 + 8))(v59, v90);
      (*(v100 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v64 = 0;
      v65 = 0;
      v66 = 4;
      v36 = 5;
    }
  }

  else if (v44 <= 1u)
  {
    if (v44)
    {
      LOBYTE(v102) = 1;
      sub_1E643EE3C();
      v60 = v71;
      sub_1E65E6A68();
      sub_1E5DF6CE4();
      v61 = v73;
      sub_1E65E6AD8();
      v62 = v100;
      v69 = 0;
      (*(v72 + 8))(v60, v61);
      (*(v62 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v65 = 0;
      v36 = v102;
      v64 = v103;
      v66 = 1;
    }

    else
    {
      LOBYTE(v102) = 0;
      sub_1E643EE90();
      sub_1E65E6A68();
      v108 = 0;
      sub_1E643FF0C();
      v54 = v70;
      sub_1E65E6AD8();
      v36 = v102;
      v108 = 1;
      v67 = sub_1E65E6AA8();
      v69 = 0;
      v64 = v67;
      v65 = v68;
      (*(v74 + 8))(v37, v54);
      (*(v100 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v66 = 0;
    }
  }

  else if (v44 == 2)
  {
    LOBYTE(v102) = 2;
    sub_1E643EDE8();
    v55 = v91;
    sub_1E65E6A68();
    v56 = v76;
    v57 = sub_1E65E6AA8();
    v69 = 0;
    v36 = v57;
    v64 = v63;
    (*(v75 + 8))(v55, v56);
    (*(v100 + 8))(v32, v28);
    swift_unknownObjectRelease();
    v65 = 0;
    v66 = 2;
  }

  else if (v44 == 3)
  {
    LOBYTE(v102) = 3;
    sub_1E643ED94();
    v45 = v92;
    sub_1E65E6A68();
    v46 = v78;
    v47 = sub_1E65E6AC8();
    v69 = 0;
    v36 = v47;
    (*(v77 + 8))(v45, v46);
    (*(v100 + 8))(v32, v28);
    swift_unknownObjectRelease();
    v64 = 0;
    v65 = 0;
    v66 = 3;
  }

  else
  {
    LOBYTE(v102) = 4;
    sub_1E643ED40();
    v58 = v93;
    sub_1E65E6A68();
    v69 = 0;
    (*(v79 + 8))(v58, v80);
    (*(v100 + 8))(v32, v28);
    swift_unknownObjectRelease();
    v64 = 0;
    v65 = 0;
    v66 = 4;
  }

  *v41 = v36;
  *(v41 + 8) = v64;
  *(v41 + 16) = v65;
  *(v41 + 24) = v66;
  return __swift_destroy_boxed_opaque_existential_1(v101);
}

unint64_t sub_1E643FF0C()
{
  result = qword_1ED079A08;
  if (!qword_1ED079A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A08);
  }

  return result;
}

uint64_t URLAction.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        MEMORY[0x1E694E740](3);
        v5 = v2;
      }

      else
      {
        v7 = v3 | v1;
        if (v3 | v1 | v2)
        {
          if (v2 != 1 || v7)
          {
            if (v2 != 2 || v7)
            {
              if (v2 != 3 || v7)
              {
                if (v2 != 4 || v7)
                {
                  v5 = 9;
                }

                else
                {
                  v5 = 8;
                }
              }

              else
              {
                v5 = 7;
              }
            }

            else
            {
              v5 = 6;
            }
          }

          else
          {
            v5 = 5;
          }
        }

        else
        {
          v5 = 4;
        }
      }

      return MEMORY[0x1E694E740](v5);
    }

    MEMORY[0x1E694E740](2);
    goto LABEL_8;
  }

  if (!*(v0 + 24))
  {
    MEMORY[0x1E694E740](0);
    sub_1E65E5D78();

LABEL_8:

    return sub_1E65E5D78();
  }

  MEMORY[0x1E694E740](1);
  if (v1 > 2)
  {
    if (v1 == 3 || v1 == 4 || v1 == 5)
    {
      goto LABEL_31;
    }
  }

  else if (v1 <= 2)
  {
    goto LABEL_31;
  }

  MEMORY[0x1E694D7C0](v2, v1);
LABEL_31:
  sub_1E65E5D78();
}

uint64_t URLAction.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1E65E6D28();
  URLAction.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t sub_1E6440310()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1E65E6D28();
  URLAction.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t sub_1E6440370()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_1E65E6D28();
  URLAction.hash(into:)();
  return sub_1E65E6D78();
}

BOOL _s10Blackbeard9URLActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v19[0] = *a1;
  v19[1] = v3;
  v19[2] = v4;
  v20 = v5;
  v21 = v7;
  v22 = v6;
  v23 = v8;
  v24 = v9;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        if (v9 == 3)
        {
          sub_1E64417E8(v19);
          return v2 == v7;
        }

        goto LABEL_82;
      }

      v11 = v4 | v3;
      if (!(v4 | v3 | v2))
      {
        if (v9 != 4 || v8 | v6 | v7)
        {
          goto LABEL_82;
        }

        goto LABEL_81;
      }

      if (v2 != 1 || v11)
      {
        if (v2 != 2 || v11)
        {
          if (v2 != 3 || v11)
          {
            if (v2 != 4 || v11)
            {
              if (v9 != 4 || v7 != 5)
              {
                goto LABEL_82;
              }
            }

            else if (v9 != 4 || v7 != 4)
            {
              goto LABEL_82;
            }
          }

          else if (v9 != 4 || v7 != 3)
          {
            goto LABEL_82;
          }
        }

        else if (v9 != 4 || v7 != 2)
        {
          goto LABEL_82;
        }
      }

      else if (v9 != 4 || v7 != 1)
      {
        goto LABEL_82;
      }

      if (!(v8 | v6))
      {
LABEL_81:
        sub_1E64417E8(v19);
        return 1;
      }

LABEL_82:
      sub_1E6228348(v7, v6, v8, v9);
      goto LABEL_83;
    }

    if (v9 == 2)
    {
      if (v2 != v7 || v3 != v6)
      {
        v16 = sub_1E65E6C18();
        sub_1E6228348(v7, v6, v8, 2);
        sub_1E6228348(v2, v3, v4, 2);
        sub_1E64417E8(v19);
        return v16 & 1;
      }

      sub_1E6228348(v2, v3, v8, 2);
      sub_1E6228348(v2, v3, v4, 2);
      goto LABEL_81;
    }

LABEL_25:

    goto LABEL_82;
  }

  if (!v5)
  {
    if (!v9)
    {
      sub_1E6228348(v7, v6, v8, 0);
      sub_1E6228348(v2, v3, v4, 0);
      if ((sub_1E648B2FC(v2, v7) & 1) == 0)
      {
LABEL_83:
        sub_1E64417E8(v19);
        return 0;
      }

      if (v3 != v6 || v4 != v8)
      {
        v15 = sub_1E65E6C18();
        sub_1E64417E8(v19);
        return v15 & 1;
      }

      goto LABEL_81;
    }

    goto LABEL_25;
  }

  if (v9 != 1)
  {
    sub_1E5E05374(v2, v3);
    goto LABEL_82;
  }

  v12 = 0x65726F6C707865;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v13 = 0x686372616573;
        break;
      case 4:
        v13 = 0x7478654E7075;
        break;
      case 5:
        v13 = 0x736E616C70;
        sub_1E5E05374(v7, v6);
        v14 = 0xE500000000000000;
        goto LABEL_60;
      default:
        goto LABEL_56;
    }
  }

  else
  {
    if (!v3)
    {
      sub_1E5E05374(v7, v6);
      v14 = 0xE700000000000000;
      v13 = 0x65726F6C707865;
      goto LABEL_60;
    }

    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v13 = 0x7972617262696CLL;
        sub_1E5E05374(v7, v6);
        v14 = 0xE700000000000000;
        goto LABEL_60;
      }

LABEL_56:
      sub_1E6228348(v7, v6, v8, 1);
      sub_1E6228348(v2, v3, v4, 1);
      MEMORY[0x1E694D7C0](v2, v3);
      v13 = 0x7974696C61646F6DLL;
      v14 = 0xE90000000000003ALL;
      goto LABEL_60;
    }

    v13 = 0x756F59726F66;
  }

  sub_1E5E05374(v7, v6);
  v14 = 0xE600000000000000;
LABEL_60:
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v17 = 0xE600000000000000;
        v12 = 0x686372616573;
        goto LABEL_74;
      case 4:
        v17 = 0xE600000000000000;
        v12 = 0x7478654E7075;
        goto LABEL_74;
      case 5:
        v17 = 0xE500000000000000;
        v12 = 0x736E616C70;
        goto LABEL_74;
    }

LABEL_71:
    MEMORY[0x1E694D7C0](v7, v6);
    v12 = 0x7974696C61646F6DLL;
    v17 = 0xE90000000000003ALL;
    goto LABEL_74;
  }

  if (!v6)
  {
    v17 = 0xE700000000000000;
    goto LABEL_74;
  }

  if (v6 == 1)
  {
    v17 = 0xE600000000000000;
    v12 = 0x756F59726F66;
    goto LABEL_74;
  }

  if (v6 != 2)
  {
    goto LABEL_71;
  }

  v17 = 0xE700000000000000;
  v12 = 0x7972617262696CLL;
LABEL_74:
  if (v13 == v12 && v14 == v17)
  {
    sub_1E64417E8(v19);

    return 1;
  }

  else
  {
    v18 = sub_1E65E6C18();
    sub_1E64417E8(v19);

    return v18 & 1;
  }
}

unint64_t sub_1E6440914()
{
  result = qword_1ED079A10;
  if (!qword_1ED079A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A10);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Blackbeard9URLActionO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1E6440998(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E64409E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E6440A28(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

unint64_t sub_1E6440B08()
{
  result = qword_1ED079A18;
  if (!qword_1ED079A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A18);
  }

  return result;
}

unint64_t sub_1E6440B60()
{
  result = qword_1ED079A20;
  if (!qword_1ED079A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A20);
  }

  return result;
}

unint64_t sub_1E6440BB8()
{
  result = qword_1ED079A28;
  if (!qword_1ED079A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A28);
  }

  return result;
}

unint64_t sub_1E6440C10()
{
  result = qword_1ED079A30;
  if (!qword_1ED079A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A30);
  }

  return result;
}

unint64_t sub_1E6440C68()
{
  result = qword_1ED079A38;
  if (!qword_1ED079A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A38);
  }

  return result;
}

unint64_t sub_1E6440CC0()
{
  result = qword_1ED079A40;
  if (!qword_1ED079A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A40);
  }

  return result;
}

unint64_t sub_1E6440D18()
{
  result = qword_1ED079A48;
  if (!qword_1ED079A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A48);
  }

  return result;
}

unint64_t sub_1E6440D70()
{
  result = qword_1ED079A50;
  if (!qword_1ED079A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A50);
  }

  return result;
}

unint64_t sub_1E6440DC8()
{
  result = qword_1ED079A58;
  if (!qword_1ED079A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A58);
  }

  return result;
}

unint64_t sub_1E6440E20()
{
  result = qword_1ED079A60;
  if (!qword_1ED079A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A60);
  }

  return result;
}

unint64_t sub_1E6440E78()
{
  result = qword_1ED079A68;
  if (!qword_1ED079A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A68);
  }

  return result;
}

unint64_t sub_1E6440ED0()
{
  result = qword_1ED079A70;
  if (!qword_1ED079A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A70);
  }

  return result;
}

unint64_t sub_1E6440F28()
{
  result = qword_1ED079A78;
  if (!qword_1ED079A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A78);
  }

  return result;
}

unint64_t sub_1E6440F80()
{
  result = qword_1ED079A80;
  if (!qword_1ED079A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A80);
  }

  return result;
}

unint64_t sub_1E6440FD8()
{
  result = qword_1ED079A88;
  if (!qword_1ED079A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A88);
  }

  return result;
}

unint64_t sub_1E6441030()
{
  result = qword_1ED079A90;
  if (!qword_1ED079A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A90);
  }

  return result;
}

unint64_t sub_1E6441088()
{
  result = qword_1ED079A98;
  if (!qword_1ED079A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079A98);
  }

  return result;
}

unint64_t sub_1E64410E0()
{
  result = qword_1ED079AA0;
  if (!qword_1ED079AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AA0);
  }

  return result;
}

unint64_t sub_1E6441138()
{
  result = qword_1ED079AA8;
  if (!qword_1ED079AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AA8);
  }

  return result;
}

unint64_t sub_1E6441190()
{
  result = qword_1ED079AB0;
  if (!qword_1ED079AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AB0);
  }

  return result;
}

unint64_t sub_1E64411E8()
{
  result = qword_1ED079AB8;
  if (!qword_1ED079AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AB8);
  }

  return result;
}

unint64_t sub_1E6441240()
{
  result = qword_1ED079AC0;
  if (!qword_1ED079AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AC0);
  }

  return result;
}

unint64_t sub_1E6441298()
{
  result = qword_1ED079AC8;
  if (!qword_1ED079AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AC8);
  }

  return result;
}

unint64_t sub_1E64412F0()
{
  result = qword_1ED079AD0;
  if (!qword_1ED079AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AD0);
  }

  return result;
}

unint64_t sub_1E6441348()
{
  result = qword_1ED079AD8;
  if (!qword_1ED079AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AD8);
  }

  return result;
}

unint64_t sub_1E64413A0()
{
  result = qword_1ED079AE0;
  if (!qword_1ED079AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AE0);
  }

  return result;
}

unint64_t sub_1E64413F8()
{
  result = qword_1ED079AE8;
  if (!qword_1ED079AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079AE8);
  }

  return result;
}

uint64_t sub_1E644144C()
{
  v0 = sub_1E65E6A48();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E6441498(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F736572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953460082 && a2 == 0xE400000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E660FD00 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616C50646C697562 && a2 == 0xE90000000000006ELL || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736B63617473 && a2 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x53746E756F636361 && a2 == 0xEF73676E69747465 || (sub_1E65E6C18() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F436D6565646572 && a2 == 0xEA00000000006564 || (sub_1E65E6C18() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74666947646E6573 && a2 == 0xEC00000064726143 || (sub_1E65E6C18() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4E79636176697270 && a2 == 0xED0000656369746FLL)
  {

    return 9;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1E64417E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079AF0, &unk_1E6603730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1E6441850@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  v8 = *(type metadata accessor for RouteDetourViewControllerRoutingContext() + 20);
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_project_boxed_opaque_existential_1(a3, v9);
  result = sub_1E625E57C(a2 + v8, 0, v11, a1, v9, v10);
  *a4 = result;
  return result;
}

uint64_t sub_1E64418D8(uint64_t a1, uint64_t *a2, char a3)
{
  *(v4 + 72) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v6 = type metadata accessor for RouteDetourViewControllerRoutingContext();
  *(v4 + 32) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v4 + 48) = v8;
  *(v4 + 56) = v9;
  *(v4 + 73) = *(a2 + 8);
  sub_1E65E6058();
  *(v4 + 64) = sub_1E65E6048();
  v11 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E64419C0, v11, v10);
}

uint64_t sub_1E64419C0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(v0 + 73);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);
    v10 = *(v0 + 24);
    v26 = *(v0 + 16);
    v11 = *(v9 + 20);
    sub_1E6442448(v10 + v11, v6 + v11, type metadata accessor for AppComposer);
    v12 = *(v10 + *(v9 + 24));
    swift_unknownObjectWeakInit();
    v13 = swift_unknownObjectWeakAssign();
    *(v6 + *(v9 + 24)) = v12;
    sub_1E6442448(v13, v8, type metadata accessor for RouteDetourViewControllerRoutingContext);
    swift_unknownObjectRetain();
    v14 = sub_1E629F014(v10 + v11, 0, v8, v26);
    sub_1E64424B0(v8, type metadata accessor for RouteDetourViewControllerRoutingContext);
    v15 = sub_1E61AAA48(v14);

    v16 = [v15 presentationController];
    if (v16)
    {
      v17 = v16;
      [v16 setDelegate_];
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && (swift_getObjectType(), swift_conformsToProtocol2()) && v15)
    {
      [v4 presentViewController:v15 animated:*(v0 + 72) completion:0];
      v18 = v4;
      v4 = v15;
    }

    else
    {
      [v4 presentViewController:v15 animated:*(v0 + 72) completion:0];
      v18 = v15;
    }

    v20 = *(v0 + 40);
    v19 = *(v0 + 48);

    sub_1E64424B0(v19, type metadata accessor for RouteDetourViewControllerRoutingContext);

    v21 = *(v0 + 8);
  }

  else
  {
    v22 = *(v0 + 40);
    v23 = *(v0 + 48);
    sub_1E5FAA54C();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();

    v21 = *(v0 + 8);
  }

  return v21();
}

uint64_t sub_1E6441C78(uint64_t a1, uint64_t *a2, char a3)
{
  *(v4 + 112) = a3;
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;
  v6 = type metadata accessor for RouteDetourNavigationControllerRoutingContext();
  *(v4 + 72) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a2;
  *(v4 + 88) = v9;
  *(v4 + 96) = v10;
  *(v4 + 113) = *(a2 + 8);
  sub_1E65E6058();
  *(v4 + 104) = sub_1E65E6048();
  v12 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6441D8C, v12, v11);
}

uint64_t sub_1E6441D8C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1E5FAA54C();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
LABEL_11:
    v37 = *(v0 + 80);
    v36 = *(v0 + 88);

    v30 = *(v0 + 8);
    goto LABEL_12;
  }

  v4 = Strong;
  v5 = *(v0 + 56);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v32 = *(v0 + 88);
    v33 = type metadata accessor for RouteDestination();
    (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
    sub_1E6442374(v32);
    sub_1E5FAA54C();
    swift_allocError();
    v35 = 3;
LABEL_10:
    *v34 = v35;
    swift_willThrow();

    goto LABEL_11;
  }

  v7 = *(v0 + 113);
  v8 = v6 - 1;
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = type metadata accessor for RouteDestination();
  v12 = *(v11 - 8);
  sub_1E6442448(v5 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8, v9, type metadata accessor for RouteDestination);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_1E6442374(v9);
  LOBYTE(v39) = v7;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
  v14 = sub_1E61AAA48(v13);

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    sub_1E5FAA54C();
    swift_allocError();
    v35 = 6;
    goto LABEL_10;
  }

  v16 = v15;
  v18 = *(v0 + 72);
  v17 = *(v0 + 80);
  v19 = *(v0 + 56);
  v20 = *(v0 + 64);
  v21 = type metadata accessor for RouteDetourViewControllerRoutingContext();
  sub_1E6442448(v20 + *(v21 + 20), v17 + *(v18 + 20), type metadata accessor for AppComposer);
  v22 = *(v20 + *(v21 + 24));
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v17 + *(v18 + 24)) = v22;
  *(v0 + 40) = v18;
  *(v0 + 48) = &off_1F5FB76B8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_1E6442448(v17, boxed_opaque_existential_1, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
  v24 = swift_task_alloc();
  *(v24 + 16) = v20;
  *(v24 + 24) = v0 + 16;
  swift_unknownObjectRetain();
  sub_1E5F9F34C(sub_1E6442428, v24, v19);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1E5DEF094();
  v25 = sub_1E65E5EF8();

  [v16 setViewControllers:v25 animated:0];

  v26 = [v16 presentationController];
  if (v26)
  {
    v27 = v26;
    [v26 setDelegate_];
  }

  v29 = *(v0 + 80);
  v28 = *(v0 + 88);
  [v4 presentViewController:v16 animated:*(v0 + 112) completion:0];

  sub_1E64424B0(v29, type metadata accessor for RouteDetourNavigationControllerRoutingContext);

  v30 = *(v0 + 8);
LABEL_12:

  return v30();
}

uint64_t sub_1E64421D8()
{
  type metadata accessor for NullTaskScheduler();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E6442510();
  return v0;
}

uint64_t sub_1E644221C(uint64_t a1, uint64_t *a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E64418D8(a1, a2, a3);
}

uint64_t sub_1E64422C8(uint64_t a1, uint64_t *a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6441C78(a1, a2, a3);
}

uint64_t sub_1E6442374(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RouteDetourViewControllerRoutingContext()
{
  result = qword_1ED079AF8;
  if (!qword_1ED079AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6442448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E64424B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E6442510()
{
  result = qword_1ED077E70;
  if (!qword_1ED077E70)
  {
    type metadata accessor for NullTaskScheduler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077E70);
  }

  return result;
}

unint64_t sub_1E6442590()
{
  result = type metadata accessor for AppComposer();
  if (v1 <= 0x3F)
  {
    result = sub_1E5E051BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E6442628@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v52 = a3;
  v53 = sub_1E65D7D18();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D72D8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079B08, qword_1E66037E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v50 - v15;
  v17 = sub_1E65DF038();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v50 - v23;
  v25 = sub_1E65D7C18();
  if (v27 != -1)
  {
    if (v27)
    {
      sub_1E62D9350(v25, v16);
      if ((*(v18 + 48))(v16, 1, v17) != 1)
      {
        (*(v18 + 32))(v24, v16, v17);
        v56 = sub_1E65D7BF8();
        v57 = v48;
        (*(v18 + 16))(v22, v24, v17);
        v49 = sub_1E65D7D08();
        sub_1E63C4134(a1, v51, v49, v12);

        sub_1E5E25708();
        v45 = v52;
        sub_1E65DEFA8();
        (*(v18 + 8))(v24, v17);
        v44 = 0;
        goto LABEL_15;
      }

      sub_1E6442B54(v16);
    }

    else
    {
      sub_1E5F87158(v25, v26, v27);
    }
  }

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v28 = sub_1E65E3B68();
  __swift_project_value_buffer(v28, qword_1EE2EA2A0);
  v29 = v53;
  (*(v5 + 16))(v8, v3, v53);
  v30 = sub_1E65E3B48();
  v31 = sub_1E65E6338();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v59 = v33;
    *v32 = 136315138;
    v34 = sub_1E65D7C18();
    if (v36 == -1)
    {
      v41 = 0xE300000000000000;
      v42 = 7104878;
    }

    else
    {
      v56 = v34;
      v57 = v35;
      v58 = v36 & 1;
      v37 = v34;
      v38 = v35;
      v39 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
      sub_1E65D7F98();
      v40 = v38;
      v29 = v53;
      sub_1E5F87158(v37, v40, v39);
      v42 = v54;
      v41 = v55;
    }

    (*(v5 + 8))(v8, v29);
    v43 = sub_1E5DFD4B0(v42, v41, &v59);

    *(v32 + 4) = v43;
    _os_log_impl(&dword_1E5DE9000, v30, v31, "[Sidebar] Dropping modality tile with unknown kind: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1E694F1C0](v33, -1, -1);
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v29);
  }

  v44 = 1;
  v45 = v52;
LABEL_15:
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EA8, &qword_1E65F1140);
  return (*(*(v46 - 8) + 56))(v45, v44, 1, v46);
}

uint64_t sub_1E6442B54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079B08, qword_1E66037E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6442BBC(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v14 - v9;
  if (!*a1)
  {
    v11 = sub_1E65E60A8();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    sub_1E5DF650C(a2, v15);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    sub_1E5DF599C(v15, (v12 + 4));
    v12[9] = a3;
    v13 = a3;
    result = sub_1E64B80F8(0, 0, v10, &unk_1E66038A0, v12);
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E6442D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0);
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = type metadata accessor for SubscriptionPurchaseRequest();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C18, &qword_1E66038B0) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6442E60, 0, 0);
}

uint64_t sub_1E6442E60()
{
  v1 = v0[9];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E65E6198();

  v7 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v8 = *(MEMORY[0x1E69E85B0] + 4);
  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_1E6443018;
  v10 = v0[17];

  return MEMORY[0x1EEE6D8D0](v10, 0, 0);
}

uint64_t sub_1E6443018()
{
  v2 = *(*v1 + 144);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6443128, 0, 0);
  }

  return result;
}

uint64_t sub_1E6443128()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[16];
    v5 = v0[13];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v3 + 32))(v0[16], v1, v2);
    v8 = SubscriptionPurchaseRequest.buyParams.getter();
    v0[19] = v8;
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = sub_1E6443280;
    v10 = v0[10];

    return sub_1E6443620(v8);
  }
}

uint64_t sub_1E6443280(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_1E64434E4;
  }

  else
  {

    *(v4 + 176) = a1;
    v7 = sub_1E64433B0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E64433B0()
{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  SubscriptionPurchaseRequest.continuation.getter(v5);
  v0[8] = v1;
  sub_1E65E5FF8();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_1E6443018;
  v11 = v0[17];

  return MEMORY[0x1EEE6D8D0](v11, 0, 0);
}

uint64_t sub_1E64434E4()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);

  SubscriptionPurchaseRequest.continuation.getter(v5);
  *(v0 + 56) = v1;
  sub_1E65E5FE8();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
  v9 = *(MEMORY[0x1E69E85B0] + 4);
  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  *v10 = v0;
  v10[1] = sub_1E6443018;
  v11 = *(v0 + 136);

  return MEMORY[0x1EEE6D8D0](v11, 0, 0);
}

uint64_t sub_1E6443620(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6443640, 0, 0);
}

uint64_t sub_1E6443640()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1E65E3B68();
  v0[5] = __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v4 = [objc_allocWithZone(MEMORY[0x1E698CAE0]) initWithPurchaseType:0 buyParams:v1];
  v0[6] = v4;
  [v4 setUserInitiated_];
  [v4 setRequiresAccount_];
  v6 = *(v2 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_accountProvider + 24);
  v5 = *(v2 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_accountProvider + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_accountProvider), v6);
  v7 = *(MEMORY[0x1E69CAE08] + 4);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_1E64437D4;

  return MEMORY[0x1EEE348A8](v6, v5);
}

uint64_t sub_1E64437D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_1E6443D0C;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_1E6443900;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6443900()
{
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  [v2 setAccount_];

  v5 = [objc_allocWithZone(MEMORY[0x1E698CD20]) initWithPurchase:v2 bag:*(v3 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_bag)];
  v0[9] = v5;
  [v5 setDelegate_];
  sub_1E5DEF738(0, &unk_1ED079C20, 0x1E698CAC0);
  [v5 setPaymentSheetTaskClass_];
  v18 = *(v3 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_eventHub);
  v6 = v4;
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6338();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v9;
    *v11 = v9;
    v12 = v9;
    _os_log_impl(&dword_1E5DE9000, v7, v8, "Performing purchase with %@", v10, 0xCu);
    sub_1E5F91480(v11);
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  v13 = swift_task_alloc();
  v0[10] = v13;
  *(v13 + 16) = v5;
  *(v13 + 24) = v18;
  v14 = *(MEMORY[0x1E69E8920] + 4);
  v15 = swift_task_alloc();
  v0[11] = v15;
  v16 = sub_1E5DEF738(0, &unk_1EE2D4618, 0x1E698CAF0);
  *v15 = v0;
  v15[1] = sub_1E6443B80;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000018, 0x80000001E66172A0, sub_1E6445280, v13, v16);
}

uint64_t sub_1E6443B80()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1E6443F84;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1E6443C9C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6443C9C()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1E6443D0C()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  [v1 setAccount_];
  v4 = [objc_allocWithZone(MEMORY[0x1E698CD20]) initWithPurchase:v1 bag:*(v2 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_bag)];
  v0[9] = v4;
  [v4 setDelegate_];
  sub_1E5DEF738(0, &unk_1ED079C20, 0x1E698CAC0);
  [v4 setPaymentSheetTaskClass_];
  v17 = *(v2 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_eventHub);
  v5 = v3;
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "Performing purchase with %@", v9, 0xCu);
    sub_1E5F91480(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  v12 = swift_task_alloc();
  v0[10] = v12;
  *(v12 + 16) = v4;
  *(v12 + 24) = v17;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  v0[11] = v14;
  v15 = sub_1E5DEF738(0, &unk_1EE2D4618, 0x1E698CAF0);
  *v14 = v0;
  v14[1] = sub_1E6443B80;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000018, 0x80000001E66172A0, sub_1E6445280, v12, v15);
}

uint64_t sub_1E6443F84()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);
  v4 = *(v0 + 96);

  return v3();
}

void sub_1E6443FF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - v11;
  v13 = [a2 performPurchase];
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  (*(v9 + 32))(v15 + v14, v12, v8);
  aBlock[4] = sub_1E644528C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E64453F4;
  aBlock[3] = &block_descriptor_28;
  v16 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v13 addFinishBlock_];
  _Block_release(v16);
}

void sub_1E64441E8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v34 = a1;
  v6 = sub_1E65DB638();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1E65DB868();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65DB628();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_getObjectType();
    v20 = a2;
    v21 = a2;
    sub_1E65DB618();
    sub_1E644531C(&unk_1ED079C30, MEMORY[0x1E69CD580]);
    sub_1E65DDDE8();
    (*(v16 + 8))(v19, v15);
    v37 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0);
    sub_1E65E5FE8();
    return;
  }

  v22 = v33;
  v32 = v11;
  if (!v34)
  {
    swift_getObjectType();
    sub_1E5FB7CAC();
    swift_allocError();
    *v26 = 1;
    sub_1E65DB618();
    sub_1E644531C(&unk_1ED079C30, MEMORY[0x1E69CD580]);
    sub_1E65DDDE8();
    (*(v16 + 8))(v19, v15);
    v27 = swift_allocError();
    *v28 = 1;
    v37 = v27;
    goto LABEL_3;
  }

  v23 = v34;
  v24 = [v23 correlationID];
  if (v24)
  {

    swift_getObjectType();
    *v9 = v23;
    (*(v22 + 104))(v9, *MEMORY[0x1E69CD590], v6);
    v25 = v23;
    sub_1E65DB858();
    sub_1E644531C(&qword_1EE2D6D20, MEMORY[0x1E69CD638]);
    sub_1E65DDDE8();
    (*(v32 + 8))(v14, v10);
    v37 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0);
    sub_1E65E5FF8();
  }

  else
  {
    swift_getObjectType();
    sub_1E5FB7CAC();
    swift_allocError();
    *v29 = 2;
    sub_1E65DB618();
    sub_1E644531C(&unk_1ED079C30, MEMORY[0x1E69CD580]);
    sub_1E65DDDE8();
    (*(v16 + 8))(v19, v15);
    v30 = swift_allocError();
    *v31 = 2;
    v37 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0);
    sub_1E65E5FE8();
  }
}

void sub_1E644471C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1E644486C(void *a1, int a2, int a3, void *a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  _Block_copy(v7);
  v9 = a4;
  v8 = a1;
  sub_1E6444AE8(v9, v8, v7);
  _Block_release(v7);

  _Block_release(v7);
}

void sub_1E6444910(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_1E64449BC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1E6444A0C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E6444A60(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1E6444A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1E65D73A8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_1E6444AE8(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(MEMORY[0x1E698CC50]);
    _Block_copy(a3);
    v9 = [v8 initWithRequest:a1 presentingViewController:v7];
    v10 = [v9 present];
    v15[4] = sub_1E6445154;
    v15[5] = v5;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1E64453F4;
    v15[3] = &block_descriptor_7_0;
    v11 = _Block_copy(v15);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_1E6445100();
    v12 = swift_allocError();
    *v13 = 1;
    _Block_copy(a3);
    v14 = sub_1E65D73A8();
    (a3)[2](a3, 0, v14);
  }
}

void sub_1E6444CDC(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(a2 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_bag);
    v10 = objc_allocWithZone(MEMORY[0x1E698CC58]);
    _Block_copy(a3);
    v11 = [v10 initWithRequest:a1 presentingViewController:v8 bag:v9];
    [v11 setDelegate_];
    v12 = [v11 performAuthentication];
    v17[4] = sub_1E64453E0;
    v17[5] = v6;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E64453F4;
    v17[3] = &block_descriptor_13_0;
    v13 = _Block_copy(v17);

    [v12 addFinishBlock_];
    _Block_release(v13);
  }

  else
  {
    sub_1E6445100();
    v14 = swift_allocError();
    *v15 = 0;
    _Block_copy(a3);
    v16 = sub_1E65D73A8();
    (a3)[2](a3, 0, v16);
  }
}

void sub_1E6444EFC(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(a2 + OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_bag);
    v10 = objc_allocWithZone(MEMORY[0x1E698CCD0]);
    _Block_copy(a3);
    v11 = [v10 initWithRequest:a1 bag:v9 presentingViewController:v8];
    v12 = [v11 presentEngagement];
    v17[4] = sub_1E64453E0;
    v17[5] = v6;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1E64453F4;
    v17[3] = &block_descriptor_18;
    v13 = _Block_copy(v17);

    [v12 addFinishBlock_];
    _Block_release(v13);
  }

  else
  {
    sub_1E6445100();
    v14 = swift_allocError();
    *v15 = 2;
    _Block_copy(a3);
    v16 = sub_1E65D73A8();
    (a3)[2](a3, 0, v16);
  }
}

unint64_t sub_1E6445100()
{
  result = qword_1ED079C00;
  if (!qword_1ED079C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079C00);
  }

  return result;
}

uint64_t sub_1E6445170(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6442D00(a1, v4, v5, (v1 + 4), v6);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_1E644528C(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C10, &unk_1E660E8F0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_1E64441E8(a1, a2, v6, v7, v8);
}

uint64_t sub_1E644531C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E6445378()
{
  result = qword_1ED079C48;
  if (!qword_1ED079C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079C48);
  }

  return result;
}

uint64_t sub_1E64453F8(void *a1, uint64_t a2, uint64_t a3)
{
  v64 = a3;
  v70 = a2;
  v63 = sub_1E65DB048();
  v61 = *(v63 - 8);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CB0, &qword_1E6603988);
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v51 - v7;
  v8 = sub_1E65DB068();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppComposer();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8);
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v52 = &v51 - v15;
  v17 = sub_1E65DB748();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v71 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  v23 = sub_1E65DB088();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v55 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E65DB0C8();
  v27 = *(v26 - 8);
  v58 = v26;
  v59 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v72 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *a1;
  v53 = *(v18 + 16);
  v54 = a1;
  v53(v22, v70, v17);
  sub_1E5E1DEAC(a1, v16);
  v30 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v31 = (v19 + *(v12 + 80) + v30) & ~*(v12 + 80);
  v32 = swift_allocObject();
  v33 = *(v18 + 32);
  v33(v32 + v30, v22, v17);
  sub_1E5E1FA80(v52, v32 + v31);
  v53(v71, v70, v17);
  v34 = v56;
  sub_1E5E1DEAC(v54, v56);
  v35 = swift_allocObject();
  v33(v35 + v30, v71, v17);
  sub_1E5E1FA80(v34, v35 + v31);
  sub_1E65DB078();
  sub_1E65DB0B8();
  sub_1E65DB058();
  v37 = v60;
  v36 = v61;
  v38 = *(v61 + 16);
  v39 = v63;
  v40 = v64;
  v38(v60, v64, v63);
  v41 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v71 = swift_allocObject();
  v42 = *(v36 + 32);
  v42(&v71[v41], v37, v39);
  v38(v37, v40, v39);
  v43 = swift_allocObject();
  v42((v43 + v41), v37, v39);
  type metadata accessor for AppFeature();
  sub_1E6446CC8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E6446CC8(&qword_1EE2D6DA8, MEMORY[0x1E699D020]);
  v44 = v65;
  v45 = v58;
  sub_1E65E4DE8();
  v47 = v72;
  v46 = v73;
  v48 = v45;
  v49 = sub_1E65E4F08();
  (*(v68 + 8))(v44, v69);
  (*(v66 + 8))(v46, v67);
  (*(v59 + 8))(v47, v48);
  return v49;
}