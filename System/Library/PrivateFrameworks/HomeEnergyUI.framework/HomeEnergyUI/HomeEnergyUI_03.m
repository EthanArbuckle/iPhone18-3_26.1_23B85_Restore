uint64_t sub_20D81BA0C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  v5 = *a1;
  swift_beginAccess();
  return sub_20D7FCF94(v2 + v5, a2);
}

uint64_t sub_20D81BAE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  v6 = *a2;
  swift_beginAccess();
  return sub_20D7FCF94(v5 + v6, a3);
}

uint64_t sub_20D81BBD4(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(type metadata accessor for HistoricalUsageSnapshot() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D7FCF94(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972848();

  return sub_20D7FEF04(v6);
}

uint64_t sub_20D81BE38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(*(type metadata accessor for HistoricalUsageSnapshot() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D7FCF94(a2, v8);
  v9 = *a3;
  swift_beginAccess();
  sub_20D82CF34(v8, a1 + v9);
  return swift_endAccess();
}

uint64_t HistoricalUsageSnapshotManager.__allocating_init(siteID:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20D80F3B0;

  return HistoricalUsageSnapshotManager.init(siteID:)(a1, a2);
}

uint64_t HistoricalUsageSnapshotManager.init(siteID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_20D972628();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_20D972AF8();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(type metadata accessor for HistoricalUsageSnapshot() - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D81C100, 0, 0);
}

uint64_t sub_20D81C100()
{
  v34 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[4];
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  v27 = 1;
  v6 = *(v4 + 104);
  v6(v1, *MEMORY[0x277D075B0], v3);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v27, v1, v2);
  v7 = *(v4 + 8);
  v7(v1, v3);
  sub_20D81E5E0(v2, v5 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__dailyUsageSnapshot);
  v28 = 1;
  v8 = *MEMORY[0x277D075B8];
  v6(v1, v8, v3);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v28, v1, v2);
  v7(v1, v3);
  sub_20D81E5E0(v2, v5 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot);
  v29 = 1;
  v6(v1, v8, v3);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v29, v1, v2);
  v7(v1, v3);
  sub_20D81E5E0(v2, v5 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__summaryWeeklySnapshot);
  v30 = 1;
  v6(v1, *MEMORY[0x277D075C8], v3);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v30, v1, v2);
  v7(v1, v3);
  sub_20D81E5E0(v2, v5 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__monthlyUsageSnapshot);
  v31 = 1;
  v6(v1, *MEMORY[0x277D075D0], v3);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v31, v1, v2);
  v7(v1, v3);
  sub_20D81E5E0(v2, v5 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__sixMonthlyUsageSnapshot);
  v32 = 1;
  v6(v1, *MEMORY[0x277D075C0], v3);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v32, v1, v2);
  v7(v1, v3);
  sub_20D81E5E0(v2, v5 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__yearlyUsageSnapshot);
  sub_20D972888();
  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v9 = v0[3];
  v10 = sub_20D9734F8();
  __swift_project_value_buffer(v10, qword_28112AB90);

  v11 = sub_20D9734D8();
  v12 = sub_20D975478();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = v0[2];
    v13 = v0[3];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_20D7F4DC8(0x7469732874696E69, 0xED0000293A444965, &v33);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_20D7F4DC8(v14, v13, &v33);
    _os_log_impl(&dword_20D7C9000, v11, v12, "HistoricalUsageSnapshotManager:%s awaiting initialization with %s for widget use", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v16, -1, -1);
    MEMORY[0x20F324260](v15, -1, -1);
  }

  v18 = v0[6];
  v17 = v0[7];
  v20 = v0[4];
  v19 = v0[5];
  *(v20 + 16) = 1;
  sub_20D9725C8();
  (*(v18 + 32))(v20 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__lastReloadDate, v17, v19);
  result = sub_20D973118();
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  *(v0[4] + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__tileRefreshPeriod) = v22;
  v23 = swift_task_alloc();
  v0[12] = v23;
  *v23 = v0;
  v23[1] = sub_20D81C610;
  v24 = v0[3];
  v25 = v0[4];
  v26 = v0[2];

  return sub_20D81F678(v26, v24);
}

uint64_t sub_20D81C610()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 56);
  v6 = *(*v0 + 24);
  v10 = *v0;

  v7 = *(v10 + 8);
  v8 = *(v1 + 32);

  return v7(v8);
}

uint64_t HistoricalUsageSnapshotManager.init(type:)(unsigned __int8 *a1)
{
  v2 = v1;
  v202 = sub_20D9727D8();
  v201 = *(v202 - 8);
  v4 = *(v201 + 64);
  MEMORY[0x28223BE20](v202);
  v200 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v203 = &v176 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v198 = &v176 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v197 = &v176 - v14;
  v190 = sub_20D971EA8();
  v189 = *(v190 - 8);
  v15 = *(v189 + 64);
  MEMORY[0x28223BE20](v190);
  v199 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v17 = *(*(v196 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v196);
  v195 = &v176 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v193 = &v176 - v20;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v21 = *(*(v192 - 8) + 64);
  MEMORY[0x28223BE20](v192);
  v194 = &v176 - v22;
  v217 = sub_20D972C58();
  v204 = *(v217 - 8);
  v23 = *(v204 + 64);
  v24 = MEMORY[0x28223BE20](v217);
  v185 = &v176 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v184 = &v176 - v26;
  v228 = sub_20D972838();
  v224 = *(v228 - 8);
  v27 = *(v224 + 64);
  v28 = MEMORY[0x28223BE20](v228);
  v215 = &v176 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v233 = &v176 - v30;
  v223 = sub_20D972E88();
  v214 = *(v223 - 8);
  v31 = *(v214 + 64);
  v32 = MEMORY[0x28223BE20](v223);
  v191 = &v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v213 = &v176 - v35;
  MEMORY[0x28223BE20](v34);
  v211 = &v176 - v36;
  v210 = sub_20D971D98();
  v209 = *(v210 - 1);
  v37 = *(v209 + 64);
  MEMORY[0x28223BE20](v210);
  v208 = &v176 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20D972628();
  v235 = *(v39 - 8);
  v236 = v39;
  v40 = *(v235 + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v216 = &v176 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v183 = &v176 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v222 = &v176 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v182 = &v176 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v221 = &v176 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v232 = &v176 - v52;
  MEMORY[0x28223BE20](v51);
  v234 = &v176 - v53;
  v54 = sub_20D972AF8();
  v55 = *(v54 - 8);
  v56 = v55[8];
  v57 = MEMORY[0x28223BE20](v54);
  v230 = &v176 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v60 = &v176 - v59;
  v237 = type metadata accessor for HistoricalUsageSnapshot();
  v61 = *(*(v237 - 1) + 64);
  v62 = MEMORY[0x28223BE20](v237);
  v229 = (&v176 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = MEMORY[0x28223BE20](v62);
  v188 = &v176 - v65;
  MEMORY[0x28223BE20](v64);
  v67 = (&v176 - v66);
  LODWORD(v226) = *a1;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  LOBYTE(v243) = 1;
  v68 = v55[13];
  (v68)(v60, *MEMORY[0x277D075B0], v54);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v243, v60, v67);
  v212 = v55;
  v69 = v55[1];
  v69(v60, v54);
  sub_20D81E5E0(v67, v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__dailyUsageSnapshot);
  LOBYTE(v243) = 1;
  v70 = *MEMORY[0x277D075B8];
  (v68)(v60, v70, v54);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v243, v60, v67);
  v69(v60, v54);
  v225 = v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot;
  sub_20D81E5E0(v67, v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot);
  LOBYTE(v243) = 1;
  (v68)(v60, v70, v54);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v243, v60, v67);
  v69(v60, v54);
  sub_20D81E5E0(v67, v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__summaryWeeklySnapshot);
  LOBYTE(v243) = 1;
  v205 = *MEMORY[0x277D075C8];
  v68(v60);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v243, v60, v67);
  v69(v60, v54);
  sub_20D81E5E0(v67, v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__monthlyUsageSnapshot);
  LOBYTE(v243) = 1;
  (v68)(v60, *MEMORY[0x277D075D0], v54);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v243, v60, v67);
  v69(v60, v54);
  sub_20D81E5E0(v67, v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__sixMonthlyUsageSnapshot);
  LOBYTE(v243) = 1;
  v71 = *MEMORY[0x277D075C0];
  v207 = v55 + 13;
  v206 = v68;
  (v68)(v60, v71, v54);
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v243, v60, v67);
  v231 = v54;
  v187 = v55 + 1;
  v186 = v69;
  v69(v60, v54);
  sub_20D81E5E0(v67, v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__yearlyUsageSnapshot);
  v72 = v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager___observationRegistrar;
  sub_20D972888();
  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v73 = sub_20D9734F8();
  __swift_project_value_buffer(v73, qword_28112AB90);
  v74 = sub_20D9734D8();
  v75 = sub_20D975478();
  v76 = os_log_type_enabled(v74, v75);
  v78 = v235;
  v77 = v236;
  v219 = v2;
  v227 = v72;
  if (v76)
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v243 = v80;
    *v79 = 136315394;
    *(v79 + 4) = sub_20D7F4DC8(0x7079742874696E69, 0xEB00000000293A65, &v243);
    *(v79 + 12) = 2080;
    v81 = v226;
    v82 = sub_20D975128();
    v84 = v83;

    v85 = sub_20D7F4DC8(v82, v84, &v243);

    *(v79 + 14) = v85;
    _os_log_impl(&dword_20D7C9000, v74, v75, "HistoricalUsageSnapshotManager:%s: for %s snapshot manager.", v79, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v80, -1, -1);
    MEMORY[0x20F324260](v79, -1, -1);

    v2 = v219;
    v78 = v235;
    v77 = v236;
    v86 = v234;
  }

  else
  {

    v86 = v234;
    v81 = v226;
  }

  *(v2 + 16) = v81;
  sub_20D9725C8();
  v88 = *(v78 + 32);
  v87 = v78 + 32;
  v220 = v88;
  v88((v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__lastReloadDate), v86, v77);
  *(v2 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__tileRefreshPeriod) = sub_20D8293B4();
  if (v81 > 1)
  {
  }

  else
  {
    v89 = sub_20D9757C8();

    if ((v89 & 1) == 0)
    {
      return v2;
    }
  }

  v180 = v60;
  v226 = v87;
  if (qword_27C838648 != -1)
  {
    swift_once();
  }

  v90 = __swift_project_value_buffer(v237, qword_27C83A298);
  swift_beginAccess();
  sub_20D7FCF94(v90, v67);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v242 = v2;
  v92 = sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972848();

  sub_20D7FEF04(v67);
  sub_20D9725C8();
  sub_20D8AE0DC(v86, v67);
  v93 = *(v235 + 8);
  v179 = v235 + 8;
  v178 = v93;
  v93(v86, v236);
  v94 = swift_getKeyPath();
  MEMORY[0x28223BE20](v94);
  v242 = v2;
  sub_20D972848();
  v176 = 0;

  v177 = v67;
  sub_20D7FEF04(v67);
  v181 = 0x800000020D983CA0;
  swift_getKeyPath();
  v242 = v2;
  v218 = v92;
  sub_20D972858();

  v95 = v225;
  swift_beginAccess();
  v96 = v237;
  v97 = v209;
  v98 = v95 + v237[9];
  v99 = v95;
  v100 = v208;
  v101 = v210;
  (*(v209 + 16))(v208, v98, v210);
  sub_20D971D78();
  (*(v97 + 8))(v100, v101);
  swift_getKeyPath();
  v241 = v2;
  sub_20D972858();

  v102 = v214;
  v103 = (v214 + 16);
  v104 = *(v214 + 16);
  v105 = v99 + v96[12];
  v106 = v211;
  v107 = v223;
  v104(v211, v105, v223);
  sub_20D972E68();
  v214 = *(v102 + 8);
  (v214)(v106, v107);
  v206(v230, v205, v231);
  swift_getKeyPath();
  v241 = v2;
  sub_20D972858();

  v108 = v96[12];
  v109 = v225;
  v110 = v213;
  v211 = v103;
  v210 = v104;
  v104(v213, v225 + v108, v107);
  v111 = sub_20D972E38();
  (v214)(v110, v107);
  swift_getKeyPath();
  v241 = v2;
  sub_20D972858();

  v112 = v237;
  LOBYTE(v96) = *(v109 + v237[11]);
  swift_getKeyPath();
  v241 = v2;
  sub_20D972858();

  v113 = v112;
  v114 = v112[16];
  v115 = *(v109 + v112[15]);
  v116 = v229;
  v117 = v181;
  *v229 = 0xD00000000000002BLL;
  v116[1] = v117;
  *(v116 + v114) = 6;
  v118 = v113;
  *(v116 + v113[11]) = v96;
  v119 = v116;
  (v212[2])(v180, v230, v231);
  (*(v224 + 16))(v215, v233, v228);
  v120 = v118[12];
  v213 = v115;

  v214 = v111;
  sub_20D972E28();
  v225 = v120;
  v121 = sub_20D972E38();
  if (*(v121 + 16))
  {
    v122 = v204;
    v123 = v184;
    v124 = v217;
    (*(v204 + 16))(v184, v121 + ((*(v122 + 80) + 32) & ~*(v122 + 80)), v217);

    v126 = v182;
    MEMORY[0x20F320DF0](v125);
    (*(v122 + 8))(v123, v124);
    v127 = v236;
    v128 = v220;
    v220(v221, v126, v236);
    v129 = v232;
    v130 = v222;
  }

  else
  {

    v127 = v236;
    v129 = v232;
    (*(v235 + 16))(v221, v232, v236);
    v130 = v222;
    v122 = v204;
    v128 = v220;
  }

  v131 = v237;
  v132 = v237[9];
  v2 = v225;
  sub_20D972DA8();
  v133 = sub_20D972E38();
  v134 = *(v133 + 16);
  if (v134)
  {
    v135 = v185;
    v136 = v217;
    (*(v122 + 16))(v185, v133 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * (v134 - 1), v217);

    v138 = v183;
    MEMORY[0x20F320DF0](v137);
    v139 = v136;
    v2 = v225;
    (*(v122 + 8))(v135, v139);
    v128(v130, v138, v127);
  }

  else
  {

    (*(v235 + 16))(v130, v129, v127);
  }

  v140 = v131[10];
  sub_20D972DA8();
  v141 = v119 + v131[5];
  sub_20D971D78();
  v142 = v119 + v131[6];
  sub_20D971D78();
  v143 = v119 + v131[7];
  sub_20D971D78();
  v144 = v119 + v131[8];
  sub_20D971D78();
  v145 = v234;
  sub_20D971D78();
  v146 = v216;
  sub_20D971D48();
  sub_20D82CEEC(&qword_281126E30, MEMORY[0x277CC9578]);
  if ((sub_20D974FC8() & 1) == 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v147 = v193;
  v128(v193, v145, v127);
  v148 = v196;
  v128((v147 + *(v196 + 48)), v146, v127);
  v149 = v195;
  sub_20D7EB7E8(v147, v195, &unk_27C83C750, &unk_20D978DD0);
  v150 = *(v148 + 48);
  v151 = v2;
  v152 = v194;
  v128(v194, v149, v127);
  v153 = v178;
  v178((v149 + v150), v127);
  sub_20D829514(v147, v149);
  v128((v152 + *(v192 + 36)), (v149 + *(v148 + 48)), v127);
  v154 = v153;
  v153(v149, v127);
  v155 = v229 + v151;
  v156 = v229;
  v157 = v191;
  (v210)(v191, v155, v223);
  v158 = v234;
  sub_20D9725C8();
  HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v152, v157, v158, v156 + v237[13]);
  v159 = v224;
  v160 = v201;
  v161 = v202;
  (*(v201 + 56))(v197, 1, 1, v202);
  (*(v159 + 56))(v198, 1, 1, v228);
  v162 = v199;
  sub_20D971E98();
  v163 = v200;
  sub_20D972E48();
  v164 = v203;
  sub_20D972748();
  v165 = v236;
  (*(v160 + 8))(v163, v161);
  result = (*(v235 + 48))(v164, 1, v165);
  if (result != 1)
  {

    (*(v189 + 8))(v162, v190);
    v154(v222, v165);
    v154(v221, v165);
    v186(v230, v231);
    (*(v159 + 8))(v233, v228);
    v154(v232, v165);
    v131 = v237;
    v220((v156 + v237[14]), v164, v165);
    *(v156 + v131[15]) = v213;
    v167 = v188;
    sub_20D81E5E0(v156, v188);
    v168 = swift_getKeyPath();
    MEMORY[0x28223BE20](v168);
    v2 = v219;
    v241 = v219;
    sub_20D972848();

    sub_20D7FEF04(v167);
    if (qword_27C838650 == -1)
    {
LABEL_21:
      v169 = __swift_project_value_buffer(v131, qword_27C83A2B0);
      swift_beginAccess();
      v170 = v177;
      sub_20D7FCF94(v169, v177);
      v171 = swift_getKeyPath();
      MEMORY[0x28223BE20](v171);
      v240 = v2;
      sub_20D972848();

      sub_20D7FEF04(v170);
      if (qword_27C838668 != -1)
      {
        swift_once();
      }

      v172 = __swift_project_value_buffer(v131, qword_27C83A2F8);
      swift_beginAccess();
      sub_20D7FCF94(v172, v170);
      v173 = swift_getKeyPath();
      MEMORY[0x28223BE20](v173);
      v239 = v2;
      sub_20D972848();

      sub_20D7FEF04(v170);
      if (qword_27C838670 != -1)
      {
        swift_once();
      }

      v174 = __swift_project_value_buffer(v131, qword_27C83A310);
      swift_beginAccess();
      sub_20D7FCF94(v174, v170);
      v175 = swift_getKeyPath();
      MEMORY[0x28223BE20](v175);
      v238 = v2;
      sub_20D972848();

      sub_20D7FEF04(v170);
      return v2;
    }

LABEL_28:
    swift_once();
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for HistoricalUsageSnapshotManager()
{
  result = qword_281125948;
  if (!qword_281125948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D81E5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageSnapshot();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D81E64C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_20D972AF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_getKeyPath();
    v18 = v4;
    sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
    sub_20D972858();

    v13 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__summaryWeeklySnapshot;
  }

  else
  {
    (*(v9 + 16))(v12, a1, v8);
    v14 = (*(v9 + 88))(v12, v8);
    if (v14 == *MEMORY[0x277D075B0])
    {
      swift_getKeyPath();
      v18 = v4;
      sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
      sub_20D972858();

      v13 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__dailyUsageSnapshot;
    }

    else if (v14 == *MEMORY[0x277D075B8])
    {
      swift_getKeyPath();
      v18 = v4;
      sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
      sub_20D972858();

      v13 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot;
    }

    else if (v14 == *MEMORY[0x277D075C8])
    {
      swift_getKeyPath();
      v18 = v4;
      sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
      sub_20D972858();

      v13 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__monthlyUsageSnapshot;
    }

    else if (v14 == *MEMORY[0x277D075D0])
    {
      swift_getKeyPath();
      v18 = v4;
      sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
      sub_20D972858();

      v13 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__sixMonthlyUsageSnapshot;
    }

    else
    {
      if (v14 != *MEMORY[0x277D075C0])
      {
        swift_getKeyPath();
        v18 = v4;
        sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
        sub_20D972858();

        v16 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot;
        swift_beginAccess();
        sub_20D7FCF94(v4 + v16, a3);
        return (*(v9 + 8))(v12, v8);
      }

      swift_getKeyPath();
      v18 = v4;
      sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
      sub_20D972858();

      v13 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__yearlyUsageSnapshot;
    }
  }

  swift_beginAccess();
  return sub_20D7FCF94(v4 + v13, a3);
}

uint64_t sub_20D81EB50(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_20D81EB74, 0, 0);
}

uint64_t sub_20D81EB74()
{
  v16 = v0;
  v1 = v0[5];
  swift_getKeyPath();
  v0[2] = v1;
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  if (*(v1 + 16) && *(v1 + 16) != 1)
  {
  }

  else
  {
    v2 = sub_20D9757C8();

    if ((v2 & 1) == 0)
    {
      v3 = v0[4];
      v4 = v0[5];
      v5 = v0[3];

      sub_20D81B1C0(v5, v3);
      v6 = swift_task_alloc();
      v0[6] = v6;
      *v6 = v0;
      v6[1] = sub_20D81EE60;
      v7 = v0[5];

      return sub_20D81EF54();
    }
  }

  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v9 = sub_20D9734F8();
  __swift_project_value_buffer(v9, qword_28112AB90);
  v10 = sub_20D9734D8();
  v11 = sub_20D975478();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_20D7F4DC8(0xD000000000000014, 0x800000020D983AE0, &v15);
    _os_log_impl(&dword_20D7C9000, v10, v11, "%s: for mock snapshot manager, ignoring.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F324260](v13, -1, -1);
    MEMORY[0x20F324260](v12, -1, -1);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_20D81EE60()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20D81EF74()
{
  v14 = v0;
  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  v0[3] = __swift_project_value_buffer(v1, qword_28112AB90);
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984090, &v13);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s: Fetching all snapshots!", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  v6 = sub_20D9734D8();
  v7 = sub_20D975478();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984090, &v13);
    _os_log_impl(&dword_20D7C9000, v6, v7, "%s: \t\tFetching weekly summary snapshot...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[4] = v10;
  *v10 = v0;
  v10[1] = sub_20D81F1E8;
  v11 = v0[2];

  return sub_20D81F990(1);
}

uint64_t sub_20D81F1E8()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20D81F2E4, 0, 0);
}

uint64_t sub_20D81F2E4()
{
  v10 = v0;
  v1 = v0[3];
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984090, &v9);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s: \t\tFetching details snapshots...", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_20D81F44C;
  v7 = v0[2];

  return sub_20D821F08();
}

uint64_t sub_20D81F44C()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20D81F548, 0, 0);
}

uint64_t sub_20D81F548()
{
  v9 = v0;
  v1 = *(v0 + 24);
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984090, &v8);
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s: Finished fetching all snapshots!", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F324260](v5, -1, -1);
    MEMORY[0x20F324260](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20D81F678(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_20D81F69C, 0, 0);
}

uint64_t sub_20D81F69C()
{
  v16 = v0;
  v1 = v0[5];
  swift_getKeyPath();
  v0[2] = v1;
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  if (*(v1 + 16) && *(v1 + 16) != 1)
  {
  }

  else
  {
    v2 = sub_20D9757C8();

    if ((v2 & 1) == 0)
    {
      v3 = v0[4];
      v4 = v0[5];
      v5 = v0[3];

      sub_20D81B1C0(v5, v3);
      v6 = swift_task_alloc();
      v0[6] = v6;
      *v6 = v0;
      v6[1] = sub_20D82D028;
      v7 = v0[5];

      return sub_20D81F990(0);
    }
  }

  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v9 = sub_20D9734F8();
  __swift_project_value_buffer(v9, qword_28112AB90);
  v10 = sub_20D9734D8();
  v11 = sub_20D975478();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D983CD0, &v15);
    _os_log_impl(&dword_20D7C9000, v10, v11, "%s: for mock snapshot manager, ignoring.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F324260](v13, -1, -1);
    MEMORY[0x20F324260](v12, -1, -1);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_20D81F990(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 208) = a1;
  v3 = sub_20D9727B8();
  *(v2 + 104) = v3;
  v4 = *(v3 - 8);
  *(v2 + 112) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v6 = sub_20D972AF8();
  *(v2 + 128) = v6;
  v7 = *(v6 - 8);
  *(v2 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v9 = *(*(type metadata accessor for HistoricalUsageSnapshot() - 8) + 64) + 15;
  *(v2 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D81FADC, 0, 0);
}

uint64_t sub_20D81FADC()
{
  v20 = v0;
  v1 = v0[12];
  swift_getKeyPath();
  v0[8] = v1;
  v0[20] = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager___observationRegistrar;
  v0[21] = sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  if (*(v1 + 32))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  v0[22] = v2;
  v0[23] = v3;
  v4 = qword_2811250E8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_20D9734F8();
  v0[24] = __swift_project_value_buffer(v5, qword_28112AB90);

  v6 = sub_20D9734D8();
  v7 = sub_20D975448();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D7F4DC8(0xD00000000000003CLL, 0x800000020D984050, &v19);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20D7F4DC8(v2, v3, &v19);
    _os_log_impl(&dword_20D7C9000, v6, v7, "%s: start %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v10 = v0[15];
  v11 = v0[13];
  v12 = v0[14];
  (*(v0[17] + 104))(v0[18], *MEMORY[0x277D075B8], v0[16]);
  (*(v12 + 104))(v10, *MEMORY[0x277CC9998], v11);
  v13 = swift_task_alloc();
  v0[25] = v13;
  *v13 = v0;
  v13[1] = sub_20D81FDEC;
  v15 = v0[18];
  v14 = v0[19];
  v16 = v0[15];
  v17 = v0[12];

  return sub_20D820424(v14, v15, 0, 1, v16, 1);
}

uint64_t sub_20D81FDEC()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *(*v0 + 128);
  v5 = *(*v0 + 120);
  v6 = *(*v0 + 112);
  v7 = *(*v0 + 104);
  v9 = *v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_20D81FFA0, 0, 0);
}

uint64_t sub_20D81FFA0()
{
  v29 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 96);
  v5 = *(v0 + 208);
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v0 + 72) = v4;
  sub_20D972848();

  sub_20D7FEF04(v3);
  if (v5 == 1)
  {
    v8 = *(v0 + 160);
    v7 = *(v0 + 168);
    v9 = *(v0 + 152);
    v10 = *(v0 + 96);
    swift_getKeyPath();
    *(v0 + 80) = v10;
    sub_20D972858();

    v11 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__summaryWeeklySnapshot;
    swift_beginAccess();
    sub_20D7FCF94(v10 + v11, v9);
    swift_getKeyPath();
    v12 = swift_task_alloc();
    *(v12 + 16) = v10;
    *(v12 + 24) = v9;
    *(v0 + 88) = v10;
    sub_20D972848();

    sub_20D7FEF04(v9);
  }

  v13 = *(v0 + 184);
  v14 = *(v0 + 192);

  v15 = sub_20D9734D8();
  v16 = sub_20D975448();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 184);
  if (v17)
  {
    v19 = *(v0 + 176);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28[0] = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_20D7F4DC8(0xD00000000000003CLL, 0x800000020D984050, v28);
    *(v20 + 12) = 2080;
    v22 = sub_20D7F4DC8(v19, v18, v28);

    *(v20 + 14) = v22;
    _os_log_impl(&dword_20D7C9000, v15, v16, "%s: weekly summary done %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v21, -1, -1);
    MEMORY[0x20F324260](v20, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 144);
  v23 = *(v0 + 152);
  v25 = *(v0 + 120);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t HistoricalUsageSnapshotManager.deinit()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__lastReloadDate;
  v4 = sub_20D972628();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_20D7FEF04(v0 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__dailyUsageSnapshot);
  sub_20D7FEF04(v0 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot);
  sub_20D7FEF04(v0 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__summaryWeeklySnapshot);
  sub_20D7FEF04(v0 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__monthlyUsageSnapshot);
  sub_20D7FEF04(v0 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__sixMonthlyUsageSnapshot);
  sub_20D7FEF04(v0 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__yearlyUsageSnapshot);
  v5 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager___observationRegistrar;
  v6 = sub_20D972898();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t HistoricalUsageSnapshotManager.__deallocating_deinit()
{
  HistoricalUsageSnapshotManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_20D820424(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 152) = a5;
  *(v7 + 160) = v6;
  *(v7 + 273) = a6;
  *(v7 + 272) = a4;
  *(v7 + 136) = a2;
  *(v7 + 144) = a3;
  *(v7 + 128) = a1;
  v8 = sub_20D972EA8();
  *(v7 + 168) = v8;
  v9 = *(v8 - 8);
  *(v7 + 176) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0) - 8) + 64) + 15;
  *(v7 + 200) = swift_task_alloc();
  v12 = sub_20D972838();
  *(v7 + 208) = v12;
  v13 = *(v12 - 8);
  *(v7 + 216) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D820594, 0, 0);
}

uint64_t sub_20D820594()
{
  v22 = v0;
  v1 = v0[20];
  swift_getKeyPath();
  v0[15] = v1;
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  v2 = *(v1 + 24);
  v0[29] = v2;
  v3 = *(v1 + 32);
  v0[30] = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_20D972CD8();
    v5 = *(MEMORY[0x277D07690] + 4);
    swift_bridgeObjectRetain_n();
    v6 = swift_task_alloc();
    v0[31] = v6;
    *v6 = v0;
    v6[1] = sub_20D82088C;

    return MEMORY[0x28215C988](v2, v3);
  }

  else
  {
LABEL_8:
    if (qword_2811250E8 != -1)
    {
      swift_once();
    }

    v7 = sub_20D9734F8();
    __swift_project_value_buffer(v7, qword_28112AB90);
    v8 = sub_20D9734D8();
    v9 = sub_20D975478();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_20D7F4DC8(0xD00000000000003ELL, 0x800000020D983F30, &v21);
      _os_log_impl(&dword_20D7C9000, v8, v9, "%s: Site ID is empty, no snapshots to get....", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F324260](v11, -1, -1);
      MEMORY[0x20F324260](v10, -1, -1);
    }

    v13 = v0[16];
    v12 = v0[17];
    v20 = 0;
    static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v20, v12, v13);
    v14 = v0[28];
    v15 = v0[24];
    v16 = v0[25];
    v17 = v0[23];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_20D82088C(uint64_t a1)
{
  v2 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = a1;

  return MEMORY[0x2822009F8](sub_20D82098C, 0, 0);
}

uint64_t sub_20D82098C()
{
  v96 = v0;
  v1 = *(v0 + 256);
  if (!v1)
  {
    if (qword_2811250E8 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 240);
    v18 = sub_20D9734F8();
    __swift_project_value_buffer(v18, qword_28112AB90);

    v19 = sub_20D9734D8();
    v20 = sub_20D975458();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 240);
    if (v21)
    {
      v23 = *(v0 + 232);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v95[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_20D7F4DC8(0xD00000000000003ELL, 0x800000020D983F30, v95);
      *(v24 + 12) = 2080;
      v26 = sub_20D7F4DC8(v23, v22, v95);

      *(v24 + 14) = v26;
      _os_log_impl(&dword_20D7C9000, v19, v20, "%s: Failed to initialize Energy Site for %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v25, -1, -1);
      MEMORY[0x20F324260](v24, -1, -1);
    }

    else
    {
    }

    v58 = *(v0 + 128);
    v57 = *(v0 + 136);
    LOBYTE(v95[0]) = 0;
    static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(v95, v57, v58);
    goto LABEL_34;
  }

  v2 = *(v0 + 256);
  sub_20D972CB8();
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 200);
  sub_20D9727E8();

  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_20D7E3944(*(v0 + 200), &qword_27C83CAA0, &qword_20D978AA0);
LABEL_5:
    if (qword_2811250E8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 240);
    v8 = sub_20D9734F8();
    __swift_project_value_buffer(v8, qword_28112AB90);

    v9 = sub_20D9734D8();
    v10 = sub_20D975458();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 240);
    if (v11)
    {
      v13 = *(v0 + 232);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v95[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_20D7F4DC8(0xD00000000000003ELL, 0x800000020D983F30, v95);
      *(v14 + 12) = 2080;
      v16 = sub_20D7F4DC8(v13, v12, v95);

      *(v14 + 14) = v16;
      _os_log_impl(&dword_20D7C9000, v9, v10, "%s: No time zone for %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v15, -1, -1);
      MEMORY[0x20F324260](v14, -1, -1);
    }

    else
    {
    }

    v28 = *(v0 + 128);
    v27 = *(v0 + 136);
    LOBYTE(v95[0]) = 0;
    static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(v95, v27, v28);

LABEL_34:
    v88 = *(v0 + 224);
    v89 = *(v0 + 192);
    v90 = *(v0 + 200);
    v91 = *(v0 + 184);

    v92 = *(v0 + 8);

    return v92();
  }

  (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
  if ((sub_20D972C88() & 1) == 0)
  {
    if (qword_2811250E8 != -1)
    {
      swift_once();
    }

    v59 = *(v0 + 240);
    v60 = sub_20D9734F8();
    __swift_project_value_buffer(v60, qword_28112AB90);

    v61 = sub_20D9734D8();
    v62 = sub_20D975458();

    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 240);
    if (v63)
    {
      v65 = *(v0 + 232);
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v95[0] = v67;
      *v66 = 136315394;
      *(v66 + 4) = sub_20D7F4DC8(0xD00000000000003ELL, 0x800000020D983F30, v95);
      *(v66 + 12) = 2080;
      v68 = sub_20D7F4DC8(v65, v64, v95);

      *(v66 + 14) = v68;
      _os_log_impl(&dword_20D7C9000, v61, v62, "%s: Site %s exists but has no utility subscription", v66, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v67, -1, -1);
      MEMORY[0x20F324260](v66, -1, -1);
    }

    else
    {
    }

    v79 = *(v0 + 216);
    v78 = *(v0 + 224);
    v80 = *(v0 + 208);
    v82 = *(v0 + 128);
    v81 = *(v0 + 136);
    LOBYTE(v95[0]) = 3;
    static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(v95, v81, v82);

    (*(v79 + 8))(v78, v80);
    goto LABEL_34;
  }

  v29 = *(v0 + 192);
  v94 = *(v0 + 184);
  v31 = *(v0 + 168);
  v30 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  v93 = *(v30 + 104);
  v93(v29, *MEMORY[0x277D07348], v31);
  v33 = sub_20D972E98();
  v34 = v1;
  v36 = v35;
  v37 = *(v30 + 8);
  v37(v29, v31);
  *(inited + 32) = v33;
  *(inited + 40) = v36;
  v38 = v34;
  v93(v94, *MEMORY[0x277D07350], v31);
  v39 = sub_20D972E98();
  v41 = v40;
  v37(v94, v31);
  *(inited + 48) = v39;
  *(inited + 56) = v41;
  *(v0 + 104) = sub_20D972C98();
  *(v0 + 112) = v42;
  v43 = swift_task_alloc();
  *(v43 + 16) = v0 + 104;
  LOBYTE(v34) = sub_20D8292B0(sub_20D829CB0, v43, inited);
  swift_setDeallocating();
  swift_arrayDestroy();

  if (v34)
  {
    if (qword_2811250E8 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 240);
    v45 = sub_20D9734F8();
    __swift_project_value_buffer(v45, qword_28112AB90);

    v46 = sub_20D9734D8();
    v47 = sub_20D975458();

    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 240);
    if (v48)
    {
      v50 = *(v0 + 232);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v95[0] = v52;
      *v51 = 136315650;
      *(v51 + 4) = sub_20D7F4DC8(0xD00000000000003ELL, 0x800000020D983F30, v95);
      *(v51 + 12) = 2080;
      v53 = sub_20D7F4DC8(v50, v49, v95);

      *(v51 + 14) = v53;
      *(v51 + 22) = 2080;
      v54 = sub_20D972C98();
      v56 = sub_20D7F4DC8(v54, v55, v95);

      *(v51 + 24) = v56;
      _os_log_impl(&dword_20D7C9000, v46, v47, "%s: Site %s exists but is disconnected or expired: %s", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v52, -1, -1);
      MEMORY[0x20F324260](v51, -1, -1);
    }

    else
    {
    }

    v83 = *(v0 + 216);
    v84 = *(v0 + 224);
    v85 = *(v0 + 208);
    v87 = *(v0 + 128);
    v86 = *(v0 + 136);
    LOBYTE(v95[0]) = 4;
    static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(v95, v86, v87);

    (*(v83 + 8))(v84, v85);
    goto LABEL_34;
  }

  v69 = *(v0 + 240);
  v70 = *(v0 + 272);

  v71 = swift_task_alloc();
  *(v0 + 264) = v71;
  *v71 = v0;
  v71[1] = sub_20D82136C;
  v72 = *(v0 + 224);
  v73 = *(v0 + 273);
  v74 = *(v0 + 136);
  v75 = *(v0 + 144);
  v76 = *(v0 + 128);

  return sub_20D824A50(v76, v38, v74, v72, v73, v75, v70 & 1);
}

uint64_t sub_20D82136C()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20D821468, 0, 0);
}

uint64_t sub_20D821468()
{
  v1 = v0[32];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];

  (*(v3 + 8))(v2, v4);
  v5 = v0[28];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[23];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20D821518()
{
  v1[3] = v0;
  v2 = sub_20D973488();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_20D9727B8();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = sub_20D972AF8();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v11 = *(*(type metadata accessor for HistoricalUsageSnapshot() - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v12 = sub_20D973448();
  v1[14] = v12;
  v13 = *(v12 - 8);
  v1[15] = v13;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v15 = sub_20D973478();
  v1[19] = v15;
  v16 = *(v15 - 8);
  v1[20] = v16;
  v17 = *(v16 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D82178C, 0, 0);
}

uint64_t sub_20D82178C()
{
  if (qword_27C8384A0 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = __swift_project_value_buffer(v3, qword_27C839AA8);
  (*(v2 + 16))(v1, v4, v3);
  sub_20D973458();
  sub_20D973418();
  v5 = sub_20D973458();
  v6 = sub_20D975498();
  if (sub_20D9754E8())
  {
    v7 = v0[18];
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v5, v6, v9, "Five-Years Detailed Weekly Snapshot", "", v8, 2u);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v15 = v0[11];
  v14 = v0[12];
  v16 = v0[10];
  v17 = v0[8];
  v27 = v0[7];
  v28 = v0[9];

  (*(v13 + 16))(v11, v10, v12);
  v18 = sub_20D9734B8();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v0[22] = sub_20D9734A8();
  (*(v15 + 104))(v14, *MEMORY[0x277D075B8], v16);
  (*(v17 + 104))(v28, *MEMORY[0x277CC9998], v27);
  v21 = swift_task_alloc();
  v0[23] = v21;
  *v21 = v0;
  v21[1] = sub_20D8219E0;
  v23 = v0[12];
  v22 = v0[13];
  v24 = v0[9];
  v25 = v0[3];

  return sub_20D820424(v22, v23, 0, 1, v24, 0);
}

uint64_t sub_20D8219E0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 64);
  v7 = *(*v0 + 56);
  v9 = *v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_20D821B94, 0, 0);
}

uint64_t sub_20D821B94()
{
  v1 = v0[21];
  v2 = v0[13];
  v3 = v0[3];
  swift_getKeyPath();
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[2] = v3;
  sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972848();

  sub_20D7FEF04(v2);
  v5 = sub_20D973458();
  v6 = sub_20D9754A8();
  if (sub_20D9754E8())
  {
    v7 = v0[18];
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v5, v6, v9, "weekly snapshot done", "", v8, 2u);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v10 = v0[21];
  v11 = v0[22];
  v12 = v0[16];

  v13 = sub_20D973458();
  sub_20D973498();
  v14 = sub_20D975488();
  if (sub_20D9754E8())
  {
    v15 = v0[22];
    v16 = v0[5];
    v17 = v0[6];
    v18 = v0[4];

    sub_20D9734C8();

    if ((*(v16 + 88))(v17, v18) == *MEMORY[0x277D85B00])
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[5] + 8))(v0[6], v0[4]);
      v19 = "";
    }

    v20 = v0[16];
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v13, v14, v22, "Five-Years Detailed Weekly Snapshot", v19, v21, 2u);
    MEMORY[0x20F324260](v21, -1, -1);
  }

  v24 = v0[21];
  v23 = v0[22];
  v26 = v0[19];
  v25 = v0[20];
  v28 = v0[17];
  v27 = v0[18];
  v30 = v0[15];
  v29 = v0[16];
  v31 = v0[14];
  v35 = v0[13];
  v36 = v0[12];
  v37 = v0[9];
  v38 = v0[6];

  v32 = *(v30 + 8);
  v32(v29, v31);
  v32(v27, v31);
  (*(v25 + 8))(v24, v26);

  v33 = v0[1];

  return v33();
}

uint64_t sub_20D821F08()
{
  v1[24] = v0;
  v2 = sub_20D9727D8();
  v1[25] = v2;
  v3 = *(v2 - 8);
  v1[26] = v3;
  v4 = *(v3 + 64) + 15;
  v1[27] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0) - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20) - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v8 = sub_20D971EA8();
  v1[31] = v8;
  v9 = *(v8 - 8);
  v1[32] = v9;
  v10 = *(v9 + 64) + 15;
  v1[33] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  v1[34] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  v1[37] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v15 = sub_20D972C58();
  v1[39] = v15;
  v16 = *(v15 - 8);
  v1[40] = v16;
  v17 = *(v16 + 64) + 15;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v18 = sub_20D972838();
  v1[43] = v18;
  v19 = *(v18 - 8);
  v1[44] = v19;
  v20 = *(v19 + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v21 = sub_20D972E88();
  v1[47] = v21;
  v22 = *(v21 - 8);
  v1[48] = v22;
  v23 = *(v22 + 64) + 15;
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v24 = sub_20D972628();
  v1[52] = v24;
  v25 = *(v24 - 8);
  v1[53] = v25;
  v26 = *(v25 + 64) + 15;
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v27 = sub_20D971D98();
  v1[61] = v27;
  v28 = *(v27 - 8);
  v1[62] = v28;
  v29 = *(v28 + 64) + 15;
  v1[63] = swift_task_alloc();
  v30 = sub_20D973488();
  v1[64] = v30;
  v31 = *(v30 - 8);
  v1[65] = v31;
  v32 = *(v31 + 64) + 15;
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v33 = sub_20D9727B8();
  v1[69] = v33;
  v34 = *(v33 - 8);
  v1[70] = v34;
  v35 = *(v34 + 64) + 15;
  v1[71] = swift_task_alloc();
  v36 = sub_20D972AF8();
  v1[72] = v36;
  v37 = *(v36 - 8);
  v1[73] = v37;
  v38 = *(v37 + 64) + 15;
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v39 = type metadata accessor for HistoricalUsageSnapshot();
  v1[76] = v39;
  v40 = *(*(v39 - 8) + 64) + 15;
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v41 = sub_20D973448();
  v1[81] = v41;
  v42 = *(v41 - 8);
  v1[82] = v42;
  v43 = *(v42 + 64) + 15;
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v44 = sub_20D973478();
  v1[89] = v44;
  v45 = *(v44 - 8);
  v1[90] = v45;
  v46 = *(v45 + 64) + 15;
  v1[91] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D822614, 0, 0);
}

uint64_t sub_20D822614()
{
  v62 = v0;
  v1 = v0[24];
  swift_getKeyPath();
  v0[11] = v1;
  v0[92] = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager___observationRegistrar;
  v0[93] = sub_20D82CEEC(&qword_27C839520, type metadata accessor for HistoricalUsageSnapshotManager);
  sub_20D972858();

  swift_beginAccess();
  if (*(v1 + 32))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 32);
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  v0[95] = v3;
  v0[94] = v2;
  v4 = qword_2811250E8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_20D9734F8();
  v0[96] = __swift_project_value_buffer(v5, qword_28112AB90);

  v6 = sub_20D9734D8();
  v7 = sub_20D975448();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v61 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D983ED0, &v61);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20D7F4DC8(v2, v3, &v61);
    _os_log_impl(&dword_20D7C9000, v6, v7, "%s: start %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  if ((sub_20D972ED8() & 1) != 0 && (v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]), v11 = sub_20D975078(), v12 = [v10 initWithSuiteName_], v11, v12))
  {
    v13 = sub_20D975078();
    v14 = [v12 integerForKey_];

    v15 = 3;
    if (v14 > 0)
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = 3;
  }

  v60 = v15;
  if (qword_27C8384A0 != -1)
  {
    swift_once();
  }

  v16 = v0[91];
  v17 = v0[90];
  v18 = v0[89];
  v19 = v0[88];
  v20 = __swift_project_value_buffer(v18, qword_27C839AA8);
  (*(v17 + 16))(v16, v20, v18);
  sub_20D973458();
  sub_20D973418();
  v21 = sub_20D973458();
  v22 = sub_20D975498();
  if (sub_20D9754E8())
  {
    v23 = v0[88];
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v21, v22, v25, "HistoricalUsageSnapshotManager.getDetailsChartSnapshots", "", v24, 2u);
    MEMORY[0x20F324260](v24, -1, -1);
  }

  v26 = v0[91];
  v27 = v0[88];
  v28 = v0[87];
  v29 = v0[82];
  v30 = v0[81];

  v31 = *(v29 + 16);
  v0[97] = v31;
  v0[98] = (v29 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v59 = v31;
  v31(v28, v27, v30);
  v32 = sub_20D9734B8();
  v0[99] = v32;
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v0[100] = sub_20D9734A8();
  v35 = sub_20D973458();
  v36 = sub_20D975498();
  if (sub_20D9754E8())
  {
    v37 = v0[88];
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v35, v36, v39, "Day interval", "", v38, 2u);
    MEMORY[0x20F324260](v38, -1, -1);
  }

  v40 = v0[88];
  v41 = v0[87];
  v42 = v0[81];
  v43 = v0[73];
  v44 = v0[72];
  v58 = v0[71];
  v45 = v0[70];
  v56 = v0[75];
  v57 = v0[69];

  v59(v41, v40, v42);
  v46 = *(v32 + 48);
  v47 = *(v32 + 52);
  swift_allocObject();
  v0[101] = sub_20D9734A8();
  v48 = *MEMORY[0x277D075B0];
  v49 = *(v43 + 104);
  v0[102] = v49;
  v0[103] = (v43 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v49(v56, v48, v44);
  (*(v45 + 104))(v58, *MEMORY[0x277CC9998], v57);
  v50 = swift_task_alloc();
  v0[104] = v50;
  *v50 = v0;
  v50[1] = sub_20D822C40;
  v51 = v0[80];
  v52 = v0[75];
  v53 = v0[71];
  v54 = v0[24];

  return sub_20D820424(v51, v52, v60, 0, v53, 0);
}

uint64_t sub_20D822C40()
{
  v1 = *v0;
  v2 = *(*v0 + 832);
  v3 = *(*v0 + 600);
  v4 = *(*v0 + 584);
  v5 = *(*v0 + 576);
  v6 = *(*v0 + 568);
  v7 = *(*v0 + 560);
  v8 = *(*v0 + 552);
  v11 = *v0;

  (*(v7 + 8))(v6, v8);
  v9 = *(v4 + 8);
  *(v1 + 840) = v9;
  *(v1 + 848) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v5);

  return MEMORY[0x2822009F8](sub_20D822E0C, 0, 0);
}

uint64_t sub_20D822E0C()
{
  v325 = v0;
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[80];
  v5 = v0[24];
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v0[12] = v5;
  sub_20D972848();

  sub_20D7FEF04(v4);
  v7 = sub_20D973458();
  v8 = sub_20D9754A8();
  if (sub_20D9754E8())
  {
    v9 = v0[88];
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v7, v8, v11, "daily snapshot done", "", v10, 2u);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  v12 = v0[101];
  v13 = v0[91];
  v14 = v0[86];

  v15 = sub_20D973458();
  sub_20D973498();
  v16 = sub_20D975488();
  v17 = sub_20D9754E8();
  v18 = MEMORY[0x277D85B00];
  if (v17)
  {
    v19 = v0[101];
    v20 = v0[68];
    v21 = v0[65];
    v22 = v0[64];

    sub_20D9734C8();

    if ((*(v21 + 88))(v20, v22) == *v18)
    {
      v23 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[65] + 8))(v0[68], v0[64]);
      v23 = "";
    }

    v24 = v0[86];
    v25 = swift_slowAlloc();
    *v25 = 0;
    v26 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v15, v16, v26, "Day interval", v23, v25, 2u);
    MEMORY[0x20F324260](v25, -1, -1);
  }

  v27 = v0[96];
  v28 = v0[95];
  v29 = v0[86];
  v30 = v0[82];
  v31 = v0[81];

  v311 = *(v30 + 8);
  v311(v29, v31);

  v32 = sub_20D9734D8();
  v33 = sub_20D975478();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = v0[95];
    v35 = v0[94];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v324[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D983ED0, v324);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_20D7F4DC8(v35, v34, v324);
    _os_log_impl(&dword_20D7C9000, v32, v33, "\t\t%s: day done %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v37, -1, -1);
    MEMORY[0x20F324260](v36, -1, -1);
  }

  v38 = v0[91];
  v39 = v0[85];
  sub_20D973438();
  v40 = sub_20D973458();
  v41 = sub_20D975498();
  if (sub_20D9754E8())
  {
    v42 = v0[85];
    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v40, v41, v44, "Rollup: Five-Years Daily Snapshot", "", v43, 2u);
    MEMORY[0x20F324260](v43, -1, -1);
  }

  v249 = v0[103];
  v245 = v0[102];
  v45 = v0[99];
  v46 = v0[98];
  v47 = v0[97];
  v48 = v0[93];
  v288 = v0[92];
  v49 = v0[87];
  v50 = v0[85];
  v51 = v0[81];
  v312 = v0[78];
  v320 = v0[76];
  v273 = v0[75];
  v279 = v0[82];
  v268 = v0[73];
  v300 = v0[72];
  v306 = v0[74];
  v219 = v0[62];
  v222 = v0[61];
  v225 = v0[63];
  v228 = v0[60];
  v235 = v0[51];
  v252 = v0[50];
  v316 = v0[48];
  v232 = v0[47];
  v294 = v0[46];
  v256 = v0[44];
  v260 = v0[45];
  v264 = v0[43];
  v52 = v0[24];

  v47(v49, v50, v51);
  v53 = *(v45 + 48);
  v54 = *(v45 + 52);
  swift_allocObject();
  sub_20D9734A8();
  v311(v50, v51);
  swift_getKeyPath();
  v0[13] = v52;
  sub_20D972858();

  v55 = (v52 + OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__detailedWeeklyUsageSnapshot);
  swift_beginAccess();
  v238 = *(v55 + 1);
  v241 = *v55;
  swift_getKeyPath();
  v0[14] = v52;

  sub_20D972858();

  (*(v219 + 16))(v225, &v55[v320[9]], v222);
  sub_20D971D78();
  (*(v219 + 8))(v225, v222);
  swift_getKeyPath();
  v0[15] = v52;
  sub_20D972858();

  v56 = *(v316 + 16);
  v56(v235, &v55[v320[12]], v232);
  sub_20D972E68();
  v229 = *(v316 + 8);
  v229(v235, v232);
  v245(v306, *MEMORY[0x277D075C8], v300);
  swift_getKeyPath();
  v0[16] = v52;
  sub_20D972858();

  v246 = v56;
  v56(v252, &v55[v320[12]], v232);
  sub_20D972E38();
  v229(v252, v232);
  swift_getKeyPath();
  v0[17] = v52;
  sub_20D972858();

  LOBYTE(v50) = v55[v320[11]];
  swift_getKeyPath();
  v0[18] = v52;
  sub_20D972858();

  v57 = *&v55[v320[15]];
  *v312 = v241;
  v312[1] = v238;
  *(v312 + v320[16]) = 6;
  *(v312 + v320[11]) = v50;
  (*(v268 + 16))(v273, v306, v300);
  (*(v256 + 16))(v260, v294, v264);
  v58 = v320[12];

  v307 = v57;

  sub_20D972E28();
  v59 = sub_20D972E38();
  if (*(v59 + 16))
  {
    v60 = v0[58];
    v317 = v0[59];
    v61 = v0[52];
    v62 = v0[53];
    v63 = v0[42];
    v64 = v58;
    v65 = v0[39];
    v66 = v0[40];
    (*(v66 + 16))(v63, v59 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v65);

    MEMORY[0x20F320DF0](v67);
    v68 = v65;
    v58 = v64;
    (*(v66 + 8))(v63, v68);
    (*(v62 + 32))(v317, v60, v61);
  }

  else
  {
    v69 = v0[59];
    v70 = v0[60];
    v71 = v0[52];
    v72 = v0[53];

    (*(v72 + 16))(v69, v70, v71);
  }

  v73 = v0[78];
  v74 = v0[59];
  v75 = v320[9];
  sub_20D972DA8();
  v318 = v58;
  v76 = sub_20D972E38();
  v77 = *(v76 + 16);
  if (v77)
  {
    v78 = v0[56];
    v301 = v0[57];
    v79 = v0[52];
    v80 = v0[53];
    v81 = v0[40];
    v82 = v0[41];
    v83 = v0[39];
    (*(v81 + 16))(v82, v76 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * (v77 - 1), v83);

    MEMORY[0x20F320DF0](v84);
    (*(v81 + 8))(v82, v83);
    (*(v80 + 32))(v301, v78, v79);
  }

  else
  {
    v85 = v0[60];
    v86 = v0[57];
    v87 = v0[52];
    v88 = v0[53];

    (*(v88 + 16))(v86, v85, v87);
  }

  v89 = v0[78];
  v90 = v0[76];
  v91 = v0[57];
  v93 = v0[54];
  v92 = v0[55];
  v94 = v0[52];
  v95 = v90[10];
  sub_20D972DA8();
  v96 = v89 + v90[5];
  sub_20D971D78();
  v97 = v89 + v90[6];
  sub_20D971D78();
  v98 = v89 + v90[7];
  sub_20D971D78();
  v99 = v89 + v90[8];
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D48();
  sub_20D82CEEC(&qword_281126E30, MEMORY[0x277CC9578]);
  result = sub_20D974FC8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v257 = v0[76];
  v261 = v0[78];
  v102 = v0[54];
  v101 = v0[55];
  v103 = v0[52];
  v230 = v101;
  v233 = v0[49];
  v236 = v0[47];
  v269 = v0[44];
  v274 = v0[43];
  v104 = v0[38];
  v223 = v104;
  v226 = v0[37];
  v105 = v0[35];
  v106 = v0[36];
  v107 = v0[34];
  v253 = v0[30];
  v265 = v0[29];
  v302 = v0[28];
  v289 = v0[33];
  v295 = v0[27];
  v239 = v0[26];
  v242 = v0[25];
  v283 = v0[53];
  v108 = *(v283 + 32);
  v108(v106);
  (v108)(v106 + *(v107 + 48), v102, v103);
  sub_20D7EB7E8(v106, v105, &unk_27C83C750, &unk_20D978DD0);
  v109 = *(v107 + 48);
  (v108)(v104, v105, v103);
  v110 = *(v283 + 8);
  v110(v105 + v109, v103);
  sub_20D829514(v106, v105);
  v220 = v108;
  (v108)(v223 + *(v226 + 36), v105 + *(v107 + 48), v103);
  v215 = v110;
  v110(v105, v103);
  v246(v233, v312 + v318, v236);
  sub_20D9725C8();
  HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v223, v233, v230, v261 + *(v257 + 52));
  (*(v239 + 56))(v253, 1, 1, v242);
  (*(v269 + 56))(v265, 1, 1, v274);
  sub_20D971E98();
  sub_20D972E48();
  sub_20D972748();
  (*(v239 + 8))(v295, v242);
  result = (*(v283 + 48))(v302, 1, v103);
  if (result == 1)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v266 = v0[105];
  v270 = v0[106];
  v296 = v0[95];
  v303 = v0[96];
  v313 = v0[93];
  v284 = v0[79];
  v290 = v0[92];
  v111 = v0[78];
  v275 = v0[76];
  v250 = v0[74];
  v247 = v0[72];
  v112 = v0[59];
  v262 = v0[60];
  v113 = v0[57];
  v114 = v0[52];
  v254 = v0[46];
  v115 = v0[44];
  v243 = v0[43];
  v117 = v0[32];
  v116 = v0[33];
  v118 = v0[31];
  v258 = v0[28];
  v119 = v0[24];

  (*(v117 + 8))(v116, v118);
  v215(v113, v114);
  v215(v112, v114);
  v266(v250, v247);
  (*(v115 + 8))(v254, v243);
  v215(v262, v114);
  v220(v111 + *(v275 + 56), v258, v114);
  *(v111 + v320[15]) = v307;
  sub_20D81E5E0(v111, v284);
  swift_getKeyPath();
  v120 = swift_task_alloc();
  *(v120 + 16) = v119;
  *(v120 + 24) = v284;
  v0[19] = v119;
  sub_20D972848();

  sub_20D7FEF04(v284);

  v121 = sub_20D9734D8();
  v122 = sub_20D975478();

  if (os_log_type_enabled(v121, v122))
  {
    v123 = v0[95];
    v124 = v0[94];
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v324[0] = v126;
    *v125 = 136315394;
    *(v125 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D983ED0, v324);
    *(v125 + 12) = 2080;
    *(v125 + 14) = sub_20D7F4DC8(v124, v123, v324);
    _os_log_impl(&dword_20D7C9000, v121, v122, "\t\t%s: monthly done %s", v125, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v126, -1, -1);
    MEMORY[0x20F324260](v125, -1, -1);
  }

  v127 = v0[106];
  v308 = v0[96];
  v297 = v0[105];
  v304 = v0[95];
  v291 = v0[93];
  v280 = v0[103];
  v285 = v0[92];
  v271 = v0[80];
  v276 = v0[102];
  v128 = v0[77];
  v129 = v0[75];
  v130 = v0[72];
  v131 = v0[24];
  swift_getKeyPath();
  v0[20] = v131;
  sub_20D972858();

  v132 = OBJC_IVAR____TtC12HomeEnergyUI30HistoricalUsageSnapshotManager__monthlyUsageSnapshot;
  swift_beginAccess();
  v321 = v132;
  sub_20D7FCF94(v131 + v132, v128);
  v276(v129, *MEMORY[0x277D075D0], v130);
  sub_20D860588(v129, v271);
  v297(v129, v130);
  sub_20D7FEF04(v128);
  swift_getKeyPath();
  v133 = swift_task_alloc();
  *(v133 + 16) = v131;
  *(v133 + 24) = v271;
  v0[21] = v131;
  v298 = v131;
  sub_20D972848();

  sub_20D7FEF04(v271);

  v134 = sub_20D9734D8();
  v135 = sub_20D975478();

  if (os_log_type_enabled(v134, v135))
  {
    v136 = v0[95];
    v137 = v0[94];
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v324[0] = v139;
    *v138 = 136315394;
    *(v138 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D983ED0, v324);
    *(v138 + 12) = 2080;
    *(v138 + 14) = sub_20D7F4DC8(v137, v136, v324);
    _os_log_impl(&dword_20D7C9000, v134, v135, "\t\t%s: six monthly done %s", v138, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v139, -1, -1);
    MEMORY[0x20F324260](v138, -1, -1);
  }

  v286 = v0[105];
  v292 = v0[106];
  v140 = v0[103];
  v281 = v0[102];
  v141 = v0[93];
  v142 = v0[92];
  v309 = v0[91];
  v314 = v0[84];
  v277 = v0[80];
  v143 = v0[77];
  v144 = v0[75];
  v145 = v0[72];
  v146 = v0[24];
  swift_getKeyPath();
  v0[22] = v146;
  sub_20D972858();

  sub_20D7FCF94(v298 + v321, v143);
  v281(v144, *MEMORY[0x277D075C0], v145);
  sub_20D860588(v144, v277);
  v286(v144, v145);
  sub_20D7FEF04(v143);
  swift_getKeyPath();
  v147 = swift_task_alloc();
  *(v147 + 16) = v146;
  *(v147 + 24) = v277;
  v0[23] = v146;
  sub_20D972848();

  sub_20D7FEF04(v277);
  v148 = sub_20D973458();
  sub_20D973498();
  v149 = sub_20D975488();
  v150 = sub_20D9754E8();
  v151 = MEMORY[0x277D85B00];
  if (v150)
  {
    v152 = v0[67];
    v153 = v0[65];
    v154 = v0[64];

    sub_20D9734C8();

    if ((*(v153 + 88))(v152, v154) == *v151)
    {
      v155 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[65] + 8))(v0[67], v0[64]);
      v155 = "";
    }

    v156 = v0[84];
    v157 = swift_slowAlloc();
    *v157 = 0;
    v158 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v148, v149, v158, "Rollup: Five-Years Daily Snapshot", v155, v157, 2u);
    MEMORY[0x20F324260](v157, -1, -1);
  }

  v159 = v0[96];
  v160 = v0[95];
  v161 = v0[84];
  v162 = v0[81];

  v311(v161, v162);

  v163 = sub_20D9734D8();
  v164 = sub_20D975478();

  if (os_log_type_enabled(v163, v164))
  {
    v165 = v0[95];
    v166 = v0[94];
    v167 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v324[0] = v168;
    *v167 = 136315394;
    *(v167 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D983ED0, v324);
    *(v167 + 12) = 2080;
    *(v167 + 14) = sub_20D7F4DC8(v166, v165, v324);
    _os_log_impl(&dword_20D7C9000, v163, v164, "\t\t%s: yearly done %s", v167, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v168, -1, -1);
    MEMORY[0x20F324260](v167, -1, -1);
  }

  v169 = v0[96];
  v170 = v0[95];

  v171 = sub_20D9734D8();
  v172 = sub_20D975478();

  v173 = os_log_type_enabled(v171, v172);
  v174 = v0[95];
  if (v173)
  {
    v175 = v0[94];
    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v324[0] = v177;
    *v176 = 136315394;
    *(v176 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D983ED0, v324);
    *(v176 + 12) = 2080;
    v178 = sub_20D7F4DC8(v175, v174, v324);

    *(v176 + 14) = v178;
    _os_log_impl(&dword_20D7C9000, v171, v172, "%s: end %s", v176, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v177, -1, -1);
    MEMORY[0x20F324260](v176, -1, -1);
  }

  else
  {
  }

  v179 = v0[91];
  v180 = sub_20D973458();
  v181 = sub_20D9754A8();
  if (sub_20D9754E8())
  {
    v182 = v0[88];
    v183 = swift_slowAlloc();
    *v183 = 0;
    v184 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v180, v181, v184, "monthly, 6-month, yearly snapshots done", "", v183, 2u);
    MEMORY[0x20F324260](v183, -1, -1);
  }

  v185 = v0[100];
  v186 = v0[91];
  v187 = v0[83];

  v188 = sub_20D973458();
  sub_20D973498();
  v189 = sub_20D975488();
  if (sub_20D9754E8())
  {
    v190 = v0[100];
    v191 = v0[66];
    v192 = v0[65];
    v193 = v0[64];

    sub_20D9734C8();

    if ((*(v192 + 88))(v191, v193) == *v151)
    {
      v194 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[65] + 8))(v0[66], v0[64]);
      v194 = "";
    }

    v195 = v0[83];
    v196 = swift_slowAlloc();
    *v196 = 0;
    v197 = sub_20D973428();
    _os_signpost_emit_with_name_impl(&dword_20D7C9000, v188, v189, v197, "HistoricalUsageSnapshotManager.getDetailsChartSnapshots", v194, v196, 2u);
    MEMORY[0x20F324260](v196, -1, -1);
  }

  v198 = v0[101];
  v199 = v0[100];
  v200 = v0[91];
  v201 = v0[90];
  v202 = v0[89];
  v203 = v0[88];
  v204 = v0[87];
  v208 = v0[86];
  v209 = v0[85];
  v205 = v0[83];
  v206 = v0[81];
  v210 = v0[84];
  v211 = v0[80];
  v212 = v0[79];
  v213 = v0[78];
  v214 = v0[77];
  v216 = v0[75];
  v217 = v0[74];
  v218 = v0[71];
  v221 = v0[68];
  v224 = v0[67];
  v227 = v0[66];
  v231 = v0[63];
  v234 = v0[60];
  v237 = v0[59];
  v240 = v0[58];
  v244 = v0[57];
  v248 = v0[56];
  v251 = v0[55];
  v255 = v0[54];
  v259 = v0[51];
  v263 = v0[50];
  v267 = v0[49];
  v272 = v0[46];
  v278 = v0[45];
  v282 = v0[42];
  v287 = v0[41];
  v293 = v0[38];
  v299 = v0[36];
  v305 = v0[35];
  v310 = v0[33];
  v315 = v0[30];
  v319 = v0[29];
  v322 = v0[28];
  v323 = v0[27];

  v311(v205, v206);
  v311(v203, v206);
  (*(v201 + 8))(v200, v202);

  v207 = v0[1];

  return v207();
}

uint64_t sub_20D824A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  *(v7 + 1105) = a7;
  *(v7 + 112) = a4;
  *(v7 + 120) = a6;
  *(v7 + 1104) = a5;
  *(v7 + 96) = a2;
  *(v7 + 104) = a3;
  *(v7 + 88) = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389E8, &qword_20D9768D0) - 8) + 64) + 15;
  *(v7 + 128) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C83CAA0, &qword_20D978AA0) - 8) + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839548, &unk_20D979C20) - 8) + 64) + 15;
  *(v7 + 144) = swift_task_alloc();
  v11 = sub_20D971EA8();
  *(v7 + 152) = v11;
  v12 = *(v11 - 8);
  *(v7 + 160) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  v14 = sub_20D972E88();
  *(v7 + 176) = v14;
  v15 = *(v14 - 8);
  *(v7 + 184) = v15;
  v16 = *(v15 + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  *(v7 + 200) = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839550, &qword_20D979C30);
  *(v7 + 224) = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  *(v7 + 232) = swift_task_alloc();
  v21 = sub_20D972C58();
  *(v7 + 240) = v21;
  v22 = *(v21 - 8);
  *(v7 + 248) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  v24 = type metadata accessor for HistoricalUsageSnapshot();
  *(v7 + 272) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v7 + 280) = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839560, &qword_20D9790B0) - 8) + 64) + 15;
  *(v7 + 288) = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839568, &qword_20D9790B8);
  *(v7 + 296) = v27;
  v28 = *(v27 - 8);
  *(v7 + 304) = v28;
  v29 = *(v28 + 64) + 15;
  *(v7 + 312) = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839570, &qword_20D9790C0);
  *(v7 + 320) = v30;
  v31 = *(v30 - 8);
  *(v7 + 328) = v31;
  v32 = *(v31 + 64) + 15;
  *(v7 + 336) = swift_task_alloc();
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839578, &qword_20D9790C8) - 8) + 64) + 15;
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839580, &qword_20D9790D0);
  *(v7 + 376) = v34;
  v35 = *(v34 - 8);
  *(v7 + 384) = v35;
  v36 = *(v35 + 64) + 15;
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839588, &qword_20D9790D8);
  *(v7 + 408) = v37;
  v38 = *(v37 - 8);
  *(v7 + 416) = v38;
  v39 = *(v38 + 64) + 15;
  *(v7 + 424) = swift_task_alloc();
  *(v7 + 432) = swift_task_alloc();
  v40 = sub_20D974D58();
  *(v7 + 440) = v40;
  v41 = *(v40 - 8);
  *(v7 + 448) = v41;
  v42 = *(v41 + 64) + 15;
  *(v7 + 456) = swift_task_alloc();
  v43 = *(*(sub_20D971D98() - 8) + 64) + 15;
  *(v7 + 464) = swift_task_alloc();
  v44 = sub_20D974D28();
  *(v7 + 472) = v44;
  v45 = *(v44 - 8);
  *(v7 + 480) = v45;
  v46 = *(v45 + 64) + 15;
  *(v7 + 488) = swift_task_alloc();
  *(v7 + 496) = swift_task_alloc();
  *(v7 + 504) = swift_task_alloc();
  *(v7 + 512) = swift_task_alloc();
  v47 = sub_20D974D48();
  *(v7 + 520) = v47;
  v48 = *(v47 - 8);
  *(v7 + 528) = v48;
  v49 = *(v48 + 64) + 15;
  *(v7 + 536) = swift_task_alloc();
  *(v7 + 544) = swift_task_alloc();
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460) - 8) + 64) + 15;
  *(v7 + 552) = swift_task_alloc();
  v51 = sub_20D972698();
  *(v7 + 560) = v51;
  v52 = *(v51 - 8);
  *(v7 + 568) = v52;
  v53 = *(v52 + 64) + 15;
  *(v7 + 576) = swift_task_alloc();
  v54 = sub_20D9727B8();
  *(v7 + 584) = v54;
  v55 = *(v54 - 8);
  *(v7 + 592) = v55;
  v56 = *(v55 + 64) + 15;
  *(v7 + 600) = swift_task_alloc();
  v57 = sub_20D972628();
  *(v7 + 608) = v57;
  v58 = *(v57 - 8);
  *(v7 + 616) = v58;
  v59 = *(v58 + 64) + 15;
  *(v7 + 624) = swift_task_alloc();
  *(v7 + 632) = swift_task_alloc();
  *(v7 + 640) = swift_task_alloc();
  *(v7 + 648) = swift_task_alloc();
  *(v7 + 656) = swift_task_alloc();
  *(v7 + 664) = swift_task_alloc();
  *(v7 + 672) = swift_task_alloc();
  *(v7 + 680) = swift_task_alloc();
  *(v7 + 688) = swift_task_alloc();
  *(v7 + 696) = swift_task_alloc();
  *(v7 + 704) = swift_task_alloc();
  v60 = sub_20D972AF8();
  *(v7 + 712) = v60;
  v61 = *(v60 - 8);
  *(v7 + 720) = v61;
  v62 = *(v61 + 64) + 15;
  *(v7 + 728) = swift_task_alloc();
  *(v7 + 736) = swift_task_alloc();
  *(v7 + 744) = swift_task_alloc();
  *(v7 + 752) = swift_task_alloc();
  v63 = sub_20D974CF8();
  *(v7 + 760) = v63;
  v64 = *(v63 - 8);
  *(v7 + 768) = v64;
  v65 = *(v64 + 64) + 15;
  *(v7 + 776) = swift_task_alloc();
  *(v7 + 784) = swift_task_alloc();
  *(v7 + 792) = swift_task_alloc();
  *(v7 + 800) = swift_task_alloc();
  v66 = sub_20D972838();
  *(v7 + 808) = v66;
  v67 = *(v66 - 8);
  *(v7 + 816) = v67;
  v68 = *(v67 + 64) + 15;
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  v69 = sub_20D9726F8();
  *(v7 + 840) = v69;
  v70 = *(v69 - 8);
  *(v7 + 848) = v70;
  v71 = *(v70 + 64) + 15;
  *(v7 + 856) = swift_task_alloc();
  v72 = sub_20D9727D8();
  *(v7 + 864) = v72;
  v73 = *(v72 - 8);
  *(v7 + 872) = v73;
  v74 = *(v73 + 64) + 15;
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D8254EC, 0, 0);
}

uint64_t sub_20D8254EC()
{
  v254 = v0;
  if (qword_2811250E8 != -1)
  {
    swift_once();
  }

  v1 = sub_20D9734F8();
  *(v0 + 896) = __swift_project_value_buffer(v1, qword_28112AB90);
  v2 = sub_20D9734D8();
  v3 = sub_20D975478();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1104);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v253[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v253);
    *(v5 + 12) = 2080;
    if (v4)
    {
      v7 = 0x7972616D6D7573;
    }

    else
    {
      v7 = 0x64656C6961746564;
    }

    if (v4)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    v9 = sub_20D7F4DC8(v7, v8, v253);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_20D7C9000, v2, v3, "%s START %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v10 = *(v0 + 888);
  v11 = *(v0 + 856);
  v12 = *(v0 + 848);
  v13 = *(v0 + 840);
  v14 = *(v0 + 832);
  v15 = *(v0 + 816);
  v16 = *(v0 + 752);
  v17 = *(v0 + 720);
  v18 = *(v0 + 712);
  v237 = *(v0 + 112);
  v239 = *(v0 + 808);
  v247 = *(v0 + 104);
  (*(v12 + 104))(v11, *MEMORY[0x277CC9830], v13);
  sub_20D972708();
  (*(v12 + 8))(v11, v13);
  v19 = *(v15 + 16);
  *(v0 + 904) = v19;
  *(v0 + 912) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v14, v237, v239);
  sub_20D972798();
  v20 = *(v17 + 16);
  *(v0 + 920) = v20;
  *(v0 + 928) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20(v16, v247, v18);
  v21 = (*(v17 + 88))(v16, v18);
  v22 = MEMORY[0x277CC58A8];
  v23 = MEMORY[0x277CC58A8];
  if (v21 == *MEMORY[0x277D075B0] || (v23 = MEMORY[0x277CC58A0], v21 == *MEMORY[0x277D075B8]) || v21 == *MEMORY[0x277D075C8])
  {
LABEL_12:
    v24 = *(v0 + 800);
    v25 = *(v0 + 792);
    v26 = *(v0 + 768);
    v27 = *(v0 + 760);
    v28 = *(v0 + 696);
    v29 = *(v0 + 1104);
    v30 = *(v26 + 104);
    v30(v24, *v23, v27);
    v235 = *(v26 + 16);
    v235(v25, v24, v27);
    sub_20D9725C8();
    v208 = v30;
    if (v29 == 1)
    {
      v31 = *(v0 + 888);
      v248 = *(v0 + 792);
      v32 = *(v0 + 768);
      v240 = *(v0 + 760);
      v33 = *(v0 + 696);
      v229 = *(v0 + 688);
      v34 = *(v0 + 680);
      v35 = *(v0 + 616);
      v36 = *(v0 + 608);
      v37 = *(v0 + 600);
      v38 = *(v0 + 592);
      v39 = *(v0 + 584);
      (*(v38 + 104))(v37, *MEMORY[0x277CC9968], v39);
      sub_20D9730D8();
      (*(v38 + 8))(v37, v39);
      sub_20D973098();
      v40 = *(v35 + 8);
      v40(v34, v36);
      v40(v33, v36);
      v41 = *(v32 + 8);
      v41(v248, v240);
    }

    else
    {
      v42 = *(v0 + 792);
      v43 = *(v0 + 784);
      v44 = *(v0 + 768);
      v45 = *(v0 + 760);
      v30(v43, *v22, v45);
      LOBYTE(v42) = sub_20D974CD8();
      v46 = *(v44 + 8);
      v47 = v46(v43, v45);
      v249 = v46;
      if (v42)
      {
        v51 = 3;
        if ((*(v0 + 1105) & 1) == 0)
        {
          v51 = *(v0 + 120);
        }

        if (__OFSUB__(0, v51))
        {
          __break(1u);
          return MEMORY[0x282116638](v47, v48, v49, v50);
        }

        v52 = *(v0 + 888);
        v224 = *(v0 + 760);
        v230 = *(v0 + 792);
        v53 = *(v0 + 696);
        v220 = *(v0 + 688);
        v54 = *(v0 + 680);
        v55 = *(v0 + 616);
        v56 = *(v0 + 608);
        v57 = *(v0 + 600);
        v58 = *(v0 + 592);
        v59 = *(v0 + 584);
        (*(v58 + 104))(v57, *MEMORY[0x277CC9998], v59);
        sub_20D9730D8();
        (*(v58 + 8))(v57, v59);
        sub_20D972FF8();
        v60 = *(v55 + 8);
        v60(v54, v56);
        v61 = v53;
        v40 = v60;
        v60(v61, v56);
        v41 = v249;
        v249(v230, v224);
      }

      else
      {
        v62 = *(v0 + 888);
        v241 = *(v0 + 792);
        v63 = *(v0 + 696);
        v225 = *(v0 + 688);
        v231 = *(v0 + 760);
        v64 = *(v0 + 680);
        v65 = *(v0 + 616);
        v66 = *(v0 + 608);
        v67 = *(v0 + 600);
        v68 = *(v0 + 592);
        v69 = *(v0 + 584);
        (*(v68 + 104))(v67, *MEMORY[0x277CC9988], v69);
        sub_20D9730D8();
        (*(v68 + 8))(v67, v69);
        sub_20D972FC8();
        v40 = *(v65 + 8);
        v70 = v64;
        v41 = v249;
        v40(v70, v66);
        v40(v63, v66);
        v249(v241, v231);
      }
    }

    *(v0 + 944) = v40;
    *(v0 + 936) = v41;
    v71 = *(v0 + 704);
    v72 = *(v0 + 688);
    v73 = *(v0 + 672);
    v74 = *(v0 + 616);
    v75 = *(v0 + 608);
    v76 = *(v74 + 32);
    *(v0 + 952) = v76;
    *(v0 + 960) = (v74 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v76(v71, v72, v75);
    v77 = *(v74 + 16);
    *(v0 + 968) = v77;
    *(v0 + 976) = (v74 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v77(v73, v71, v75);
    v78 = sub_20D9734D8();
    v79 = sub_20D975478();
    v250 = v41;
    v242 = v77;
    if (os_log_type_enabled(v78, v79))
    {
      v80 = *(v0 + 672);
      v217 = *(v0 + 616);
      v221 = *(v0 + 608);
      v226 = *(v0 + 800);
      v81 = *(v0 + 1104);
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v253[0] = v83;
      *v82 = 136315906;
      *(v82 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v253);
      *(v82 + 12) = 2080;
      if (v81)
      {
        v84 = 0x5952414D4D5553;
      }

      else
      {
        v84 = 0x44454C4941544544;
      }

      if (v81)
      {
        v85 = 0xE700000000000000;
      }

      else
      {
        v85 = 0xE800000000000000;
      }

      v86 = sub_20D7F4DC8(v84, v85, v253);

      *(v82 + 14) = v86;
      *(v82 + 22) = 2080;
      v87 = sub_20D9725F8();
      v89 = v88;
      v40(v80, v221);
      v90 = sub_20D7F4DC8(v87, v89, v253);

      *(v82 + 24) = v90;
      *(v82 + 32) = 2048;
      swift_beginAccess();
      *(v82 + 34) = sub_20D974CE8();
      _os_log_impl(&dword_20D7C9000, v78, v79, "%s starting %s Query for %s with %lu granularity", v82, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v83, -1, -1);
      MEMORY[0x20F324260](v82, -1, -1);
    }

    else
    {
      v91 = *(v0 + 672);
      v92 = *(v0 + 616);
      v93 = *(v0 + 608);

      v40(v91, v93);
    }

    v94 = *(v0 + 568);
    v95 = *(v0 + 560);
    v96 = *(v0 + 552);
    v97 = *(v0 + 96);
    sub_20D972C68();
    sub_20D972638();

    if ((*(v94 + 48))(v96, 1, v95) == 1)
    {
      v98 = *(v0 + 96);
      sub_20D7E3944(*(v0 + 552), &qword_27C8389F8, &qword_20D978460);

      v99 = sub_20D9734D8();
      v100 = sub_20D975458();

      v232 = v40;
      if (os_log_type_enabled(v99, v100))
      {
        v101 = *(v0 + 96);
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v253[0] = v103;
        *v102 = 136315394;
        *(v102 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v253);
        *(v102 + 12) = 2080;
        v104 = sub_20D972C68();
        v106 = sub_20D7F4DC8(v104, v105, v253);

        *(v102 + 14) = v106;
        _os_log_impl(&dword_20D7C9000, v99, v100, "%s invalid energySite.identifier: %s", v102, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v103, -1, -1);
        MEMORY[0x20F324260](v102, -1, -1);
      }

      v107 = *(v0 + 888);
      v108 = *(v0 + 872);
      v109 = *(v0 + 864);
      v110 = *(v0 + 800);
      v111 = *(v0 + 768);
      v112 = *(v0 + 760);
      v113 = *(v0 + 704);
      v114 = *(v0 + 616);
      v115 = *(v0 + 608);
      v116 = *(v0 + 104);
      v117 = *(v0 + 88);
      LOBYTE(v253[0]) = 5;
      static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(v253, v116, v117);
      v232(v113, v115);
      (*(v108 + 8))(v107, v109);
      v250(v110, v112);
      goto LABEL_37;
    }

    v215 = *(v0 + 800);
    v199 = *(v0 + 784);
    v207 = *(v0 + 776);
    v228 = *(v0 + 704);
    v211 = *(v0 + 680);
    v213 = *(v0 + 664);
    v219 = *(v0 + 760);
    v223 = *(v0 + 608);
    v201 = *(v0 + 544);
    v203 = *(v0 + 536);
    v131 = *(v0 + 504);
    v130 = *(v0 + 512);
    v133 = *(v0 + 488);
    v132 = *(v0 + 496);
    v134 = *(v0 + 472);
    v135 = *(v0 + 480);
    v136 = *(v0 + 464);
    v197 = *(v0 + 456);
    v245 = *(v0 + 448);
    v234 = *(v0 + 440);
    v205 = *(v0 + 1104);
    (*(*(v0 + 568) + 32))(*(v0 + 576), *(v0 + 552), *(v0 + 560));
    sub_20D974D08();
    sub_20D974D18();
    v137 = MEMORY[0x277CC58C8];
    sub_20D82CEEC(&qword_27C839590, MEMORY[0x277CC58C8]);
    sub_20D975208();
    sub_20D82CEEC(&qword_27C839598, v137);
    sub_20D9758B8();
    (*(v135 + 16))(v133, v132, v134);
    sub_20D82CEEC(&qword_27C8395A0, v137);
    sub_20D9755B8();
    v138 = *(v135 + 8);
    v138(v132, v134);
    v138(v131, v134);
    v242(v211, v228, v223);
    sub_20D9725C8();
    sub_20D971D58();
    swift_beginAccess();
    v235(v199, v215, v219);
    v193 = *(v245 + 104);
    v193(v197, *MEMORY[0x277CC58F0], v234);
    sub_20D974D38();
    *(v0 + 72) = 0;
    sub_20D9758B8();
    v242(v211, v228, v223);
    sub_20D9725C8();
    sub_20D971D58();
    v235(v199, v215, v219);
    v193(v197, *MEMORY[0x277CC58E8], v234);
    sub_20D974D38();
    v235(v207, v215, v219);
    if (v205 == 1)
    {
      v139 = *(v0 + 768) + 8;
      v250(*(v0 + 776), *(v0 + 760));
      v140 = 0;
    }

    else
    {
      v141 = *(v0 + 784);
      v142 = *(v0 + 776);
      v143 = *(v0 + 768);
      v144 = *(v0 + 760);
      v208(v141, *MEMORY[0x277CC58A8], v144);
      v145 = sub_20D974CD8();
      v250(v141, v144);
      v250(v142, v144);
      v140 = v145 ^ 1;
    }

    v146 = v140 & 1;
    *(v0 + 1106) = v140 & 1;
    *(v0 + 80) = MEMORY[0x277D84FA0];
    *(v0 + 984) = sub_20D974E48();
    *(v0 + 992) = sub_20D974E38();
    v147 = *(MEMORY[0x277CC58F8] + 4);
    v148 = swift_task_alloc();
    *(v0 + 1000) = v148;
    *v148 = v0;
    v148[1] = sub_20D8269D0;
    v49 = *(v0 + 576);
    v48 = *(v0 + 544);
    v47 = *(v0 + 432);
    v50 = v146;

    return MEMORY[0x282116638](v47, v48, v49, v50);
  }

  if (v21 == *MEMORY[0x277D075D0])
  {
    v23 = MEMORY[0x277CC58B0];
    goto LABEL_12;
  }

  if (v21 == *MEMORY[0x277D075C0])
  {
    v23 = MEMORY[0x277CC58C0];
    goto LABEL_12;
  }

  v20(*(v0 + 744), *(v0 + 104), *(v0 + 712));
  v149 = sub_20D9734D8();
  v150 = sub_20D975458();
  v151 = os_log_type_enabled(v149, v150);
  v152 = *(v0 + 744);
  v153 = *(v0 + 720);
  v154 = *(v0 + 712);
  if (v151)
  {
    v246 = *(v0 + 712);
    v155 = swift_slowAlloc();
    v252 = swift_slowAlloc();
    v253[0] = v252;
    *v155 = 136315394;
    *(v155 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v253);
    *(v155 + 12) = 2080;
    v156 = sub_20D972AE8();
    v158 = v157;
    v159 = *(v153 + 8);
    v159(v152, v246);
    v160 = sub_20D7F4DC8(v156, v158, v253);

    *(v155 + 14) = v160;
    _os_log_impl(&dword_20D7C9000, v149, v150, "%s UNEXPECTED timeInterval: %s", v155, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v252, -1, -1);
    MEMORY[0x20F324260](v155, -1, -1);
  }

  else
  {

    v159 = *(v153 + 8);
    v159(v152, v154);
  }

  v161 = *(v0 + 888);
  v162 = *(v0 + 872);
  v163 = *(v0 + 864);
  v164 = *(v0 + 752);
  v165 = *(v0 + 712);
  v166 = *(v0 + 104);
  v167 = *(v0 + 88);
  LOBYTE(v253[0]) = 5;
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(v253, v166, v167);
  (*(v162 + 8))(v161, v163);
  v159(v164, v165);
LABEL_37:
  v118 = *(v0 + 888);
  v119 = *(v0 + 880);
  v120 = *(v0 + 856);
  v121 = *(v0 + 832);
  v122 = *(v0 + 824);
  v123 = *(v0 + 800);
  v124 = *(v0 + 792);
  v125 = *(v0 + 784);
  v126 = *(v0 + 776);
  v127 = *(v0 + 752);
  v168 = *(v0 + 744);
  v169 = *(v0 + 736);
  v170 = *(v0 + 728);
  v171 = *(v0 + 704);
  v172 = *(v0 + 696);
  v173 = *(v0 + 688);
  v174 = *(v0 + 680);
  v175 = *(v0 + 672);
  v176 = *(v0 + 664);
  v177 = *(v0 + 656);
  v178 = *(v0 + 648);
  v179 = *(v0 + 640);
  v180 = *(v0 + 632);
  v181 = *(v0 + 624);
  v182 = *(v0 + 600);
  v183 = *(v0 + 576);
  v184 = *(v0 + 552);
  v185 = *(v0 + 544);
  v186 = *(v0 + 536);
  v187 = *(v0 + 512);
  v188 = *(v0 + 504);
  v189 = *(v0 + 496);
  v190 = *(v0 + 488);
  v191 = *(v0 + 464);
  v192 = *(v0 + 456);
  v194 = *(v0 + 432);
  v195 = *(v0 + 424);
  v196 = *(v0 + 400);
  v198 = *(v0 + 392);
  v200 = *(v0 + 368);
  v202 = *(v0 + 360);
  v204 = *(v0 + 352);
  v206 = *(v0 + 344);
  v209 = *(v0 + 336);
  v210 = *(v0 + 312);
  v212 = *(v0 + 288);
  v214 = *(v0 + 280);
  v216 = *(v0 + 264);
  v218 = *(v0 + 256);
  v222 = *(v0 + 232);
  v227 = *(v0 + 216);
  v233 = *(v0 + 208);
  v236 = *(v0 + 192);
  v238 = *(v0 + 168);
  v243 = *(v0 + 144);
  v244 = *(v0 + 136);
  v251 = *(v0 + 128);

  v128 = *(v0 + 8);

  return v128();
}

uint64_t sub_20D8269D0()
{
  v2 = *(*v1 + 1000);
  v3 = *(*v1 + 992);
  v6 = *v1;
  *(*v1 + 1008) = v0;

  if (v0)
  {
    v4 = sub_20D828388;
  }

  else
  {
    v4 = sub_20D826B00;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20D826B00()
{
  v1 = v0[54];
  v3 = v0[50];
  v2 = v0[51];
  sub_20D975328();
  v0[127] = MEMORY[0x277D84F90];
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[128] = v5;
  *v5 = v0;
  v5[1] = sub_20D826BBC;
  v6 = v0[50];
  v7 = v0[46];
  v8 = v0[47];

  return MEMORY[0x2822003E8](v7, 0, 0, v8);
}

uint64_t sub_20D826BBC()
{
  v1 = *(*v0 + 1024);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20D826CB8, 0, 0);
}

uint64_t sub_20D826CB8()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v3 + 48);
  *(v0 + 1032) = v4;
  *(v0 + 1040) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 984);
    v6 = *(v0 + 400);
    v7 = *(v0 + 376);
    v8 = *(v0 + 384);
    v9 = *(v8 + 8);
    *(v0 + 1048) = v9;
    *(v0 + 1056) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    *(v0 + 1064) = sub_20D974E38();
    v10 = *(MEMORY[0x277CC58F8] + 4);
    v11 = swift_task_alloc();
    *(v0 + 1072) = v11;
    *v11 = v0;
    v11[1] = sub_20D827038;
    v12 = *(v0 + 1106);
    v13 = *(v0 + 576);
    v14 = *(v0 + 536);
    v15 = *(v0 + 424);

    return MEMORY[0x282116638](v15, v14, v13, v12);
  }

  else
  {
    v16 = *(v0 + 1016);
    v18 = *(v0 + 344);
    v17 = *(v0 + 352);
    v44 = *(v3 + 32);
    v44(v17, v1, v2);
    (*(v3 + 16))(v18, v17, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v0 + 1016);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_20D8D43E0(0, *(v20 + 2) + 1, 1, *(v0 + 1016));
    }

    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_20D8D43E0(v21 > 1, v22 + 1, 1, v20);
    }

    v23 = *(v0 + 344);
    v24 = *(v0 + 352);
    v26 = *(v0 + 320);
    v25 = *(v0 + 328);
    v27 = *(v0 + 296);
    v28 = *(v0 + 304);
    v29 = *(v0 + 288);
    *(v20 + 2) = v22 + 1;
    v44(&v20[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22], v23, v26);
    sub_20D974DF8();
    v30 = (*(v28 + 48))(v29, 1, v27);
    v31 = *(v0 + 352);
    v32 = *(v0 + 320);
    v33 = *(v0 + 328);
    if (v30 == 1)
    {
      v34 = *(v0 + 288);
      (*(v33 + 8))(*(v0 + 352), *(v0 + 320));
      sub_20D7E3944(v34, &qword_27C839560, &qword_20D9790B0);
    }

    else
    {
      v36 = *(v0 + 304);
      v35 = *(v0 + 312);
      v37 = *(v0 + 296);
      (*(v36 + 32))(v35, *(v0 + 288), v37);
      sub_20D828F78(v0 + 80);
      (*(v36 + 8))(v35, v37);
      (*(v33 + 8))(v31, v32);
    }

    *(v0 + 1016) = v20;
    v38 = *(MEMORY[0x277D85798] + 4);
    v39 = swift_task_alloc();
    *(v0 + 1024) = v39;
    *v39 = v0;
    v39[1] = sub_20D826BBC;
    v40 = *(v0 + 400);
    v41 = *(v0 + 368);
    v42 = *(v0 + 376);

    return MEMORY[0x2822003E8](v41, 0, 0, v42);
  }
}

uint64_t sub_20D827038()
{
  v2 = *v1;
  v3 = *(*v1 + 1072);
  v4 = *(*v1 + 1064);
  v9 = *v1;
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v5 = *(v2 + 1016);
    v6 = *(v2 + 80);

    v7 = sub_20D828974;
  }

  else
  {
    v7 = sub_20D827184;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20D827184()
{
  v1 = v0[53];
  v2 = v0[51];
  v3 = v0[49];
  sub_20D975328();
  v0[136] = MEMORY[0x277D84F90];
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[137] = v5;
  *v5 = v0;
  v5[1] = sub_20D827248;
  v6 = v0[49];
  v7 = v0[47];
  v8 = v0[45];

  return MEMORY[0x2822003E8](v8, 0, 0, v7);
}

uint64_t sub_20D827248()
{
  v1 = *(*v0 + 1096);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_20D827344, 0, 0);
}

uint64_t sub_20D827344()
{
  v238 = v0;
  v1 = *(v0 + 1040);
  v2 = *(v0 + 360);
  v3 = *(v0 + 320);
  v4 = (*(v0 + 1032))(v2, 1, v3);
  v5 = *(v0 + 1088);
  if (v4 != 1)
  {
    v16 = *(*(v0 + 328) + 32);
    v16(*(v0 + 336), v2, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v0 + 1088);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_20D8D43E0(0, *(v18 + 2) + 1, 1, *(v0 + 1088));
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_20D8D43E0(v19 > 1, v20 + 1, 1, v18);
    }

    v22 = *(v0 + 328);
    v21 = *(v0 + 336);
    v23 = *(v0 + 320);
    *(v18 + 2) = v20 + 1;
    v16(&v18[((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v20], v21, v23);
    *(v0 + 1088) = v18;
    v24 = *(MEMORY[0x277D85798] + 4);
    v25 = swift_task_alloc();
    *(v0 + 1096) = v25;
    *v25 = v0;
    v25[1] = sub_20D827248;
    v26 = *(v0 + 392);
    v27 = *(v0 + 376);
    v28 = *(v0 + 360);
    v29 = 0;
    v30 = 0;

    return MEMORY[0x2822003E8](v28, v29, v30, v27);
  }

  v6 = *(v0 + 1056);
  v7 = *(v0 + 1016);
  v8 = *(v0 + 896);
  (*(v0 + 1048))(*(v0 + 392), *(v0 + 376));

  v9 = sub_20D9734D8();
  v10 = sub_20D975478();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1016);
  if (v11)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v237[0] = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v237);
    *(v14 + 12) = 2048;
    *(v14 + 14) = *(v13 + 16);
    *(v14 + 22) = 2048;
    *(v14 + 24) = *(v12 + 16);

    _os_log_impl(&dword_20D7C9000, v9, v10, "%s query returned %ld import records & %ld export records", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F324260](v15, -1, -1);
    MEMORY[0x20F324260](v14, -1, -1);
  }

  else
  {
  }

  v31 = *(v0 + 896);
  sub_20D82AC7C(*(v0 + 800), *(v0 + 1016), *(v0 + 1088), *(v0 + 888));
  v33 = v32;

  v34 = sub_20D9734D8();
  v35 = sub_20D975478();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v237[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v237);
    *(v36 + 12) = 2048;
    *(v36 + 14) = *(v33 + 16);

    _os_log_impl(&dword_20D7C9000, v34, v35, "%s converted results to %ld usages & now return snapshot.", v36, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x20F324260](v37, -1, -1);
    MEMORY[0x20F324260](v36, -1, -1);
  }

  else
  {
  }

  v214 = *(v0 + 920);
  v218 = *(v0 + 928);
  v38 = *(v0 + 912);
  v39 = *(v0 + 904);
  v40 = *(v0 + 824);
  v41 = *(v0 + 808);
  v191 = *(v0 + 736);
  v224 = *(v0 + 728);
  v229 = *(v0 + 832);
  v183 = *(v0 + 968);
  v187 = *(v0 + 712);
  v42 = *(v0 + 704);
  v43 = *(v0 + 656);
  v44 = *(v0 + 608);
  v234 = *(v0 + 280);
  v210 = *(v0 + 272);
  v172 = *(v0 + 112);
  v176 = *(v0 + 104);
  v45 = *(v0 + 96);
  v206 = sub_20D972C68();
  v179 = v46;
  v183(v43, v42, v44);
  v39(v40, v172, v41);
  v214(v191, v176, v187);
  v47 = sub_20D972AC8();
  v195 = *(v0 + 80);
  *v234 = v206;
  v234[1] = v179;
  *(v234 + v210[16]) = 6;
  *(v234 + v210[11]) = v47 & 1;
  v214(v224, v191, v187);
  v39(v229, v40, v41);
  v48 = v210[12];

  sub_20D972E28();
  v49 = sub_20D972E38();
  if (*(v49 + 16))
  {
    v225 = *(v0 + 952);
    v230 = *(v0 + 960);
    v50 = *(v0 + 648);
    v51 = *(v0 + 640);
    v52 = *(v0 + 608);
    v53 = *(v0 + 264);
    v54 = v48;
    v55 = *(v0 + 240);
    v56 = *(v0 + 248);
    (*(v56 + 16))(v53, v49 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v55);

    MEMORY[0x20F320DF0](v57);
    (*(v56 + 8))(v53, v55);
    v48 = v54;
    v225(v50, v51, v52);
  }

  else
  {
    v58 = *(v0 + 976);
    v59 = *(v0 + 968);
    v60 = *(v0 + 656);
    v61 = *(v0 + 648);
    v62 = *(v0 + 608);

    v59(v61, v60, v62);
  }

  v63 = *(v0 + 648);
  v64 = *(v0 + 280);
  v65 = *(*(v0 + 272) + 36);
  sub_20D972DA8();
  v226 = v48;
  v66 = sub_20D972E38();
  v67 = *(v66 + 16);
  if (v67)
  {
    v231 = *(v0 + 960);
    v219 = *(v0 + 952);
    v68 = *(v0 + 632);
    v69 = *(v0 + 624);
    v70 = *(v0 + 608);
    v72 = *(v0 + 248);
    v71 = *(v0 + 256);
    v73 = *(v0 + 240);
    (*(v72 + 16))(v71, v66 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * (v67 - 1), v73);

    MEMORY[0x20F320DF0](v74);
    (*(v72 + 8))(v71, v73);
    v219(v68, v69, v70);
  }

  else
  {
    v75 = *(v0 + 976);
    v76 = *(v0 + 968);
    v77 = *(v0 + 656);
    v78 = *(v0 + 632);
    v79 = *(v0 + 608);

    v76(v78, v77, v79);
  }

  v80 = *(v0 + 680);
  v81 = *(v0 + 664);
  v82 = *(v0 + 632);
  v83 = *(v0 + 608);
  v85 = *(v0 + 272);
  v84 = *(v0 + 280);
  v86 = v85[10];
  sub_20D972DA8();
  v87 = v84 + v85[5];
  sub_20D971D78();
  v88 = v84 + v85[6];
  sub_20D971D78();
  v89 = v84 + v85[7];
  sub_20D971D78();
  v90 = v84 + v85[8];
  sub_20D971D78();
  sub_20D971D78();
  sub_20D971D48();
  sub_20D82CEEC(&qword_281126E30, MEMORY[0x277CC9578]);
  v28 = sub_20D974FC8();
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v91 = *(v0 + 960);
  v92 = *(v0 + 952);
  v232 = *(v0 + 872);
  v197 = *(v0 + 864);
  v200 = *(v0 + 816);
  v203 = *(v0 + 808);
  v163 = *(v0 + 944);
  v166 = *(v0 + 680);
  v93 = *(v0 + 664);
  v215 = *(v0 + 880);
  v220 = *(v0 + 616);
  v94 = *(v0 + 608);
  v188 = *(v0 + 280);
  v180 = *(v0 + 272);
  v95 = *(v0 + 232);
  v161 = *(v0 + 224);
  v97 = *(v0 + 208);
  v96 = *(v0 + 216);
  v98 = *(v0 + 200);
  v173 = *(v0 + 192);
  v158 = *(v0 + 184);
  v169 = *(v0 + 176);
  v184 = *(v0 + 144);
  v192 = *(v0 + 136);
  v207 = *(v0 + 168);
  v211 = *(v0 + 128);
  v92(v96);
  (v92)(v96 + *(v98 + 48), v93, v94);
  sub_20D7EB7E8(v96, v97, &unk_27C83C750, &unk_20D978DD0);
  v99 = *(v98 + 48);
  (v92)(v95, v97, v94);
  v163(v97 + v99, v94);
  sub_20D829514(v96, v97);
  (v92)(v95 + *(v161 + 36), v97 + *(v98 + 48), v94);
  v163(v97, v94);
  (*(v158 + 16))(v173, v234 + v226, v169);
  sub_20D9725C8();
  HistoricalUsageSnapshotDerivedInfo.init(snapshotDomain:energyTrends:requestedDisplayDate:)(v95, v173, v166, v188 + *(v180 + 52));
  (*(v232 + 56))(v184, 1, 1, v197);
  (*(v200 + 56))(v192, 1, 1, v203);
  sub_20D971E98();
  sub_20D972E48();
  sub_20D972748();
  v235 = *(v232 + 8);
  v235(v215, v197);
  v28 = (*(v220 + 48))(v211, 1, v94);
  if (v28 == 1)
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x2822003E8](v28, v29, v30, v27);
  }

  v208 = *(v0 + 952);
  v212 = *(v0 + 960);
  v100 = *(v0 + 944);
  v227 = *(v0 + 936);
  v198 = *(v0 + 864);
  v201 = *(v0 + 888);
  v101 = *(v0 + 816);
  v152 = *(v0 + 808);
  v154 = *(v0 + 824);
  v204 = *(v0 + 768);
  v216 = *(v0 + 760);
  v221 = *(v0 + 800);
  v102 = *(v0 + 720);
  v140 = *(v0 + 712);
  v142 = *(v0 + 736);
  v193 = *(v0 + 704);
  v148 = *(v0 + 656);
  v136 = *(v0 + 632);
  v138 = *(v0 + 648);
  v103 = *(v0 + 608);
  v170 = *(v0 + 560);
  v174 = *(v0 + 576);
  v164 = *(v0 + 544);
  v167 = *(v0 + 568);
  v104 = *(v0 + 528);
  v156 = *(v0 + 520);
  v159 = *(v0 + 536);
  v150 = *(v0 + 432);
  v105 = *(v0 + 416);
  v144 = *(v0 + 408);
  v146 = *(v0 + 424);
  v181 = *(v0 + 272);
  v185 = *(v0 + 280);
  v107 = *(v0 + 160);
  v106 = *(v0 + 168);
  v108 = *(v0 + 152);
  v177 = *(v0 + 128);
  v189 = *(v0 + 88);

  (*(v107 + 8))(v106, v108);
  v100(v136, v103);
  v100(v138, v103);
  (*(v102 + 8))(v142, v140);
  (*(v101 + 8))(v154, v152);
  v100(v148, v103);
  v109 = *(v105 + 8);
  v109(v146, v144);
  v109(v150, v144);
  v110 = *(v104 + 8);
  v110(v159, v156);
  v110(v164, v156);
  (*(v167 + 8))(v174, v170);
  v100(v193, v103);
  v235(v201, v198);
  v208(v185 + *(v181 + 56), v177, v103);
  *(v185 + *(v181 + 60)) = v195;
  sub_20D81E5E0(v185, v189);
  v227(v221, v216);
  v111 = *(v0 + 888);
  v112 = *(v0 + 880);
  v113 = *(v0 + 856);
  v114 = *(v0 + 832);
  v115 = *(v0 + 824);
  v116 = *(v0 + 800);
  v117 = *(v0 + 792);
  v118 = *(v0 + 784);
  v119 = *(v0 + 776);
  v120 = *(v0 + 752);
  v123 = *(v0 + 744);
  v124 = *(v0 + 736);
  v125 = *(v0 + 728);
  v126 = *(v0 + 704);
  v127 = *(v0 + 696);
  v128 = *(v0 + 688);
  v129 = *(v0 + 680);
  v130 = *(v0 + 672);
  v131 = *(v0 + 664);
  v132 = *(v0 + 656);
  v133 = *(v0 + 648);
  v134 = *(v0 + 640);
  v135 = *(v0 + 632);
  v137 = *(v0 + 624);
  v139 = *(v0 + 600);
  v141 = *(v0 + 576);
  v143 = *(v0 + 552);
  v145 = *(v0 + 544);
  v147 = *(v0 + 536);
  v149 = *(v0 + 512);
  v151 = *(v0 + 504);
  v153 = *(v0 + 496);
  v155 = *(v0 + 488);
  v157 = *(v0 + 464);
  v160 = *(v0 + 456);
  v162 = *(v0 + 432);
  v165 = *(v0 + 424);
  v168 = *(v0 + 400);
  v171 = *(v0 + 392);
  v175 = *(v0 + 368);
  v178 = *(v0 + 360);
  v182 = *(v0 + 352);
  v186 = *(v0 + 344);
  v190 = *(v0 + 336);
  v194 = *(v0 + 312);
  v196 = *(v0 + 288);
  v199 = *(v0 + 280);
  v202 = *(v0 + 264);
  v205 = *(v0 + 256);
  v209 = *(v0 + 232);
  v213 = *(v0 + 216);
  v217 = *(v0 + 208);
  v222 = *(v0 + 192);
  v223 = *(v0 + 168);
  v228 = *(v0 + 144);
  v233 = *(v0 + 136);
  v236 = *(v0 + 128);

  v121 = *(v0 + 8);

  return v121();
}

uint64_t sub_20D828388()
{
  v99 = v0;
  v1 = v0[126];
  v2 = v0[112];
  v3 = v0[12];

  v4 = v1;
  v5 = sub_20D9734D8();
  v6 = sub_20D975458();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v98[0] = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v98);
    *(v8 + 12) = 2080;
    v11 = sub_20D972C68();
    v13 = sub_20D7F4DC8(v11, v12, v98);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s InsightRecords fetch failed for %s:%@", v8, 0x20u);
    sub_20D7E3944(v9, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v16 = v1;
  v17 = v0[109];
  v83 = v0[118];
  v85 = v0[108];
  v93 = v0[100];
  v95 = v0[117];
  v87 = v0[96];
  v89 = v0[111];
  v91 = v0[95];
  v77 = v0[77];
  v79 = v0[76];
  v81 = v0[88];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[70];
  v21 = v0[68];
  v22 = v0[67];
  v23 = v0[66];
  v24 = v0[65];
  v25 = v0[13];
  v26 = v0[11];
  v97 = 5;
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v97, v25, v26);

  v27 = *(v23 + 8);
  v27(v22, v24);
  v27(v21, v24);
  (*(v19 + 8))(v18, v20);
  v83(v81, v79);
  (*(v17 + 8))(v89, v85);
  v95(v93, v91);
  v28 = v0[111];
  v29 = v0[110];
  v30 = v0[107];
  v31 = v0[104];
  v32 = v0[103];
  v33 = v0[100];
  v34 = v0[99];
  v35 = v0[98];
  v36 = v0[97];
  v37 = v0[94];
  v40 = v0[93];
  v41 = v0[92];
  v42 = v0[91];
  v43 = v0[88];
  v44 = v0[87];
  v45 = v0[86];
  v46 = v0[85];
  v47 = v0[84];
  v48 = v0[83];
  v49 = v0[82];
  v50 = v0[81];
  v51 = v0[80];
  v52 = v0[79];
  v53 = v0[78];
  v54 = v0[75];
  v55 = v0[72];
  v56 = v0[69];
  v57 = v0[68];
  v58 = v0[67];
  v59 = v0[64];
  v60 = v0[63];
  v61 = v0[62];
  v62 = v0[61];
  v63 = v0[58];
  v64 = v0[57];
  v65 = v0[54];
  v66 = v0[53];
  v67 = v0[50];
  v68 = v0[49];
  v69 = v0[46];
  v70 = v0[45];
  v71 = v0[44];
  v72 = v0[43];
  v73 = v0[42];
  v74 = v0[39];
  v75 = v0[36];
  v76 = v0[35];
  v78 = v0[33];
  v80 = v0[32];
  v82 = v0[29];
  v84 = v0[27];
  v86 = v0[26];
  v88 = v0[24];
  v90 = v0[21];
  v92 = v0[18];
  v94 = v0[17];
  v96 = v0[16];

  v38 = v0[1];

  return v38();
}

uint64_t sub_20D828974()
{
  v99 = v0;
  (*(v0[52] + 8))(v0[54], v0[51]);
  v1 = v0[135];
  v2 = v0[112];
  v3 = v0[12];

  v4 = v1;
  v5 = sub_20D9734D8();
  v6 = sub_20D975458();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v98[0] = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_20D7F4DC8(0xD00000000000004ELL, 0x800000020D983F70, v98);
    *(v8 + 12) = 2080;
    v11 = sub_20D972C68();
    v13 = sub_20D7F4DC8(v11, v12, v98);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v15;
    *v9 = v15;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s InsightRecords fetch failed for %s:%@", v8, 0x20u);
    sub_20D7E3944(v9, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v16 = v1;
  v17 = v0[109];
  v83 = v0[118];
  v85 = v0[108];
  v93 = v0[100];
  v95 = v0[117];
  v87 = v0[96];
  v89 = v0[111];
  v91 = v0[95];
  v77 = v0[77];
  v79 = v0[76];
  v81 = v0[88];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[70];
  v21 = v0[68];
  v22 = v0[67];
  v23 = v0[66];
  v24 = v0[65];
  v25 = v0[13];
  v26 = v0[11];
  v97 = 5;
  static HistoricalUsageSnapshot.dynamicSnapshotWithError(_:interval:)(&v97, v25, v26);

  v27 = *(v23 + 8);
  v27(v22, v24);
  v27(v21, v24);
  (*(v19 + 8))(v18, v20);
  v83(v81, v79);
  (*(v17 + 8))(v89, v85);
  v95(v93, v91);
  v28 = v0[111];
  v29 = v0[110];
  v30 = v0[107];
  v31 = v0[104];
  v32 = v0[103];
  v33 = v0[100];
  v34 = v0[99];
  v35 = v0[98];
  v36 = v0[97];
  v37 = v0[94];
  v40 = v0[93];
  v41 = v0[92];
  v42 = v0[91];
  v43 = v0[88];
  v44 = v0[87];
  v45 = v0[86];
  v46 = v0[85];
  v47 = v0[84];
  v48 = v0[83];
  v49 = v0[82];
  v50 = v0[81];
  v51 = v0[80];
  v52 = v0[79];
  v53 = v0[78];
  v54 = v0[75];
  v55 = v0[72];
  v56 = v0[69];
  v57 = v0[68];
  v58 = v0[67];
  v59 = v0[64];
  v60 = v0[63];
  v61 = v0[62];
  v62 = v0[61];
  v63 = v0[58];
  v64 = v0[57];
  v65 = v0[54];
  v66 = v0[53];
  v67 = v0[50];
  v68 = v0[49];
  v69 = v0[46];
  v70 = v0[45];
  v71 = v0[44];
  v72 = v0[43];
  v73 = v0[42];
  v74 = v0[39];
  v75 = v0[36];
  v76 = v0[35];
  v78 = v0[33];
  v80 = v0[32];
  v82 = v0[29];
  v84 = v0[27];
  v86 = v0[26];
  v88 = v0[24];
  v90 = v0[21];
  v92 = v0[18];
  v94 = v0[17];
  v96 = v0[16];

  v38 = v0[1];

  return v38();
}

uint64_t sub_20D828F78(uint64_t a1)
{
  v26[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395A8, &qword_20D9790E0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v27 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v26 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v26 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v26 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839568, &qword_20D9790B8);
  MEMORY[0x20F322F70]();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
  v18 = *(*(v17 - 8) + 48);
  v19 = v18(v15, 1, v17);
  sub_20D7E3944(v15, &qword_27C8395A8, &qword_20D9790E0);
  if (v19 != 1)
  {
    sub_20D89CFD0(&v28, 0);
  }

  MEMORY[0x20F322F40](v16);
  v20 = v18(v13, 1, v17);
  sub_20D7E3944(v13, &qword_27C8395A8, &qword_20D9790E0);
  if (v20 != 1)
  {
    sub_20D89CFD0(&v29, 1);
  }

  MEMORY[0x20F322F50](v16);
  v21 = v18(v10, 1, v17);
  sub_20D7E3944(v10, &qword_27C8395A8, &qword_20D9790E0);
  if (v21 != 1)
  {
    sub_20D89CFD0(&v30, 2);
  }

  MEMORY[0x20F322F30](v16);
  v22 = v18(v7, 1, v17);
  sub_20D7E3944(v7, &qword_27C8395A8, &qword_20D9790E0);
  if (v22 != 1)
  {
    sub_20D89CFD0(&v31, 3);
  }

  v23 = v27;
  sub_20D974DA8();
  v24 = v18(v23, 1, v17);
  result = sub_20D7E3944(v23, &qword_27C8395A8, &qword_20D9790E0);
  if (v24 != 1)
  {
    return sub_20D89CFD0(&v32, 4);
  }

  return result;
}

uint64_t sub_20D8292B0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_20D82935C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_20D9757C8() & 1;
  }
}

uint64_t sub_20D8293B4()
{
  if ((sub_20D972ED8() & 1) == 0)
  {
    goto LABEL_4;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_20D975078();
  v2 = [v0 initWithSuiteName_];

  if (!v2 || (v3 = sub_20D975078(), v4 = [v2 integerForKey_], v2, v3, result = v4, v4 <= 0))
  {
LABEL_4:
    result = sub_20D973118();
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v6 > -9.22337204e18)
    {
      if (v6 < 9.22337204e18)
      {
        return v6;
      }

LABEL_11:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_20D829514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C83C750, &unk_20D978DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20D829618()
{
  result = qword_27C839558;
  if (!qword_27C839558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C839558);
  }

  return result;
}

uint64_t sub_20D829674()
{
  result = sub_20D972628();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for HistoricalUsageSnapshot();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_20D972898();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of HistoricalUsageSnapshotManager.__allocating_init(siteID:)(uint64_t a1, uint64_t a2)
{
  v9 = (*(v2 + 704) + **(v2 + 704));
  v6 = *(*(v2 + 704) + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20D80F3B0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of HistoricalUsageSnapshotManager.configureForSite(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 736);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20D7EB52C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of HistoricalUsageSnapshotManager.configureWeeklyForSite(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 744);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20D805810;

  return v10(a1, a2);
}

uint64_t sub_20D829CB0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_20D9757C8() & 1;
  }
}

uint64_t sub_20D829D08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839560, &qword_20D9790B0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v69 = &v66 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v66 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v66 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v66 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395A8, &qword_20D9790E0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v66 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v68 = &v66 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v67 = &v66 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v66 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v66 - v28;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839570, &qword_20D9790C0);
  v72 = a1;
  sub_20D974DF8();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839568, &qword_20D9790B8);
  v31 = *(v30 - 8);
  v73 = *(v31 + 48);
  v32 = v73(v16, 1, v30);
  v70 = v6;
  v71 = v31;
  if (v32 == 1)
  {
    sub_20D7E3944(v16, &qword_27C839560, &qword_20D9790B0);
    v33 = MEMORY[0x277D84F98];
  }

  else
  {
    MEMORY[0x20F322F70](v30);
    (*(v31 + 8))(v16, v30);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v29, 1, v34) == 1)
    {
      sub_20D7E3944(v29, &qword_27C8395A8, &qword_20D9790E0);
      v33 = MEMORY[0x277D84F98];
    }

    else
    {
      sub_20D971CB8();
      v37 = v36;
      (*(v35 + 8))(v29, v34);
      v38 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v38;
      sub_20D8D5428(0, isUniquelyReferenced_nonNull_native, v37);
      v33 = v75;
    }

    v6 = v70;
  }

  v40 = v67;
  sub_20D974DF8();
  if (v73(v14, 1, v30) == 1)
  {
    sub_20D7E3944(v14, &qword_27C839560, &qword_20D9790B0);
  }

  else
  {
    MEMORY[0x20F322F40](v30);
    (*(v71 + 8))(v14, v30);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v27, 1, v41) == 1)
    {
      sub_20D7E3944(v27, &qword_27C8395A8, &qword_20D9790E0);
    }

    else
    {
      sub_20D971CB8();
      v44 = v43;
      (*(v42 + 8))(v27, v41);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v33;
      sub_20D8D5428(1, v45, v44);
      v33 = v75;
    }

    v6 = v70;
  }

  sub_20D974DF8();
  if (v73(v11, 1, v30) == 1)
  {
    sub_20D7E3944(v11, &qword_27C839560, &qword_20D9790B0);
  }

  else
  {
    MEMORY[0x20F322F50](v30);
    (*(v71 + 8))(v11, v30);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v40, 1, v46) == 1)
    {
      sub_20D7E3944(v40, &qword_27C8395A8, &qword_20D9790E0);
    }

    else
    {
      sub_20D971CB8();
      v49 = v48;
      (*(v47 + 8))(v40, v46);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v33;
      sub_20D8D5428(2, v50, v49);
      v33 = v75;
    }
  }

  v51 = v71;
  v53 = v68;
  v52 = v69;
  sub_20D974DF8();
  if (v73(v52, 1, v30) == 1)
  {
    sub_20D7E3944(v52, &qword_27C839560, &qword_20D9790B0);
  }

  else
  {
    MEMORY[0x20F322F30](v30);
    (*(v51 + 8))(v52, v30);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
    v55 = *(v54 - 8);
    if ((*(v55 + 48))(v53, 1, v54) == 1)
    {
      sub_20D7E3944(v53, &qword_27C8395A8, &qword_20D9790E0);
    }

    else
    {
      sub_20D971CB8();
      v57 = v56;
      (*(v55 + 8))(v53, v54);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v33;
      sub_20D8D5428(3, v58, v57);
      v33 = v75;
    }
  }

  sub_20D974DF8();
  if (v73(v6, 1, v30) == 1)
  {
    sub_20D7E3944(v6, &qword_27C839560, &qword_20D9790B0);
  }

  else
  {
    v59 = v66;
    sub_20D974DA8();
    (*(v51 + 8))(v6, v30);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(v59, 1, v60) == 1)
    {
      sub_20D7E3944(v59, &qword_27C8395A8, &qword_20D9790E0);
    }

    else
    {
      sub_20D971CB8();
      v63 = v62;
      (*(v61 + 8))(v59, v60);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v33;
      sub_20D8D5428(4, v64, v63);
      return v75;
    }
  }

  return v33;
}

uint64_t sub_20D82A614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B8, &qword_20D9790F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v47 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395A8, &qword_20D9790E0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v49 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839570, &qword_20D9790C0);
  v51 = a1;
  sub_20D974E08();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395C0, &qword_20D9790F8);
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v11, 1, v21) == 1)
  {
    sub_20D7E3944(v11, &qword_27C8395B8, &qword_20D9790F0);
    v24 = MEMORY[0x277D84F98];
  }

  else
  {
    v48 = v6;
    MEMORY[0x20F322F90](v21);
    (*(v22 + 8))(v11, v21);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v20, 1, v25) == 1)
    {
      sub_20D7E3944(v20, &qword_27C8395A8, &qword_20D9790E0);
      v24 = MEMORY[0x277D84F98];
    }

    else
    {
      sub_20D971CB8();
      v28 = v27;
      (*(v26 + 8))(v20, v25);
      v29 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52[0] = v29;
      sub_20D8D5428(2, isUniquelyReferenced_nonNull_native, v28);
      v24 = v52[0];
    }

    v6 = v48;
  }

  sub_20D974E08();
  if (v23(v9, 1, v21) == 1)
  {
    sub_20D7E3944(v9, &qword_27C8395B8, &qword_20D9790F0);
  }

  else
  {
    v31 = v6;
    MEMORY[0x20F322FA0](v21);
    (*(v22 + 8))(v9, v21);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v18, 1, v32) == 1)
    {
      sub_20D7E3944(v18, &qword_27C8395A8, &qword_20D9790E0);
    }

    else
    {
      sub_20D971CB8();
      v35 = v34;
      (*(v33 + 8))(v18, v32);
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v52[0] = v24;
      sub_20D8D5428(1, v36, v35);
      v24 = v52[0];
    }

    v6 = v31;
  }

  v37 = sub_20D972EC8();
  v52[3] = v37;
  v52[4] = sub_20D82CEEC(&qword_281127110, MEMORY[0x277D073A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(*(v37 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D07380], v37);
  LOBYTE(v37) = sub_20D972938();
  __swift_destroy_boxed_opaque_existential_0(v52);
  if (v37)
  {
    sub_20D974E08();
    if (v23(v6, 1, v21) == 1)
    {
      sub_20D7E3944(v6, &qword_27C8395B8, &qword_20D9790F0);
    }

    else
    {
      v39 = v49;
      MEMORY[0x20F322F80](v21);
      (*(v22 + 8))(v6, v21);
      v40 = v39;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
      v42 = *(v41 - 8);
      if ((*(v42 + 48))(v40, 1, v41) == 1)
      {
        sub_20D7E3944(v40, &qword_27C8395A8, &qword_20D9790E0);
      }

      else
      {
        sub_20D971CB8();
        v44 = v43;
        (*(v42 + 8))(v40, v41);
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v52[0] = v24;
        sub_20D8D5428(0, v45, v44);
        return v52[0];
      }
    }
  }

  return v24;
}

void sub_20D82AC7C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v216 = a4;
  v235 = a1;
  v215 = sub_20D9727B8();
  v222 = *(v215 - 8);
  v6 = *(v222 + 8);
  MEMORY[0x28223BE20](v215);
  v214 = v197 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_20D974CF8();
  v206 = *(v242 - 8);
  v8 = *(v206 + 8);
  MEMORY[0x28223BE20](v242);
  v241 = v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839578, &qword_20D9790C8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v239 = v197 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v257 = v197 - v18;
  MEMORY[0x28223BE20](v17);
  v250 = v197 - v19;
  v20 = sub_20D972628();
  v234 = *(v20 - 8);
  v21 = *(v234 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v237 = v197 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v236 = v197 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v233 = v197 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v228 = v197 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v243 = v197 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v230 = v197 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v248 = v197 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = v197 - v37;
  MEMORY[0x28223BE20](v36);
  v264 = v197 - v39;
  v261 = sub_20D971D98();
  v244 = *(v261 - 8);
  v40 = *(v244 + 64);
  MEMORY[0x28223BE20](v261);
  v260 = v197 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395A8, &qword_20D9790E0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v210 = v197 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v217 = v197 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v258 = v197 - v49;
  MEMORY[0x28223BE20](v48);
  v249 = v197 - v50;
  v265 = sub_20D972C58();
  v259 = *(v265 - 8);
  v51 = *(v259 + 64);
  v52 = MEMORY[0x28223BE20](v265);
  v246 = v197 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v245 = v197 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v256 = v197 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v255 = v197 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v254 = v197 - v61;
  MEMORY[0x28223BE20](v60);
  v253 = (v197 - v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839570, &qword_20D9790C0);
  v247 = *(v63 - 8);
  v64 = *(v247 + 64);
  v65 = MEMORY[0x28223BE20](v63);
  v238 = v197 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x28223BE20](v65);
  v218 = v197 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v71 = v197 - v70;
  MEMORY[0x28223BE20](v69);
  v73 = v197 - v72;
  if (qword_2811250E8 != -1)
  {
    goto LABEL_123;
  }

  while (1)
  {
    v74 = sub_20D9734F8();
    v75 = __swift_project_value_buffer(v74, qword_28112AB90);

    v204 = v75;
    v76 = sub_20D9734D8();
    v77 = sub_20D975478();
    v78 = os_log_type_enabled(v76, v77);
    v251 = v20;
    v240 = v14;
    if (v78)
    {
      v79 = swift_slowAlloc();
      v263 = swift_slowAlloc();
      v266 = v263;
      *v79 = 136315650;
      *(v79 + 4) = sub_20D7F4DC8(0xD000000000000037, 0x800000020D983FC0, &v266);
      *(v79 + 12) = 2048;
      *(v79 + 14) = *(a2 + 2);

      *(v79 + 22) = 2048;
      *(v79 + 24) = *(a3 + 16);

      _os_log_impl(&dword_20D7C9000, v76, v77, "%s Converting %ld import Insights & %ld export Insights to EnergyUsage structs", v79, 0x20u);
      v80 = v263;
      __swift_destroy_boxed_opaque_existential_0(v263);
      MEMORY[0x20F324260](v80, -1, -1);
      MEMORY[0x20F324260](v79, -1, -1);
    }

    else
    {
    }

    v81 = a3;
    v82 = *(a2 + 2);
    v262 = *(a3 + 16);
    v263 = v82;
    v83 = __OFADD__(v82, v262);
    v84 = &v262[v82];
    a3 = v250;
    if (v83)
    {
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      return;
    }

    if (!v84)
    {
      return;
    }

    if (!v262)
    {
      if (v263)
      {
        v119 = v247 + 16;
        v262 = *(v247 + 16);
        v120 = &a2[(*(v247 + 80) + 32) & ~*(v247 + 80)];
        v258 = *(v247 + 72);
        v256 = (v259 + 16);
        v257 = (v244 + 8);
        v255 = (v259 + 8);
        v252 = (v247 + 8);
        v121 = MEMORY[0x277D84F90];
        v251 = (v259 + 32);
        do
        {
          v122 = v119;
          (v262)(v73, v120, v63);
          sub_20D829D08(v73);
          sub_20D82A614(v73);
          v123 = v249;
          sub_20D974D68();
          v124 = v123;
          v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
          v126 = *(v125 - 8);
          if ((*(v126 + 48))(v124, 1, v125) == 1)
          {
            sub_20D7E3944(v124, &qword_27C8395A8, &qword_20D9790E0);
          }

          else
          {
            sub_20D971CB8();
            (*(v126 + 8))(v124, v125);
          }

          v127 = v260;
          sub_20D974E18();
          sub_20D971D78();
          (*v257)(v127, v261);
          v128 = MEMORY[0x277D84F90];
          sub_20D8D6850(MEMORY[0x277D84F90]);
          sub_20D8D6850(v128);
          v129 = v253;
          sub_20D972BF8();
          (*v256)(v254, v129, v265);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = sub_20D8D428C(0, v121[2] + 1, 1, v121);
          }

          v131 = v121[2];
          v130 = v121[3];
          if (v131 >= v130 >> 1)
          {
            v121 = sub_20D8D428C(v130 > 1, v131 + 1, 1, v121);
          }

          v132 = v259;
          v133 = v265;
          (*(v259 + 8))(v253, v265);
          (*v252)(v73, v63);
          v121[2] = v131 + 1;
          (*(v132 + 32))(v121 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v131, v254, v133);
          v120 += v258;
          v263 = (v263 - 1);
          v119 = v122;
        }

        while (v263);
      }

      else
      {
        v121 = MEMORY[0x277D84F90];
      }

      v148 = sub_20D9734D8();
      v149 = sub_20D975478();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v266 = v151;
        *v150 = 136315394;
        *(v150 + 4) = sub_20D7F4DC8(0xD000000000000037, 0x800000020D983FC0, &v266);
        *(v150 + 12) = 2048;
        *(v150 + 14) = v121[2];
        v152 = "%s only import Insights found, returning %ld import usages";
LABEL_116:
        _os_log_impl(&dword_20D7C9000, v148, v149, v152, v150, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v151);
        MEMORY[0x20F324260](v151, -1, -1);
        MEMORY[0x20F324260](v150, -1, -1);
      }

LABEL_117:

      return;
    }

    v85 = (*(v247 + 80) + 32) & ~*(v247 + 80);
    if (!v263)
    {
      v134 = v247 + 16;
      v263 = *(v247 + 16);
      v135 = v81 + v85;
      v257 = *(v247 + 72);
      v253 = (v259 + 16);
      v254 = (v244 + 8);
      v251 = (v247 + 8);
      v252 = (v259 + 8);
      v136 = MEMORY[0x277D84F90];
      v250 = (v259 + 32);
      do
      {
        v137 = v134;
        (v263)(v71, v135, v63);
        sub_20D829D08(v71);
        sub_20D82A614(v71);
        sub_20D974D68();
        v138 = v258;
        v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
        v140 = *(v139 - 8);
        if ((*(v140 + 48))(v138, 1, v139) == 1)
        {
          sub_20D7E3944(v138, &qword_27C8395A8, &qword_20D9790E0);
        }

        else
        {
          sub_20D971CB8();
          (*(v140 + 8))(v138, v139);
        }

        v141 = v260;
        sub_20D974E18();
        sub_20D971D78();
        (*v254)(v141, v261);
        v142 = MEMORY[0x277D84F90];
        sub_20D8D6850(MEMORY[0x277D84F90]);
        sub_20D8D6850(v142);
        v143 = v255;
        sub_20D972BF8();
        (*v253)(v256, v143, v265);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v136 = sub_20D8D428C(0, v136[2] + 1, 1, v136);
        }

        v145 = v136[2];
        v144 = v136[3];
        if (v145 >= v144 >> 1)
        {
          v136 = sub_20D8D428C(v144 > 1, v145 + 1, 1, v136);
        }

        v146 = v259;
        v147 = v265;
        (*(v259 + 8))(v255, v265);
        (*v251)(v71, v63);
        v136[2] = v145 + 1;
        (*(v146 + 32))(v136 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v145, v256, v147);
        v135 += v257;
        --v262;
        v134 = v137;
      }

      while (v262);
      v148 = sub_20D9734D8();
      v149 = sub_20D975478();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v266 = v151;
        *v150 = 136315394;
        *(v150 + 4) = sub_20D7F4DC8(0xD000000000000037, 0x800000020D983FC0, &v266);
        *(v150 + 12) = 2048;
        *(v150 + 14) = v136[2];
        v152 = "%s only export Insights found, returning %ld export usages";
        goto LABEL_116;
      }

      goto LABEL_117;
    }

    v209 = &a2[v85];
    v86 = v260;
    v87 = v81;
    sub_20D974E18();
    sub_20D971D78();
    v89 = v244 + 8;
    v88 = *(v244 + 8);
    v90 = v261;
    v88(v86, v261);
    v232 = v88;
    v208 = v87 + v85;
    sub_20D974E18();
    v91 = v230;
    sub_20D971D78();
    v88(v86, v90);
    v231 = sub_20D82CEEC(&qword_281126E30, MEMORY[0x277CC9578]);
    v92 = v248;
    v93 = v251;
    v94 = sub_20D974FA8();
    v95 = v234;
    v96 = *(v234 + 8);
    v254 = v96;
    v255 = (v234 + 8);
    v97 = (v94 & 1) == 0;
    v98 = (v94 & 1) != 0 ? v92 : v91;
    v99 = v97 ? v92 : v91;
    (v96)(v98, v93);
    v100 = *(v95 + 32);
    v230 = (v95 + 32);
    v229 = v100;
    v100(v38, v99, v93);
    v101 = *(v247 + 72);
    sub_20D974E18();
    v102 = v228;
    sub_20D971D78();
    v103 = v89;
    v232(v86, v261);
    v227 = v101;
    sub_20D974E18();
    v104 = v233;
    sub_20D971D78();
    v14 = v93;
    v244 = v103;
    v232(v86, v261);
    a2 = v231;
    v105 = sub_20D974FB8();
    v106 = (v105 & 1) == 0;
    v107 = (v105 & 1) != 0 ? v102 : v104;
    v108 = v106 ? v102 : v104;
    (v254)(v107, v14);
    v109 = v108;
    v110 = v247;
    v229(v243, v109, v14);
    v111 = *(v110 + 56);
    v111(a3, 1, 1, v63);
    v228 = (v110 + 56);
    v111(v257, 1, 1, v63);
    if (sub_20D974FA8())
    {
      break;
    }

    v248 = 0;
    v71 = 0;
    v223 = (v110 + 16);
    v226 = (v110 + 48);
    v225 = (v110 + 32);
    v224 = (v110 + 8);
    v247 = v234 + 16;
    v213 = (v259 + 16);
    v212 = v259 + 8;
    v211 = v259 + 32;
    v221 = (v206 + 16);
    v220 = (v206 + 88);
    v219 = *MEMORY[0x277CC58A8];
    v207 = *MEMORY[0x277CC58A0];
    v202 = *MEMORY[0x277CC58B0];
    v201 = *MEMORY[0x277CC58C0];
    v200 = *MEMORY[0x277CC58B8];
    v198 = (v206 + 8);
    v197[3] = *MEMORY[0x277CC9988];
    v206 = v222 + 104;
    v205 = (v222 + 8);
    v199 = *MEMORY[0x277CC9998];
    v203 = *MEMORY[0x277CC9968];
    v253 = MEMORY[0x277D84F90];
    v233 = MEMORY[0x277D84F98];
    v234 = MEMORY[0x277D84F98];
    v256 = MEMORY[0x277D84F98];
    v73 = v263;
    v222 = v111;
    v252 = v38;
    while (1)
    {
      v20 = MEMORY[0x20F323B20]();
      sub_20D7E3944(a3, &qword_27C839578, &qword_20D9790C8);
      v258 = v71;
      v249 = v20;
      if (v71 < v73)
      {
        break;
      }

      v153 = 1;
LABEL_53:
      v71 = 1;
      v111(a3, v153, 1, v63);
      v38 = v257;
      a2 = &qword_27C839578;
      v20 = &qword_20D9790C8;
      sub_20D7E3944(v257, &qword_27C839578, &qword_20D9790C8);
      if (v248 < v262)
      {
        if (v248 < 0)
        {
          goto LABEL_120;
        }

        v38 = v257;
        (*v223)(v257, v208 + v248 * v227, v63);
        v71 = 0;
      }

      v111(v38, v71, 1, v63);
      v154 = v239;
      sub_20D7EB7E8(a3, v239, &qword_27C839578, &qword_20D9790C8);
      v155 = *v226;
      if ((*v226)(v154, 1, v63) == 1)
      {
        sub_20D7E3944(v154, &qword_27C839578, &qword_20D9790C8);
        v156 = 0;
        v157 = v240;
        v158 = v238;
        v159 = v257;
      }

      else
      {
        v160 = v218;
        (*v225)(v218, v154, v63);
        v161 = v260;
        sub_20D974E18();
        v162 = v264;
        sub_20D971D78();
        v232(v161, v261);
        v156 = sub_20D972598();
        (v254)(v162, v14);
        if (v156)
        {
          v163 = sub_20D829D08(v160);

          v164 = sub_20D82A614(v160);

          v234 = v164;
          v256 = v163;
        }

        v157 = v240;
        v158 = v238;
        v159 = v257;
        (*v224)(v160, v63);
      }

      sub_20D7EB7E8(v159, v157, &qword_27C839578, &qword_20D9790C8);
      if (v155(v157, 1, v63) == 1)
      {
        sub_20D7E3944(v157, &qword_27C839578, &qword_20D9790C8);
        if ((v156 & 1) == 0)
        {
          a3 = v250;
          v14 = v251;
LABEL_94:
          v38 = v252;
          a2 = v237;
          v181 = v249;
          v73 = v263;
          goto LABEL_95;
        }

LABEL_68:
        v20 = 0;
        goto LABEL_69;
      }

      (*v225)(v158, v157, v63);
      v165 = v260;
      sub_20D974E18();
      v166 = v264;
      sub_20D971D78();
      v232(v165, v261);
      v167 = sub_20D972598();
      v14 = v251;
      (v254)(v166, v251);
      if ((v167 & 1) == 0)
      {
        (*v224)(v158, v63);
        if ((v156 & 1) == 0)
        {
          a3 = v250;
          goto LABEL_94;
        }

        goto LABEL_68;
      }

      sub_20D829D08(v158);

      v168 = sub_20D82A614(v158);

      (*v224)(v158, v63);
      if ((v156 & 1) == 0)
      {
        v233 = v168;
LABEL_77:
        v172 = v210;
        if (v155(v159, 1, v63) == 1)
        {
          goto LABEL_126;
        }

        sub_20D974D68();
        v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
        v174 = (*(*(v173 - 8) + 48))(v172, 1, v173);
        v171 = v253;
        if (!v174)
        {
          sub_20D971CB8();
        }

        v73 = v156;
        sub_20D7E3944(v172, &qword_27C8395A8, &qword_20D9790E0);
        v20 = 1;
        goto LABEL_81;
      }

      v20 = 1;
      v233 = v168;
LABEL_69:
      if (v155(v250, 1, v63) == 1)
      {
        goto LABEL_125;
      }

      v169 = v217;
      sub_20D974D68();
      v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8395B0, &qword_20D9790E8);
      if ((*(*(v170 - 8) + 48))(v169, 1, v170))
      {
        sub_20D7E3944(v169, &qword_27C8395A8, &qword_20D9790E0);
        if (v20)
        {
          goto LABEL_77;
        }

        v73 = v156;
        v20 = 0;
      }

      else
      {
        sub_20D971CB8();
        sub_20D7E3944(v169, &qword_27C8395A8, &qword_20D9790E0);
        if (v20)
        {
          goto LABEL_77;
        }

        v73 = v156;
      }

      v171 = v253;
LABEL_81:
      (*v247)(v264, v252, v251);
      v71 = v256;

      a2 = v234;

      v38 = v233;

      v175 = v245;
      sub_20D972BF8();
      (*v213)(v246, v175, v265);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v171 = sub_20D8D428C(0, v171[2] + 1, 1, v171);
      }

      v177 = v171[2];
      v176 = v171[3];
      v253 = v171;
      if (v177 >= v176 >> 1)
      {
        v253 = sub_20D8D428C(v176 > 1, v177 + 1, 1, v253);
      }

      v178 = v259;
      v179 = v265;
      (*(v259 + 8))(v245, v265);
      v180 = v253;
      v253[2] = v177 + 1;
      (*(v178 + 32))(v180 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v177, v246, v179);
      if (v73)
      {
        a3 = v250;
        v14 = v251;
        if (__OFADD__(v258, 1))
        {
          goto LABEL_121;
        }

        ++v258;
      }

      else
      {
        a3 = v250;
        v14 = v251;
      }

      v38 = v252;
      a2 = v237;
      v73 = v263;
      if (v20)
      {
        if (__OFADD__(v248, 1))
        {
          goto LABEL_122;
        }

        ++v248;
      }

      v256 = MEMORY[0x277D84F98];
      v181 = v249;
LABEL_95:
      (*v247)(a2, v38, v14);
      v182 = v241;
      v183 = v242;
      (*v221)(v241, v235, v242);
      v184 = (*v220)(v182, v183);
      if (v184 != v219)
      {
        if (v184 == v207)
        {
          v186 = *v206;
          v187 = v214;
          v188 = v214;
          v189 = &v235 + 4;
          goto LABEL_99;
        }

        if (v184 == v202)
        {
          v187 = v214;
          v190 = v215;
          (*v206)(v214, v203, v215);
          v185 = v236;
        }

        else
        {
          if (v184 == v201)
          {
            v186 = *v206;
            v187 = v214;
            v188 = v214;
            v189 = &v233 + 4;
          }

          else
          {
            if (v184 != v200)
            {
              v185 = v236;
              sub_20D9725C8();
              v193 = v254;
              (v254)(a2, v14);
              (v193)(v38, v14);
              (*v198)(v241, v242);
              goto LABEL_104;
            }

            v186 = *v206;
            v187 = v214;
            v188 = v214;
            v189 = &v231 + 4;
          }

LABEL_99:
          v190 = v215;
          v186(v188, *(v189 - 64), v215);
          v185 = v236;
        }

        sub_20D9730D8();
        (*v205)(v187, v190);
        goto LABEL_103;
      }

      v185 = v236;
      sub_20D972498();
LABEL_103:
      v191 = v254;
      (v254)(a2, v14);
      (v191)(v38, v14);
LABEL_104:
      v229(v38, v185, v14);
      objc_autoreleasePoolPop(v181);
      v192 = sub_20D974FA8();
      v71 = v258;
      v111 = v222;
      if (v192)
      {
        goto LABEL_23;
      }
    }

    if ((v71 & 0x8000000000000000) == 0)
    {
      (*v223)(a3, &v209[v71 * v227], v63);
      v153 = 0;
      goto LABEL_53;
    }

    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    swift_once();
  }

  v248 = 0;
  v71 = 0;
  v253 = MEMORY[0x277D84F90];
  v234 = MEMORY[0x277D84F98];
  v233 = MEMORY[0x277D84F98];
  v256 = MEMORY[0x277D84F98];
LABEL_23:
  v112 = v71;
  v113 = sub_20D9734D8();
  v114 = sub_20D975478();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v266 = v116;
    *v115 = 136315906;
    *(v115 + 4) = sub_20D7F4DC8(0xD000000000000037, 0x800000020D983FC0, &v266);
    *(v115 + 12) = 2048;
    *(v115 + 14) = v112;
    *(v115 + 22) = 2048;
    *(v115 + 24) = v248;
    *(v115 + 32) = 2048;
    *(v115 + 34) = v253[2];
    _os_log_impl(&dword_20D7C9000, v113, v114, "%s %ld/%ld import/export usages created, returning %ld usages", v115, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v116);
    MEMORY[0x20F324260](v116, -1, -1);
    MEMORY[0x20F324260](v115, -1, -1);

    v117 = v251;
    v118 = v254;
    (v254)(v243, v251);
    (v118)(v38, v117);
  }

  else
  {

    v194 = v251;
    v195 = v254;
    (v254)(v243, v251);
    (v195)(v38, v194);
  }

  v196 = v257;

  sub_20D7E3944(v196, &qword_27C839578, &qword_20D9790C8);
  sub_20D7E3944(a3, &qword_27C839578, &qword_20D9790C8);
}

uint64_t sub_20D82CEEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20D82CF34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoricalUsageSnapshot();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D82D02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_20D7EB7E8(a3, v27 - v11, &unk_27C839F30, &qword_20D978400);
  v13 = sub_20D975318();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_20D7E3944(v12, &unk_27C839F30, &qword_20D978400);
  }

  else
  {
    sub_20D975308();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_20D975298();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_20D975138() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_20D7E3944(a3, &unk_27C839F30, &qword_20D978400);

      return v25;
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

  sub_20D7E3944(a3, &unk_27C839F30, &qword_20D978400);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t GridForecastSnapshotManager.reloadSnapshots()()
{
  v1[18] = v0;
  sub_20D9752E8();
  v1[19] = sub_20D9752D8();
  v3 = sub_20D975298();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x2822009F8](sub_20D82D3C4, v3, v2);
}

uint64_t sub_20D82D3C4()
{
  v26 = v0;
  v1 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8394D0, &qword_20D9790A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D977210;
  swift_getKeyPath();
  v0[16] = v1;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v3 = v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  v4 = type metadata accessor for GridForecastSnapshot(0);
  v5 = (v3 + *(v4 + 24));
  v6 = v5[1];
  *(inited + 32) = *v5;
  *(inited + 40) = v6;
  swift_getKeyPath();
  v0[17] = v1;

  sub_20D972858();

  v7 = v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
  swift_beginAccess();
  v8 = (v7 + *(v4 + 24));
  v9 = v8[1];
  *(inited + 48) = *v8;
  *(inited + 56) = v9;

  v10 = sub_20D84B8EC(inited);
  v0[22] = v10;
  swift_setDeallocating();
  swift_arrayDestroy();
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v11 = v0[18];
  v12 = sub_20D9734F8();
  __swift_project_value_buffer(v12, qword_28112AC00);

  v13 = sub_20D9734D8();
  v14 = sub_20D975478();

  v15 = v0;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = v0[18];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_20D7F4DC8(0xD000000000000011, 0x800000020D9840B0, &v25);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_20D7F4DC8(*(v16 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v16 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v25);
    *(v17 + 22) = 2080;
    v19 = sub_20D975368();
    v21 = sub_20D7F4DC8(v19, v20, &v25);

    *(v17 + 24) = v21;
    _os_log_impl(&dword_20D7C9000, v13, v14, "\t...%s(%s): reloading %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v18, -1, -1);
    MEMORY[0x20F324260](v17, -1, -1);
  }

  v22 = swift_task_alloc();
  v15[23] = v22;
  *v22 = v15;
  v22[1] = sub_20D82D7AC;
  v23 = v15[18];

  return sub_20D83FFC8(v10);
}

uint64_t sub_20D82D7AC()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  v4 = *(v1 + 168);
  v5 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20D82D8F0, v5, v4);
}

uint64_t sub_20D82D8F0()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20D82D950(uint64_t a1)
{
  v2 = sub_20D971DE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_20D971DB8();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

HomeEnergyUI::GridForecastSnapshotManager::SnapshotManagerType_optional __swiftcall GridForecastSnapshotManager.SnapshotManagerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20D975788();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t GridForecastSnapshotManager.SnapshotManagerType.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 1801678701;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572616853707061;
  }
}

uint64_t GridForecastSnapshotManager.__allocating_init(type:location:locationName:locationUUID:)(unsigned __int8 *a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  GridForecastSnapshotManager.init(type:location:locationName:locationUUID:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t sub_20D82DBBC(uint64_t a1, unsigned __int8 a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v16 = a2;
  v9 = sub_20D972698();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = type metadata accessor for GridForecastSnapshotManager();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  result = GridForecastSnapshotManager.init(type:location:locationName:locationUUID:)(&v16, 0, 0, 0, v8);
  *a3 = v13;
  return result;
}

void (*sub_20D82DD8C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D82DCD8();
  return sub_20D82DEC4;
}

uint64_t sub_20D82DF64(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationNotificationsSnapshot;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_20D82DFC0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D82DED0();
  return sub_20D82E0F8;
}

uint64_t sub_20D82E164(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {

    return sub_20D84B418();
  }

  return result;
}

uint64_t sub_20D82E1BC@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v5 = *a1;
  swift_beginAccess();
  return sub_20D84BC18(v2 + v5, a2, type metadata accessor for GridForecastSnapshot);
}

uint64_t type metadata accessor for GridForecastSnapshotManager()
{
  result = qword_281127140;
  if (!qword_281127140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D82E304(uint64_t a1)
{
  swift_getKeyPath();
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972848();

  return sub_20D84BADC(a1, type metadata accessor for GridForecastSnapshot);
}

uint64_t sub_20D82E400(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(*(type metadata accessor for GridForecastSnapshot(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D84BC18(a2, v8, type metadata accessor for GridForecastSnapshot);
  v9 = *a3;
  swift_beginAccess();
  sub_20D84E034(v8, a1 + v9);
  swift_endAccess();
  sub_20D84B418();
  return sub_20D84BADC(v8, type metadata accessor for GridForecastSnapshot);
}

void (*sub_20D82E4EC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D82E104();
  return sub_20D82E624;
}

uint64_t sub_20D82E6A4@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v5 = *a1;
  result = swift_beginAccess();
  *a2 = *(v2 + v5);
  return result;
}

uint64_t sub_20D82E788(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972848();
}

uint64_t sub_20D82E844(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedNotificationsSnapshot;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_20D82E8A0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  *v4 = v1;
  swift_getKeyPath();
  sub_20D972878();

  v4[7] = sub_20D82E630();
  return sub_20D82E9D8;
}

uint64_t sub_20D82E9E4()
{
  swift_getKeyPath();
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  return *(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot);
}

uint64_t sub_20D82EA8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  *a2 = *(v3 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot);
  return result;
}

uint64_t sub_20D82EB3C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972848();
  }

  return result;
}

uint64_t GridForecastSnapshotManager.__allocating_init(location:locationName:locationUUID:)(void *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17[-v10];
  v18 = 1;
  sub_20D7EB7E8(a4, &v17[-v10], &qword_27C8389F8, &qword_20D978460);
  v12 = type metadata accessor for GridForecastSnapshotManager();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  GridForecastSnapshotManager.init(type:location:locationName:locationUUID:)(&v18, a1, a2, a3, v11);
  sub_20D7E3944(a4, &qword_27C8389F8, &qword_20D978460);
  return v15;
}

uint64_t GridForecastSnapshotManager.init(type:location:locationName:locationUUID:)(unsigned __int8 *a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v88 = a4;
  v89 = a5;
  v83 = a3;
  v87 = a2;
  v8 = 0xE900000000000064;
  v85 = *v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v84 = &v82 - v11;
  v12 = type metadata accessor for GridForecastSnapshotType(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = type metadata accessor for GridForecastSnapshot(0);
  v16 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  *v15 = 0;
  swift_storeEnumTagMultiPayload();
  sub_20D7E1874(v15, v18);
  sub_20D84BADC(v15, type metadata accessor for GridForecastSnapshotType);
  sub_20D84E098(v18, v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot, type metadata accessor for GridForecastSnapshot);
  *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationNotificationsSnapshot) = 2;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
  *v15 = sub_20D972F28();
  v21 = sub_20D972698();
  v15[1] = 0;
  v15[2] = 0;
  (*(*(v21 - 8) + 56))(v15 + v20, 1, 1, v21);
  swift_storeEnumTagMultiPayload();
  sub_20D7E1874(v15, v18);
  sub_20D84BADC(v15, type metadata accessor for GridForecastSnapshotType);
  sub_20D84E098(v18, v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot, type metadata accessor for GridForecastSnapshot);
  *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedNotificationsSnapshot) = 2;
  *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot) = 0;
  *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_cachedLocationIsAuthorized) = 2;
  sub_20D972888();
  *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__type) = v19;
  if (v19)
  {
    if (v19 == 1)
    {
      v8 = 0x800000020D981530;
      v22 = 0xD000000000000010;
    }

    else
    {
      v8 = 0xE400000000000000;
      v22 = 1801678701;
    }
  }

  else
  {
    v22 = 0x6572616853707061;
  }

  v23 = (v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log);
  *v23 = v22;
  v23[1] = v8;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v24 = sub_20D9734F8();
  __swift_project_value_buffer(v24, qword_28112AC00);

  v25 = sub_20D9734D8();
  v26 = sub_20D975478();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v90 = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D9840F0, &v90);
    *(v27 + 12) = 2080;
    v30 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log);
    v29 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8);

    v31 = sub_20D7F4DC8(v30, v29, &v90);

    *(v27 + 14) = v31;
    _os_log_impl(&dword_20D7C9000, v25, v26, "GridForecastSnapshotManager:%s(%s): Initializing GFSM", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v28, -1, -1);
    MEMORY[0x20F324260](v27, -1, -1);
  }

  v32 = v86;
  if (!v19)
  {

    v34 = v87;
    goto LABEL_16;
  }

  if (v19 == 1)
  {
    v33 = sub_20D9757C8();

    v34 = v87;
    if ((v33 & 1) == 0)
    {
      v35 = v88;
      if (!v87)
      {
LABEL_22:

        v51 = sub_20D9734D8();
        v52 = sub_20D975478();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v90 = v54;
          *v53 = 136315394;
          *(v53 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D9840F0, &v90);
          *(v53 + 12) = 2080;
          v55 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log);
          v56 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8);

          v57 = sub_20D7F4DC8(v55, v56, &v90);

          *(v53 + 14) = v57;
          _os_log_impl(&dword_20D7C9000, v51, v52, "GridForecastSnapshotManager:%s(%s): checking for location auth & starting location snapshots", v53, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F324260](v54, -1, -1);
          MEMORY[0x20F324260](v53, -1, -1);
        }

        v59 = v84;
        v58 = v85;
        v60 = sub_20D975318();
        (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
        sub_20D9752E8();
        swift_retain_n();
        v61 = sub_20D9752D8();
        v62 = swift_allocObject();
        v63 = MEMORY[0x277D85700];
        v62[2] = v61;
        v62[3] = v63;
        v62[4] = v6;
        v62[5] = sub_20D84BB3C;
        v62[6] = v6;
        v62[7] = v58;
        sub_20D82D02C(0, 0, v59, &unk_20D9791F8, v62);

        v64 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
        v65 = sub_20D975078();
        v66 = [v64 initWithSuiteName_];

        if (v66 && (v67 = sub_20D975078(), v68 = [v66 BOOLForKey_], v66, v67, (v68 & 1) != 0))
        {

          v69 = sub_20D9734D8();
          v70 = sub_20D975478();

          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v90 = v72;
            *v71 = 136315394;
            *(v71 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D9840F0, &v90);
            *(v71 + 12) = 2080;
            v73 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log);
            v74 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8);

            v75 = sub_20D7F4DC8(v73, v74, &v90);

            *(v71 + 14) = v75;
            _os_log_impl(&dword_20D7C9000, v69, v70, "%s(%s): starting fake notification toggles", v71, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x20F324260](v72, -1, -1);
            MEMORY[0x20F324260](v71, -1, -1);
          }

          sub_20D830170();
          sub_20D7E3944(v89, &qword_27C8389F8, &qword_20D978460);
        }

        else
        {
          sub_20D7E3944(v89, &qword_27C8389F8, &qword_20D978460);
        }

        return v6;
      }

LABEL_19:

      v43 = v34;
      v44 = sub_20D9734D8();
      v45 = sub_20D975478();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v90 = v47;
        *v46 = 136315394;
        *(v46 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D9840F0, &v90);
        *(v46 + 12) = 2080;
        v48 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log);
        v49 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8);

        v50 = sub_20D7F4DC8(v48, v49, &v90);

        *(v46 + 14) = v50;
        _os_log_impl(&dword_20D7C9000, v44, v45, "GridForecastSnapshotManager:%s(%s): location provided at init, starting fixed snapshots", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v47, -1, -1);
        v35 = v88;
        MEMORY[0x20F324260](v46, -1, -1);
      }

      sub_20D830D0C(v43, v83, v35, v89);
      goto LABEL_22;
    }

LABEL_16:

    v36 = sub_20D9734D8();
    v37 = sub_20D975478();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v90 = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_20D7F4DC8(0xD00000000000002ELL, 0x800000020D9840F0, &v90);
      *(v38 + 12) = 2080;
      v40 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log);
      v41 = *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8);

      v42 = sub_20D7F4DC8(v40, v41, &v90);

      *(v38 + 14) = v42;
      _os_log_impl(&dword_20D7C9000, v36, v37, "GridForecastSnapshotManager:%s(%s): start observing notifications...", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v39, -1, -1);
      MEMORY[0x20F324260](v38, -1, -1);
    }

    sub_20D82FBC8();
    v35 = v88;
    if (!v34)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (qword_27C838388 != -1)
  {
    swift_once();
  }

  v76 = __swift_project_value_buffer(v32, qword_27C840BD0);
  sub_20D84BC18(v76, v18, type metadata accessor for GridForecastSnapshot);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v82 - 2) = v6;
  *(&v82 - 1) = v18;
  v90 = v6;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972848();

  sub_20D84BADC(v18, type metadata accessor for GridForecastSnapshot);
  if (qword_27C838390 != -1)
  {
    swift_once();
  }

  v78 = __swift_project_value_buffer(v32, qword_27C840BE8);
  sub_20D84BC18(v78, v18, type metadata accessor for GridForecastSnapshot);
  v79 = swift_getKeyPath();
  MEMORY[0x28223BE20](v79);
  *(&v82 - 2) = v6;
  *(&v82 - 1) = v18;
  v90 = v6;
  sub_20D972848();

  sub_20D84BADC(v18, type metadata accessor for GridForecastSnapshot);
  v80 = swift_getKeyPath();
  MEMORY[0x28223BE20](v80);
  *(&v82 - 2) = v6;
  *(&v82 - 8) = 0;
  v90 = v6;
  sub_20D972848();

  sub_20D7E3944(v89, &qword_27C8389F8, &qword_20D978460);
  return v6;
}

void sub_20D82FBC8()
{
  v1 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v2 = sub_20D9734F8();
  __swift_project_value_buffer(v2, qword_28112AC00);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D9845C0, &v20);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_20D7F4DC8(*(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v20);
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s): registering for currentlocation notifications", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v6, -1, -1);
    MEMORY[0x20F324260](v5, -1, -1);
  }

  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  sub_20D972EF8();
  v9 = sub_20D975078();

  v24 = sub_20D84D3C8;
  v25 = v0;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_20D82D950;
  v23 = &block_descriptor_119;
  v10 = _Block_copy(&v20);

  v11 = [v8 addObserverForName:v9 object:0 queue:0 usingBlock:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();

  v12 = sub_20D9734D8();
  v13 = sub_20D975478();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_20D7F4DC8(0xD00000000000001ALL, 0x800000020D9845C0, &v20);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_20D7F4DC8(*(v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v20);
    _os_log_impl(&dword_20D7C9000, v12, v13, "%s(%s): registering for Energy Windows Refreshed notifications", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v15, -1, -1);
    MEMORY[0x20F324260](v14, -1, -1);
  }

  v16 = [v7 defaultCenter];
  sub_20D972EE8();
  v17 = sub_20D975078();

  v24 = sub_20D84D3E8;
  v25 = v1;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_20D82D950;
  v23 = &block_descriptor_122;
  v18 = _Block_copy(&v20);

  v19 = [v16 addObserverForName:v17 object:0 queue:0 usingBlock:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_20D83004C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_20D975318();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_20D9752E8();

  v7 = sub_20D9752D8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_20D82D02C(0, 0, v5, &unk_20D9794C8, v8);
}

void sub_20D830170()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  if (sub_20D972ED8())
  {
    v6 = sub_20D975318();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_20D9752E8();

    v7 = sub_20D9752D8();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v1;
    sub_20D82D02C(0, 0, v5, &unk_20D979498, v8);
  }

  else
  {
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v10 = sub_20D9734F8();
    __swift_project_value_buffer(v10, qword_28112AC00);

    v15 = sub_20D9734D8();
    v11 = sub_20D975458();

    if (os_log_type_enabled(v15, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D984600, &v16);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_20D7F4DC8(*(v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v16);
      _os_log_impl(&dword_20D7C9000, v15, v11, "%s(%s): is only available on Internal builds", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v13, -1, -1);
      MEMORY[0x20F324260](v12, -1, -1);
    }

    else
    {
      v14 = v15;
    }
  }
}

uint64_t sub_20D830424(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for GridForecastSnapshot(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v55 = v1;
  sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v8 = v1 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  swift_beginAccess();
  sub_20D84BC18(v8, v7, type metadata accessor for GridForecastSnapshot);
  v9 = sub_20D7E0238();
  sub_20D84BADC(v7, type metadata accessor for GridForecastSnapshot);
  v10 = &qword_281127000;
  if (!v9)
  {
    goto LABEL_14;
  }

  if (sub_20D972F68())
  {
LABEL_13:

LABEL_14:
    v30 = 1;
    goto LABEL_15;
  }

  [a1 distanceFromLocation_];
  v12 = v11;
  if (v11 >= 100.0)
  {
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v24 = sub_20D9734F8();
    __swift_project_value_buffer(v24, qword_28112AC00);

    v25 = sub_20D9734D8();
    v26 = sub_20D975478();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v54 = v28;
      *v27 = 136315650;
      *(v27 + 4) = sub_20D7F4DC8(0xD000000000000023, 0x800000020D984590, &v54);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_20D7F4DC8(*(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v54);
      *(v27 + 22) = 2048;
      *(v27 + 24) = v12;
      _os_log_impl(&dword_20D7C9000, v25, v26, "%s(%s): new fixed snapshot location has changed %fm, which is greater than 100m.", v27, 0x20u);
      swift_arrayDestroy();
      v29 = v28;
      v10 = &qword_281127000;
      MEMORY[0x20F324260](v29, -1, -1);
      MEMORY[0x20F324260](v27, -1, -1);
    }

    goto LABEL_13;
  }

  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v13 = sub_20D9734F8();
  __swift_project_value_buffer(v13, qword_28112AC00);

  v14 = v9;
  v15 = sub_20D9734D8();
  v16 = sub_20D975478();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v52 = v15;
    v18 = v17;
    v19 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = v53;
    *v18 = 136315907;
    *(v18 + 4) = sub_20D7F4DC8(0xD000000000000023, 0x800000020D984590, &v54);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_20D7F4DC8(*(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v54);
    *(v18 + 22) = 2048;
    *(v18 + 24) = v12;
    *(v18 + 32) = 2113;
    *(v18 + 34) = v14;
    *v19 = v9;
    v20 = v14;
    v21 = v16;
    v22 = v52;
    _os_log_impl(&dword_20D7C9000, v52, v21, "%s(%s): new fixed snapshot location has changed %fm from %{private}@, which is less than 100m.", v18, 0x2Au);
    sub_20D7E3944(v19, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v19, -1, -1);
    v23 = v53;
    swift_arrayDestroy();
    MEMORY[0x20F324260](v23, -1, -1);
    MEMORY[0x20F324260](v18, -1, -1);
  }

  else
  {
  }

  v30 = 0;
  v10 = &qword_281127000;
LABEL_15:
  swift_getKeyPath();
  v54 = v2;
  sub_20D972858();

  v31 = (v8 + *(v4 + 24));
  v33 = *v31;
  v32 = v31[1];
  v34 = v33 & 0xFFFFFFFFFFFFLL;
  if ((v32 & 0x2000000000000000) != 0)
  {
    v35 = HIBYTE(v32) & 0xF;
  }

  else
  {
    v35 = v34;
  }

  if (!v35 || (swift_getKeyPath(), v54 = v2, sub_20D972858(), , v36 = (v8 + *(v4 + 24)), *v36 == 11565) && v36[1] == 0xE200000000000000 || (sub_20D9757C8() & 1) != 0)
  {
    if (v10[32] != -1)
    {
      swift_once();
    }

    v37 = sub_20D9734F8();
    __swift_project_value_buffer(v37, qword_28112AC00);

    v38 = sub_20D9734D8();
    v39 = sub_20D975478();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54 = v41;
      *v40 = 136315394;
      *(v40 + 4) = sub_20D7F4DC8(0xD000000000000023, 0x800000020D984590, &v54);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_20D7F4DC8(*(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v54);
      _os_log_impl(&dword_20D7C9000, v38, v39, "%s(%s): current fixed snapshot has invalid location.", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v41, -1, -1);
      MEMORY[0x20F324260](v40, -1, -1);
    }

    v30 = 1;
  }

  swift_getKeyPath();
  v54 = v2;
  sub_20D972858();

  v42 = *(v8 + *(v4 + 36));
  if (v42 != 12)
  {
    if (v10[32] != -1)
    {
      swift_once();
    }

    v43 = sub_20D9734F8();
    __swift_project_value_buffer(v43, qword_28112AC00);

    v44 = sub_20D9734D8();
    v45 = sub_20D975478();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54 = v48;
      *v46 = 136315650;
      *(v46 + 4) = sub_20D7F4DC8(0xD000000000000023, 0x800000020D984590, &v54);
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_20D7F4DC8(*(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v2 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v54);
      *(v46 + 22) = 2112;
      sub_20D84D14C();
      swift_allocError();
      *v49 = v42;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 24) = v50;
      *v47 = v50;
      _os_log_impl(&dword_20D7C9000, v44, v45, "%s(%s): has an error: %@", v46, 0x20u);
      sub_20D7E3944(v47, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v47, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v48, -1, -1);
      MEMORY[0x20F324260](v46, -1, -1);
    }

    return 1;
  }

  return v30;
}

void sub_20D830D0C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v97 = a3;
  v98 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C839F30, &qword_20D978400);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v84 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v84 - v13;
  v14 = sub_20D9729D8();
  v96 = *(v14 - 8);
  v15 = *(v96 + 64);
  MEMORY[0x28223BE20](v14);
  v94 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for GridForecastSnapshotType(0);
  v17 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v19 = (&v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = type metadata accessor for GridForecastSnapshot(0);
  v20 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F8, &qword_20D978460);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v84 - v28;
  v99 = v4;
  if (sub_20D830424(a1))
  {
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v90 = v10;
    v91 = v14;
    v30 = sub_20D9734F8();
    v31 = __swift_project_value_buffer(v30, qword_28112AC00);
    sub_20D7EB7E8(a4, v29, &qword_27C8389F8, &qword_20D978460);
    v32 = v97;

    v33 = v99;

    v34 = a1;
    v89 = v31;
    v35 = v34;
    v36 = sub_20D9734D8();
    v37 = sub_20D975478();

    v88 = v37;
    if (os_log_type_enabled(v36, v37))
    {
      v85 = v36;
      v87 = a4;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v100 = v39;
      *v38 = 136316162;
      *(v38 + 4) = sub_20D7F4DC8(0xD000000000000031, 0x800000020D984120, &v100);
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_20D7F4DC8(*(v33 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v33 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v100);
      *(v38 + 22) = 2080;
      v86 = v35;
      v40 = sub_20D972F48();
      v42 = sub_20D7F4DC8(v40, v41, &v100);

      *(v38 + 24) = v42;
      *(v38 + 32) = 2080;
      if (v32)
      {
        v43 = v98;
      }

      else
      {
        v43 = 0x3E6C696E3CLL;
      }

      if (v32)
      {
        v44 = v32;
      }

      else
      {
        v44 = 0xE500000000000000;
      }

      v45 = sub_20D7F4DC8(v43, v44, &v100);

      *(v38 + 34) = v45;
      *(v38 + 42) = 2080;
      sub_20D7EB7E8(v29, v27, &qword_27C8389F8, &qword_20D978460);
      v46 = sub_20D972698();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v27, 1, v46) == 1)
      {
        sub_20D7E3944(v27, &qword_27C8389F8, &qword_20D978460);
        v48 = 0xE500000000000000;
        v49 = 0x3E6C696E3CLL;
      }

      else
      {
        v49 = MEMORY[0x20F320810]();
        v48 = v56;
        (*(v47 + 8))(v27, v46);
      }

      sub_20D7E3944(v29, &qword_27C8389F8, &qword_20D978460);
      v57 = sub_20D7F4DC8(v49, v48, &v100);

      *(v38 + 44) = v57;
      v58 = v85;
      _os_log_impl(&dword_20D7C9000, v85, v88, "%s(%s): clearing current fixed snapshot & setting new fixed snapshot w/: %s, named: %s & %s", v38, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v39, -1, -1);
      MEMORY[0x20F324260](v38, -1, -1);

      v32 = v97;
      v35 = v86;
      a4 = v87;
    }

    else
    {

      sub_20D7E3944(v29, &qword_27C8389F8, &qword_20D978460);
    }

    v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    v60 = v98;
    *v19 = v35;
    v19[1] = v60;
    v19[2] = v32;
    sub_20D7EB7E8(a4, v19 + v59, &qword_27C8389F8, &qword_20D978460);
    swift_storeEnumTagMultiPayload();
    v98 = v35;

    v61 = v94;
    static EnergyWindows.mockNoCleanEnergyWindows()(v94);
    if (sub_20D972F68())
    {
      v62 = 5;
    }

    else
    {
      v62 = 1;
    }

    sub_20D84BC18(v19, v22, type metadata accessor for GridForecastSnapshotType);
    v97 = v19;
    v63 = v22;
    v64 = v93;
    v65 = v96;
    v66 = *(v96 + 16);
    v67 = v91;
    v66(v63 + *(v93 + 20), v61, v91);
    v68 = (v63 + v64[6]);
    *v68 = 0;
    v68[1] = 0xE000000000000000;
    v69 = (v63 + v64[7]);
    *v69 = 0;
    v69[1] = 0xE000000000000000;
    *(v63 + v64[9]) = v62;
    v70 = v95;
    v66(v95, v61, v67);
    (*(v65 + 56))(v70, 0, 1, v67);
    v71 = sub_20D87934C(v70);
    sub_20D7E3944(v70, &qword_27C838A00, &qword_20D976750);
    v100 = v71;
    v72 = sub_20D8797EC(&v100);

    (*(v65 + 8))(v61, v67);
    sub_20D84BADC(v97, type metadata accessor for GridForecastSnapshotType);
    *(v63 + v64[8]) = v72;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v74 = v99;
    *(&v84 - 2) = v99;
    *(&v84 - 1) = v63;
    v100 = v74;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972848();

    sub_20D84BADC(v63, type metadata accessor for GridForecastSnapshot);
    if (sub_20D972F68())
    {

      v75 = sub_20D9734D8();
      v76 = sub_20D975458();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v100 = v78;
        *v77 = 136315394;
        *(v77 + 4) = sub_20D7F4DC8(0xD000000000000031, 0x800000020D984120, &v100);
        *(v77 + 12) = 2080;
        *(v77 + 14) = sub_20D7F4DC8(*(v74 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v74 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v100);
        _os_log_impl(&dword_20D7C9000, v75, v76, "%s(%s): failing with invalid location.", v77, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F324260](v78, -1, -1);
        MEMORY[0x20F324260](v77, -1, -1);
      }
    }

    else
    {
      v79 = sub_20D975318();
      v80 = v90;
      (*(*(v79 - 8) + 56))(v90, 1, 1, v79);
      sub_20D9752E8();

      v81 = sub_20D9752D8();
      v82 = swift_allocObject();
      v83 = MEMORY[0x277D85700];
      v82[2] = v81;
      v82[3] = v83;
      v82[4] = v74;
      sub_20D82D02C(0, 0, v80, &unk_20D979210, v82);
    }
  }

  else
  {
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v50 = sub_20D9734F8();
    __swift_project_value_buffer(v50, qword_28112AC00);
    v51 = v99;

    v98 = sub_20D9734D8();
    v52 = sub_20D975478();

    if (os_log_type_enabled(v98, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v100 = v54;
      *v53 = 136315394;
      *(v53 + 4) = sub_20D7F4DC8(0xD000000000000031, 0x800000020D984120, &v100);
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_20D7F4DC8(*(v51 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v51 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v100);
      _os_log_impl(&dword_20D7C9000, v98, v52, "%s(%s): skipping reset - fixed snapshot will not be changed.", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v54, -1, -1);
      MEMORY[0x20F324260](v53, -1, -1);
    }

    else
    {
      v55 = v98;
    }
  }
}

uint64_t sub_20D8318C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_20D9752E8();
  v4[3] = sub_20D9752D8();
  v6 = sub_20D975298();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_20D831960, v6, v5);
}

uint64_t sub_20D831960()
{
  v12 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_20D9734F8();
  v0[6] = __swift_project_value_buffer(v2, qword_28112AC00);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD000000000000031, 0x800000020D984120, &v11);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v11);
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s): Starting fixed snapshot renewal", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_20D831B5C;
  v9 = v0[2];

  return sub_20D831DFC();
}

uint64_t sub_20D831B5C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_20D831C7C, v4, v3);
}

uint64_t sub_20D831C7C()
{
  v12 = v0;
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_20D7F4DC8(0xD000000000000031, 0x800000020D984120, &v11);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_20D7F4DC8(*(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v11);
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s(%s): Finished fixed snapshot renewal", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v8, -1, -1);
    MEMORY[0x20F324260](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_20D831DFC()
{
  v1[16] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750) - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v3 = sub_20D9729D8();
  v1[18] = v3;
  v4 = *(v3 - 8);
  v1[19] = v4;
  v5 = *(v4 + 64) + 15;
  v1[20] = swift_task_alloc();
  v6 = *(*(type metadata accessor for GridForecastSnapshotType(0) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v7 = type metadata accessor for GridForecastSnapshot(0);
  v1[23] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  sub_20D9752E8();
  v1[27] = sub_20D9752D8();
  v10 = sub_20D975298();
  v1[28] = v10;
  v1[29] = v9;

  return MEMORY[0x2822009F8](sub_20D831FA8, v10, v9);
}

uint64_t sub_20D831FA8()
{
  v57 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_20D9734F8();
  v0[30] = __swift_project_value_buffer(v2, qword_28112AC00);

  v3 = sub_20D9734D8();
  v4 = sub_20D975478();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v56[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, v56);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v56);
    _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s): starting fixed snapshots", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v7, -1, -1);
    MEMORY[0x20F324260](v6, -1, -1);
  }

  v8 = v0[26];
  v9 = v0[16];
  swift_getKeyPath();
  v0[31] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  v0[5] = v9;
  v0[32] = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  v10 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  v0[33] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot;
  v11 = v9 + v10;
  swift_beginAccess();
  sub_20D84BC18(v11, v8, type metadata accessor for GridForecastSnapshot);
  v12 = sub_20D7E0238();
  v0[34] = v12;
  sub_20D84BADC(v8, type metadata accessor for GridForecastSnapshot);
  if (!v12)
  {
    goto LABEL_8;
  }

  if (sub_20D972F68())
  {

LABEL_8:
    v50 = v0[25];
    v54 = v0[24];
    v55 = v0[27];
    v47 = v0[23];
    v14 = v0[20];
    v13 = v0[21];
    v51 = v0[19];
    v52 = v0[18];
    v15 = v0[16];
    v53 = v0[17];
    swift_getKeyPath();
    v0[6] = v15;
    sub_20D972858();

    sub_20D84BC18(v11, v13, type metadata accessor for GridForecastSnapshotType);
    static EnergyWindows.mockNoCleanEnergyWindows()(v14);
    swift_getKeyPath();
    v0[7] = v15;
    sub_20D972858();

    v16 = (v11 + v47[6]);
    v48 = v16[1];
    v49 = *v16;
    swift_getKeyPath();
    v0[8] = v15;

    sub_20D972858();

    v17 = (v11 + v47[7]);
    v18 = v17[1];
    v46 = *v17;
    swift_getKeyPath();
    v0[9] = v15;

    sub_20D972858();

    if (*(v11 + v47[9]) == 12)
    {
      v19 = 4;
    }

    else
    {
      v19 = *(v11 + v47[9]);
    }

    sub_20D84BC18(v13, v50, type metadata accessor for GridForecastSnapshotType);
    v20 = *(v51 + 16);
    v20(v50 + v47[5], v14, v52);
    v21 = (v50 + v47[6]);
    *v21 = v49;
    v21[1] = v48;
    v22 = (v50 + v47[7]);
    *v22 = v46;
    v22[1] = v18;
    *(v50 + v47[9]) = v19;
    v20(v53, v14, v52);
    (*(v51 + 56))(v53, 0, 1, v52);
    v23 = sub_20D87934C(v53);
    sub_20D7E3944(v53, &qword_27C838A00, &qword_20D976750);
    v56[0] = v23;
    v24 = sub_20D8797EC(v56);

    (*(v51 + 8))(v14, v52);
    sub_20D84BADC(v13, type metadata accessor for GridForecastSnapshotType);
    *(v50 + v47[8]) = v24;
    sub_20D84BC18(v50, v54, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    v25 = swift_task_alloc();
    *(v25 + 16) = v15;
    *(v25 + 24) = v54;
    v0[10] = v15;
    sub_20D972848();

    sub_20D84BADC(v54, type metadata accessor for GridForecastSnapshot);

    v26 = sub_20D9734D8();
    v27 = sub_20D975458();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[25];
    if (v28)
    {
      v30 = v0[16];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v56[0] = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, v56);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_20D7F4DC8(*(v30 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v30 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v56);
      _os_log_impl(&dword_20D7C9000, v26, v27, "%s(%s): failing with invalid location.", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v32, -1, -1);
      MEMORY[0x20F324260](v31, -1, -1);
    }

    sub_20D84BADC(v29, type metadata accessor for GridForecastSnapshot);
    v34 = v0[25];
    v33 = v0[26];
    v35 = v0[24];
    v37 = v0[21];
    v36 = v0[22];
    v38 = v0[20];
    v39 = v0[17];

    v40 = v0[1];

    return v40();
  }

  v42 = v0[22];
  v43 = v0[16];
  swift_getKeyPath();
  v0[11] = v43;
  sub_20D972858();

  sub_20D84BC18(v11, v42, type metadata accessor for GridForecastSnapshotType);
  LOBYTE(v56[0]) = 0;
  sub_20D835560(v42, v56, 0, 0, 0, 0);
  sub_20D84BADC(v42, type metadata accessor for GridForecastSnapshotType);
  v44 = swift_task_alloc();
  v0[35] = v44;
  *v44 = v0;
  v44[1] = sub_20D832854;
  v45 = v0[16];

  return sub_20D8382CC(v12, 6584390, 0xE300000000000000);
}

uint64_t sub_20D832854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *v5;
  v8 = *(*v5 + 280);
  v9 = *v5;
  v7[36] = a1;
  v7[37] = a2;
  v7[38] = a3;
  v7[39] = a4;
  v7[40] = v4;

  v10 = v6[29];
  v11 = v6[28];
  if (v4)
  {
    v12 = sub_20D8332B0;
  }

  else
  {
    v12 = sub_20D8329A0;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_20D8329A0()
{
  v50 = v0;
  v1 = v0[38];
  v2 = v0[39];
  v3 = sub_20D972958();
  v4 = v0[37];
  if (v3)
  {
    v5 = v0[36];
    v7 = v0[33];
    v6 = v0[34];
    v8 = v0[31];
    v9 = v0[32];
    v10 = v0[22];
    v11 = v0[16];
    swift_getKeyPath();
    v0[14] = v11;
    sub_20D972858();

    sub_20D84BC18(v11 + v7, v10, type metadata accessor for GridForecastSnapshotType);
    v49 = 1;

    sub_20D835560(v10, &v49, 0, 0, v5, v4);

    sub_20D84BADC(v10, type metadata accessor for GridForecastSnapshotType);
    v12 = swift_task_alloc();
    v0[41] = v12;
    *v12 = v0;
    v12[1] = sub_20D832E04;
    v13 = v0[16];

    return sub_20D839CBC(v6, 6584390, 0xE300000000000000);
  }

  else
  {
    v15 = v0[39];
    v16 = v0[30];
    v17 = v0[27];
    v18 = v0[16];

    v19 = sub_20D9734D8();
    v20 = sub_20D975478();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[39];
      v45 = v0[38];
      v23 = v0[36];
      v22 = v0[37];
      v24 = v0[16];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v48 = v26;
      *v25 = 136315906;
      *(v25 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, &v48);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_20D7F4DC8(*(v24 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v24 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v48);
      *(v25 + 22) = 2080;

      v27 = sub_20D7F4DC8(v23, v22, &v48);

      *(v25 + 24) = v27;
      *(v25 + 32) = 2080;

      v28 = sub_20D7F4DC8(v45, v21, &v48);

      *(v25 + 34) = v28;
      _os_log_impl(&dword_20D7C9000, v19, v20, "\t...%s(%s): %s/%s UNSUPPORTED REGION", v25, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v26, -1, -1);
      MEMORY[0x20F324260](v25, -1, -1);
    }

    v29 = v0[39];
    v31 = v0[36];
    v30 = v0[37];
    v32 = v0[33];
    v46 = v0[34];
    v33 = v0[31];
    v34 = v0[32];
    v35 = v0[22];
    v36 = v0[16];
    swift_getKeyPath();
    v0[13] = v36;
    sub_20D972858();

    sub_20D84BC18(v36 + v32, v35, type metadata accessor for GridForecastSnapshotType);

    v47 = 6;
    sub_20D835560(v35, &v47, 0, 0, v31, v30);

    sub_20D84BADC(v35, type metadata accessor for GridForecastSnapshotType);
    v38 = v0[25];
    v37 = v0[26];
    v39 = v0[24];
    v41 = v0[21];
    v40 = v0[22];
    v42 = v0[20];
    v43 = v0[17];

    v44 = v0[1];

    return v44();
  }
}

uint64_t sub_20D832E04(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 328);
  v7 = *v3;
  v5[42] = a1;
  v5[43] = a2;
  v5[44] = v2;

  v8 = v4[29];
  v9 = v4[28];
  if (v2)
  {
    v10 = sub_20D8336EC;
  }

  else
  {
    v10 = sub_20D832F4C;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_20D832F4C()
{
  v17 = v0;
  v1 = v0[43];
  v13 = v0[39];
  v2 = v0[37];
  v14 = v0[36];
  v15 = v0[42];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[31];
  v6 = v0[22];
  v7 = v0[16];
  swift_getKeyPath();
  v0[15] = v7;

  sub_20D972858();

  sub_20D84BC18(v7 + v3, v6, type metadata accessor for GridForecastSnapshotType);

  v16 = 2;
  sub_20D835560(v6, &v16, v15, v1, v14, v2);

  sub_20D84BADC(v6, type metadata accessor for GridForecastSnapshotType);
  v8 = swift_task_alloc();
  v0[45] = v8;
  *v8 = v0;
  v8[1] = sub_20D8330D4;
  v10 = v0[42];
  v9 = v0[43];
  v11 = v0[16];

  return GridForecastSnapshotManager.updateRelevantSnapshotsFor(_:updateFromCurrentLocation:)(v10, v9, 0);
}

uint64_t sub_20D8330D4()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v9 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = v2[28];
    v5 = v2[29];
    v6 = sub_20D833B3C;
  }

  else
  {
    v7 = v2[43];

    v4 = v2[28];
    v5 = v2[29];
    v6 = sub_20D8331F0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D8331F0()
{
  v1 = v0[34];
  v2 = v0[27];

  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v9 = v0[17];

  v10 = v0[1];

  return v10();
}

uint64_t sub_20D8332B0()
{
  v39 = v0;

  v1 = *(v0 + 320);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 128);

  v5 = v1;
  v6 = sub_20D9734D8();
  v7 = sub_20D975458();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 128);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38 = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, &v38);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20D7F4DC8(*(v8 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v8 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v38);
    *(v9 + 22) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    *v10 = v13;
    _os_log_impl(&dword_20D7C9000, v6, v7, "%s(%s): ERROR: %@", v9, 0x20u);
    sub_20D7E3944(v10, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v11, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  *(v0 + 96) = v1;
  v14 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  if (swift_dynamicCast())
  {
    v15 = *(v0 + 128);
    v16 = *(v0 + 376);
  }

  else
  {
    v17 = *(v0 + 240);
    v18 = *(v0 + 128);

    v19 = v1;
    v20 = sub_20D9734D8();
    v21 = sub_20D975458();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 128);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v23 = 136315650;
      *(v23 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, &v38);
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_20D7F4DC8(*(v22 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v22 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v38);
      *(v23 + 22) = 2112;
      v26 = v1;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 24) = v27;
      *v24 = v27;
      _os_log_impl(&dword_20D7C9000, v20, v21, "%s(%s): UNEXPECTED ISSUE: %@", v23, 0x20u);
      sub_20D7E3944(v24, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v24, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v25, -1, -1);
      MEMORY[0x20F324260](v23, -1, -1);
    }

    v28 = *(v0 + 128);
    v16 = 11;
  }

  LOBYTE(v38) = v16;
  sub_20D83CC04(&v38, 0, 0xE000000000000000);

  v30 = *(v0 + 200);
  v29 = *(v0 + 208);
  v31 = *(v0 + 192);
  v33 = *(v0 + 168);
  v32 = *(v0 + 176);
  v34 = *(v0 + 160);
  v35 = *(v0 + 136);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_20D8336EC()
{
  v42 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v3 = *(v0 + 272);

  v4 = *(v0 + 352);
  v5 = *(v0 + 240);
  v6 = *(v0 + 216);
  v7 = *(v0 + 128);

  v8 = v4;
  v9 = sub_20D9734D8();
  v10 = sub_20D975458();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 128);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v41 = v14;
    *v12 = 136315650;
    *(v12 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, &v41);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20D7F4DC8(*(v11 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v11 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v41);
    *(v12 + 22) = 2112;
    v15 = v4;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v16;
    *v13 = v16;
    _os_log_impl(&dword_20D7C9000, v9, v10, "%s(%s): ERROR: %@", v12, 0x20u);
    sub_20D7E3944(v13, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v14, -1, -1);
    MEMORY[0x20F324260](v12, -1, -1);
  }

  *(v0 + 96) = v4;
  v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  if (swift_dynamicCast())
  {
    v18 = *(v0 + 128);
    v19 = *(v0 + 376);
  }

  else
  {
    v20 = *(v0 + 240);
    v21 = *(v0 + 128);

    v22 = v4;
    v23 = sub_20D9734D8();
    v24 = sub_20D975458();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 128);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v26 = 136315650;
      *(v26 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, &v41);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_20D7F4DC8(*(v25 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v25 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v41);
      *(v26 + 22) = 2112;
      v29 = v4;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 24) = v30;
      *v27 = v30;
      _os_log_impl(&dword_20D7C9000, v23, v24, "%s(%s): UNEXPECTED ISSUE: %@", v26, 0x20u);
      sub_20D7E3944(v27, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v27, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v28, -1, -1);
      MEMORY[0x20F324260](v26, -1, -1);
    }

    v31 = *(v0 + 128);
    v19 = 11;
  }

  LOBYTE(v41) = v19;
  sub_20D83CC04(&v41, 0, 0xE000000000000000);

  v33 = *(v0 + 200);
  v32 = *(v0 + 208);
  v34 = *(v0 + 192);
  v36 = *(v0 + 168);
  v35 = *(v0 + 176);
  v37 = *(v0 + 160);
  v38 = *(v0 + 136);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_20D833B3C()
{
  v41 = v0;

  v1 = *(v0 + 368);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 128);

  v7 = v1;
  v8 = sub_20D9734D8();
  v9 = sub_20D975458();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 128);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v40 = v13;
    *v11 = 136315650;
    *(v11 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, &v40);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_20D7F4DC8(*(v10 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v10 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v40);
    *(v11 + 22) = 2112;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v15;
    *v12 = v15;
    _os_log_impl(&dword_20D7C9000, v8, v9, "%s(%s): ERROR: %@", v11, 0x20u);
    sub_20D7E3944(v12, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v13, -1, -1);
    MEMORY[0x20F324260](v11, -1, -1);
  }

  *(v0 + 96) = v1;
  v16 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  if (swift_dynamicCast())
  {
    v17 = *(v0 + 128);
    v18 = *(v0 + 376);
  }

  else
  {
    v19 = *(v0 + 240);
    v20 = *(v0 + 128);

    v21 = v1;
    v22 = sub_20D9734D8();
    v23 = sub_20D975458();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 128);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v27;
      *v25 = 136315650;
      *(v25 + 4) = sub_20D7F4DC8(0xD00000000000001CLL, 0x800000020D984500, &v40);
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_20D7F4DC8(*(v24 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v24 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v40);
      *(v25 + 22) = 2112;
      v28 = v1;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v29;
      *v26 = v29;
      _os_log_impl(&dword_20D7C9000, v22, v23, "%s(%s): UNEXPECTED ISSUE: %@", v25, 0x20u);
      sub_20D7E3944(v26, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v26, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v27, -1, -1);
      MEMORY[0x20F324260](v25, -1, -1);
    }

    v30 = *(v0 + 128);
    v18 = 11;
  }

  LOBYTE(v40) = v18;
  sub_20D83CC04(&v40, v3, v2);

  v32 = *(v0 + 200);
  v31 = *(v0 + 208);
  v33 = *(v0 + 192);
  v35 = *(v0 + 168);
  v34 = *(v0 + 176);
  v36 = *(v0 + 160);
  v37 = *(v0 + 136);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t GridForecastSnapshotManager.deinit()
{
  sub_20D84BADC(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot, type metadata accessor for GridForecastSnapshot);
  sub_20D84BADC(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot, type metadata accessor for GridForecastSnapshot);
  v1 = *(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8);

  v2 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  v3 = sub_20D972898();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t GridForecastSnapshotManager.__deallocating_deinit()
{
  sub_20D84BADC(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot, type metadata accessor for GridForecastSnapshot);
  sub_20D84BADC(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__fixedSnapshot, type metadata accessor for GridForecastSnapshot);
  v1 = *(v0 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8);

  v2 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  v3 = sub_20D972898();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_20D834120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = *(*(type metadata accessor for GridForecastSnapshotType(0) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v6 = *(*(type metadata accessor for GridForecastSnapshot(0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  sub_20D9752E8();
  v4[16] = sub_20D9752D8();
  v8 = sub_20D975298();
  v4[17] = v8;
  v4[18] = v7;

  return MEMORY[0x2822009F8](sub_20D834210, v8, v7);
}

uint64_t sub_20D834210()
{
  v29 = v0;
  v1 = *(v0[13] + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_cachedLocationIsAuthorized);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v13 = v0[16];

    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v14 = v0[13];
    v15 = sub_20D9734F8();
    __swift_project_value_buffer(v15, qword_28112AC00);

    v16 = sub_20D9734D8();
    v17 = sub_20D975458();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[13];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, &v28);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_20D7F4DC8(*(v18 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v18 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v28);
      _os_log_impl(&dword_20D7C9000, v16, v17, "%s(%s): Location NOT authorized", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v20, -1, -1);
      MEMORY[0x20F324260](v19, -1, -1);
    }

    v22 = v0[13];
    v21 = v0[14];
    swift_getKeyPath();
    v0[8] = v22;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972858();

    v23 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    sub_20D84BC18(v22 + v23, v21, type metadata accessor for GridForecastSnapshotType);
    LOBYTE(v28) = 3;
    sub_20D835560(v21, &v28, 0, 0, 0, 0);
    sub_20D84BADC(v21, type metadata accessor for GridForecastSnapshotType);
    v25 = v0[14];
    v24 = v0[15];

    v26 = v0[1];

    return v26();
  }

  else
  {
    if (qword_281127100 != -1)
    {
      swift_once();
      v27 = v0[13];
    }

    v2 = sub_20D9734F8();
    v0[19] = __swift_project_value_buffer(v2, qword_28112AC00);

    v3 = sub_20D9734D8();
    v4 = sub_20D975478();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[13];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v28 = v7;
      *v6 = 136315650;
      *(v6 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, &v28);
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_20D7F4DC8(*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v28);
      *(v6 + 22) = 2080;
      swift_getKeyPath();
      v0[12] = v5;
      sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
      sub_20D972858();

      if (*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot))
      {
        v8 = 0x7420747372696628;
      }

      else
      {
        v8 = 0x676F7270206E6928;
      }

      if (*(v5 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot))
      {
        v9 = 0xEC00000029656D69;
      }

      else
      {
        v9 = 0xED00002973736572;
      }

      v10 = sub_20D7F4DC8(v8, v9, &v28);

      *(v6 + 24) = v10;
      _os_log_impl(&dword_20D7C9000, v3, v4, "%s(%s): getting loc from daemon...%s", v6, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v7, -1, -1);
      MEMORY[0x20F324260](v6, -1, -1);
    }

    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_20D8347A0;

    return sub_20D84D5B8();
  }
}

uint64_t sub_20D8347A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = a1;

  v4 = *(v2 + 144);
  v5 = *(v2 + 136);

  return MEMORY[0x2822009F8](sub_20D8348C8, v5, v4);
}

uint64_t sub_20D8348C8()
{
  v67 = v0;
  v1 = v0[21];
  v2 = v0[19];
  if (!v1)
  {
    v27 = v0[16];
    v28 = v0[13];

    v29 = sub_20D9734D8();
    v30 = sub_20D975458();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[13];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v66[0] = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, v66);
      *(v32 + 12) = 2080;
      *(v32 + 14) = sub_20D7F4DC8(*(v31 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v31 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v66);
      _os_log_impl(&dword_20D7C9000, v29, v30, "%s(%s): Could not retrieve Current Location!", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v33, -1, -1);
      MEMORY[0x20F324260](v32, -1, -1);
    }

    goto LABEL_11;
  }

  v3 = v0[13];

  v4 = v1;
  v5 = sub_20D9734D8();
  v6 = sub_20D975478();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[21];
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v66[0] = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, v66);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_20D7F4DC8(*(v8 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v8 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v66);
    *(v9 + 22) = 2080;
    v11 = sub_20D972F48();
    v13 = sub_20D7F4DC8(v11, v12, v66);

    *(v9 + 24) = v13;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s(%s): daemon returned current loc: %s...", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v10, -1, -1);
    MEMORY[0x20F324260](v9, -1, -1);
  }

  v14 = v0[19];
  v15 = v0[13];

  v16 = v4;
  v17 = sub_20D9734D8();
  v18 = sub_20D975448();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v0[21];
    v20 = v0[13];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v66[0] = v23;
    *v21 = 136315650;
    *(v21 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, v66);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_20D7F4DC8(*(v20 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v20 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v66);
    *(v21 + 22) = 2112;
    *(v21 + 24) = v16;
    *v22 = v19;
    v24 = v16;
    _os_log_impl(&dword_20D7C9000, v17, v18, "\t...%s(%s): CL: %@", v21, 0x20u);
    sub_20D7E3944(v22, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v22, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v23, -1, -1);
    MEMORY[0x20F324260](v21, -1, -1);
  }

  v25 = v0[13];
  swift_getKeyPath();
  v0[22] = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager___observationRegistrar;
  v0[9] = v25;
  v0[23] = sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
  sub_20D972858();

  if (*(v25 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__notificationsAreUpdatingLocationSnapshot))
  {
    v26 = v0[16];

LABEL_11:
    v35 = v0[14];
    v34 = v0[15];

    v36 = v0[1];

    return v36();
  }

  v38 = v0[19];
  v39 = v0[13];
  swift_getKeyPath();
  v40 = swift_task_alloc();
  *(v40 + 16) = v39;
  *(v40 + 24) = 1;
  v0[10] = v39;
  sub_20D972848();

  v41 = v16;
  v42 = sub_20D9734D8();
  v43 = sub_20D975478();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = v0[21];
    v45 = v0[13];
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v66[0] = v47;
    *v46 = 136315650;
    *(v46 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, v66);
    *(v46 + 12) = 2080;
    *(v46 + 14) = sub_20D7F4DC8(*(v45 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v45 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v66);
    *(v46 + 22) = 2080;
    v48 = sub_20D972F48();
    v50 = sub_20D7F4DC8(v48, v49, v66);

    *(v46 + 24) = v50;
    _os_log_impl(&dword_20D7C9000, v42, v43, "%s(%s): INITIALIZED w/ %s Current Location...", v46, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v47, -1, -1);
    MEMORY[0x20F324260](v46, -1, -1);
  }

  v51 = v0[19];
  v52 = v0[13];

  v53 = v41;
  v54 = sub_20D9734D8();
  v55 = sub_20D975448();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = v0[21];
    v57 = v0[13];
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v66[0] = v60;
    *v58 = 136315650;
    *(v58 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, v66);
    *(v58 + 12) = 2080;
    *(v58 + 14) = sub_20D7F4DC8(*(v57 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v57 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v66);
    *(v58 + 22) = 2112;
    *(v58 + 24) = v53;
    *v59 = v56;
    v61 = v53;
    _os_log_impl(&dword_20D7C9000, v54, v55, "\t...%s(%s): CL: %@", v58, 0x20u);
    sub_20D7E3944(v59, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v59, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v60, -1, -1);
    MEMORY[0x20F324260](v58, -1, -1);
  }

  v62 = v53;
  v63 = swift_task_alloc();
  v0[24] = v63;
  *v63 = v0;
  v63[1] = sub_20D83519C;
  v64 = v0[21];
  v65 = v0[13];

  return sub_20D836348(v64);
}

uint64_t sub_20D83519C()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 168);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_20D8352DC, v5, v4);
}

uint64_t sub_20D8352DC()
{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[13];

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v7 = v0[23];
    v22 = v0[21];
    v8 = v0[15];
    v9 = v0[13];
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v10 = 136315650;
    *(v10 + 4) = sub_20D7F4DC8(0xD00000000000001FLL, 0x800000020D984670, &v23);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_20D7F4DC8(*(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v23);
    *(v10 + 22) = 2080;
    swift_getKeyPath();
    v0[11] = v9;
    sub_20D972858();

    v11 = OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager__locationSnapshot;
    swift_beginAccess();
    sub_20D84BC18(v9 + v11, v8, type metadata accessor for GridForecastSnapshot);
    v12 = GridForecastSnapshot.description.getter();
    v14 = v13;
    sub_20D84BADC(v8, type metadata accessor for GridForecastSnapshot);
    v15 = sub_20D7F4DC8(v12, v14, &v23);

    *(v10 + 24) = v15;
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s(%s): updated locationSnapshot: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v21, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  else
  {
    v16 = v0[21];
  }

  v18 = v0[14];
  v17 = v0[15];

  v19 = v0[1];

  return v19();
}

uint64_t sub_20D835560(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t a1))
{
  v119 = a2;
  v114 = a4;
  v115 = a6;
  v112 = a3;
  v113 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v104 - v9;
  v116 = sub_20D9729D8();
  v111 = *(v116 - 8);
  v11 = *(v111 + 64);
  v12 = MEMORY[0x28223BE20](v116);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v104 - v15;
  v17 = type metadata accessor for GridForecastSnapshotType(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v110 = (&v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v104 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v104 - v24;
  v26 = type metadata accessor for GridForecastSnapshot(0);
  v27 = *(*(v26 - 1) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v117 = &v104 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v104 - v34;
  MEMORY[0x28223BE20](v33);
  v118 = &v104 - v36;
  LODWORD(v119) = *v119;
  sub_20D84BC18(a1, v25, type metadata accessor for GridForecastSnapshotType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20D84BADC(v25, type metadata accessor for GridForecastSnapshotType);
    v68 = v23;
    v109 = v23;
    v110 = type metadata accessor for GridForecastSnapshotType;
    sub_20D84BC18(a1, v23, type metadata accessor for GridForecastSnapshotType);
    static EnergyWindows.mockNoCleanEnergyWindows()(v16);
    v69 = v112;
    if (!v114)
    {
      v69 = 0;
    }

    v112 = v69;
    v70 = 0xE000000000000000;
    if (v114)
    {
      v71 = v114;
    }

    else
    {
      v71 = 0xE000000000000000;
    }

    v107 = v71;
    v72 = v113;
    if (!v115)
    {
      v72 = 0;
    }

    v113 = v72;
    v73 = v111;
    if (v115)
    {
      v70 = v115;
    }

    v108 = v70;
    sub_20D84BC18(v68, v35, type metadata accessor for GridForecastSnapshotType);
    v74 = *(v73 + 16);
    v75 = v116;
    v74(&v35[v26[5]], v16, v116);
    v76 = &v35[v26[6]];
    v77 = v107;
    *v76 = v112;
    *(v76 + 1) = v77;
    v78 = &v35[v26[7]];
    v79 = v108;
    *v78 = v113;
    *(v78 + 1) = v79;
    v35[v26[9]] = v119;
    v74(v10, v16, v75);
    (*(v73 + 56))(v10, 0, 1, v75);

    v80 = sub_20D87934C(v10);
    sub_20D7E3944(v10, &qword_27C838A00, &qword_20D976750);
    v122[0] = v80;
    v81 = sub_20D8797EC(v122);

    (*(v73 + 8))(v16, v75);
    sub_20D84BADC(v109, v110);
    *&v35[v26[8]] = v81;
    v82 = v35;
    v55 = v118;
    sub_20D84E098(v82, v118, type metadata accessor for GridForecastSnapshot);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v83 = sub_20D9734F8();
    __swift_project_value_buffer(v83, qword_28112AC00);
    v84 = v120;

    v85 = sub_20D9734D8();
    v86 = sub_20D975448();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v122[0] = v88;
      *v87 = 136315650;
      *(v87 + 4) = sub_20D7F4DC8(0xD000000000000033, 0x800000020D984410, v122);
      *(v87 + 12) = 2080;
      *(v87 + 14) = sub_20D7F4DC8(*(v84 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v84 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v122);
      *(v87 + 22) = 2080;
      swift_beginAccess();
      v89 = GridForecastSnapshot.description.getter();
      v91 = sub_20D7F4DC8(v89, v90, v122);

      *(v87 + 24) = v91;
      _os_log_impl(&dword_20D7C9000, v85, v86, "%s(%s): CL: %s", v87, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v88, -1, -1);
      MEMORY[0x20F324260](v87, -1, -1);
    }

    swift_beginAccess();
    v92 = v117;
    sub_20D84BC18(v55, v117, type metadata accessor for GridForecastSnapshot);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v121 = v84;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972848();

    sub_20D84BADC(v92, type metadata accessor for GridForecastSnapshot);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v109 = v25;
    v38 = *(v25 + 2);

    v39 = a1;
    v40 = v110;
    v108 = type metadata accessor for GridForecastSnapshotType;
    sub_20D84BC18(v39, v110, type metadata accessor for GridForecastSnapshotType);
    static EnergyWindows.mockNoCleanEnergyWindows()(v14);
    v41 = v112;
    if (!v114)
    {
      v41 = 0;
    }

    v112 = v41;
    v42 = 0xE000000000000000;
    if (v114)
    {
      v43 = v114;
    }

    else
    {
      v43 = 0xE000000000000000;
    }

    v105 = v43;
    v44 = v113;
    if (!v115)
    {
      v44 = 0;
    }

    v113 = v44;
    if (v115)
    {
      v42 = v115;
    }

    v106 = v42;
    sub_20D84BC18(v40, v30, type metadata accessor for GridForecastSnapshotType);
    v45 = v111;
    v46 = *(v111 + 16);
    v47 = &v30[v26[5]];
    v107 = v14;
    v48 = v116;
    v46(v47, v14, v116);
    v49 = &v30[v26[6]];
    v50 = v105;
    *v49 = v112;
    *(v49 + 1) = v50;
    v51 = &v30[v26[7]];
    v52 = v106;
    *v51 = v113;
    *(v51 + 1) = v52;
    v30[v26[9]] = v119;
    v46(v10, v14, v48);
    (*(v45 + 56))(v10, 0, 1, v48);

    v53 = sub_20D87934C(v10);
    sub_20D7E3944(v10, &qword_27C838A00, &qword_20D976750);
    v122[0] = v53;
    v54 = sub_20D8797EC(v122);

    (*(v45 + 8))(v107, v48);
    sub_20D84BADC(v110, v108);
    *&v30[v26[8]] = v54;
    v55 = v118;
    sub_20D84E098(v30, v118, type metadata accessor for GridForecastSnapshot);
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v56 = sub_20D9734F8();
    __swift_project_value_buffer(v56, qword_28112AC00);
    v57 = v120;

    v58 = sub_20D9734D8();
    v59 = sub_20D975448();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v122[0] = v61;
      *v60 = 136315650;
      *(v60 + 4) = sub_20D7F4DC8(0xD000000000000033, 0x800000020D984410, v122);
      *(v60 + 12) = 2080;
      *(v60 + 14) = sub_20D7F4DC8(*(v57 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v57 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v122);
      *(v60 + 22) = 2080;
      swift_beginAccess();
      v62 = GridForecastSnapshot.description.getter();
      v64 = sub_20D7F4DC8(v62, v63, v122);

      *(v60 + 24) = v64;
      _os_log_impl(&dword_20D7C9000, v58, v59, "%s(%s): F: %s", v60, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v61, -1, -1);
      MEMORY[0x20F324260](v60, -1, -1);
    }

    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8389F0, &unk_20D976740) + 64);
    swift_beginAccess();
    v66 = v117;
    sub_20D84BC18(v55, v117, type metadata accessor for GridForecastSnapshot);
    v67 = swift_getKeyPath();
    MEMORY[0x28223BE20](v67);
    v121 = v57;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972848();

    sub_20D84BADC(v66, type metadata accessor for GridForecastSnapshot);
    sub_20D7E3944(&v109[v65], &qword_27C8389F8, &qword_20D978460);
LABEL_31:
    v94 = type metadata accessor for GridForecastSnapshot;
    v95 = v55;
    return sub_20D84BADC(v95, v94);
  }

  v96 = v25;
  if ((sub_20D972ED8() & 1) == 0)
  {
    v97 = v120;
    if (qword_281127100 != -1)
    {
      swift_once();
    }

    v98 = sub_20D9734F8();
    __swift_project_value_buffer(v98, qword_28112AC00);

    v99 = sub_20D9734D8();
    v100 = sub_20D975458();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v122[0] = v102;
      *v101 = 136315394;
      *(v101 + 4) = sub_20D7F4DC8(0xD000000000000033, 0x800000020D984410, v122);
      *(v101 + 12) = 2080;
      *(v101 + 14) = sub_20D7F4DC8(*(v97 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v97 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v122);
      _os_log_impl(&dword_20D7C9000, v99, v100, "%s(%s): This method is only for location & fixed snapshots", v101, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v102, -1, -1);
      MEMORY[0x20F324260](v101, -1, -1);
    }

    v94 = type metadata accessor for GridForecastSnapshotType;
    v95 = v96;
    return sub_20D84BADC(v95, v94);
  }

  result = sub_20D975738();
  __break(1u);
  return result;
}

uint64_t sub_20D836348(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C838A00, &qword_20D976750) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = sub_20D9729D8();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = type metadata accessor for GridForecastSnapshot(0);
  v2[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for GridForecastSnapshotType(0);
  v2[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  sub_20D9752E8();
  v2[15] = sub_20D9752D8();
  v12 = sub_20D975298();
  v2[16] = v12;
  v2[17] = v11;

  return MEMORY[0x2822009F8](sub_20D8364E0, v12, v11);
}

uint64_t sub_20D8364E0()
{
  v59 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_20D9734F8();
  v0[18] = __swift_project_value_buffer(v3, qword_28112AC00);
  v4 = v1;

  v5 = sub_20D9734D8();
  v6 = sub_20D975478();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[5];
    v56 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v58[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, v58);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20D7F4DC8(*(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v58);
    *(v8 + 22) = 2080;
    v10 = sub_20D972F48();
    v12 = sub_20D7F4DC8(v10, v11, v58);

    *(v8 + 24) = v12;
    _os_log_impl(&dword_20D7C9000, v5, v6, "%s(%s): updating location snapshot with new location (%s)...", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v13 = v0[5];

  v14 = v4;
  v15 = sub_20D9734D8();
  v16 = sub_20D975448();

  if (os_log_type_enabled(v15, v16))
  {
    v18 = v0[4];
    v17 = v0[5];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v58[0] = v20;
    *v19 = 136315650;
    *(v19 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, v58);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_20D7F4DC8(*(v17 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v17 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v58);
    *(v19 + 22) = 2080;
    if (v18)
    {
      v21 = [v14 description];
      v22 = sub_20D975098();
      v24 = v23;
    }

    else
    {
      v24 = 0xE500000000000000;
      v22 = 0x3E6C696E3CLL;
    }

    v25 = sub_20D7F4DC8(v22, v24, v58);

    *(v19 + 24) = v25;
    _os_log_impl(&dword_20D7C9000, v15, v16, "\t...%s(%s): new loc:%s...", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v20, -1, -1);
    MEMORY[0x20F324260](v19, -1, -1);
  }

  v26 = v0[4];
  if (v26)
  {
    v27 = v0[13];
    v28 = v0[14];
    v29 = v0[5];
    *v28 = v26;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v58[0]) = 0;
    v30 = v14;
    sub_20D835560(v28, v58, 0, 0, 0, 0);
    sub_20D84BADC(v28, type metadata accessor for GridForecastSnapshotType);
    v31 = swift_task_alloc();
    v0[19] = v31;
    *v31 = v0;
    v31[1] = sub_20D836BF8;
    v32 = v0[5];

    return sub_20D8382CC(v30, 6516556, 0xE300000000000000);
  }

  else
  {
    v35 = v0[14];
    v34 = v0[15];
    v36 = v0[12];
    v37 = v0[13];
    v38 = v0[10];
    v40 = v0[8];
    v39 = v0[9];
    v42 = v0[6];
    v41 = v0[7];
    v55 = v0[11];
    v57 = v0[5];

    *v35 = 0;
    swift_storeEnumTagMultiPayload();
    static EnergyWindows.mockNoCleanEnergyWindows()(v39);
    sub_20D84BC18(v35, v36, type metadata accessor for GridForecastSnapshotType);
    v43 = *(v40 + 16);
    v43(v36 + v38[5], v39, v41);
    v44 = (v36 + v38[6]);
    *v44 = 11565;
    v44[1] = 0xE200000000000000;
    v45 = (v36 + v38[7]);
    *v45 = 11565;
    v45[1] = 0xE200000000000000;
    *(v36 + v38[9]) = 4;
    v43(v42, v39, v41);
    (*(v40 + 56))(v42, 0, 1, v41);
    v46 = sub_20D87934C(v42);
    sub_20D7E3944(v42, &qword_27C838A00, &qword_20D976750);
    v58[0] = v46;
    v47 = sub_20D8797EC(v58);

    (*(v40 + 8))(v39, v41);
    sub_20D84BADC(v35, type metadata accessor for GridForecastSnapshotType);
    *(v36 + v38[8]) = v47;
    sub_20D84BC18(v36, v55, type metadata accessor for GridForecastSnapshot);
    swift_getKeyPath();
    v48 = swift_task_alloc();
    *(v48 + 16) = v57;
    *(v48 + 24) = v55;
    v0[2] = v57;
    sub_20D84DFEC(&qword_281125EB0, type metadata accessor for GridForecastSnapshotManager);
    sub_20D972848();

    sub_20D84BADC(v36, type metadata accessor for GridForecastSnapshot);

    sub_20D84BADC(v55, type metadata accessor for GridForecastSnapshot);
    v49 = v0[14];
    v50 = v0[11];
    v51 = v0[12];
    v52 = v0[9];
    v53 = v0[6];

    v54 = v0[1];

    return v54();
  }
}

uint64_t sub_20D836BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v7 = *(*v5 + 152);
  v12 = *v5;
  *(v6 + 160) = a1;
  *(v6 + 168) = a2;
  *(v6 + 176) = a3;
  *(v6 + 184) = a4;
  *(v6 + 192) = v4;

  if (v4)
  {

    v8 = *(v6 + 128);
    v9 = *(v6 + 136);
    v10 = sub_20D837654;
  }

  else
  {
    v8 = *(v6 + 128);
    v9 = *(v6 + 136);
    v10 = sub_20D836D1C;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_20D836D1C()
{
  v45 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v3 = sub_20D972958();
  v4 = v0[5];
  if (v3)
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[13];
    v8 = v0[14];
    v9 = v0[4];
    *v8 = v9;
    swift_storeEnumTagMultiPayload();
    v44 = 1;
    v10 = v9;

    sub_20D835560(v8, &v44, 0, 0, v6, v5);

    sub_20D84BADC(v8, type metadata accessor for GridForecastSnapshotType);
    v11 = swift_task_alloc();
    v0[25] = v11;
    *v11 = v0;
    v11[1] = sub_20D8370F0;
    v12 = v0[5];

    return sub_20D839CBC(v10, 6516556, 0xE300000000000000);
  }

  else
  {
    v14 = v0[23];
    v15 = v0[21];
    v16 = v0[18];
    v17 = v0[15];

    v18 = sub_20D9734D8();
    v19 = sub_20D975478();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[23];
      v41 = v0[22];
      v22 = v0[20];
      v21 = v0[21];
      v23 = v0[5];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v43 = v25;
      *v24 = 136315906;
      *(v24 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v43);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_20D7F4DC8(*(v23 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v23 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v43);
      *(v24 + 22) = 2080;

      v26 = sub_20D7F4DC8(v22, v21, &v43);

      *(v24 + 24) = v26;
      *(v24 + 32) = 2080;

      v27 = sub_20D7F4DC8(v41, v20, &v43);

      *(v24 + 34) = v27;
      _os_log_impl(&dword_20D7C9000, v18, v19, "\t...%s(%s): %s/%s UNSUPPORTED REGION", v24, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v25, -1, -1);
      MEMORY[0x20F324260](v24, -1, -1);
    }

    v28 = v0[23];
    v30 = v0[20];
    v29 = v0[21];
    v31 = v0[13];
    v32 = v0[14];
    v34 = v0[4];
    v33 = v0[5];
    *v32 = v34;
    swift_storeEnumTagMultiPayload();

    v42 = 6;
    sub_20D835560(v32, &v42, 0, 0, v30, v29);

    sub_20D84BADC(v32, type metadata accessor for GridForecastSnapshotType);
    v35 = v0[14];
    v36 = v0[11];
    v37 = v0[12];
    v38 = v0[9];
    v39 = v0[6];

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_20D8370F0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 200);
  v13 = *v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[28] = v2;

  if (v2)
  {
    v6 = v4[23];
    v7 = v4[21];
    v8 = v4[4];

    v9 = v4[16];
    v10 = v4[17];
    v11 = sub_20D837A78;
  }

  else
  {
    v9 = v4[16];
    v10 = v4[17];
    v11 = sub_20D83722C;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_20D83722C()
{
  v15 = v0;
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[5];
  *v7 = v0[4];
  swift_storeEnumTagMultiPayload();

  v14 = 2;
  sub_20D835560(v7, &v14, v2, v1, v5, v4);

  sub_20D84BADC(v7, type metadata accessor for GridForecastSnapshotType);
  v9 = swift_task_alloc();
  v0[29] = v9;
  *v9 = v0;
  v9[1] = sub_20D837364;
  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[5];

  return GridForecastSnapshotManager.updateRelevantSnapshotsFor(_:updateFromCurrentLocation:)(v11, v10, 1);
}

uint64_t sub_20D837364()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v9 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_20D837E9C;
  }

  else
  {
    v7 = v2[27];

    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_20D837480;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_20D837480()
{
  v19 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[5];

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v18);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20D7F4DC8(*(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v7 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v18);
    _os_log_impl(&dword_20D7C9000, v4, v5, "\t...%s(%s): finished.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  else
  {
    v10 = v0[4];
  }

  v11 = v0[14];
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[9];
  v15 = v0[6];

  v16 = v0[1];

  return v16();
}

uint64_t sub_20D837654()
{
  v38 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);

  v6 = v1;
  v7 = sub_20D9734D8();
  v8 = sub_20D975458();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37 = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v37);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_20D7F4DC8(*(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v37);
    *(v10 + 22) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v14;
    *v11 = v14;
    _os_log_impl(&dword_20D7C9000, v7, v8, "%s(%s):ERROR: %@", v10, 0x20u);
    sub_20D7E3944(v11, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v12, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  *(v0 + 24) = v1;
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  if (swift_dynamicCast())
  {
    v16 = *(v0 + 40);
    v17 = *(v0 + 248);
  }

  else
  {
    v18 = *(v0 + 144);
    v19 = *(v0 + 40);

    v20 = v1;
    v21 = sub_20D9734D8();
    v22 = sub_20D975458();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 40);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v26;
      *v24 = 136315650;
      *(v24 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v37);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_20D7F4DC8(*(v23 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v23 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v37);
      *(v24 + 22) = 2112;
      v27 = v1;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 24) = v28;
      *v25 = v28;
      _os_log_impl(&dword_20D7C9000, v21, v22, "%s(%s): UNEXPECTED ISSUE: %@", v24, 0x20u);
      sub_20D7E3944(v25, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v25, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v26, -1, -1);
      MEMORY[0x20F324260](v24, -1, -1);
    }

    v29 = *(v0 + 40);
    v17 = 11;
  }

  LOBYTE(v37) = v17;
  sub_20D83CC04(&v37, 0, 0xE000000000000000);

  v30 = *(v0 + 112);
  v31 = *(v0 + 88);
  v32 = *(v0 + 96);
  v33 = *(v0 + 72);
  v34 = *(v0 + 48);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_20D837A78()
{
  v38 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);

  v6 = v1;
  v7 = sub_20D9734D8();
  v8 = sub_20D975458();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 40);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37 = v12;
    *v10 = 136315650;
    *(v10 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v37);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_20D7F4DC8(*(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v9 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v37);
    *(v10 + 22) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v14;
    *v11 = v14;
    _os_log_impl(&dword_20D7C9000, v7, v8, "%s(%s):ERROR: %@", v10, 0x20u);
    sub_20D7E3944(v11, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v12, -1, -1);
    MEMORY[0x20F324260](v10, -1, -1);
  }

  *(v0 + 24) = v1;
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  if (swift_dynamicCast())
  {
    v16 = *(v0 + 40);
    v17 = *(v0 + 248);
  }

  else
  {
    v18 = *(v0 + 144);
    v19 = *(v0 + 40);

    v20 = v1;
    v21 = sub_20D9734D8();
    v22 = sub_20D975458();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 40);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v26;
      *v24 = 136315650;
      *(v24 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v37);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_20D7F4DC8(*(v23 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v23 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v37);
      *(v24 + 22) = 2112;
      v27 = v1;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 24) = v28;
      *v25 = v28;
      _os_log_impl(&dword_20D7C9000, v21, v22, "%s(%s): UNEXPECTED ISSUE: %@", v24, 0x20u);
      sub_20D7E3944(v25, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v25, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v26, -1, -1);
      MEMORY[0x20F324260](v24, -1, -1);
    }

    v29 = *(v0 + 40);
    v17 = 11;
  }

  LOBYTE(v37) = v17;
  sub_20D83CC04(&v37, 0, 0xE000000000000000);

  v30 = *(v0 + 112);
  v31 = *(v0 + 88);
  v32 = *(v0 + 96);
  v33 = *(v0 + 72);
  v34 = *(v0 + 48);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_20D837E9C()
{
  v40 = v0;
  v1 = *(v0 + 240);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 144);
  v5 = *(v0 + 120);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);

  v8 = v1;
  v9 = sub_20D9734D8();
  v10 = sub_20D975458();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 40);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v12 = 136315650;
    *(v12 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v39);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_20D7F4DC8(*(v11 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v11 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v39);
    *(v12 + 22) = 2112;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v16;
    *v13 = v16;
    _os_log_impl(&dword_20D7C9000, v9, v10, "%s(%s):ERROR: %@", v12, 0x20u);
    sub_20D7E3944(v13, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v14, -1, -1);
    MEMORY[0x20F324260](v12, -1, -1);
  }

  *(v0 + 24) = v1;
  v17 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
  if (swift_dynamicCast())
  {
    v18 = *(v0 + 40);
    v19 = *(v0 + 248);
  }

  else
  {
    v20 = *(v0 + 144);
    v21 = *(v0 + 40);

    v22 = v1;
    v23 = sub_20D9734D8();
    v24 = sub_20D975458();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 40);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v26 = 136315650;
      *(v26 + 4) = sub_20D7F4DC8(0xD00000000000001ELL, 0x800000020D984340, &v39);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_20D7F4DC8(*(v25 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v25 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), &v39);
      *(v26 + 22) = 2112;
      v29 = v1;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 24) = v30;
      *v27 = v30;
      _os_log_impl(&dword_20D7C9000, v23, v24, "%s(%s): UNEXPECTED ISSUE: %@", v26, 0x20u);
      sub_20D7E3944(v27, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v27, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v28, -1, -1);
      MEMORY[0x20F324260](v26, -1, -1);
    }

    v31 = *(v0 + 40);
    v19 = 11;
  }

  LOBYTE(v39) = v19;
  sub_20D83CC04(&v39, v3, v2);

  v32 = *(v0 + 112);
  v33 = *(v0 + 88);
  v34 = *(v0 + 96);
  v35 = *(v0 + 72);
  v36 = *(v0 + 48);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_20D8382CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  sub_20D9752E8();
  v4[23] = sub_20D9752D8();
  v6 = sub_20D975298();
  v4[24] = v6;
  v4[25] = v5;

  return MEMORY[0x2822009F8](sub_20D838368, v6, v5);
}

uint64_t sub_20D838368()
{
  v82 = v0;
  if (qword_281127100 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v1 = v0[22];
  v3 = sub_20D9734F8();
  v0[26] = __swift_project_value_buffer(v3, qword_28112AC00);

  v4 = sub_20D9734D8();
  v5 = sub_20D975478();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[22];
    v77 = v0[21];
    v7 = v0[20];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v81[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v81);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_20D7F4DC8(*(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v6 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v81);
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_20D7F4DC8(v7, v77, v81);
    _os_log_impl(&dword_20D7C9000, v4, v5, "%s(%s): for %s snapshot", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v9, -1, -1);
    MEMORY[0x20F324260](v8, -1, -1);
  }

  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[19];
  v74 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  v0[27] = v74;

  v13 = v12;
  v14 = sub_20D9734D8();
  v15 = sub_20D975478();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[21];
    v17 = v0[22];
    v18 = v0[20];
    v78 = v0[19];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v81[0] = v20;
    *v19 = 136315906;
    *(v19 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v81);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_20D7F4DC8(*(v17 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v17 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v81);
    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_20D7F4DC8(v18, v16, v81);
    *(v19 + 32) = 2080;
    v21 = sub_20D972F48();
    v23 = sub_20D7F4DC8(v21, v22, v81);

    *(v19 + 34) = v23;
    _os_log_impl(&dword_20D7C9000, v14, v15, "%s(%s)%s: attempting reverseGeocodeLocation (%s)...", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v20, -1, -1);
    MEMORY[0x20F324260](v19, -1, -1);
  }

  v76 = (v0 + 18);
  v79 = (v0 + 10);
  v25 = v0[21];
  v24 = v0[22];
  v26 = v0[19];

  v27 = v26;
  v28 = sub_20D9734D8();
  v29 = sub_20D975448();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = v0[22];
    v73 = v0[21];
    v31 = v0[19];
    v32 = v0[20];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v81[0] = v35;
    *v33 = 136315906;
    *(v33 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v81);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_20D7F4DC8(*(v30 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v30 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v81);
    *(v33 + 22) = 2080;
    *(v33 + 24) = sub_20D7F4DC8(v32, v73, v81);
    *(v33 + 32) = 2112;
    *(v33 + 34) = v31;
    *v34 = v31;
    v36 = v31;
    _os_log_impl(&dword_20D7C9000, v28, v29, "\t...%s(%s)%s: %@", v33, 0x2Au);
    sub_20D7E3944(v34, &unk_27C839E80, &qword_20D979610);
    MEMORY[0x20F324260](v34, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F324260](v35, -1, -1);
    MEMORY[0x20F324260](v33, -1, -1);
  }

  v37 = v0[19];
  if (sub_20D972F68())
  {
    v39 = v0[22];
    v38 = v0[23];
    v40 = v0[21];

    v41 = sub_20D9734D8();
    v42 = sub_20D975458();

    if (os_log_type_enabled(v41, v42))
    {
      v44 = v0[21];
      v43 = v0[22];
      v45 = v0[20];
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v81[0] = v47;
      *v46 = 136315650;
      *(v46 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v81);
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_20D7F4DC8(*(v43 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v43 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v81);
      *(v46 + 22) = 2080;
      *(v46 + 24) = sub_20D7F4DC8(v45, v44, v81);
      _os_log_impl(&dword_20D7C9000, v41, v42, "%s(%s)%s: UNEXPECTED ISSUE: location invalid", v46, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v47, -1, -1);
      MEMORY[0x20F324260](v46, -1, -1);
    }

    sub_20D84D14C();
    v48 = swift_allocError();
    *v49 = 4;
    swift_willThrow();

    v50 = v0[26];
    v52 = v0[21];
    v51 = v0[22];

    v53 = v48;
    v54 = sub_20D9734D8();
    v55 = sub_20D975458();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = v0[22];
      v80 = v0[21];
      v75 = v0[20];
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v81[0] = v59;
      *v57 = 136315906;
      *(v57 + 4) = sub_20D7F4DC8(0xD000000000000019, 0x800000020D9843F0, v81);
      *(v57 + 12) = 2080;
      *(v57 + 14) = sub_20D7F4DC8(*(v56 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log), *(v56 + OBJC_IVAR____TtC12HomeEnergyUI27GridForecastSnapshotManager_log + 8), v81);
      *(v57 + 22) = 2080;
      *(v57 + 24) = sub_20D7F4DC8(v75, v80, v81);
      *(v57 + 32) = 2112;
      v60 = v48;
      v61 = _swift_stdlib_bridgeErrorToNSError();
      *(v57 + 34) = v61;
      *v58 = v61;
      _os_log_impl(&dword_20D7C9000, v54, v55, "%s(%s)%s: can't reverseGeocodeLocation: %@", v57, 0x2Au);
      sub_20D7E3944(v58, &unk_27C839E80, &qword_20D979610);
      MEMORY[0x20F324260](v58, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F324260](v59, -1, -1);
      MEMORY[0x20F324260](v57, -1, -1);
    }

    *v79 = v48;
    v62 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839EC0, &qword_20D979410);
    type metadata accessor for CLError(0);
    if (swift_dynamicCast())
    {
      v63 = *v76;
      *v79 = *v76;
      sub_20D84DFEC(&qword_281124C90, type metadata accessor for CLError);
      sub_20D9720C8();
      if (*v76 == 2)
      {
        swift_allocError();
        *v64 = 7;
        swift_willThrow();

LABEL_25:
        v71 = v0[1];

        return v71();
      }
    }

    *v79 = v48;
    v67 = v48;
    if (swift_dynamicCast())
    {
      v68 = *v76;
      swift_allocError();
      *v69 = v68;
    }

    else
    {
      swift_allocError();
      *v70 = 7;
    }

    swift_willThrow();
    goto LABEL_25;
  }

  v65 = v0[19];
  v0[2] = v0;
  v0[7] = v76;
  v0[3] = sub_20D838E64;
  v66 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C839610, &qword_20D979430);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20D8436E8;
  v0[13] = &block_descriptor_1;
  v0[14] = v66;
  [v74 reverseGeocodeLocation:v65 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}