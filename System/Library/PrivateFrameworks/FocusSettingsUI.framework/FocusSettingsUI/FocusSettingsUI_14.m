uint64_t sub_24BA23E64@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for FocusStatusConfigurationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  result = sub_24BAA99FC();
  *a1 = v3;
  return result;
}

uint64_t sub_24BA23EE0(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for FocusStatusConfigurationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A0C();
  return sub_24BA27AC8(v1);
}

uint64_t sub_24BA23F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v5) = a4;
  v109 = a2;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FD0);
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v120 = &v101 - v9;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FD8);
  MEMORY[0x28223BE20](v119);
  v126 = &v101 - v10;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FE0);
  v11 = MEMORY[0x28223BE20](v125);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v122 = &v101 - v15;
  MEMORY[0x28223BE20](v14);
  v127 = &v101 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FE8);
  MEMORY[0x28223BE20](v110);
  v108 = &v101 - v17;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FF0);
  MEMORY[0x28223BE20](v112);
  v19 = &v101 - v18;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FF8);
  v20 = MEMORY[0x28223BE20](v113);
  v124 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v111 = &v101 - v23;
  MEMORY[0x28223BE20](v22);
  v130 = &v101 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F069000);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v107 = &v101 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067940);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v118 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v101 - v31;
  v117 = type metadata accessor for FocusStatusConfigurationView();
  v33 = *(v117 + 24);
  v131 = a1;
  v34 = (a1 + v33);
  v35 = *v34;
  v36 = *(v34 + 1);
  v114 = v35;
  LOBYTE(v137) = v35;
  v115 = v36;
  v138 = v36;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  v37 = 1;
  v129 = a5;
  v128 = v13;
  v132 = v32;
  if ((v133 & 1) == 0)
  {
    v103 = v25;
    v104 = a3;
    v105 = v5;
    v106 = v19;
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v99 = 0xE000000000000000;
    v137 = sub_24BAA7C2C();
    v138 = v38;
    sub_24B8F5E3C();

    v102 = sub_24BAA93CC();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    KeyPath = swift_getKeyPath();
    v5 = sub_24BAA927C();
    v46 = swift_getKeyPath();
    v47 = v42 & 1;
    LOBYTE(v137) = v42 & 1;
    LOBYTE(v133) = 1;
    v48 = swift_getKeyPath();

    v137 = v102;
    v138 = v40;
    LOBYTE(v139) = v47;
    v140 = v44;
    v141 = KeyPath;
    v142 = 0;
    v143 = 1;
    v144 = v46;
    v145 = v5;
    v146 = v48;
    v147 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F069010);
    sub_24B9D383C();
    v49 = v107;
    sub_24BAA9C4C();
    v32 = v132;
    v25 = v103;
    (*(v26 + 32))(v132, v49, v103);
    v37 = 0;
    v19 = v106;
    LOBYTE(v5) = v105;
    a3 = v104;
  }

  v50 = (*(v26 + 56))(v32, v37, 1, v25);
  MEMORY[0x28223BE20](v50);
  *(&v101 - 4) = v109;
  *(&v101 - 3) = a3;
  LOBYTE(v99) = v5 & 1;
  v51 = v131;
  sub_24BA24F0C(v131, v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F069070);
  sub_24B9D3B40();
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F0631B0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F0690B0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F0631C0);
  v55 = sub_24B8F2368();
  v137 = v54;
  v138 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = sub_24B8F23E4();
  v137 = v52;
  v138 = v53;
  v139 = OpaqueTypeConformance2;
  v140 = v57;
  swift_getOpaqueTypeConformance2();
  sub_24BAA9C4C();
  v58 = v114;
  LOBYTE(v137) = v114;
  v59 = v115;
  v138 = v115;
  sub_24BAA99FC();
  v60 = v133;
  v61 = swift_getKeyPath();
  v62 = swift_allocObject();
  *(v62 + 16) = (v60 & 1) == 0;
  v63 = &v19[*(v112 + 36)];
  *v63 = v61;
  v63[1] = sub_24B9027F8;
  v63[2] = v62;
  LOBYTE(v137) = v58;
  v138 = v59;
  sub_24BAA99FC();
  if (v133)
  {
    v64 = 1.0;
  }

  else
  {
    v64 = 0.55;
  }

  v65 = v111;
  sub_24B90294C(v19, v111, &qword_27F068FF0);
  *(v65 + *(v113 + 36)) = v64;
  v66 = sub_24B90294C(v65, v130, &qword_27F068FF8);
  MEMORY[0x28223BE20](v66);
  v99 = v51;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v99 = 0xE000000000000000;
  v137 = sub_24BAA7C2C();
  v138 = v67;
  sub_24B8F5E3C();
  v137 = sub_24BAA93CC();
  v138 = v68;
  LOBYTE(v139) = v69 & 1;
  v140 = v70;
  v99 = 0xE000000000000000;
  v133 = sub_24BAA7C2C();
  v134 = v71;
  v133 = sub_24BAA93CC();
  v134 = v72;
  v135 = v73 & 1;
  v136 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0690E0);
  v99 = sub_24BA2C1F4();
  v100 = MEMORY[0x277CE0BC8];
  v75 = v120;
  sub_24BAA9C2C();
  LOBYTE(v137) = v58;
  v138 = v59;
  sub_24BAA99FC();
  if (v133 == 1)
  {
    v76 = (v131 + *(v117 + 20));
    v77 = *v76;
    v78 = *(v76 + 1);
    LOBYTE(v137) = v77;
    v138 = v78;
    sub_24BAA99FC();
    v79 = v133 ^ 1;
  }

  else
  {
    v79 = 1;
  }

  v80 = v132;
  v81 = swift_getKeyPath();
  v82 = swift_allocObject();
  *(v82 + 16) = v79 & 1;
  v83 = v126;
  (*(v121 + 32))(v126, v75, v123);
  v84 = (v83 + *(v119 + 36));
  *v84 = v81;
  v84[1] = sub_24B90CF38;
  v84[2] = v82;
  LOBYTE(v137) = v58;
  v138 = v59;
  sub_24BAA99FC();
  if (v133 != 1 || (v85 = (v131 + *(v117 + 20)), v86 = *v85, v87 = *(v85 + 1), LOBYTE(v137) = v86, v138 = v87, sub_24BAA99FC(), v88 = 1.0, (v133 & 1) == 0))
  {
    v88 = 0.55;
  }

  v89 = v122;
  sub_24B90294C(v83, v122, &qword_27F068FD8);
  *(v89 + *(v125 + 36)) = v88;
  v90 = v89;
  v91 = v127;
  sub_24B90294C(v90, v127, &qword_27F068FE0);
  v92 = v118;
  sub_24B8F3208(v80, v118, &qword_27F067940);
  v93 = v130;
  v94 = v124;
  sub_24BA2C334(v130, v124);
  v95 = v128;
  sub_24B8F3208(v91, v128, &qword_27F068FE0);
  v96 = v129;
  sub_24B8F3208(v92, v129, &qword_27F067940);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069100);
  sub_24BA2C334(v94, v96 + *(v97 + 48));
  sub_24B8F3208(v95, v96 + *(v97 + 64), &qword_27F068FE0);
  sub_24B8F35E4(v91, &qword_27F068FE0);
  sub_24B8F35E4(v93, &qword_27F068FF8);
  sub_24B8F35E4(v132, &qword_27F067940);
  sub_24B8F35E4(v95, &qword_27F068FE0);
  sub_24B8F35E4(v94, &qword_27F068FF8);
  return sub_24B8F35E4(v92, &qword_27F067940);
}

uint64_t sub_24BA24D4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067960);
  MEMORY[0x28223BE20](v0);
  v2 = v7 - v1;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v7[0] = sub_24BAA7C2C();
  v7[1] = v3;
  sub_24B8F5E3C();

  sub_24BAA9AFC();
  KeyPath = swift_getKeyPath();
  v5 = &v2[*(v0 + 36)];
  *v5 = KeyPath;
  *(v5 + 1) = 2;
  v5[16] = 0;
  sub_24B9D3BFC();
  sub_24BAA94DC();
  return sub_24B8F35E4(v2, &qword_27F067960);
}

uint64_t sub_24BA24F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = a1;
  v34 = a2;
  v3 = sub_24BAA8E8C();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = (v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for FocusStatusConfigurationView();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0631B0);
  v33 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v28 = v27 - v9;
  sub_24BA25314(&v37);
  v10 = v37;
  v11 = v38;
  v12 = v39;
  v27[1] = v40;
  sub_24BA2C0B0(a1, v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FocusStatusConfigurationView);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_24BA2C118(v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for FocusStatusConfigurationView);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0631C0);
  v16 = sub_24B8F2368();
  sub_24BAA94CC();

  sub_24B900910(v10, v11, v12);

  v17 = (v27[0] + *(v6 + 40));
  v18 = *v17;
  v19 = *(v17 + 1);
  v35 = v18;
  v36 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A1C();
  v20 = sub_24BAA9A3C();
  v21 = v29;
  *v29 = v20;
  v23 = v31;
  v22 = v32;
  (*(v31 + 104))(v21, *MEMORY[0x277CDE248], v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0690B0);
  v37 = v15;
  v38 = v16;
  swift_getOpaqueTypeConformance2();
  sub_24B8F23E4();
  v24 = v30;
  v25 = v28;
  sub_24BAA948C();

  (*(v23 + 8))(v21, v22);
  return (*(v33 + 8))(v25, v24);
}

uint64_t sub_24BA25314@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  sub_24B8F5E3C();
  v1 = sub_24BAA93CC();
  v3 = v2;
  v5 = v4;
  sub_24BAA927C();
  v6 = sub_24BAA939C();
  v8 = v7;
  v10 = v9;

  sub_24B900910(v1, v3, v5 & 1);

  sub_24BAA989C();
  v11 = sub_24BAA933C();
  v13 = v12;
  LOBYTE(v1) = v14;

  sub_24B900910(v6, v8, v10 & 1);

  sub_24BAA8B0C();
  v15 = sub_24BAA93BC();
  v17 = v16;
  v19 = v18;
  v20 = sub_24BAA936C();
  v38 = v21;
  v39 = v20;
  v37 = v22;
  sub_24B900910(v15, v17, v19 & 1);

  sub_24B900910(v11, v13, v1 & 1);

  sub_24BAA7C2C();
  v23 = sub_24BAA93CC();
  v25 = v24;
  LOBYTE(v15) = v26;
  sub_24BAA974C();
  v27 = sub_24BAA933C();
  v29 = v28;
  LOBYTE(v11) = v30;

  sub_24B900910(v23, v25, v15 & 1);

  v31 = sub_24BAA936C();
  v33 = v32;
  LOBYTE(v15) = v34;
  v40 = v35;
  sub_24B900910(v27, v29, v11 & 1);

  sub_24B900910(v39, v38, v37 & 1);

  *a1 = v31;
  *(a1 + 8) = v33;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v40;
  return result;
}

uint64_t sub_24BA25674()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 userInterfaceIdiom];

  type metadata accessor for FocusStatusConfigurationView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  sub_24BAA9A0C();
}

double sub_24BA25768@<D0>(uint64_t a1@<X8>)
{
  sub_24BAA909C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F067988);
  sub_24B9D3EF4();
  sub_24BAA829C();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0690B0) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

uint64_t sub_24BA25840@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24BAA90BC();
  result = sub_24BAA828C();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_24BA25880()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0690F8);
  sub_24BA2C284();
  return sub_24BAA9C3C();
}

uint64_t sub_24BA258F0(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for FocusStatusConfigurationView() + 36));
  v2 = OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_globalConfigurationService;
  [*(v1 + OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_globalConfigurationService) modesCanImpactAvailability];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A0C();
  [*(v1 + v2) isCloudSyncActive];
  return sub_24BAA9A0C();
}

uint64_t sub_24BA259D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068F90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068F98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068FA0);
  sub_24B8F384C(&qword_27F068FA8, &qword_27F068F98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_24BAA84CC();
}

uint64_t sub_24BA25B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068F98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  sub_24BAA909C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FC0);
  sub_24B8F384C(&qword_27F068FC8, &qword_27F068FC0);
  sub_24BAA829C();
  v10[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FA0);
  sub_24B8F384C(&qword_27F068FA8, &qword_27F068F98);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068FB0);
  v8 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  v10[6] = v7;
  v10[7] = v8;
  swift_getOpaqueTypeConformance2();
  sub_24BAA96CC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24BA25DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24BAA8BCC();
  v3 = sub_24BAA90BC();
  result = sub_24BAA828C();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  return result;
}

uint64_t sub_24BA25E28(uint64_t a1)
{
  v2 = sub_24BAA8DCC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068FB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_24BAA8DBC();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068B00);
  sub_24B8F384C(&qword_27F063980, &qword_27F068B00);
  sub_24BAA833C();
  v7 = sub_24B8F384C(&qword_27F063978, &unk_27F068FB0);
  MEMORY[0x24C24EEC0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24BA26014(uint64_t a1)
{
  v2 = type metadata accessor for FocusStatusConfigurationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v9[0] = sub_24BAA7C2C();
  v9[1] = v5;
  sub_24BA2C0B0(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FocusStatusConfigurationView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_24BA2C118(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for FocusStatusConfigurationView);
  sub_24B8F5E3C();
  return sub_24BAA9A7C();
}

uint64_t sub_24BA261B8()
{
  type metadata accessor for FocusStatusConfigurationView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  sub_24BAA9A0C();
}

uint64_t sub_24BA26264(uint64_t a1)
{
  v2 = type metadata accessor for FocusStatusConfigurationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(a1 + *(MEMORY[0x28223BE20](v2 - 8) + 44));
  v6 = OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_cachedModes;
  if (*(v5 + OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_cachedModes))
  {
    v7 = *(v5 + OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_cachedModes);
  }

  else
  {
    sub_24BA27044();
    if (*(v5 + v6))
    {
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }
  }

  v11[1] = v7;
  swift_getKeyPath();
  sub_24BA2C0B0(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FocusStatusConfigurationView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_24BA2C118(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for FocusStatusConfigurationView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0639C0);
  sub_24B8F384C(&unk_27F069110, &qword_27F069108);
  sub_24BA2C048();
  sub_24B8F384C(&unk_27F069090, &qword_27F0639C0);
  return sub_24BAA9BFC();
}

uint64_t sub_24BA264AC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v27 = a3;
  v5 = type metadata accessor for FocusStatusConfigurationView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_24BA2C0B0(a2, v8, type metadata accessor for FocusStatusConfigurationView);
  sub_24BAAA1BC();
  v10 = v9;
  v11 = sub_24BAAA1AC();
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v11;
  *(v14 + 24) = v15;
  v16 = v15;
  sub_24BA2C118(v8, v14 + v12, type metadata accessor for FocusStatusConfigurationView);
  *(v14 + v13) = v10;
  sub_24BA2C0B0(v26, v8, type metadata accessor for FocusStatusConfigurationView);
  v17 = v10;
  v18 = sub_24BAAA1AC();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v16;
  sub_24BA2C118(v8, v19 + v12, type metadata accessor for FocusStatusConfigurationView);
  *(v19 + v13) = v17;
  sub_24BAA9B9C();
  v20 = [v17 name];
  v21 = sub_24BAAA01C();
  v23 = v22;

  v28 = v21;
  v29 = v23;
  sub_24B8F5E3C();
  return sub_24BAA9AFC();
}

void sub_24BA266F4(void *a1@<X3>, BOOL *a2@<X8>)
{
  type metadata accessor for FocusStatusConfigurationView();
  v4 = [a1 modeIdentifier];
  v5 = sub_24BA279EC();

  *a2 = v5;
}

void sub_24BA26764(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  type metadata accessor for FocusStatusConfigurationView();
  v7 = [a5 modeIdentifier];
  sub_24BA28390(v7, v6);
}

char *sub_24BA267E8(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_isListeningToModeConfigurationService] = 0;
  v2[OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_isListeningToGlobalConfigurationService] = 0;
  *&v2[OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_cachedModes] = 0;
  v5 = OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_cachedConfigurations;
  *&v2[v5] = sub_24BA2101C(MEMORY[0x277D84F90]);
  v6 = &v2[OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_clientIdentifier];
  *v6 = a1;
  v6[1] = a2;

  v7 = sub_24BAA9FDC();
  v8 = [objc_opt_self() serviceForClientIdentifier_];

  *&v2[OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_modeConfigurationService] = v8;
  v9 = sub_24BAA9FDC();

  v10 = [objc_opt_self() serviceForClientIdentifier_];

  *&v2[OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_globalConfigurationService] = v10;
  v19.receiver = v2;
  v19.super_class = type metadata accessor for FocusStatusSettingsManager();
  v11 = objc_msgSendSuper2(&v19, sel_init);
  v12 = *&v11[OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_modeConfigurationService];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18[4] = sub_24BA2C8DC;
  v18[5] = v13;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_24B97AFAC;
  v18[3] = &block_descriptor_112;
  v14 = _Block_copy(v18);
  v15 = v11;
  v16 = v12;

  [v16 addListener:v15 withCompletionHandler:v14];
  _Block_release(v14);

  return v15;
}

uint64_t sub_24BA26A10@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for FocusStatusConfigurationView();

  return sub_24BA23E64(a1);
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for FocusStatusConfigurationView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24BAA82DC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24BA26BEC(unsigned __int8 *a1)
{
  type metadata accessor for FocusStatusConfigurationView();

  return sub_24BA23EE0(a1);
}

uint64_t sub_24BA26C88()
{
  type metadata accessor for FocusStatusConfigurationView();

  return sub_24BA259D4();
}

unint64_t sub_24BA26CF8()
{
  result = qword_27F068EB8;
  if (!qword_27F068EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068E70);
    sub_24B8F384C(&qword_27F068EC0, &qword_27F068EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068EB8);
  }

  return result;
}

void sub_24BA26DB0(char a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v3 = sub_24BAA812C();
    __swift_project_value_buffer(v3, qword_27F077038);
    v4 = sub_24BAA810C();
    v5 = sub_24BAAA29C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24B8D3000, v4, v5, "Error listening to service", v6, 2u);
      MEMORY[0x24C251390](v6, -1, -1);
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_isListeningToModeConfigurationService] = a1 & 1;
  }
}

id sub_24BA26ED8()
{
  if (v0[OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_isListeningToModeConfigurationService] == 1)
  {
    [*&v0[OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_modeConfigurationService] removeListener_];
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for FocusStatusSettingsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24BA27044()
{
  v1 = v0;
  v62[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = 0;
  v4 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_modeConfigurationService);
  v5 = [v4 allModesReturningError_];
  v6 = sub_24B8F37E8(0, &unk_27F0634D0);
  sub_24BA2C048();
  v7 = sub_24BAAA20C();

  v56[1] = ObjectType;
  v57 = 0;
  v58 = v4;
  v59 = v1;
  if ((v7 & 0xC000000000000001) == 0)
  {
    v22 = *(v7 + 32);
    v23 = v22 & 0x3F;
    v11 = ((1 << v22) + 63) >> 6;
    v6 = 8 * v11;

    if (v23 <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

  v3 = MEMORY[0x277D84FA0];
  v61[0] = MEMORY[0x277D84FA0];

  sub_24BAAA4DC();
  v8 = sub_24BAAA56C();
  if (!v8)
  {
LABEL_20:

LABEL_37:
    v4 = v58;
    v1 = v59;
    v33 = v57;
    goto LABEL_38;
  }

  v4 = &selRef_candidateContacts;
  v1 = 1;
  while (1)
  {
    v62[0] = v8;
    swift_dynamicCast();
    v9 = v60;
    if (([v60 isPlaceholder] & 1) == 0)
    {
      break;
    }

LABEL_5:
    v8 = sub_24BAAA56C();
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  v10 = v3[2];
  if (v3[3] <= v10)
  {
    sub_24B8E6700(v10 + 1);
  }

  v3 = v61[0];
  v11 = v60;
  v12 = sub_24BAAA3BC();
  v13 = v61[0] + 56;
  v14 = -1 << *(v61[0] + 32);
  v15 = v12 & ~v14;
  v16 = v15 >> 6;
  if (((-1 << v15) & ~*(v61[0] + (v15 >> 6) + 7)) != 0)
  {
    v17 = __clz(__rbit64((-1 << v15) & ~*(v61[0] + (v15 >> 6) + 7))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_19:
    *&v13[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
    *(v3[6] + 8 * v17) = v9;
    ++v3[2];
    goto LABEL_5;
  }

  v18 = 0;
  v19 = (63 - v14) >> 6;
  while (++v16 != v19 || (v18 & 1) == 0)
  {
    v20 = v16 == v19;
    if (v16 == v19)
    {
      v16 = 0;
    }

    v18 |= v20;
    v21 = *&v13[8 * v16];
    if (v21 != -1)
    {
      v17 = __clz(__rbit64(~v21)) + (v16 << 6);
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_48:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_22:
    v56[0] = v56;
    MEMORY[0x28223BE20](v24);
    v3 = (v56 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v3, v6);
    v6 = 0;
    v1 = 0;
    v25 = 1 << *(v7 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v4 = v26 & *(v7 + 56);
    v27 = (v25 + 63) >> 6;
    while (v4)
    {
      v28 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
LABEL_32:
      v31 = v28 | (v1 << 6);
      if (([*(*(v7 + 48) + 8 * v31) isPlaceholder] & 1) == 0)
      {
        *(v3 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_36:
          v3 = sub_24BA29F70(v3, v11, v6, v7, &unk_27F068F70);
          goto LABEL_37;
        }
      }
    }

    v29 = v1;
    while (1)
    {
      v1 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v1 >= v27)
      {
        goto LABEL_36;
      }

      v30 = *(v7 + 56 + 8 * v1);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v4 = (v30 - 1) & v30;
        goto LABEL_32;
      }
    }
  }

  v55 = swift_slowAlloc();
  v33 = v3;
  v3 = sub_24BA2BAF0(v55, v11, v7, sub_24BA27798, 0);

  MEMORY[0x24C251390](v55, -1, -1);
LABEL_38:
  v61[0] = sub_24B99B408(v3);
  sub_24BA2A15C(v61);
  if (v33)
  {

    __break(1u);
  }

  else
  {

    *(v1 + OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_cachedModes) = v61[0];

    v61[0] = 0;
    v34 = [v4 modeConfigurationsReturningError_];
    v35 = v61[0];
    if (v34)
    {

      sub_24B8F37E8(0, &unk_27F0634C0);
      v36 = sub_24BAA9EEC();

      v37 = OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_cachedConfigurations;
      swift_beginAccess();
      *(v1 + v37) = v36;
    }

    else
    {
      v38 = v35;
      v39 = sub_24BAA7CCC();

      swift_willThrow();
      v61[0] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
      sub_24B8F37E8(0, &unk_27F063460);
      swift_dynamicCast();

      v40 = v60;
      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v41 = sub_24BAA812C();
      __swift_project_value_buffer(v41, qword_27F077038);
      v42 = v40;
      v43 = sub_24BAA810C();
      v44 = sub_24BAAA2AC();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v62[0] = v46;
        *v45 = 136446466;
        v47 = sub_24BAAA86C();
        v49 = sub_24B8E49D4(v47, v48, v62);

        *(v45 + 4) = v49;
        *(v45 + 12) = 2080;
        v50 = [v42 localizedDescription];
        v51 = sub_24BAAA01C();
        v53 = v52;

        v54 = sub_24B8E49D4(v51, v53, v62);

        *(v45 + 14) = v54;
        _os_log_impl(&dword_24B8D3000, v43, v44, "[%{public}s] Failed to retrieve mode configurations error: %s", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C251390](v46, -1, -1);
        MEMORY[0x24C251390](v45, -1, -1);
      }

      else
      {
      }
    }
  }
}

BOOL sub_24BA277D0(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 modeIdentifier];
  v5 = sub_24BAAA01C();
  v7 = v6;
  if (v5 == sub_24BAAA01C() && v7 == v8)
  {

    return 1;
  }

  v10 = sub_24BAAA78C();

  if (v10)
  {
    return 1;
  }

  v11 = [v3 modeIdentifier];
  v12 = sub_24BAAA01C();
  v14 = v13;
  if (v12 == sub_24BAAA01C() && v14 == v15)
  {

    return 0;
  }

  else
  {
    v17 = sub_24BAAA78C();

    result = 0;
    if ((v17 & 1) == 0)
    {
      v19 = [v2 name];
      sub_24BAAA01C();

      v20 = [v3 name];
      sub_24BAAA01C();

      sub_24B8F5E3C();
      v21 = sub_24BAAA43C();

      return v21 == -1;
    }
  }

  return result;
}

BOOL sub_24BA279EC()
{
  v1 = sub_24BAAA01C();
  v3 = v2;
  v4 = OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_cachedConfigurations;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (*(v5 + 16) && (, v6 = sub_24BA1575C(v1, v3), v8 = v7, , (v8 & 1) != 0))
  {
    v9 = *(*(v5 + 56) + 8 * v6);

    [v9 impactsAvailability];
    v10 = DNDResolvedImpactsAvailabilitySetting();

    return v10 == 2;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_24BA27AC8(int a1)
{
  v18 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_24BAA9E2C();
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_24BAA9E5C();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24BAA9E3C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24B8F37E8(0, &qword_27F0644F0);
  (*(v9 + 104))(v11, *MEMORY[0x277D851B8], v8);
  v12 = sub_24BAAA36C();
  (*(v9 + 8))(v11, v8);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v18;
  *(v14 + 32) = ObjectType;
  aBlock[4] = sub_24BA2BFE8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B97ACC4;
  aBlock[3] = &block_descriptor_55;
  v15 = _Block_copy(aBlock);

  sub_24BAA9E4C();
  v22 = MEMORY[0x277D84F90];
  sub_24BA2BF1C(&qword_27F063470, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B8F384C(&qword_27F063480, &unk_27F064500);
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v7, v4, v15);
  _Block_release(v15);

  (*(v21 + 8))(v4, v2);
  (*(v19 + 8))(v7, v20);
}

uint64_t sub_24BA27EC0(uint64_t a1, char a2)
{
  v29[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    isEscapingClosureAtFileLocation = result;
    v5 = *(result + OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_globalConfigurationService);
    aBlock[0] = 0;
    if (![v5 setModesCanImpactAvailability:a2 & 1 error:aBlock])
    {
      v7 = aBlock[0];
      v8 = sub_24BAA7CCC();

      swift_willThrow();
      aBlock[0] = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
      sub_24B8F37E8(0, &unk_27F063460);
      swift_dynamicCast();
      v9 = aBlock[6];
      if (qword_27F0630F0 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }

    v6 = aBlock[0];
    while (1)
    {
      sub_24B8F37E8(0, &qword_27F0644F0);
      v9 = sub_24BAAA33C();
      v24 = swift_allocObject();
      *(v24 + 16) = isEscapingClosureAtFileLocation;
      v25 = swift_allocObject();
      v25[2] = sub_24BA2C030;
      v25[3] = v24;
      aBlock[4] = sub_24B982290;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24BA28368;
      aBlock[3] = &block_descriptor_64;
      v26 = _Block_copy(aBlock);
      v27 = isEscapingClosureAtFileLocation;

      dispatch_sync(v9, v26);

      _Block_release(v26);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_12:
      swift_once();
LABEL_5:
      v10 = sub_24BAA812C();
      __swift_project_value_buffer(v10, qword_27F077038);
      v11 = v9;
      v12 = sub_24BAA810C();
      v13 = sub_24BAAA2AC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v29[0] = v15;
        *v14 = 136446466;
        v16 = sub_24BAAA86C();
        v18 = sub_24B8E49D4(v16, v17, v29);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        v19 = [v11 localizedDescription];
        v20 = sub_24BAAA01C();
        v22 = v21;

        v23 = sub_24B8E49D4(v20, v22, v29);

        *(v14 + 14) = v23;
        _os_log_impl(&dword_24B8D3000, v12, v13, "[%{public}s] error setting modesCanImpactAvailability: %s", v14, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C251390](v15, -1, -1);
        MEMORY[0x24C251390](v14, -1, -1);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_24BA282E0()
{
  type metadata accessor for FocusStatusSettingsManager();
  sub_24BA2BF1C(&unk_27F068F50, type metadata accessor for FocusStatusSettingsManager);
  sub_24BAA814C();
  sub_24BAA816C();
}

void sub_24BA28390(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = sub_24BAA9E2C();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_24BAA9E5C();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24BAA9E3C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24BAAA01C();
  v15 = v14;
  v16 = OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_cachedConfigurations;
  swift_beginAccess();
  v17 = *(v2 + v16);
  if (!*(v17 + 16))
  {
    goto LABEL_9;
  }

  v18 = sub_24BA1575C(v13, v15);
  if ((v19 & 1) == 0)
  {

LABEL_9:

    return;
  }

  v46 = v10;
  v20 = *(*(v17 + 56) + 8 * v18);

  v47 = v20;
  v21 = [v20 impactsAvailability];
  if (a2)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  if (v21 == v22)
  {
  }

  else
  {
    [v47 mutableCopy];
    sub_24BAAA47C();
    swift_unknownObjectRelease();
    sub_24B8F37E8(0, &qword_27F063150);
    if (swift_dynamicCast())
    {
      v23 = v55;
      [v55 setImpactsAvailability_];
      swift_beginAccess();
      v24 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = *(v3 + v16);
      *(v3 + v16) = 0x8000000000000000;
      sub_24BA1FEA8(v24, v13, v15, isUniquelyReferenced_nonNull_native);

      *(v3 + v16) = v55;
      swift_endAccess();
      sub_24B8F37E8(0, &qword_27F0644F0);
      v26 = v46;
      (*(v46 + 104))(v12, *MEMORY[0x277D851B8], v9);
      v45 = sub_24BAAA36C();
      (*(v26 + 8))(v12, v9);
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      v28[2] = v27;
      v28[3] = v24;
      v28[4] = ObjectType;
      aBlock[4] = sub_24BA2BFA4;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24B97ACC4;
      aBlock[3] = &block_descriptor_48_0;
      v29 = _Block_copy(aBlock);
      v30 = v24;

      sub_24BAA9E4C();
      v55 = MEMORY[0x277D84F90];
      sub_24BA2BF1C(&qword_27F063470, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
      sub_24B8F384C(&qword_27F063480, &unk_27F064500);
      v31 = v49;
      v32 = v52;
      sub_24BAAA48C();
      v33 = v45;
      MEMORY[0x24C250400](0, v8, v31, v29);
      _Block_release(v29);

      (*(v51 + 8))(v31, v32);
      (*(v48 + 8))(v8, v50);
    }

    else
    {
      v34 = v47;

      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v35 = sub_24BAA812C();
      __swift_project_value_buffer(v35, qword_27F077038);
      v36 = v34;
      v37 = sub_24BAA810C();
      v38 = sub_24BAAA2AC();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock[0] = v41;
        *v39 = 136446466;
        v42 = sub_24BAAA86C();
        v44 = sub_24B8E49D4(v42, v43, aBlock);

        *(v39 + 4) = v44;
        *(v39 + 12) = 2112;
        *(v39 + 14) = v36;
        *v40 = v36;
        v36 = v36;
        _os_log_impl(&dword_24B8D3000, v37, v38, "[%{public}s] fail to convert %@ into a DNDMutableModeConfiguration", v39, 0x16u);
        sub_24B8F35E4(v40, &qword_27F064510);
        MEMORY[0x24C251390](v40, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x24C251390](v41, -1, -1);
        MEMORY[0x24C251390](v39, -1, -1);
      }
    }
  }
}

void sub_24BA28AC8(uint64_t a1, uint64_t a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_modeConfigurationService);
    v24 = 0;
    if ([v5 setModeConfiguration:a2 error:&v24])
    {
      v6 = v24;
    }

    else
    {
      v7 = v24;
      v8 = sub_24BAA7CCC();

      swift_willThrow();
      v24 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
      sub_24B8F37E8(0, &unk_27F063460);
      swift_dynamicCast();
      if (qword_27F0630F0 != -1)
      {
        swift_once();
      }

      v9 = sub_24BAA812C();
      __swift_project_value_buffer(v9, qword_27F077038);
      v10 = v23;
      v11 = sub_24BAA810C();
      v12 = sub_24BAAA2AC();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v25[0] = v14;
        *v13 = 136446466;
        v15 = sub_24BAAA86C();
        v17 = sub_24B8E49D4(v15, v16, v25);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2080;
        v18 = [v10 localizedDescription];
        v19 = sub_24BAAA01C();
        v21 = v20;

        v22 = sub_24B8E49D4(v19, v21, v25);

        *(v13 + 14) = v22;
        _os_log_impl(&dword_24B8D3000, v11, v12, "[%{public}s] error setting mode configuration: %s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C251390](v14, -1, -1);
        MEMORY[0x24C251390](v13, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_24BA28DE0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FocusStatusSettingsManager();
  result = sub_24BAA814C();
  *a1 = result;
  return result;
}

void sub_24BA28E20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_cachedModes) = 0;

    v2 = sub_24BA2101C(MEMORY[0x277D84F90]);
    v3 = OBJC_IVAR____TtC15FocusSettingsUIP33_505BD96902FEE6013A0D99281DBB05A426FocusStatusSettingsManager_cachedConfigurations;
    swift_beginAccess();
    *&v1[v3] = v2;

    type metadata accessor for FocusStatusSettingsManager();
    sub_24BA2BF1C(&unk_27F068F50, type metadata accessor for FocusStatusSettingsManager);
    sub_24BAA814C();
    sub_24BAA816C();

    sub_24BA27044();
  }
}

uint64_t sub_24BA28FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24BA290A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_24BA29164()
{
  sub_24B936C64();
  if (v0 <= 0x3F)
  {
    sub_24B904FFC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for FocusStatusSettingsManager();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24BA29204()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068E90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068E88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068E80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068E78);
  sub_24BAA862C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068E70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068EB0);
  sub_24BA26CF8();
  sub_24B8F384C(&unk_27F068ED0, &qword_27F068EB0);
  swift_getOpaqueTypeConformance2();
  sub_24BA2BF1C(&qword_27F064860, MEMORY[0x277CDDAB8]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24BA2944C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FocusConfigurationAction(0);
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063438);
  result = sub_24BAAA5DC();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v27 = result + 56;
  v28 = a4;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v18 = *(a4 + 48);
    v30 = *(v29 + 72);
    sub_24BA2C0B0(v18 + v30 * (v15 | (v14 << 6)), v10, type metadata accessor for FocusConfigurationAction);
    sub_24BAAA7FC();
    sub_24BAA7E4C();
    sub_24BA2BF1C(&unk_27F063400, MEMORY[0x277CC95F0]);
    sub_24BAA9F1C();
    sub_24BAAA81C();
    sub_24BAAA81C();
    sub_24BAAA07C();
    sub_24BAAA07C();
    sub_24BAAA3DC();
    v19 = *&v10[*(v8 + 40)];
    sub_24BAAA81C();
    if (v19)
    {
      v20 = v19;
      sub_24BAAA3DC();
    }

    v21 = *&v10[*(v8 + 44)];
    sub_24BAAA81C();
    if (v21)
    {
      v22 = v21;
      sub_24BAAA3DC();
    }

    a4 = v28;
    sub_24BAAA84C();
    v23 = v27;
    v24 = sub_24BAAA4BC();
    *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_24BA2C118(v10, *(v11 + 48) + v24 * v30, type metadata accessor for FocusConfigurationAction);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_25;
    }

    if (!a3)
    {
LABEL_22:

      return v11;
    }
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_22;
    }

    v17 = a1[v14];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_24BA297CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068F80);
  result = sub_24BAAA5DC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_24BAAA7FC();

    sub_24BAAA07C();
    result = sub_24BAAA84C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24BA299F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FocusSystemConfigurationAction(0);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F063410);
  result = sub_24BAAA5DC();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v33 = *(v31 + 72);
    sub_24BA2C0B0(v19 + v33 * (v16 | (v14 << 6)), v10, type metadata accessor for FocusSystemConfigurationAction);
    sub_24BAAA7FC();
    sub_24BAA7E4C();
    sub_24BA2BF1C(&unk_27F063400, MEMORY[0x277CC95F0]);
    sub_24BAA9F1C();
    sub_24BAAA81C();
    sub_24BAAA81C();
    sub_24BAAA07C();
    sub_24BAAA3DC();
    result = sub_24BAAA84C();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      a4 = v30;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    a4 = v30;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_24BA2C118(v10, *(v11 + 48) + v23 * v33, type metadata accessor for FocusSystemConfigurationAction);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24BA29D58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0633D0);
  result = sub_24BAAA5DC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_24BAAA7FC();
    result = sub_24BAAA84C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24BA29F70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = MEMORY[0x277D84FA0];
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = sub_24BAAA5DC();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = *(*(v5 + 48) + 8 * (v14 | (v12 << 6)));
    result = sub_24BAAA3BC();
    v18 = -1 << *(v10 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v13 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v10 + 48) + 8 * v21) = v17;
    ++*(v10 + 16);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24BA2A15C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24B9A2FBC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24BA2A1D8(v6);
  return sub_24BAAA67C();
}

void sub_24BA2A1D8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24BAAA75C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24B8F37E8(0, &unk_27F0634D0);
        v6 = sub_24BAAA15C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_24BA2A5A0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_24BA2A2EC(0, v2, 1, a1);
  }
}

void sub_24BA2A2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_6:
    v31 = v5;
    v32 = a3;
    v7 = *(v4 + 8 * a3);
    v30 = v6;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      v11 = [v9 modeIdentifier];
      v12 = sub_24BAAA01C();
      v14 = v13;
      if (v12 == sub_24BAAA01C() && v14 == v15)
      {
      }

      else
      {
        v17 = sub_24BAAA78C();

        if (v17)
        {
        }

        else
        {
          v18 = [v10 modeIdentifier];
          v19 = sub_24BAAA01C();
          v21 = v20;
          if (v19 == sub_24BAAA01C() && v21 == v22)
          {

            goto LABEL_5;
          }

          v23 = sub_24BAAA78C();

          if (v23)
          {

LABEL_5:
            a3 = v32 + 1;
            v5 = v31 + 8;
            v6 = v30 - 1;
            if (v32 + 1 == a2)
            {
              return;
            }

            goto LABEL_6;
          }

          v24 = [v9 name];
          sub_24BAAA01C();

          v25 = [v10 name];
          sub_24BAAA01C();

          sub_24B8F5E3C();
          v26 = sub_24BAAA43C();

          if (v26 != -1)
          {
            goto LABEL_5;
          }
        }
      }

      if (!v4)
      {
        break;
      }

      v27 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v27;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_24BA2A5A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = *(a3 + 8);
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_120:
    v5 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_122;
    }

LABEL_161:
    __break(1u);
    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    v136 = v11;
    if (v9 >= v8)
    {
      goto LABEL_38;
    }

    v5 = v11;
    v12 = *v7;
    v146 = *(*v7 + 8 * v9);
    v144 = *(v12 + 8 * v11);
    v13 = v144;
    v14 = v146;
    v15 = v13;
    v142 = sub_24BA277D0(&v146, &v144);
    if (v6)
    {

      return;
    }

    v9 = v5 + 2;
    if ((v5 + 2) < v8)
    {
      break;
    }

LABEL_28:
    v11 = v136;
    if (v142)
    {
      if (v9 < v136)
      {
        goto LABEL_154;
      }

      goto LABEL_30;
    }

LABEL_38:
    v47 = *(v7 + 1);
    if (v9 >= v47)
    {
      goto LABEL_67;
    }

    if (__OFSUB__(v9, v11))
    {
      goto LABEL_151;
    }

    if (v9 - v11 >= a4)
    {
      goto LABEL_67;
    }

    if (__OFADD__(v11, a4))
    {
      goto LABEL_152;
    }

    if (v11 + a4 < v47)
    {
      v47 = v11 + a4;
    }

    if (v47 < v11)
    {
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    if (v9 == v47)
    {
      goto LABEL_67;
    }

    v48 = v9;
    v137 = v47;
    v131 = v6;
    v133 = v10;
    v49 = *v7;
    v50 = *v7 + 8 * v9 - 8;
    v51 = v11 - v9;
    v52 = v48;
    while (2)
    {
      v141 = v50;
      v143 = v52;
      v53 = *(v49 + 8 * v52);
      v139 = v51;
      while (1)
      {
        v54 = *v50;
        v5 = v53;
        v55 = v54;
        v56 = [v5 modeIdentifier];
        v57 = sub_24BAAA01C();
        v59 = v58;
        if (v57 == sub_24BAAA01C() && v59 == v60)
        {

          goto LABEL_61;
        }

        v62 = sub_24BAAA78C();

        if (v62)
        {

          goto LABEL_61;
        }

        v63 = [v55 modeIdentifier];
        v64 = sub_24BAAA01C();
        v66 = v65;
        if (v64 == sub_24BAAA01C() && v66 == v67)
        {

          goto LABEL_48;
        }

        v68 = sub_24BAAA78C();

        if (v68)
        {
          break;
        }

        v69 = [v5 name];
        v70 = sub_24BAAA01C();
        v72 = v71;

        v146 = v70;
        v147 = v72;
        v73 = [v55 name];
        v74 = sub_24BAAA01C();
        v76 = v75;

        v144 = v74;
        v145 = v76;
        sub_24B8F5E3C();
        v77 = sub_24BAAA43C();

        if (v77 != -1)
        {
          goto LABEL_48;
        }

LABEL_61:
        if (!v49)
        {
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        v78 = *v50;
        v53 = *(v50 + 8);
        *v50 = v53;
        *(v50 + 8) = v78;
        v50 -= 8;
        if (__CFADD__(v51++, 1))
        {
          goto LABEL_48;
        }
      }

LABEL_48:
      v52 = v143 + 1;
      v50 = v141 + 8;
      v51 = v139 - 1;
      if (v143 + 1 != v137)
      {
        continue;
      }

      break;
    }

    v9 = v137;
    v7 = a3;
    v6 = v131;
    v10 = v133;
    v11 = v136;
LABEL_67:
    if (v9 < v11)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_24B99A39C(0, *(v10 + 2) + 1, 1, v10);
    }

    v81 = *(v10 + 2);
    v80 = *(v10 + 3);
    v82 = v81 + 1;
    if (v81 >= v80 >> 1)
    {
      v10 = sub_24B99A39C((v80 > 1), v81 + 1, 1, v10);
    }

    *(v10 + 2) = v82;
    v83 = &v10[16 * v81];
    *(v83 + 4) = v136;
    *(v83 + 5) = v9;
    v84 = *a1;
    if (!*a1)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v81)
    {
      while (2)
      {
        v5 = v82 - 1;
        if (v82 >= 4)
        {
          v89 = &v10[16 * v82 + 32];
          v90 = *(v89 - 64);
          v91 = *(v89 - 56);
          v95 = __OFSUB__(v91, v90);
          v92 = v91 - v90;
          if (v95)
          {
            goto LABEL_137;
          }

          v94 = *(v89 - 48);
          v93 = *(v89 - 40);
          v95 = __OFSUB__(v93, v94);
          v87 = v93 - v94;
          v88 = v95;
          if (v95)
          {
            goto LABEL_138;
          }

          v96 = &v10[16 * v82];
          v98 = *v96;
          v97 = *(v96 + 1);
          v95 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v95)
          {
            goto LABEL_140;
          }

          v95 = __OFADD__(v87, v99);
          v100 = v87 + v99;
          if (v95)
          {
            goto LABEL_143;
          }

          if (v100 >= v92)
          {
            v118 = &v10[16 * v5 + 32];
            v120 = *v118;
            v119 = *(v118 + 1);
            v95 = __OFSUB__(v119, v120);
            v121 = v119 - v120;
            if (v95)
            {
              goto LABEL_147;
            }

            if (v87 < v121)
            {
              v5 = v82 - 2;
            }
          }

          else
          {
LABEL_87:
            if (v88)
            {
              goto LABEL_139;
            }

            v101 = &v10[16 * v82];
            v103 = *v101;
            v102 = *(v101 + 1);
            v104 = __OFSUB__(v102, v103);
            v105 = v102 - v103;
            v106 = v104;
            if (v104)
            {
              goto LABEL_142;
            }

            v107 = &v10[16 * v5 + 32];
            v109 = *v107;
            v108 = *(v107 + 1);
            v95 = __OFSUB__(v108, v109);
            v110 = v108 - v109;
            if (v95)
            {
              goto LABEL_145;
            }

            if (__OFADD__(v105, v110))
            {
              goto LABEL_146;
            }

            if (v105 + v110 < v87)
            {
              goto LABEL_101;
            }

            if (v87 < v110)
            {
              v5 = v82 - 2;
            }
          }
        }

        else
        {
          if (v82 == 3)
          {
            v85 = *(v10 + 4);
            v86 = *(v10 + 5);
            v95 = __OFSUB__(v86, v85);
            v87 = v86 - v85;
            v88 = v95;
            goto LABEL_87;
          }

          v111 = &v10[16 * v82];
          v113 = *v111;
          v112 = *(v111 + 1);
          v95 = __OFSUB__(v112, v113);
          v105 = v112 - v113;
          v106 = v95;
LABEL_101:
          if (v106)
          {
            goto LABEL_141;
          }

          v114 = &v10[16 * v5];
          v116 = *(v114 + 4);
          v115 = *(v114 + 5);
          v95 = __OFSUB__(v115, v116);
          v117 = v115 - v116;
          if (v95)
          {
            goto LABEL_144;
          }

          if (v117 < v105)
          {
            break;
          }
        }

        v122 = v5 - 1;
        if (v5 - 1 >= v82)
        {
          __break(1u);
LABEL_135:
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
          goto LABEL_153;
        }

        if (!*v7)
        {
          goto LABEL_157;
        }

        v123 = *&v10[16 * v122 + 32];
        v124 = *&v10[16 * v5 + 40];
        sub_24BA2AFE8((*v7 + 8 * v123), (*v7 + 8 * *&v10[16 * v5 + 32]), (*v7 + 8 * v124), v84);
        if (v6)
        {
          goto LABEL_131;
        }

        if (v124 < v123)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_24B99FEB4(v10);
        }

        if (v122 >= *(v10 + 2))
        {
          goto LABEL_136;
        }

        v125 = &v10[16 * v122];
        *(v125 + 4) = v123;
        *(v125 + 5) = v124;
        v148 = v10;
        sub_24B99FE28(v5);
        v10 = v148;
        v82 = *(v148 + 2);
        if (v82 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v8 = *(v7 + 1);
    if (v9 >= v8)
    {
      goto LABEL_120;
    }
  }

  v132 = v10;
  v16 = (v12 + 8 * v5 + 16);
  v140 = v8;
  while (1)
  {
    v17 = *(v16 - 1);
    v5 = *v16;
    v18 = v17;
    v19 = [v5 modeIdentifier];
    v20 = sub_24BAAA01C();
    v22 = v21;
    if (v20 == sub_24BAAA01C() && v22 == v23)
    {

      v7 = a3;
      if (!v142)
      {
        goto LABEL_37;
      }

      goto LABEL_9;
    }

    v25 = sub_24BAAA78C();

    if (v25)
    {

      v7 = a3;
      v8 = v140;
      if (!v142)
      {
LABEL_37:
        v10 = v132;
        v11 = v136;
        goto LABEL_38;
      }

      goto LABEL_9;
    }

    v26 = [v18 modeIdentifier];
    v27 = sub_24BAAA01C();
    v29 = v28;
    if (v27 == sub_24BAAA01C() && v29 == v30)
    {
    }

    else
    {
      v31 = sub_24BAAA78C();

      if ((v31 & 1) == 0)
      {
        v32 = [v5 name];
        v33 = sub_24BAAA01C();
        v35 = v34;

        v146 = v33;
        v147 = v35;
        v36 = [v18 name];
        v37 = sub_24BAAA01C();
        v39 = v38;

        v144 = v37;
        v145 = v39;
        sub_24B8F5E3C();
        v40 = sub_24BAAA43C();

        v7 = a3;
        v8 = v140;
        if (v142 == (v40 != -1))
        {
          goto LABEL_27;
        }

        goto LABEL_9;
      }
    }

    v7 = a3;
    v8 = v140;
    if (v142)
    {
      break;
    }

LABEL_9:
    ++v16;
    if (v8 == ++v9)
    {
      v9 = v8;
LABEL_27:
      v10 = v132;
      goto LABEL_28;
    }
  }

  v10 = v132;
  v11 = v136;
  if (v9 >= v136)
  {
LABEL_30:
    v41 = v9;
    if (v11 < v9)
    {
      v42 = 8 * v9 - 8;
      v43 = 8 * v11;
      v44 = v11;
      while (1)
      {
        if (v44 != --v41)
        {
          v46 = *v7;
          if (!*v7)
          {
            goto LABEL_158;
          }

          v45 = *(v46 + v43);
          *(v46 + v43) = *(v46 + v42);
          *(v46 + v42) = v45;
        }

        ++v44;
        v42 -= 8;
        v43 += 8;
        if (v44 >= v41)
        {
          goto LABEL_38;
        }
      }
    }

    goto LABEL_38;
  }

LABEL_154:
  __break(1u);
LABEL_155:
  v10 = sub_24B99FEB4(v10);
LABEL_122:
  v148 = v10;
  v126 = *(v10 + 2);
  if (v126 >= 2)
  {
    v127 = v7;
    while (*v127)
    {
      v7 = v10;
      v10 = (v126 - 1);
      v128 = *&v7[16 * v126];
      v129 = *&v7[16 * v126 + 24];
      sub_24BA2AFE8((*v127 + 8 * v128), (*v127 + 8 * *&v7[16 * v126 + 16]), (*v127 + 8 * v129), v5);
      if (v6)
      {
        goto LABEL_131;
      }

      if (v129 < v128)
      {
        goto LABEL_148;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_24B99FEB4(v7);
      }

      if (v126 - 2 >= *(v7 + 2))
      {
        goto LABEL_149;
      }

      v130 = &v7[16 * v126];
      *v130 = v128;
      *(v130 + 1) = v129;
      v148 = v7;
      sub_24B99FE28(v126 - 1);
      v10 = v148;
      v126 = *(v148 + 2);
      if (v126 <= 1)
      {
        goto LABEL_131;
      }
    }

    goto LABEL_159;
  }

LABEL_131:
}

uint64_t sub_24BA2AFE8(void **__src, void **__dst, id *a3, void **a4)
{
  v4 = a3;
  v6 = __dst - __src;
  v7 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v7 = __dst - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - __dst;
  v10 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v10 = a3 - __dst;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v35 = __dst;
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v36 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v36;
    }

    v64 = &a4[v11];
    v13 = a4;
    if (v9 >= 8 && v35 > __src)
    {
      v60 = a4;
LABEL_40:
      v37 = v35 - 1;
      --v4;
      v38 = v64;
      v61 = v35 - 1;
      while (1)
      {
        v39 = *--v38;
        v40 = *v37;
        v41 = v39;
        v42 = v40;
        v43 = [v41 modeIdentifier];
        v44 = sub_24BAAA01C();
        v46 = v45;
        if (v44 == sub_24BAAA01C() && v46 == v47)
        {
          break;
        }

        v49 = sub_24BAAA78C();

        if (v49)
        {

LABEL_57:
          if (v4 + 1 != v35)
          {
            *v4 = *v61;
          }

          v13 = v60;
          if (v64 <= v60 || (--v35, v61 <= __src))
          {
            v35 = v61;
            goto LABEL_65;
          }

          goto LABEL_40;
        }

        v50 = [v42 modeIdentifier];
        v51 = sub_24BAAA01C();
        v53 = v52;
        if (v51 == sub_24BAAA01C() && v53 == v54)
        {
        }

        else
        {
          v55 = sub_24BAAA78C();

          if (v55)
          {
          }

          else
          {
            v56 = [v41 name];
            sub_24BAAA01C();

            v57 = [v42 name];
            sub_24BAAA01C();

            sub_24B8F5E3C();
            v58 = sub_24BAAA43C();

            if (v58 == -1)
            {
              goto LABEL_57;
            }
          }
        }

        if (v4 + 1 != v64)
        {
          *v4 = *v38;
        }

        --v4;
        v64 = v38;
        v37 = v35 - 1;
        if (v38 <= v60)
        {
          v64 = v38;
          v13 = v60;
          goto LABEL_65;
        }
      }

      goto LABEL_57;
    }
  }

  else
  {
    v12 = __dst;
    v13 = a4;
    if (a4 != __src || &__src[v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v64 = &v13[v8];
    if (v6 < 8)
    {
      v35 = __src;
      goto LABEL_65;
    }

    v14 = __src;
    if (v12 < v4)
    {
      while (1)
      {
        v15 = *v13;
        v16 = *v12;
        v17 = v15;
        v18 = [v16 modeIdentifier];
        v19 = sub_24BAAA01C();
        v21 = v20;
        v23 = v19 == sub_24BAAA01C() && v21 == v22;
        if (v23)
        {

LABEL_18:
          v25 = v12;
          v23 = v14 == v12++;
          if (v23)
          {
            goto LABEL_20;
          }

LABEL_19:
          *v14 = *v25;
          goto LABEL_20;
        }

        v62 = v14;
        v24 = sub_24BAAA78C();

        if (v24)
        {

          v14 = v62;
          goto LABEL_18;
        }

        v26 = [v17 modeIdentifier];
        v27 = sub_24BAAA01C();
        v29 = v28;
        if (v27 == sub_24BAAA01C() && v29 == v30)
        {
          break;
        }

        v31 = sub_24BAAA78C();

        if (v31)
        {

          goto LABEL_28;
        }

        v32 = [v16 name];
        sub_24BAAA01C();

        v33 = [v17 name];
        sub_24BAAA01C();

        sub_24B8F5E3C();
        v34 = sub_24BAAA43C();

        v14 = v62;
        if (v34 == -1)
        {
          goto LABEL_18;
        }

LABEL_29:
        v25 = v13;
        v23 = v14 == v13++;
        if (!v23)
        {
          goto LABEL_19;
        }

LABEL_20:
        ++v14;
        if (v13 >= v64 || v12 >= v4)
        {
          goto LABEL_62;
        }
      }

LABEL_28:
      v14 = v62;
      goto LABEL_29;
    }

LABEL_62:
    v35 = v14;
  }

LABEL_65:
  if (v35 != v13 || v35 >= (v13 + ((v64 - v13 + (v64 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v35, v13, 8 * ((v64 - v13) / 8));
  }

  return 1;
}

uint64_t sub_24BA2B744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(void), uint64_t (*a9)(void))
{
  v36 = a4;
  v37 = a8;
  v30 = a2;
  v31 = a7;
  v32 = a1;
  v35 = a9;
  v11 = a6(0);
  v34 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - v13;
  v33 = 0;
  v15 = 0;
  v38 = a3;
  v18 = *(a3 + 56);
  v17 = a3 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_11:
    v26 = v23 | (v15 << 6);
    sub_24BA2C0B0(*(v38 + 48) + *(v34 + 72) * v26, v14, v37);
    v27 = v36(v14);
    result = sub_24B9A1CF4(v14, v35);
    if (v9)
    {
      return result;
    }

    if (v27)
    {
      *(v32 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
LABEL_16:
        v29 = v38;

        return v31(v32, v30, v33, v29);
      }
    }
  }

  v24 = v15;
  while (1)
  {
    v15 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v15 >= v22)
    {
      goto LABEL_16;
    }

    v25 = *(v17 + 8 * v15);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v21 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_24BA2B974(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, uint64_t *a6)
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        sub_24BA29F70(a1, a2, v23, a3, a6);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_24BA2BAF0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_24BA2B974(result, a2, a3, a4, a5, &unk_27F068F70);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_24BA2BB90()
{
  v0 = sub_24BAA9E2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24BAA9E5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B8F37E8(0, &unk_27F067FA0);
  result = sub_24BAAA3CC();
  if (result)
  {
    sub_24B8F37E8(0, &qword_27F0644F0);
    v13 = sub_24BAAA33C();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_24BA2BEFC;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24B97ACC4;
    aBlock[3] = &block_descriptor_11;
    v10 = _Block_copy(aBlock);

    sub_24BAA9E4C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24BA2BF1C(&qword_27F063470, MEMORY[0x277D85198]);
    v12 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
    sub_24B8F384C(&qword_27F063480, &unk_27F064500);
    sub_24BAAA48C();
    v11 = v13;
    MEMORY[0x24C250400](0, v7, v3, v10);
    _Block_release(v10);

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v12);
  }

  return result;
}

uint64_t sub_24BA2BEC4()
{
  MEMORY[0x24C251450](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24BA2BF1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24BA2BF64()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24BA2BFB0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24BA2BFF8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_24BA2C048()
{
  result = qword_27F068F60;
  if (!qword_27F068F60)
  {
    sub_24B8F37E8(255, &unk_27F0634D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068F60);
  }

  return result;
}

uint64_t sub_24BA2C0B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24BA2C118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24BA2C1F4()
{
  result = qword_27F0690E8;
  if (!qword_27F0690E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0690E0);
    sub_24BA2C284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0690E8);
  }

  return result;
}

unint64_t sub_24BA2C284()
{
  result = qword_27F0690F0;
  if (!qword_27F0690F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0690F8);
    sub_24B8F384C(&unk_27F069090, &qword_27F0639C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0690F0);
  }

  return result;
}

uint64_t sub_24BA2C334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24BA2C3AC@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FocusStatusConfigurationView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24BA264AC(a1, v6, a2);
}

void sub_24BA2C430(BOOL *a1@<X8>)
{
  v3 = *(type metadata accessor for FocusStatusConfigurationView() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24BA266F4(v4, a1);
}

uint64_t objectdestroy_101Tm_0()
{
  v1 = type metadata accessor for FocusStatusConfigurationView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24BAA82DC();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v2 | 7);
}

void sub_24BA2C64C(char *a1)
{
  v3 = *(type metadata accessor for FocusStatusConfigurationView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  sub_24BA26764(a1, v6, v7, v1 + v4, v5);
}

uint64_t objectdestroy_5Tm()
{
  v1 = type metadata accessor for FocusStatusConfigurationView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24BAA82DC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24BA2C868(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FocusStatusConfigurationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_24BA2C928()
{
  sub_24B980E74();
  if (v0 <= 0x3F)
  {
    sub_24BA2CF0C(319, &qword_27F063A38, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_24BA2CF0C(319, &qword_27F0663B0, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24B8F45F4();
          if (v4 <= 0x3F)
          {
            sub_24BA2CF0C(319, &qword_27F063A40, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24BA2CA9C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_24BAA8B9C() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v10 + 7;
  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((((((((v12 + (((v6 & 0xFFFFFFFFFFFFFFF8) + v9 + 17) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v20 = v18 - 1;
    if (v14)
    {
      v20 = 0;
      v21 = *a1;
    }

    else
    {
      v21 = 0;
    }

    return v11 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = *(a1 + v13);
    if (v18)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v22 = (((a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8) + v9 + 9) & ~v9;
  if (v8 < 0x7FFFFFFF)
  {
    v24 = *(((v12 + v22) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  else
  {
    v23 = *(*(*(a3 + 16) - 8) + 48);

    return v23(v22);
  }
}

void sub_24BA2CCA4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_24BAA8B9C() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = *(v10 + 64) + 7;
  v15 = ((((((((((((v14 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v12 + 17) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v18 = 0;
    v19 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((((((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 17) & ~v12)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a3 - v13 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v22 = (((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8) + v12 + 9) & ~v12;
      if (v11 < 0x7FFFFFFF)
      {
        v24 = ((v14 + v22) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v24 = a2 & 0x7FFFFFFF;
          v24[1] = 0;
        }

        else
        {
          v24[1] = (a2 - 1);
        }
      }

      else
      {
        v23 = *(v10 + 56);

        v23(v22, a2);
      }

      return;
    }
  }

  if (((((((((((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 17) & ~v12)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1;
  }

  if (((((((((((((v14 + (((v9 & 0xFFFFFFF8) + v12 + 17) & ~v12)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v21 = ~v13 + a2;
    bzero(a1, v15);
    *a1 = v21;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      *(a1 + v15) = v20;
    }

    else
    {
      *(a1 + v15) = v20;
    }
  }

  else if (v18)
  {
    *(a1 + v15) = v20;
  }
}

void sub_24BA2CF0C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24BA2CF5C()
{
  sub_24B980E74();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_24BA2CF0C(319, &qword_27F063A40, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_24B8F45F4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24BA2D04C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_24BAA8B9C() - 8) + 64);
  v7 = 8;
  v8 = *(*(a3 + 16) - 8);
  if (v6 > 8)
  {
    v7 = v6;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v7 + v10 + 1;
  v14 = v11 + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((((((((v14 + (v13 & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v24 = (a1 + v13) & ~v10;
  if (v9 < 0x7FFFFFFF)
  {
    v26 = *(((v14 + v24) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }

  else
  {
    v25 = *(*(*(a3 + 16) - 8) + 48);

    return v25(v24);
  }
}

void sub_24BA2D238(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_24BAA8B9C() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = v9 + v12 + 1;
  v15 = *(v10 + 64) + 7;
  v16 = ((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v19 = 0;
    v20 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = a3 - v13 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v23 = (a1 + v14) & ~v12;
      if (v11 < 0x7FFFFFFF)
      {
        v25 = ((v15 + v23) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v25 = a2 & 0x7FFFFFFF;
          v25[1] = 0;
        }

        else
        {
          v25[1] = (a2 - 1);
        }
      }

      else
      {
        v24 = *(v10 + 56);

        v24(v23, a2);
      }

      return;
    }
  }

  if (((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v22 = ~v13 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

uint64_t sub_24BA2D4C8(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
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

  MEMORY[0x28223BE20](TupleTypeMetadata);
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

  return sub_24BAA9DCC();
}

uint64_t sub_24BA2D698()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  return v1;
}

uint64_t sub_24BA2D6F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_24BAA8E7C();
  v102 = *(v4 - 8);
  v103 = v4;
  MEMORY[0x28223BE20](v4);
  v101 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24BAA8FBC();
  v99 = *(v6 - 8);
  v100 = v6;
  MEMORY[0x28223BE20](v6);
  v98 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24BAA866C();
  v97 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v96 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 - 8);
  v106 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = *(a1 + 16);
  sub_24BAA85EC();
  sub_24BAA85EC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069300);
  swift_getTupleTypeMetadata2();
  sub_24BAA9DBC();
  swift_getWitnessTable();
  v14 = sub_24BAA9B3C();
  WitnessTable = swift_getWitnessTable();
  v114 = v14;
  v115 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069308);
  swift_getTupleTypeMetadata2();
  sub_24BAA9DBC();
  swift_getWitnessTable();
  v92 = sub_24BAA9B1C();
  v91 = swift_getWitnessTable();
  v16 = sub_24BAA9A8C();
  v95 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v88 = &v69 - v17;
  v19 = v18;
  v20 = swift_getWitnessTable();
  v21 = sub_24BA33BAC(&qword_27F063BF8, MEMORY[0x277CDDB18]);
  v114 = v19;
  v115 = v8;
  v22 = v19;
  v76 = v19;
  v80 = v8;
  v116 = v20;
  v117 = v21;
  v82 = v20;
  v23 = v21;
  v81 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v84 = OpaqueTypeMetadata2;
  v90 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v79 = &v69 - v25;
  v114 = v22;
  v115 = v8;
  v116 = v20;
  v117 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v114 = OpaqueTypeMetadata2;
  v115 = OpaqueTypeConformance2;
  v86 = MEMORY[0x277CDEAE8];
  v85 = swift_getOpaqueTypeMetadata2();
  v89 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v72 = &v69 - v26;
  sub_24BAA905C();
  v27 = sub_24BAA85EC();
  v93 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v78 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v87 = &v69 - v31;
  MEMORY[0x28223BE20](v30);
  v94 = &v69 - v32;
  v33 = *(v11 + 16);
  v75 = v11 + 16;
  v77 = v33;
  v70 = v13;
  v33(v13, v2, a1);
  v34 = v11;
  v71 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v35 = v71;
  v36 = swift_allocObject();
  v37 = *(a1 + 24);
  v38 = v105;
  *(v36 + 16) = v105;
  *(v36 + 24) = v37;
  v69 = v37;
  v39 = *(v34 + 32);
  v73 = v34 + 32;
  v74 = v39;
  v40 = v36 + v35;
  v41 = a1;
  v39(v40, v13, a1);
  v107 = v38;
  v108 = v37;
  v109 = v2;
  v42 = v2;
  v43 = v88;
  sub_24BAA9A5C();
  v44 = v96;
  sub_24BAA865C();
  v45 = v79;
  v46 = v76;
  v47 = v80;
  sub_24BAA944C();
  (*(v97 + 8))(v44, v47);
  (*(v95 + 8))(v43, v46);
  v48 = v98;
  sub_24BAA8F8C();
  v49 = v72;
  v50 = v84;
  v51 = OpaqueTypeConformance2;
  sub_24BAA95FC();
  (*(v99 + 8))(v48, v100);
  (*(v90 + 8))(v45, v50);
  v52 = (v2 + *(v41 + 40));
  v54 = *v52;
  v53 = v52[1];
  v114 = v54;
  v115 = v53;
  v112 = v50;
  v113 = v51;
  v55 = swift_getOpaqueTypeConformance2();
  sub_24B8F5E3C();
  v56 = v78;
  v57 = v85;
  sub_24BAA959C();
  (*(v89 + 8))(v49, v57);
  v58 = v70;
  v77(v70, v42, v41);
  v59 = v71;
  v60 = swift_allocObject();
  v61 = v69;
  *(v60 + 16) = v105;
  *(v60 + 24) = v61;
  v74(v60 + v59, v58, v41);
  v62 = v101;
  sub_24BAA8E6C();
  v63 = v87;
  sub_24BAA85BC();

  (*(v102 + 8))(v62, v103);
  v64 = *(v93 + 8);
  v64(v56, v27);
  v65 = sub_24BA33BAC(&qword_27F0690A0, MEMORY[0x277CDE470]);
  v110 = v55;
  v111 = v65;
  v66 = swift_getWitnessTable();
  v67 = v94;
  sub_24BA0EEC4(v63, v27, v66);
  v64(v63, v27);
  sub_24BA0EEC4(v67, v27, v66);
  return (v64)(v67, v27);
}

uint64_t sub_24BA2E260(uint64_t a1)
{
  v2 = type metadata accessor for ToggleableBadgedItemView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA99FC();
  sub_24BAA9A0C();

  v3 = *(a1 + *(v2 + 56));
  v4 = sub_24BA2D698();
  return v3(v4 & 1);
}

uint64_t sub_24BA2E340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24BAA85EC();
  sub_24BAA85EC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069300);
  swift_getTupleTypeMetadata2();
  sub_24BAA9DBC();
  swift_getWitnessTable();
  v20 = sub_24BAA9B3C();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069308);
  swift_getTupleTypeMetadata2();
  sub_24BAA9DBC();
  swift_getWitnessTable();
  v6 = sub_24BAA9B1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-v11];
  v17 = a2;
  v18 = a3;
  v19 = a1;
  sub_24BAA8BCC();
  sub_24BAA9B0C();
  v13 = swift_getWitnessTable();
  sub_24BA0EEC4(v10, v6, v13);
  v14 = *(v7 + 8);
  v14(v10, v6);
  sub_24BA0EEC4(v12, v6, v13);
  return (v14)(v12, v6);
}

uint64_t sub_24BA2E610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v75 = a1;
  v71 = a4;
  v5 = sub_24BAA8B9C();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x28223BE20](v5);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069308);
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v68 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v57 - v10;
  v63 = sub_24BAA8ABC();
  OpaqueTypeConformance2 = *(v63 - 1);
  MEMORY[0x28223BE20](v63);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a2;
  sub_24BAA85EC();
  sub_24BAA85EC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069300);
  swift_getTupleTypeMetadata2();
  sub_24BAA9DBC();
  swift_getWitnessTable();
  v12 = sub_24BAA9B3C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  WitnessTable = swift_getWitnessTable();
  *&v92[0] = v12;
  *(&v92[0] + 1) = WitnessTable;
  v59 = MEMORY[0x277CE0C98];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v60 = &v57 - v20;
  sub_24BAA9CCC();
  v77 = a2;
  v78 = v74;
  v79 = v75;
  sub_24BAA9B2C();
  v21 = OpaqueTypeConformance2;
  v22 = v62;
  v23 = v63;
  (*(OpaqueTypeConformance2 + 104))(v62, *MEMORY[0x277CE00F0], v63);
  sub_24BAA94AC();
  (*(v21 + 8))(v22, v23);
  (*(v13 + 8))(v15, v12);
  *&v92[0] = v12;
  *(&v92[0] + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v19;
  v72 = v19;
  v25 = v19;
  v26 = OpaqueTypeMetadata2;
  sub_24BA0EEC4(v25, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v27 = *(v76 + 8);
  v62 = (v76 + 8);
  v63 = v27;
  (v27)(v24, v26);
  v28 = (v75 + *(type metadata accessor for ToggleableBadgedItemView() + 40));
  v29 = *v28;
  v30 = v28[1];
  *&v92[0] = *v28;
  *(&v92[0] + 1) = v30;
  v74 = sub_24B8F5E3C();
  swift_bridgeObjectRetain_n();
  v31 = sub_24BAA93CC();
  v58 = v32;
  v59 = v31;
  v34 = v33;
  v57 = v35;
  v36 = v64;
  sub_24BA8DAA8(v64);
  LOBYTE(v24) = sub_24BAA8B8C();
  (*(v65 + 8))(v36, v66);
  if (v24)
  {
    v37 = 2;
  }

  else
  {
    v37 = 1;
  }

  KeyPath = swift_getKeyPath();
  v39 = sub_24BAA924C();
  v40 = swift_getKeyPath();
  v41 = v34 & 1;
  v95 = v34 & 1;
  v94 = 0;
  v42 = sub_24BAA989C();
  v43 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  *&v85 = v59;
  *(&v85 + 1) = v58;
  LOBYTE(v86) = v41;
  *(&v86 + 1) = v57;
  *&v87 = KeyPath;
  *(&v87 + 1) = v37;
  LOBYTE(v88) = 0;
  *(&v88 + 1) = v40;
  *&v89 = v39;
  *(&v89 + 1) = v43;
  *&v90 = v42;
  *(&v90 + 1) = v44;
  v91 = 1;
  v83 = v29;
  v84 = v30;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069280);
  v45 = sub_24BA32A2C();
  v46 = v67;
  v47 = v74;
  sub_24BAA966C();

  v92[4] = v89;
  v92[5] = v90;
  v93 = v91;
  v92[0] = v85;
  v92[1] = v86;
  v92[2] = v87;
  v92[3] = v88;
  sub_24B8F35E4(v92, &qword_27F069280);
  v48 = v72;
  v49 = OpaqueTypeMetadata2;
  v50 = v60;
  (*(v76 + 16))(v72, v60, OpaqueTypeMetadata2);
  v83 = v48;
  v52 = v68;
  v51 = v69;
  v53 = v70;
  (*(v69 + 16))(v68, v46, v70);
  v82[0] = v49;
  v82[1] = v53;
  v80 = OpaqueTypeConformance2;
  v84 = v52;
  *&v85 = v75;
  *(&v85 + 1) = MEMORY[0x277D837D0];
  *&v86 = v45;
  *(&v86 + 1) = v47;
  v81 = swift_getOpaqueTypeConformance2();
  sub_24BA2D4C8(&v83, 2uLL, v82);
  v54 = *(v51 + 8);
  v54(v46, v53);
  v55 = v63;
  (v63)(v50, v49);
  v54(v52, v53);
  return v55(v72, v49);
}

uint64_t sub_24BA2EDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v55 = a1;
  v6 = sub_24BAA975C();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069300);
  v8 = MEMORY[0x28223BE20](v52);
  v53 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v42 - v10;
  v12 = sub_24BAA85EC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - v14;
  v16 = sub_24BAA85EC();
  v17 = *(v16 - 8);
  v43 = v16;
  v44 = v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v46 = v42 - v21;
  v42[0] = a3;
  v42[1] = a2;
  type metadata accessor for ToggleableBadgedItemView();
  sub_24BAA90AC();
  sub_24BAA96BC();
  sub_24BAA90CC();
  v63 = a3;
  v64 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  sub_24BAA96BC();
  (*(v13 + 8))(v15, v12);
  v61 = WitnessTable;
  v62 = MEMORY[0x277CDF918];
  v23 = v43;
  v47 = swift_getWitnessTable();
  v45 = v20;
  v24 = v23;
  sub_24BA0EEC4(v20, v23, v47);
  v25 = v44;
  v48 = *(v44 + 8);
  v48(v20, v24);
  v26 = sub_24BAA9D1C();
  v28 = v27;
  sub_24BA2F3B4(v55, v67);
  memcpy(v65, v67, sizeof(v65));
  memcpy(v66, v67, sizeof(v66));
  sub_24B8F3208(v65, v60, &qword_27F069310);
  sub_24B8F35E4(v66, &qword_27F069310);
  memcpy(v67, v65, 0x128uLL);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v29 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069318) + 36)];
  sub_24BAA9C9C();
  *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069320) + 56)] = 256;
  *v11 = v26;
  *(v11 + 1) = v28;
  memcpy(v11 + 16, v67, 0x128uLL);
  v30 = v60[1];
  *(v11 + 312) = v60[0];
  *(v11 + 328) = v30;
  *(v11 + 344) = v60[2];
  (*(v50 + 104))(v49, *MEMORY[0x277CE0EE0], v51);
  v31 = sub_24BAA98BC();
  v32 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069328) + 36)];
  *v32 = v31;
  *(v32 + 8) = xmmword_24BABA580;
  *(v32 + 3) = 0x3FF0000000000000;
  v33 = v52;
  v34 = &v11[*(v52 + 36)];
  *v34 = 0x3FF0000000000000;
  *(v34 + 1) = 0;
  v35 = *(v25 + 16);
  v37 = v45;
  v36 = v46;
  v35(v45, v46, v24);
  v59[0] = v37;
  v38 = v53;
  sub_24B8F3208(v11, v53, &qword_27F069300);
  v59[1] = v38;
  v58[0] = v24;
  v58[1] = v33;
  v56 = v47;
  v57 = sub_24BA33088();
  sub_24BA2D4C8(v59, 2uLL, v58);
  sub_24B8F35E4(v11, &qword_27F069300);
  v39 = v36;
  v40 = v48;
  v48(v39, v24);
  sub_24B8F35E4(v38, &qword_27F069300);
  return v40(v37, v24);
}

uint64_t sub_24BA2F3B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31[-v4];
  v6 = sub_24BAA992C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [objc_opt_self() tertiaryLabelColor];
  v37 = sub_24BAA973C();
  sub_24BAA832C();
  v11 = v88;
  v32 = v89;
  v34 = v90;
  v12 = v91;
  v33 = v92;
  v13 = v93;
  v14 = sub_24BAA9D1C();
  v35 = v15;
  v36 = v14;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v16 = type metadata accessor for ToggleableBadgedItemView();
  if (sub_24BA2D698())
  {
    v17 = *(a1 + *(v16 + 48));
    sub_24BAA9D1C();
    sub_24BAA83BC();
    *&v55[6] = v94;
    *&v55[22] = v95;
    *&v55[38] = v96;

    sub_24BAA991C();
    (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
    v18 = COERCE_DOUBLE(sub_24BAA997C());

    (*(v7 + 8))(v9, v6);
    sub_24BAA91EC();
    v19 = sub_24BAA919C();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    v20 = sub_24BAA91FC();
    sub_24B8F35E4(v5, &qword_27F063CD8);
    KeyPath = swift_getKeyPath();
    sub_24BAA9D1C();
    sub_24BAA83BC();
    LOBYTE(v97) = 1;
    v22 = sub_24BAA982C();
    v23 = swift_getKeyPath();
    *&v56[0] = v17;
    WORD4(v56[0]) = 256;
    *(v56 + 10) = *v55;
    *(&v56[1] + 10) = *&v55[16];
    *(&v56[2] + 10) = *&v55[32];
    *(&v56[3] + 1) = *&v55[46];
    v57 = v18;
    v41 = v56[2];
    v42 = v56[3];
    v39 = v56[0];
    v40 = v56[1];
    v58 = 0.0;
    LOWORD(v59) = 1;
    WORD3(v59) = v54;
    *(&v59 + 2) = v53;
    *(&v59 + 1) = KeyPath;
    *&v60[0] = v20;
    *(&v60[2] + 8) = v52;
    *(&v60[1] + 8) = v51;
    *(v60 + 8) = v50;
    *(&v60[3] + 1) = v23;
    *&v61 = v22;
    v43 = *&v18;
    v44 = v59;
    v47 = v60[2];
    v48 = v60[3];
    v49 = v22;
    v45 = v60[0];
    v46 = v60[1];
    v69 = *&v18;
    LOWORD(v70) = 1;
    WORD3(v70) = v54;
    *(&v70 + 2) = v53;
    *(&v70 + 1) = KeyPath;
    *&v71[0] = v20;
    *(&v71[2] + 8) = v52;
    *(&v71[1] + 8) = v51;
    *(v71 + 8) = v50;
    *(&v71[3] + 1) = v23;
    *&v72 = v22;
    sub_24B8F3208(v56, &v97, &qword_27F064D98);
    sub_24B8F3208(&v57, &v97, &qword_27F0692F8);
    sub_24B8F35E4(&v69, &qword_27F0692F8);
    *&v64[0] = v17;
    WORD4(v64[0]) = 256;
    *(v64 + 10) = *v55;
    *(&v64[1] + 10) = *&v55[16];
    *(&v64[2] + 10) = *&v55[32];
    *(&v64[3] + 1) = *&v55[46];
    sub_24B8F35E4(v64, &qword_27F064D98);
    v85 = v47;
    v86 = v48;
    v87 = v49;
    v81 = v43;
    v82 = v44;
    v84 = v46;
    v83 = v45;
    v77 = v39;
    v78 = v40;
    v80 = v42;
    v79 = v41;
    nullsub_1(&v77);
    v105 = v85;
    v106 = v86;
    v107 = v87;
    v101 = v81;
    v102 = v82;
    v104 = v84;
    v103 = v83;
    v97 = v77;
    v98 = v78;
    v100 = v80;
    v99 = v79;
  }

  else
  {
    sub_24BA33310(&v97);
  }

  v85 = v105;
  v86 = v106;
  v81 = v101;
  v82 = v102;
  v84 = v104;
  v83 = v103;
  v77 = v97;
  v78 = v98;
  v80 = v100;
  v79 = v99;
  *v64 = v11 * 0.5;
  *(v64 + 1) = v11;
  v24 = v32;
  *&v64[1] = __PAIR64__(v34, v32);
  v25 = v34;
  *(&v64[1] + 1) = v12;
  v26 = v33;
  *&v64[2] = v33;
  *(&v64[2] + 1) = v13;
  v28 = v36;
  v27 = v37;
  *&v64[3] = v37;
  WORD4(v64[3]) = 256;
  HIWORD(v64[3]) = v112;
  *(&v64[3] + 10) = v111;
  *&v65 = v36;
  v29 = v35;
  *(&v65 + 1) = v35;
  v67 = v109;
  v68 = v110;
  v66 = v108;
  v63[6] = v109;
  v63[7] = v110;
  v63[4] = v65;
  v63[5] = v108;
  v63[0] = v64[0];
  v63[1] = v64[1];
  v63[2] = v64[2];
  v63[3] = v64[3];
  v69 = v97;
  v70 = v98;
  v71[3] = v102;
  v71[2] = v101;
  v71[0] = v99;
  v71[1] = v100;
  v75 = v106;
  v74 = v105;
  v72 = v103;
  v73 = v104;
  v63[16] = v105;
  v63[17] = v106;
  v63[12] = v101;
  v63[13] = v102;
  v63[14] = v103;
  v63[15] = v104;
  v87 = v107;
  v76 = v107;
  *&v63[18] = v107;
  v63[8] = v97;
  v63[9] = v98;
  v63[10] = v99;
  v63[11] = v100;
  memcpy(v38, v63, 0x128uLL);
  sub_24B8F3208(v64, &v57, &qword_27F0692F0);
  sub_24B8F3208(&v69, &v57, qword_27F069370);
  sub_24B8F35E4(&v77, qword_27F069370);
  v57 = v11 * 0.5;
  v58 = v11;
  *&v59 = __PAIR64__(v25, v24);
  *(&v59 + 1) = v12;
  *&v60[0] = v26;
  *(&v60[0] + 1) = v13;
  *&v60[1] = v27;
  WORD4(v60[1]) = 256;
  *(&v60[1] + 10) = v111;
  HIWORD(v60[1]) = v112;
  *&v60[2] = v28;
  *(&v60[2] + 1) = v29;
  v61 = v109;
  v62 = v110;
  v60[3] = v108;
  return sub_24B8F35E4(&v57, &qword_27F0692F0);
}

uint64_t sub_24BA2FB94(uint64_t a1)
{
  v3 = sub_24BAA89FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 36);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_24BAAA2BC();
    v9 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();
    sub_24B8FFD5C(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_24BA2FD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v99 = sub_24BAA8E7C();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_24BAA8FBC();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_24BAA8B7C();
  v92 = *(v93 - 8);
  v6 = MEMORY[0x28223BE20](v93);
  v91 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a1;
  v90 = *(a1 - 8);
  v104 = *(v90 + 64);
  MEMORY[0x28223BE20](v6);
  v103 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  sub_24BAA905C();
  sub_24BAA85EC();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069248);
  v11 = *(a1 + 24);
  v12 = type metadata accessor for BadgedItemView.badgedItemStyle();
  v13 = sub_24B8F384C(&qword_27F069250, &qword_27F069248);
  WitnessTable = swift_getWitnessTable();
  v116 = v10;
  v117 = v12;
  v118 = v13;
  v119 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_24BAAA3FC();
  swift_getTupleTypeMetadata2();
  sub_24BAA9DBC();
  swift_getWitnessTable();
  sub_24BAA9B3C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069258);
  swift_getTupleTypeMetadata2();
  sub_24BAA9DBC();
  swift_getWitnessTable();
  v15 = sub_24BAA9B1C();
  v86 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v62 = &v61 - v16;
  v71 = v15;
  v17 = sub_24BAA85EC();
  v85 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v77 = &v61 - v18;
  v73 = v17;
  v19 = sub_24BAA85EC();
  v87 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v75 = &v61 - v20;
  v21 = swift_getWitnessTable();
  v68 = v21;
  v22 = sub_24BA32650();
  v114 = v21;
  v115 = v22;
  v88 = MEMORY[0x277CDFAD8];
  v23 = swift_getWitnessTable();
  v67 = v23;
  v89 = sub_24BA33BAC(&qword_27F0690A0, MEMORY[0x277CDE470]);
  v112 = v23;
  v113 = v89;
  v70 = v19;
  v69 = swift_getWitnessTable();
  v116 = v19;
  v117 = v69;
  v78 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v81 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v66 = &v61 - v24;
  v79 = sub_24BAA85EC();
  v83 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v72 = &v61 - v25;
  v82 = sub_24BAA85EC();
  v84 = *(v82 - 8);
  v26 = MEMORY[0x28223BE20](v82);
  v76 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v80 = &v61 - v28;
  v64 = v9;
  v105 = v9;
  v106 = v11;
  v63 = v11;
  v101 = v2;
  v107 = v2;
  sub_24BAA8BCC();
  sub_24BAA9B0C();
  v29 = v90;
  v65 = *(v90 + 16);
  v30 = v103;
  v31 = v2;
  v32 = v102;
  v65(v103, v31, v102);
  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v9;
  *(v34 + 24) = v11;
  v90 = *(v29 + 32);
  (v90)(v34 + v33, v30, v32);
  v35 = v77;
  v36 = v71;
  v37 = v62;
  sub_24BAA969C();

  (*(v86 + 8))(v37, v36);
  v38 = v91;
  sub_24BAA8B5C();
  v39 = v75;
  v40 = v73;
  sub_24BAA961C();
  (*(v92 + 8))(v38, v93);
  (*(v85 + 8))(v35, v40);
  v41 = v94;
  sub_24BAA8F8C();
  v42 = v66;
  v43 = v70;
  v44 = v69;
  sub_24BAA95FC();
  (*(v95 + 8))(v41, v96);
  (*(v87 + 8))(v39, v43);
  v45 = v103;
  v46 = v102;
  v65(v103, v101, v102);
  v47 = swift_allocObject();
  v48 = v63;
  *(v47 + 16) = v64;
  *(v47 + 24) = v48;
  (v90)(v47 + v33, v45, v46);
  v116 = v43;
  v117 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v97;
  sub_24BAA8E6C();
  v51 = v72;
  v52 = OpaqueTypeMetadata2;
  sub_24BAA95DC();

  (*(v98 + 8))(v50, v99);
  (*(v81 + 8))(v42, v52);
  sub_24BA2FB94(v46);
  v110 = OpaqueTypeConformance2;
  v111 = v89;
  v53 = v79;
  v54 = swift_getWitnessTable();
  v55 = v76;
  sub_24BAA96AC();
  (*(v83 + 8))(v51, v53);
  v108 = v54;
  v109 = MEMORY[0x277CDF900];
  v56 = v82;
  v57 = swift_getWitnessTable();
  v58 = v80;
  sub_24BA0EEC4(v55, v56, v57);
  v59 = *(v84 + 8);
  v59(v55, v56);
  sub_24BA0EEC4(v58, v56, v57);
  return (v59)(v58, v56);
}

uint64_t sub_24BA30A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a4;
  v67 = sub_24BAA8B9C();
  v63 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069258);
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v69 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v54 - v11;
  sub_24BAA905C();
  sub_24BAA85EC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069248);
  v13 = type metadata accessor for BadgedItemView.badgedItemStyle();
  v14 = sub_24B8F384C(&qword_27F069250, &qword_27F069248);
  WitnessTable = swift_getWitnessTable();
  *&v90 = v12;
  *(&v90 + 1) = v13;
  *&v91 = v14;
  *(&v91 + 1) = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_24BAAA3FC();
  swift_getTupleTypeMetadata2();
  sub_24BAA9DBC();
  swift_getWitnessTable();
  v16 = sub_24BAA9B3C();
  v59 = *(v16 - 8);
  v17 = v59;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v20;
  MEMORY[0x28223BE20](v18);
  v61 = &v54 - v21;
  sub_24BAA9CCC();
  v74 = a2;
  v75 = a3;
  v76 = a1;
  sub_24BAA9B2C();
  v60 = v16;
  v62 = swift_getWitnessTable();
  sub_24BA0EEC4(v20, v16, v62);
  v22 = *(v17 + 8);
  v64 = v17 + 8;
  v65 = v22;
  v22(v20, v16);
  v23 = type metadata accessor for BadgedItemView();
  v24 = (a1 + *(v23 + 44));
  v25 = v24[1];
  v57 = *v24;
  *&v90 = v57;
  *(&v90 + 1) = v25;
  v58 = sub_24B8F5E3C();
  swift_bridgeObjectRetain_n();
  v26 = sub_24BAA93CC();
  v55 = v27;
  v56 = v26;
  v29 = v28;
  v54 = v30;
  v31 = v66;
  sub_24BA8DAA8(v66);
  LOBYTE(a3) = sub_24BAA8B8C();
  (*(v63 + 8))(v31, v67);
  v32 = 1;
  if (a3)
  {
    v32 = 2;
  }

  v67 = v32;
  KeyPath = swift_getKeyPath();
  v34 = sub_24BAA924C();
  v35 = swift_getKeyPath();
  v36 = v29 & 1;
  v99 = v29 & 1;
  v98 = 0;
  v37 = sub_24BAA989C();
  v38 = swift_getKeyPath();
  v39 = swift_getKeyPath();
  v40 = a1 + *(v23 + 72);
  v41 = *v40;
  if (*(v40 + 8))
  {
    v41 = 0.0;
  }

  *&v82 = v56;
  *(&v82 + 1) = v55;
  LOBYTE(v83) = v36;
  *(&v83 + 1) = v54;
  *&v84 = KeyPath;
  *(&v84 + 1) = v67;
  LOBYTE(v85) = 0;
  *(&v85 + 1) = v35;
  *&v86 = v34;
  *(&v86 + 1) = v38;
  *&v87 = v37;
  *(&v87 + 1) = v39;
  LOBYTE(v88) = 1;
  *(&v88 + 1) = 0;
  v89 = v41;
  v80 = v57;
  v81 = v25;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069268);
  v42 = sub_24BA329A0();
  v43 = v68;
  v44 = v58;
  sub_24BAA966C();

  v94 = v86;
  v95 = v87;
  v96 = v88;
  v97 = v89;
  v90 = v82;
  v91 = v83;
  v92 = v84;
  v93 = v85;
  sub_24B8F35E4(&v90, &qword_27F069268);
  v45 = v60;
  v46 = v73;
  v47 = v61;
  (*(v59 + 16))(v73, v61, v60);
  v80 = v46;
  v49 = v69;
  v48 = v70;
  v50 = v71;
  (*(v70 + 16))(v69, v43, v71);
  v79[0] = v45;
  v79[1] = v50;
  v77 = v62;
  v81 = v49;
  *&v82 = v67;
  *(&v82 + 1) = MEMORY[0x277D837D0];
  *&v83 = v42;
  *(&v83 + 1) = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24BA2D4C8(&v80, 2uLL, v79);
  v51 = *(v48 + 8);
  v51(v43, v50);
  v52 = v65;
  v65(v47, v45);
  v51(v49, v50);
  return v52(v73, v45);
}

uint64_t sub_24BA3112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069248);
  v68 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v67 = &v63 - v8;
  v9 = type metadata accessor for BadgedItemView.badgedItemStyle();
  v10 = sub_24B8F384C(&qword_27F069250, &qword_27F069248);
  WitnessTable = swift_getWitnessTable();
  v84 = v7;
  v85 = v10;
  v92 = v7;
  v93 = v9;
  v82 = v9;
  v83 = WitnessTable;
  v94 = v10;
  v95 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v66 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v64 = &v63 - v15;
  v72 = v16;
  v79 = sub_24BAAA3FC();
  v77 = *(v79 - 8);
  v17 = MEMORY[0x28223BE20](v79);
  v81 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v78 = &v63 - v19;
  v76 = sub_24BAA8B7C();
  v20 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24BAA905C();
  v23 = a2;
  v24 = sub_24BAA85EC();
  v86 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v63 - v28;
  v30 = type metadata accessor for BadgedItemView();
  sub_24BAA8B4C();
  v65 = v23;
  sub_24BAA963C();
  (*(v20 + 8))(v22, v76);
  v31 = sub_24BA33BAC(&qword_27F0690A0, MEMORY[0x277CDE470]);
  v91[2] = a3;
  v91[3] = v31;
  v32 = swift_getWitnessTable();
  v73 = v29;
  v69 = v32;
  sub_24BA0EEC4(v27, v24, v32);
  v33 = *(v86 + 8);
  v76 = v27;
  v75 = v24;
  v71 = v86 + 8;
  v70 = v33;
  v33(v27, v24);
  v34 = (a1 + *(v30 + 80));
  v35 = *v34;
  v36 = *(v34 + 1);
  LOBYTE(v92) = v35;
  v93 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  v37 = sub_24BAA99FC();
  if (LOBYTE(v91[0]) == 1)
  {
    MEMORY[0x28223BE20](v37);
    *(&v63 - 4) = v65;
    *(&v63 - 3) = a3;
    *(&v63 - 2) = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0692A8);
    sub_24BA32BA8();
    v38 = v67;
    sub_24BAA9A5C();
    v39 = swift_checkMetadataState();
    v40 = v66;
    v42 = v84;
    v41 = v85;
    v43 = v83;
    sub_24BAA945C();
    (*(v68 + 8))(v38, v42);
    v92 = v42;
    v93 = v39;
    v94 = v41;
    v95 = v43;
    v44 = v81;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v64;
    v47 = v72;
    sub_24BA0EEC4(v40, v72, OpaqueTypeConformance2);
    v48 = v74;
    v49 = *(v74 + 8);
    v49(v40, v47);
    sub_24BA0EEC4(v46, v47, OpaqueTypeConformance2);
    v49(v46, v47);
    (*(v48 + 32))(v44, v40, v47);
    v50 = 0;
    v51 = v47;
  }

  else
  {
    v50 = 1;
    v51 = v72;
    v48 = v74;
  }

  v52 = v81;
  (*(v48 + 56))(v81, v50, 1, v51);
  v53 = v77;
  v54 = *(v77 + 16);
  v55 = v78;
  v56 = v79;
  v54(v78, v52, v79);
  v57 = *(v53 + 8);
  v57(v52, v56);
  v58 = v76;
  v59 = v73;
  v60 = v75;
  (*(v86 + 16))(v76, v73, v75);
  v91[0] = v58;
  v54(v52, v55, v56);
  v91[1] = v52;
  v90[0] = v60;
  v90[1] = v56;
  v88 = v69;
  v92 = v84;
  v93 = v82;
  v94 = v85;
  v95 = v83;
  v87 = swift_getOpaqueTypeConformance2();
  v89 = swift_getWitnessTable();
  sub_24BA2D4C8(v91, 2uLL, v90);
  v57(v55, v56);
  v61 = v70;
  v70(v59, v60);
  v57(v52, v56);
  return v61(v58, v60);
}

uint64_t sub_24BA319FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v32 = a1;
  v3 = a1;
  v33 = a3;
  v4 = sub_24BAA8ABC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24BAA975C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24BAA9D1C();
  v29 = v13;
  v30 = v12;
  sub_24BA31D78(v3, v38);
  memcpy(v35, v38, sizeof(v35));
  memcpy(v36, v38, sizeof(v36));
  sub_24B8F3208(v35, v34, &qword_27F0692E8);
  sub_24B8F35E4(v36, &qword_27F0692E8);
  memcpy(v37, v35, sizeof(v37));
  LOBYTE(v3) = sub_24BAA90BC();
  sub_24BAA828C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v38[0] = 0;
  (*(v9 + 104))(v11, *MEMORY[0x277CE0EE0], v8);
  v22 = sub_24BAA98BC();
  *v34 = v30;
  *&v34[8] = v29;
  memcpy(&v34[16], v37, 0x128uLL);
  v34[312] = v3;
  *&v34[320] = v15;
  *&v34[328] = v17;
  *&v34[336] = v19;
  *&v34[344] = v21;
  v34[352] = 0;
  *&v34[360] = v22;
  *&v34[368] = xmmword_24BABA580;
  *&v34[384] = 0x3FF0000000000000;
  (*(v5 + 104))(v7, *MEMORY[0x277CE00F0], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0692B8);
  sub_24BA32C70();
  v23 = v33;
  sub_24BAA94AC();
  (*(v5 + 8))(v7, v4);
  memcpy(v38, v34, 0x188uLL);
  sub_24B8F35E4(v38, &qword_27F0692B8);
  v24 = v32 + *(type metadata accessor for BadgedItemView() + 64);
  if (*(v24 + 8))
  {
    v25 = -15.0;
  }

  else
  {
    v25 = *v24 + -15.0;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0692A8);
  v27 = (v23 + *(result + 36));
  *v27 = v25;
  v27[1] = v25;
  return result;
}

uint64_t sub_24BA31D78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v26 = sub_24BAA992C();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() tertiaryLabelColor];
  v31 = sub_24BAA973C();
  sub_24BAA832C();
  v10 = v43;
  v11 = v43 * 0.5;
  v33 = v45;
  v34 = v44;
  v12 = v46;
  v32 = v47;
  v13 = v48;
  v30 = sub_24BAA9D1C();
  v35 = v14;
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v15 = type metadata accessor for BadgedItemView();
  v28 = *(a1 + *(v15 + 60));
  sub_24BAA9D1C();
  sub_24BAA83BC();
  *&v42[6] = v49;
  *&v42[22] = v50;
  *&v42[38] = v51;

  sub_24BAA991C();
  v16 = v26;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0FE0], v26);
  v27 = sub_24BAA997C();

  (*(v6 + 8))(v8, v16);
  sub_24BAA91EC();
  v17 = sub_24BAA919C();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v18 = sub_24BAA91FC();
  sub_24B8F35E4(v5, &qword_27F063CD8);
  KeyPath = swift_getKeyPath();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  LOBYTE(v86[0]) = 1;
  v20 = *(a1 + *(v15 + 52));
  v21 = swift_getKeyPath();
  *&v57 = v11;
  *(&v57 + 1) = v10;
  *&v58 = __PAIR64__(v33, v34);
  *(&v58 + 1) = v12;
  *&v59 = v32;
  *(&v59 + 1) = v13;
  *&v60 = v31;
  WORD4(v60) = 256;
  HIWORD(v60) = v56;
  *(&v60 + 10) = v55;
  *&v61 = v30;
  *(&v61 + 1) = v35;
  v63 = v53;
  v64 = v54;
  v62 = v52;
  v36[2] = v59;
  v36[3] = v60;
  v36[0] = v57;
  v36[1] = v58;
  v36[6] = v53;
  v36[7] = v54;
  v36[4] = v61;
  v36[5] = v52;
  v22 = v27;
  v23 = v28;
  *&v65[0] = v28;
  WORD4(v65[0]) = 256;
  *(v65 + 10) = *v42;
  *(&v65[3] + 1) = *&v42[46];
  *(&v65[2] + 10) = *&v42[32];
  *(&v65[1] + 10) = *&v42[16];
  v36[10] = v65[2];
  v36[11] = v65[3];
  v36[8] = v65[0];
  v36[9] = v65[1];
  v66[0] = v27;
  v66[1] = 0;
  LOWORD(v67) = 1;
  WORD3(v67) = v41;
  *(&v67 + 2) = v40;
  *(&v67 + 1) = KeyPath;
  *&v68[0] = v18;
  *(&v68[2] + 8) = v39;
  *(&v68[1] + 8) = v38;
  *(v68 + 8) = v37;
  *(&v68[3] + 1) = v21;
  v69 = v20;
  v36[12] = v27;
  v36[13] = v67;
  *&v36[18] = v20;
  v36[16] = v68[2];
  v36[17] = v68[3];
  v36[14] = v68[0];
  v36[15] = v68[1];
  memcpy(v29, v36, 0x128uLL);
  v70[0] = v22;
  v70[1] = 0;
  v71 = 1;
  v72 = v40;
  v73 = v41;
  v74 = KeyPath;
  v75 = v18;
  v76 = v37;
  v77 = v38;
  v78 = v39;
  v79 = v21;
  v80 = v20;

  sub_24B8F3208(&v57, v86, &qword_27F0692F0);
  sub_24B8F3208(v65, v86, &qword_27F064D98);
  sub_24B8F3208(v66, v86, &qword_27F0692F8);
  sub_24B8F35E4(v70, &qword_27F0692F8);
  v81 = v23;
  v82 = 256;
  v83 = *v42;
  v84 = *&v42[16];
  *v85 = *&v42[32];
  *&v85[14] = *&v42[46];
  sub_24B8F35E4(&v81, &qword_27F064D98);
  *v86 = v11;
  *&v86[1] = v10;
  v87 = v34;
  v88 = v33;
  v89 = v12;
  v90 = v32;
  v91 = v13;
  v92 = v31;
  v93 = 256;
  v94 = v55;
  v95 = v56;
  v96 = v30;
  v97 = v35;
  v100 = v54;
  v99 = v53;
  v98 = v52;
  return sub_24B8F35E4(v86, &qword_27F0692F0);
}

uint64_t sub_24BA323EC()
{
  type metadata accessor for BadgedItemView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  return sub_24BAA9A0C();
}

uint64_t sub_24BA32468@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24BAA8E9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0693F8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  sub_24BAA8EAC();
  if (sub_24BAA8EBC())
  {
    v10 = 0.95;
  }

  else
  {
    v10 = 1.0;
  }

  sub_24BAA9DFC();
  v12 = v11;
  v14 = v13;
  (*(v3 + 32))(v9, v5, v2);
  v15 = &v9[*(v7 + 44)];
  *v15 = v10;
  *(v15 + 1) = v10;
  *(v15 + 2) = v12;
  *(v15 + 3) = v14;
  v16 = sub_24BAA9D5C();
  v17 = sub_24BAA8EBC();
  sub_24BA339C4(v9, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069400);
  v19 = a1 + *(result + 36);
  *v19 = v16;
  *(v19 + 8) = v17 & 1;
  return result;
}

unint64_t sub_24BA32650()
{
  result = qword_27F069260;
  if (!qword_27F069260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069260);
  }

  return result;
}

uint64_t sub_24BA326B4()
{
  type metadata accessor for BadgedItemView();

  return sub_24BA323EC();
}

uint64_t objectdestroyTm_18()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for BadgedItemView();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v0 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24BAA8B9C();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
  }

  sub_24B8FFD5C(*(v6 + *(v2 + 36)), *(v6 + *(v2 + 36) + 8));
  (*(*(v1 - 8) + 8))(v6 + *(v2 + 40), v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

unint64_t sub_24BA329A0()
{
  result = qword_27F069270;
  if (!qword_27F069270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069268);
    sub_24BA32A2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069270);
  }

  return result;
}

unint64_t sub_24BA32A2C()
{
  result = qword_27F069278;
  if (!qword_27F069278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069280);
    sub_24BA32AE4();
    sub_24B8F384C(&qword_27F069298, &qword_27F0692A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069278);
  }

  return result;
}

unint64_t sub_24BA32AE4()
{
  result = qword_27F069288;
  if (!qword_27F069288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069290);
    sub_24B9D38F4();
    sub_24B8F384C(&qword_27F0639C8, &qword_27F0639D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069288);
  }

  return result;
}

unint64_t sub_24BA32BA8()
{
  result = qword_27F0692B0;
  if (!qword_27F0692B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0692A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0692B8);
    sub_24BA32C70();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0692B0);
  }

  return result;
}

unint64_t sub_24BA32C70()
{
  result = qword_27F0692C0;
  if (!qword_27F0692C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0692B8);
    sub_24BA32CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0692C0);
  }

  return result;
}

unint64_t sub_24BA32CFC()
{
  result = qword_27F0692C8;
  if (!qword_27F0692C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0692D0);
    sub_24B8F384C(&qword_27F0692D8, &qword_27F0692E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0692C8);
  }

  return result;
}

uint64_t sub_24BA32DB8()
{
  v1 = *(type metadata accessor for ToggleableBadgedItemView() - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_24BA2E260(v2);
}

uint64_t objectdestroy_28Tm()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for ToggleableBadgedItemView();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24BAA8B9C();
    (*(*(v6 - 8) + 8))(v0 + v4, v6);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v0 + v4 + *(v2 + 36), v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24BA32FEC()
{
  v1 = type metadata accessor for ToggleableBadgedItemView();
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)) + *(v1 + 56));
  v3 = sub_24BA2D698();
  return v2(v3 & 1);
}

unint64_t sub_24BA33088()
{
  result = qword_27F069330;
  if (!qword_27F069330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069300);
    sub_24BA33114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069330);
  }

  return result;
}

unint64_t sub_24BA33114()
{
  result = qword_27F069338;
  if (!qword_27F069338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069328);
    sub_24BA331A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069338);
  }

  return result;
}

unint64_t sub_24BA331A0()
{
  result = qword_27F069340;
  if (!qword_27F069340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069318);
    sub_24BA33258();
    sub_24B8F384C(&qword_27F069368, &qword_27F069320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069340);
  }

  return result;
}

unint64_t sub_24BA33258()
{
  result = qword_27F069348;
  if (!qword_27F069348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069350);
    sub_24B8F384C(&qword_27F069358, &qword_27F069360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069348);
  }

  return result;
}

double sub_24BA33310(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24BA33338()
{
  sub_24BAA905C();
  sub_24BAA85EC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069248);
  type metadata accessor for BadgedItemView.badgedItemStyle();
  sub_24B8F384C(&qword_27F069250, &qword_27F069248);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24BAAA3FC();
  swift_getTupleTypeMetadata2();
  sub_24BAA9DBC();
  swift_getWitnessTable();
  sub_24BAA9B3C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069258);
  swift_getTupleTypeMetadata2();
  sub_24BAA9DBC();
  swift_getWitnessTable();
  sub_24BAA9B1C();
  sub_24BAA85EC();
  sub_24BAA85EC();
  swift_getWitnessTable();
  sub_24BA32650();
  swift_getWitnessTable();
  sub_24BA33BAC(&qword_27F0690A0, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24BAA85EC();
  sub_24BAA85EC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24BA3366C()
{
  sub_24BAA85EC();
  sub_24BAA85EC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069300);
  swift_getTupleTypeMetadata2();
  sub_24BAA9DBC();
  swift_getWitnessTable();
  sub_24BAA9B3C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069308);
  swift_getTupleTypeMetadata2();
  sub_24BAA9DBC();
  swift_getWitnessTable();
  sub_24BAA9B1C();
  swift_getWitnessTable();
  sub_24BAA9A8C();
  sub_24BAA866C();
  swift_getWitnessTable();
  sub_24BA33BAC(&qword_27F063BF8, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24BAA905C();
  sub_24BAA85EC();
  swift_getOpaqueTypeConformance2();
  sub_24BA33BAC(&qword_27F0690A0, MEMORY[0x277CDE470]);
  return swift_getWitnessTable();
}

uint64_t sub_24BA339C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0693F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24BA33A38()
{
  result = qword_27F069408;
  if (!qword_27F069408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069400);
    sub_24BA33AF0();
    sub_24B8F384C(&qword_27F069420, &qword_27F069428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069408);
  }

  return result;
}

unint64_t sub_24BA33AF0()
{
  result = qword_27F069410;
  if (!qword_27F069410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0693F8);
    sub_24BA33BAC(&qword_27F069418, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069410);
  }

  return result;
}

uint64_t sub_24BA33BAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t exceptionTypeLocalizationKey(_:)(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x4445434E454C4953;
  }

  else
  {
    return 0x4445574F4C4C41;
  }
}

uint64_t sub_24BA33C34()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 40);
  v17 = v2;
  v18 = v3;
  v19 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066408);
  MEMORY[0x24C24FC10](&v16);
  if (v16 != 2)
  {
    v17 = v2;
    v18 = v3;
    v19 = v4;
    MEMORY[0x24C24FC10](&v16, v6);
    return v16;
  }

  if (v5)
  {
    if (v1)
    {

      sub_24B984444();
      v7 = sub_24B8D7188();
      if (v7)
      {
        v8 = &selRef_senderConfigurationType;
        goto LABEL_10;
      }

      goto LABEL_12;
    }

LABEL_19:
    type metadata accessor for ActivityConfigViewModel();
    sub_24BA37188(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    result = sub_24BAA86DC();
    __break(1u);
    return result;
  }

  if (!v1)
  {
    goto LABEL_19;
  }

  sub_24B984444();
  v7 = sub_24B8D7188();
  if (v7)
  {
    v8 = &selRef_applicationConfigurationType;
LABEL_10:
    v10 = v7;
    v11 = [v7 configuration];
    v12 = [v11 *v8];

    result = v12;
    if (v12 != 2)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_12:

LABEL_13:

  sub_24B984444();
  v13 = sub_24B8D7188();

  if (v13)
  {
    v14 = [v13 mode];

    v15 = [v14 semanticType];

    if (v15 == 5)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t ExceptionModelPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  *a1 = sub_24BAA8BDC();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069430);
  return sub_24BA33EDC(v7, (a1 + *(v5 + 44)));
}

uint64_t sub_24BA33EDC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069448);
  MEMORY[0x28223BE20](v3);
  v5 = &v50 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069450);
  v61 = *(v56 - 8);
  v6 = MEMORY[0x28223BE20](v56);
  v60 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - v8;
  *v5 = sub_24BAA8BDC();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069458);
  sub_24BA34518(a1, &v5[*(v10 + 44)]);
  v11 = *(a1 + 41);
  KeyPath = swift_getKeyPath();
  v13 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069460) + 36)];
  *v13 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  *(v13 + *(type metadata accessor for exceptionsPlatter(0) + 20)) = v11;
  v14 = sub_24BAA9D1C();
  v16 = v15;
  v17 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065610) + 36));
  *v17 = v14;
  v17[1] = v16;
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  *(v18 + 1) = *a1;
  *(v18 + 2) = v19;
  v20 = *(a1 + 48);
  *(v18 + 3) = *(a1 + 32);
  *(v18 + 4) = v20;
  v21 = &v5[*(v3 + 36)];
  *v21 = sub_24BA36D08;
  v21[1] = v18;
  v21[2] = 0;
  v21[3] = 0;
  v67 = *(a1 + 48);
  sub_24BA36D10(a1, &v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069468);
  sub_24BAA99FC();
  v22 = swift_allocObject();
  v23 = *(a1 + 16);
  v22[1] = *a1;
  v22[2] = v23;
  v24 = *(a1 + 48);
  v22[3] = *(a1 + 32);
  v22[4] = v24;
  sub_24BA36D10(a1, &v74);
  type metadata accessor for DNDConfigurationType(0);
  sub_24BA36DA8();
  sub_24BA37188(&qword_27F067C50, type metadata accessor for DNDConfigurationType);
  v55 = v9;
  sub_24BAA96DC();

  sub_24B8F35E4(v5, &qword_27F069448);
  v25 = *(a1 + 16);
  v74 = *a1;
  v75 = v25;
  v26 = *(a1 + 48);
  v76 = *(a1 + 32);
  v77 = v26;
  *&v67 = sub_24BA35D40();
  *(&v67 + 1) = v27;
  sub_24B8F5E3C();
  v59 = sub_24BAA93CC();
  v50 = v28;
  v51 = v29;
  LOBYTE(v13) = v30;
  v52 = swift_getKeyPath();
  LOBYTE(v74) = v13 & 1;
  LOBYTE(v3) = v13 & 1;
  v54 = v13 & 1;
  LOBYTE(v67) = 1;
  *(&v58 + 1) = sub_24BAA989C();
  *&v58 = swift_getKeyPath();
  v31 = sub_24BAA927C();
  v32 = swift_getKeyPath();
  v53 = v32;
  LOBYTE(v13) = sub_24BAA90AC();
  LOBYTE(v74) = 1;
  v33 = v60;
  v34 = *(v61 + 16);
  v35 = v56;
  v34(v60, v9, v56);
  v36 = v57;
  v37 = v33;
  v38 = v35;
  v34(v57, v37, v35);
  v39 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069498) + 48)];
  v41 = v50;
  v40 = v51;
  *&v67 = v59;
  *(&v67 + 1) = v50;
  LOBYTE(v68) = v3;
  *(&v68 + 1) = *v64;
  DWORD1(v68) = *&v64[3];
  *(&v68 + 1) = v51;
  LOWORD(v69) = 256;
  *(&v69 + 2) = v62;
  WORD3(v69) = v63;
  v42 = v52;
  *(&v69 + 1) = v52;
  *&v70 = 0;
  BYTE8(v70) = 1;
  *(&v70 + 9) = *v65;
  HIDWORD(v70) = *&v65[3];
  v71 = v58;
  *&v72 = v32;
  *(&v72 + 1) = v31;
  LOBYTE(v73[0]) = v13;
  *(v73 + 1) = *v66;
  DWORD1(v73[0]) = *&v66[3];
  *(v73 + 8) = 0u;
  *(&v73[1] + 8) = 0u;
  BYTE8(v73[2]) = 1;
  v43 = v70;
  *(v39 + 2) = v69;
  *(v39 + 3) = v43;
  v44 = v68;
  *v39 = v67;
  *(v39 + 1) = v44;
  v45 = v71;
  v46 = v72;
  *(v39 + 121) = *(&v73[1] + 9);
  v47 = v73[1];
  *(v39 + 6) = v73[0];
  *(v39 + 7) = v47;
  *(v39 + 4) = v45;
  *(v39 + 5) = v46;
  sub_24B8F3208(&v67, &v74, &qword_27F0694A0);
  v48 = *(v61 + 8);
  v48(v55, v38);
  *&v74 = v59;
  *(&v74 + 1) = v41;
  LOBYTE(v75) = v54;
  *(&v75 + 1) = *v64;
  DWORD1(v75) = *&v64[3];
  *(&v75 + 1) = v40;
  LOWORD(v76) = 256;
  *(&v76 + 2) = v62;
  WORD3(v76) = v63;
  *(&v76 + 1) = v42;
  *&v77 = 0;
  BYTE8(v77) = 1;
  HIDWORD(v77) = *&v65[3];
  *(&v77 + 9) = *v65;
  v78 = v58;
  v79 = v53;
  v80 = v31;
  v81 = v13;
  *v82 = *v66;
  *&v82[3] = *&v66[3];
  v83 = 0u;
  v84 = 0u;
  v85 = 1;
  sub_24B8F35E4(&v74, &qword_27F0694A0);
  return (v48)(v60, v38);
}

uint64_t sub_24BA34518@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v46 = sub_24BAA8B7C();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0694A8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v10 = sub_24BAA9BDC();
  v49 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v55 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0694B0);
  v45 = *(v48 - 8);
  v15 = MEMORY[0x28223BE20](v48);
  v53 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v22 = swift_allocObject();
  v23 = a1[1];
  v22[1] = *a1;
  v22[2] = v23;
  v24 = a1[3];
  v22[3] = a1[2];
  v22[4] = v24;
  v57 = a1;
  sub_24BA36D10(a1, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0694B8);
  sub_24BA36F68();
  v51 = v21;
  sub_24BAA9A5C();
  v54 = v14;
  sub_24BAA9BCC();
  v25 = swift_allocObject();
  v26 = a1[1];
  v25[1] = *a1;
  v25[2] = v26;
  v27 = a1[3];
  v25[3] = a1[2];
  v25[4] = v27;
  v56 = a1;
  sub_24BA36D10(a1, v59);
  sub_24BAA9A5C();
  v59[0] = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069468);
  sub_24BAA99FC();
  if (v58)
  {
    sub_24BAA8B3C();
    v28 = v46;
  }

  else
  {
    *&v59[0] = MEMORY[0x277D84F90];
    sub_24BA37188(&unk_27F0651E0, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064F18);
    sub_24B8F384C(&qword_27F0651F0, &qword_27F064F18);
    v29 = v46;
    sub_24BAAA48C();
    v28 = v29;
  }

  sub_24B8F384C(&qword_27F0694E8, &qword_27F0694B0);
  v30 = v48;
  sub_24BAA963C();
  (*(v47 + 8))(v4, v28);
  v31 = v45;
  v47 = *(v45 + 8);
  (v47)(v19, v30);
  v32 = *(v31 + 16);
  v33 = v53;
  v32(v53, v51, v30);
  v34 = v49;
  v35 = v9;
  v44 = v9;
  v36 = *(v49 + 16);
  v36(v55, v54, v10);
  sub_24B8F3208(v35, v52, &qword_27F0694A8);
  v37 = v50;
  v32(v50, v33, v30);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0694F0);
  v39 = v55;
  v36(&v37[*(v38 + 48)], v55, v10);
  v40 = v52;
  sub_24B8F3208(v52, &v37[*(v38 + 64)], &qword_27F0694A8);
  sub_24B8F35E4(v44, &qword_27F0694A8);
  v41 = *(v34 + 8);
  v41(v54, v10);
  v42 = v47;
  (v47)(v51, v30);
  sub_24B8F35E4(v40, &qword_27F0694A8);
  v41(v39, v10);
  return v42(v53, v30);
}

uint64_t sub_24BA34BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0656B8);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v38 - v5;
  v52 = sub_24BAA994C();
  v108 = *(a1 + 48);
  v86 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069468);
  sub_24BAA99FC();
  if (v64 == 1)
  {
    v6 = sub_24BAA983C();
  }

  else
  {
    v6 = sub_24BAA989C();
  }

  v51 = v6;
  KeyPath = swift_getKeyPath();
  v49 = sub_24BAA916C();
  v48 = swift_getKeyPath();
  sub_24BAA9D1C();
  sub_24BAA86BC();
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  *&v86 = sub_24BAA7C2C();
  *(&v86 + 1) = v7;
  sub_24B8F5E3C();
  v8 = sub_24BAA93CC();
  v10 = v9;
  v12 = v11;
  v86 = *(a1 + 48);
  sub_24BAA99FC();
  v13 = v64;
  sub_24BAA916C();
  if (v13 == 1)
  {
    sub_24BAA917C();
  }

  v14 = sub_24BAA939C();
  v45 = v15;
  v46 = v14;
  v17 = v16;
  v47 = v18;

  sub_24B900910(v8, v10, v12 & 1);

  v43 = swift_getKeyPath();
  v44 = sub_24BAA988C();
  v42 = swift_getKeyPath();
  v40 = v17 & 1;
  v99 = v17 & 1;
  v41 = swift_getKeyPath();
  v100 = 1;
  v86 = v108;
  sub_24BAA99FC();
  if (v64 == 1)
  {
    sub_24BAA994C();
    v19 = *MEMORY[0x277CE1020];
    v20 = sub_24BAA995C();
    v21 = *(v20 - 8);
    v22 = v39;
    (*(v21 + 104))(v39, v19, v20);
    (*(v21 + 56))(v22, 0, 1, v20);
    v23 = sub_24BAA993C();

    sub_24B8F35E4(v22, &qword_27F0656B8);
    sub_24BAA916C();
    v24 = sub_24BAA917C();

    v25 = swift_getKeyPath();
    v26 = sub_24BAA974C();
    v27 = swift_getKeyPath();
    v39 = v23;
  }

  else
  {
    v39 = 0;
    v25 = 0;
    v24 = 0;
    v27 = 0;
    v26 = 0;
  }

  *&v64 = v52;
  *(&v64 + 1) = KeyPath;
  *&v65 = v51;
  *(&v65 + 1) = v48;
  *v66 = v49;
  *&v66[72] = v105;
  *&v66[56] = v104;
  *&v66[8] = v101;
  *&v66[24] = v102;
  *&v66[88] = v106;
  *&v66[104] = v107;
  *&v66[40] = v103;
  v60 = *&v66[64];
  v61 = *&v66[80];
  v62 = *&v66[96];
  *&v63[0] = *(&v107 + 1);
  v56 = *v66;
  v57 = *&v66[16];
  v58 = *&v66[32];
  v59 = *&v66[48];
  v54 = v64;
  v55 = v65;
  *&v67 = v46;
  *(&v67 + 1) = v45;
  LOBYTE(v68) = v40;
  *(&v68 + 1) = *v98;
  DWORD1(v68) = *&v98[3];
  *(&v68 + 1) = v47;
  *&v69 = v43;
  BYTE8(v69) = 0;
  HIDWORD(v69) = *&v97[3];
  *(&v69 + 9) = *v97;
  *&v70 = v42;
  *(&v70 + 1) = v44;
  v71 = v41;
  v72 = 0;
  v73 = 1;
  *(&v63[1] + 8) = v68;
  *(v63 + 8) = v67;
  BYTE8(v63[5]) = 1;
  *(&v63[4] + 8) = v41;
  *(&v63[3] + 8) = v70;
  *(&v63[2] + 8) = v69;
  v53 = 1;
  sub_24B8F3208(&v64, &v86, &qword_27F069500);
  sub_24B8F3208(&v67, &v86, &qword_27F063F58);
  v28 = v39;
  sub_24B952BE4(v39);
  sub_24B952C54(v28);
  v29 = v53;
  v30 = v63[4];
  *(a2 + 192) = v63[3];
  *(a2 + 208) = v30;
  *(a2 + 224) = v63[5];
  v31 = v63[0];
  *(a2 + 128) = v62;
  *(a2 + 144) = v31;
  v32 = v63[2];
  *(a2 + 160) = v63[1];
  *(a2 + 176) = v32;
  v33 = v59;
  *(a2 + 64) = v58;
  *(a2 + 80) = v33;
  v34 = v61;
  *(a2 + 96) = v60;
  *(a2 + 112) = v34;
  v35 = v55;
  *a2 = v54;
  *(a2 + 16) = v35;
  v36 = v57;
  *(a2 + 32) = v56;
  *(a2 + 48) = v36;
  *(a2 + 240) = 0;
  *(a2 + 248) = v29;
  *(a2 + 256) = v28;
  *(a2 + 264) = v25;
  *(a2 + 272) = v24;
  *(a2 + 280) = v27;
  *(a2 + 288) = v26;
  sub_24B952C54(v28);
  v74[0] = v46;
  v74[1] = v45;
  v75 = v40;
  *v76 = *v98;
  *&v76[3] = *&v98[3];
  v77 = v47;
  v78 = v43;
  v79 = 0;
  *v80 = *v97;
  *&v80[3] = *&v97[3];
  v81 = v42;
  v82 = v44;
  v83 = v41;
  v84 = 0;
  v85 = 1;
  sub_24B8F35E4(v74, &qword_27F063F58);
  *&v86 = v52;
  *(&v86 + 1) = KeyPath;
  v87 = v51;
  v88 = v48;
  v89 = v49;
  v94 = v105;
  v95 = v106;
  v96 = v107;
  v90 = v101;
  v91 = v102;
  v92 = v103;
  v93 = v104;
  return sub_24B8F35E4(&v86, &qword_27F069500);
}

double sub_24BA353C8@<D0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24BAA8AAC();
  v20 = 1;
  a2(__src, a1);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v22, __src, sizeof(v22));
  sub_24B8F3208(__dst, &v17, &qword_27F0694F8);
  sub_24B8F35E4(v22, &qword_27F0694F8);
  memcpy(&v19[7], __dst, 0x128uLL);
  v7 = v20;
  LOBYTE(a2) = sub_24BAA90AC();
  LOBYTE(__src[0]) = 1;
  LOBYTE(a1) = sub_24BAA911C();
  sub_24BAA828C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  memcpy((a3 + 17), v19, 0x12FuLL);
  *(a3 + 320) = a2;
  result = 0.0;
  *(a3 + 328) = 0u;
  *(a3 + 344) = 0u;
  *(a3 + 360) = 1;
  *(a3 + 368) = a1;
  *(a3 + 376) = v9;
  *(a3 + 384) = v11;
  *(a3 + 392) = v13;
  *(a3 + 400) = v15;
  *(a3 + 408) = 0;
  return result;
}

uint64_t sub_24BA35514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0656B8);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v39 - v5;
  v52 = sub_24BAA994C();
  v107 = *(a1 + 48);
  v85 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069468);
  sub_24BAA99FC();
  if (v64)
  {
    v6 = sub_24BAA989C();
  }

  else
  {
    v6 = sub_24BAA981C();
  }

  v51 = v6;
  KeyPath = swift_getKeyPath();
  v49 = sub_24BAA916C();
  v48 = swift_getKeyPath();
  sub_24BAA9D1C();
  sub_24BAA86BC();
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  *&v85 = sub_24BAA7C2C();
  *(&v85 + 1) = v7;
  sub_24B8F5E3C();
  v8 = sub_24BAA93CC();
  v10 = v9;
  v12 = v11;
  v85 = *(a1 + 48);
  sub_24BAA99FC();
  v13 = v64;
  sub_24BAA916C();
  if (!v13)
  {
    sub_24BAA917C();
  }

  v14 = sub_24BAA939C();
  v45 = v15;
  v46 = v14;
  v17 = v16;
  v47 = v18;

  sub_24B900910(v8, v10, v12 & 1);

  v19 = swift_getKeyPath();
  *(&v44 + 1) = sub_24BAA988C();
  *&v44 = swift_getKeyPath();
  v42 = v17 & 1;
  v98 = v17 & 1;
  v43 = swift_getKeyPath();
  v99 = 1;
  v85 = v107;
  sub_24BAA99FC();
  if (v64)
  {
    v41 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    sub_24BAA994C();
    v24 = *MEMORY[0x277CE1020];
    v25 = sub_24BAA995C();
    v26 = *(v25 - 8);
    v27 = v41;
    (*(v26 + 104))(v41, v24, v25);
    (*(v26 + 56))(v27, 0, 1, v25);
    v28 = sub_24BAA993C();

    sub_24B8F35E4(v27, &qword_27F0656B8);
    sub_24BAA916C();
    v21 = sub_24BAA917C();

    v20 = swift_getKeyPath();
    v23 = sub_24BAA974C();
    v22 = swift_getKeyPath();
    v41 = v28;
  }

  v40 = v19;
  *&v64 = v52;
  *(&v64 + 1) = KeyPath;
  *&v65 = v51;
  *(&v65 + 1) = v48;
  *v66 = v49;
  *&v66[72] = v104;
  *&v66[56] = v103;
  *&v66[8] = v100;
  *&v66[24] = v101;
  *&v66[88] = v105;
  *&v66[104] = v106;
  *&v66[40] = v102;
  v60 = *&v66[64];
  v61 = *&v66[80];
  v62 = *&v66[96];
  *&v63[0] = *(&v106 + 1);
  v56 = *v66;
  v57 = *&v66[16];
  v58 = *&v66[32];
  v59 = *&v66[48];
  v54 = v64;
  v55 = v65;
  *&v67 = v46;
  *(&v67 + 1) = v45;
  LOBYTE(v68) = v42;
  *(&v68 + 1) = *v97;
  DWORD1(v68) = *&v97[3];
  *(&v68 + 1) = v47;
  *&v69 = v19;
  BYTE8(v69) = 0;
  HIDWORD(v69) = *&v96[3];
  *(&v69 + 9) = *v96;
  v70 = v44;
  v71 = v43;
  v72 = 0;
  v73 = 1;
  *(&v63[1] + 8) = v68;
  *(v63 + 8) = v67;
  BYTE8(v63[5]) = 1;
  *(&v63[4] + 8) = v43;
  *(&v63[3] + 8) = v44;
  *(&v63[2] + 8) = v69;
  v53 = 1;
  sub_24B8F3208(&v64, &v85, &qword_27F069500);
  sub_24B8F3208(&v67, &v85, &qword_27F063F58);
  v29 = v41;
  sub_24B952BE4(v41);
  sub_24B952C54(v29);
  v30 = v53;
  v31 = v63[4];
  *(a2 + 192) = v63[3];
  *(a2 + 208) = v31;
  *(a2 + 224) = v63[5];
  v32 = v63[0];
  *(a2 + 128) = v62;
  *(a2 + 144) = v32;
  v33 = v63[2];
  *(a2 + 160) = v63[1];
  *(a2 + 176) = v33;
  v34 = v59;
  *(a2 + 64) = v58;
  *(a2 + 80) = v34;
  v35 = v61;
  *(a2 + 96) = v60;
  *(a2 + 112) = v35;
  v36 = v55;
  *a2 = v54;
  *(a2 + 16) = v36;
  v37 = v57;
  *(a2 + 32) = v56;
  *(a2 + 48) = v37;
  *(a2 + 240) = 0;
  *(a2 + 248) = v30;
  *(a2 + 256) = v29;
  *(a2 + 264) = v20;
  *(a2 + 272) = v21;
  *(a2 + 280) = v22;
  *(a2 + 288) = v23;
  sub_24B952C54(v29);
  v74[0] = v46;
  v74[1] = v45;
  v75 = v42;
  *v76 = *v97;
  *&v76[3] = *&v97[3];
  v77 = v47;
  v78 = v40;
  v79 = 0;
  *v80 = *v96;
  *&v80[3] = *&v96[3];
  v81 = v44;
  v82 = v43;
  v83 = 0;
  v84 = 1;
  sub_24B8F35E4(v74, &qword_27F063F58);
  *&v85 = v52;
  *(&v85 + 1) = KeyPath;
  v86 = v51;
  v87 = v48;
  v88 = v49;
  v93 = v104;
  v94 = v105;
  v95 = v106;
  v89 = v100;
  v90 = v101;
  v91 = v102;
  v92 = v103;
  return sub_24B8F35E4(&v85, &qword_27F069500);
}

uint64_t sub_24BA35CD0()
{
  sub_24BA33C34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069468);
  return sub_24BAA9A0C();
}

uint64_t sub_24BA35D40()
{
  v1 = *v0;
  if (*(v0 + 40) != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069468);
    sub_24BAA99FC();
    if (v24)
    {
      if (!v1)
      {
        goto LABEL_126;
      }

      sub_24B984444();
      v5 = sub_24B8D7188();

      if (!v5)
      {

        goto LABEL_44;
      }

      v6 = [v5 mode];

      v7 = [v6 semanticType];

      if (v7 <= 3)
      {
        if (v7 <= 1)
        {
          if (!v7)
          {
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

            goto LABEL_115;
          }

          if (v7 == 1)
          {
            goto LABEL_113;
          }

          goto LABEL_44;
        }
      }

      else
      {
        if (v7 <= 5)
        {
          if (v7 != 4)
          {
            goto LABEL_81;
          }

          goto LABEL_105;
        }

        if (v7 != 6)
        {
          if (v7 == 7)
          {
            goto LABEL_107;
          }

          if (v7 == 8)
          {
            goto LABEL_101;
          }

LABEL_44:
          if (qword_27F063110 != -1)
          {
            swift_once();
          }

          sub_24BAA7C2C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_24BAAD5B0;

          sub_24B984444();
          v15 = sub_24B8D7188();
          if (v15)
          {
            goto LABEL_65;
          }

          goto LABEL_66;
        }
      }

LABEL_94:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_115;
    }

    if (!v1)
    {
      goto LABEL_126;
    }

    sub_24B984444();
    v11 = sub_24B8D7188();

    if (v11)
    {
      v12 = [v11 mode];

      v13 = [v12 semanticType];

      if (v13 <= 3)
      {
        if (v13 > 1)
        {
          goto LABEL_107;
        }

        if (!v13)
        {
          if (qword_27F063110 == -1)
          {
            return sub_24BAA7C2C();
          }

          goto LABEL_115;
        }

        if (v13 == 1)
        {
          goto LABEL_105;
        }
      }

      else
      {
        if (v13 <= 5)
        {
          if (v13 == 4)
          {
            goto LABEL_111;
          }

          goto LABEL_94;
        }

        switch(v13)
        {
          case 6:
            goto LABEL_107;
          case 7:
            goto LABEL_113;
          case 8:
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

            goto LABEL_115;
        }
      }
    }

    else
    {
    }

    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    sub_24BAA7C2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_24BAAD5B0;

    sub_24B984444();
    v15 = sub_24B8D7188();
    if (v15)
    {
      goto LABEL_65;
    }

    goto LABEL_66;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069468);
  sub_24BAA99FC();
  if (!v24)
  {
    if (!v1)
    {
      goto LABEL_126;
    }

    sub_24B984444();
    v8 = sub_24B8D7188();

    if (!v8)
    {

      goto LABEL_57;
    }

    v9 = [v8 mode];

    v10 = [v9 semanticType];

    if (v10 > 3)
    {
      if (v10 <= 5)
      {
        if (v10 == 4)
        {
          if (qword_27F063110 == -1)
          {
            return sub_24BAA7C2C();
          }

          goto LABEL_115;
        }

        goto LABEL_113;
      }

      if (v10 != 6)
      {
        if (v10 != 7)
        {
          if (v10 == 8)
          {
LABEL_81:
            if (qword_27F063110 == -1)
            {
              return sub_24BAA7C2C();
            }

            goto LABEL_115;
          }

LABEL_57:
          if (qword_27F063110 != -1)
          {
            swift_once();
          }

          sub_24BAA7C2C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_24BAAD5B0;

          sub_24B984444();
          v15 = sub_24B8D7188();
          if (v15)
          {
            goto LABEL_65;
          }

          goto LABEL_66;
        }

LABEL_111:
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_115;
      }

LABEL_105:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_115;
    }

    if (v10 > 1)
    {
      goto LABEL_105;
    }

    if (v10)
    {
      if (v10 == 1)
      {
        goto LABEL_96;
      }

      goto LABEL_57;
    }

LABEL_101:
    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

    goto LABEL_115;
  }

  if (v1)
  {

    sub_24B984444();
    v2 = sub_24B8D7188();

    if (!v2)
    {

      goto LABEL_39;
    }

    v3 = [v2 mode];

    v4 = [v3 semanticType];

    if (v4 > 3)
    {
      if (v4 > 5)
      {
        if (v4 != 6)
        {
          if (v4 != 7)
          {
            if (v4 == 8)
            {
              if (qword_27F063110 == -1)
              {
                return sub_24BAA7C2C();
              }

              goto LABEL_115;
            }

LABEL_39:
            if (qword_27F063110 != -1)
            {
              swift_once();
            }

            sub_24BAA7C2C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
            v14 = swift_allocObject();
            *(v14 + 16) = xmmword_24BAAD5B0;

            sub_24B984444();
            v15 = sub_24B8D7188();
            if (v15)
            {
LABEL_65:
              v16 = v15;
              v17 = [v15 mode];

              v18 = [v17 name];
              v19 = sub_24BAAA01C();
              v21 = v20;

LABEL_67:
              *(v14 + 56) = MEMORY[0x277D837D0];
              *(v14 + 64) = sub_24B8F6A20();
              *(v14 + 32) = v19;
              *(v14 + 40) = v21;
              v22 = sub_24BAA9FEC();

              return v22;
            }

LABEL_66:

            v19 = 0;
            v21 = 0xE000000000000000;
            goto LABEL_67;
          }

          goto LABEL_105;
        }

        goto LABEL_113;
      }

      if (v4 != 4)
      {
LABEL_107:
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_115;
      }

LABEL_96:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_115;
    }

    if (v4 <= 1)
    {
      if (!v4)
      {
        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }

        goto LABEL_115;
      }

      if (v4 != 1)
      {
        goto LABEL_39;
      }

      goto LABEL_111;
    }

LABEL_113:
    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

LABEL_115:
    swift_once();
    return sub_24BAA7C2C();
  }

LABEL_126:
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA37188(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  result = sub_24BAA86DC();
  __break(1u);
  return result;
}

uint64_t sub_24BA36C3C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  *a1 = sub_24BAA8BDC();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069430);
  return sub_24BA33EDC(v7, (a1 + *(v5 + 44)));
}

unint64_t sub_24BA36DA8()
{
  result = qword_27F069470;
  if (!qword_27F069470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069448);
    sub_24BA36E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069470);
  }

  return result;
}

unint64_t sub_24BA36E34()
{
  result = qword_27F069478;
  if (!qword_27F069478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069460);
    sub_24B8F384C(&qword_27F069480, &qword_27F069488);
    sub_24B8F384C(&qword_27F069490, &qword_27F065610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069478);
  }

  return result;
}

unint64_t sub_24BA36F68()
{
  result = qword_27F0694C0;
  if (!qword_27F0694C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0694B8);
    sub_24BA36FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0694C0);
  }

  return result;
}

unint64_t sub_24BA36FF4()
{
  result = qword_27F0694C8;
  if (!qword_27F0694C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0694D0);
    sub_24B8F384C(&qword_27F0694D8, &qword_27F0694E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0694C8);
  }

  return result;
}

uint64_t objectdestroyTm_19()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24BA37188(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24BA371E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24BAA89FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24B8F3208(v2, &v14 - v9, &qword_27F063A08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA8B9C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24BA373F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24BA374D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AppTriggerRowView()
{
  result = qword_27F069508;
  if (!qword_27F069508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24BA375E4()
{
  sub_24B980E74();
  if (v0 <= 0x3F)
  {
    sub_24B91EF10();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24BA3768C@<X0>(uint64_t a1@<X8>)
{
  v105 = a1;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069518);
  MEMORY[0x28223BE20](v83);
  v84 = (v81 - v2);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069520);
  MEMORY[0x28223BE20](v86);
  v85 = v81 - v3;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069528);
  MEMORY[0x28223BE20](v104);
  v88 = v81 - v4;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069530);
  MEMORY[0x28223BE20](v102);
  v103 = v81 - v5;
  v6 = sub_24BAA8FBC();
  v99 = *(v6 - 8);
  v100 = v6;
  MEMORY[0x28223BE20](v6);
  v98 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069538);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v89 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v87 = (v81 - v11);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069540);
  MEMORY[0x28223BE20](v91);
  v97 = (v81 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069548);
  v92 = *(v13 - 8);
  v93 = v13;
  MEMORY[0x28223BE20](v13);
  v90 = v81 - v14;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069550);
  MEMORY[0x28223BE20](v101);
  v94 = v81 - v15;
  v95 = sub_24BAA8B9C();
  v16 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v18 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v1 + *(type metadata accessor for AppTriggerRowView() + 24);
  v19 = _s15FocusSettingsUI12InstalledAppC21applicationIdentifierACSo014DNDApplicationG0C_tcfC_0(*v82);
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  v96 = v1;
  type metadata accessor for AppNameCache();
  sub_24BA39A4C(&qword_27F064828, type metadata accessor for AppNameCache);
  v20 = sub_24BAA82FC();
  v21 = v19[3];
  v22 = v19[4];
  v24 = v19[5];
  v23 = v19[6];
  v106 = v19;
  if (v21 == v24 && v22 == v23 || (sub_24BAAA78C() & 1) != 0)
  {
    swift_beginAccess();
    v25 = *(v20 + 16);
    v26 = *(v25 + 16);

    if (v26 && (v27 = sub_24BA1575C(v24, v23), (v28 & 1) != 0))
    {
      v29 = (*(v25 + 56) + 16 * v27);
      v24 = *v29;
      v30 = v29[1];
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      sub_24BA1301C(v24, v23);
      v30 = v23;
    }
  }

  else
  {

    v24 = v19[3];
    v30 = v19[4];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_24BAAD5B0;
  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 64) = sub_24B8F6A20();
  *(v31 + 32) = v24;
  *(v31 + 40) = v30;

  v32 = sub_24BAA9FEC();
  v34 = v33;

  v35 = v96;
  sub_24BA371E4(v18);
  LOBYTE(v31) = sub_24BAA8B8C();
  (*(v16 + 8))(v18, v95);
  if (v31)
  {
    v36 = sub_24BAA8BDC();
    v37 = v97;
    *v97 = v36;
    v37[1] = 0;
    *(v37 + 16) = 1;
    v95 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069598) + 44);
    v38 = sub_24BAA8AAC();
    v39 = v87;
    *v87 = v38;
    *(v39 + 8) = 0;
    *(v39 + 16) = 0;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0695A0);
    sub_24BA383B8(v106, v24, v30, v39 + *(v40 + 44));
    v88 = sub_24BAA8AAC();
    LOBYTE(v107) = 1;
    v81[1] = v34;
    sub_24BA387B4(&v120);
    v112 = *&v121[16];
    v113 = *&v121[32];
    v114 = *&v121[48];
    v115 = v121[64];
    v110 = v120;
    v111 = *v121;
    v117 = v121[64];
    v116[2] = *&v121[16];
    v116[3] = *&v121[32];
    v116[4] = *&v121[48];
    v116[0] = v120;
    v116[1] = *v121;
    sub_24B8F3208(&v110, &v118, &qword_27F0695A8);
    sub_24B8F35E4(v116, &qword_27F0695A8);
    *&v109[39] = v112;
    *&v109[55] = v113;
    *&v109[71] = v114;
    *&v109[7] = v110;
    v109[87] = v115;
    *&v109[23] = v111;
    v41 = v107;
    LOBYTE(v118) = *(v82 + 8);
    sub_24BAA99EC();
    LODWORD(v86) = v120;
    v42 = *(&v120 + 1);
    v43 = v89;
    v96 = v30;
    sub_24B8F3208(v39, v89, &qword_27F069538);
    v44 = v95;
    sub_24B8F3208(v43, v95, &qword_27F069538);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0695B0);
    v46 = (v44 + *(v45 + 48));
    v47 = v44;
    v48 = v88;
    v118 = v88;
    LOBYTE(v119[0]) = v41;
    *(v119 + 1) = *v109;
    *(&v119[1] + 1) = *&v109[16];
    *(&v119[2] + 1) = *&v109[32];
    *(&v119[5] + 1) = *&v109[80];
    *(&v119[4] + 1) = *&v109[64];
    *(&v119[3] + 1) = *&v109[48];
    v49 = v119[0];
    *v46 = v88;
    v46[1] = v49;
    v50 = v119[1];
    v51 = v119[2];
    *(v46 + 89) = *(&v119[4] + 9);
    v52 = v119[4];
    v46[4] = v119[3];
    v46[5] = v52;
    v46[2] = v50;
    v46[3] = v51;
    v53 = v47 + *(v45 + 64);
    *v53 = v86;
    *(v53 + 8) = v42;
    sub_24B8F3208(&v118, &v120, &qword_27F0695B8);

    sub_24B8F35E4(v39, &qword_27F069538);

    *&v121[33] = *&v109[32];
    *&v121[49] = *&v109[48];
    v122 = *&v109[64];
    *&v121[1] = *v109;
    v120 = v48;
    v121[0] = v41;
    v123 = *&v109[80];
    *&v121[17] = *&v109[16];
    sub_24B8F35E4(&v120, &qword_27F0695B8);
    sub_24B8F35E4(v43, &qword_27F069538);

    v54 = sub_24BAA90AC();
    sub_24BAA828C();
    v55 = v91;
    v57 = v97;
    v56 = v98;
    v58 = v97 + *(v91 + 36);
    *v58 = v54;
    *(v58 + 1) = v59;
    *(v58 + 2) = v60;
    *(v58 + 3) = v61;
    *(v58 + 4) = v62;
    v58[40] = 0;
    sub_24BAA8FAC();
    v63 = sub_24BA39718();
    v64 = v90;
    sub_24BAA95FC();
    (*(v99 + 8))(v56, v100);
    sub_24B8F35E4(v57, &qword_27F069540);
    v107 = v55;
    v108 = v63;
    swift_getOpaqueTypeConformance2();
    v65 = v93;
    v66 = v94;
    sub_24BAA94DC();
    (*(v92 + 8))(v64, v65);
    v67 = &qword_27F069550;
    sub_24B8F3208(v66, v103, &qword_27F069550);
    swift_storeEnumTagMultiPayload();
    sub_24BA39620();
    sub_24BA397D0();
    sub_24BAA8D0C();

    v68 = v66;
  }

  else
  {
    v69 = sub_24BAA8AAC();
    v70 = v84;
    *v84 = v69;
    *(v70 + 8) = 0;
    *(v70 + 16) = 0;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069558);
    sub_24BA38988(v106, v24, v30, v32, v34, v35, v70 + *(v71 + 44));

    v72 = v98;
    sub_24BAA8F9C();
    sub_24B8F384C(&qword_27F069560, &qword_27F069518);
    v73 = v85;
    sub_24BAA95FC();
    (*(v99 + 8))(v72, v100);
    sub_24B8F35E4(v70, &qword_27F069518);
    LOBYTE(v70) = sub_24BAA911C();
    sub_24BAA828C();
    v74 = v73 + *(v86 + 36);
    *v74 = v70;
    *(v74 + 8) = v75;
    *(v74 + 16) = v76;
    *(v74 + 24) = v77;
    *(v74 + 32) = v78;
    *(v74 + 40) = 0;
    sub_24BA39524();
    v79 = v88;
    sub_24BAA94DC();
    sub_24B8F35E4(v73, &qword_27F069520);
    v67 = &qword_27F069528;
    sub_24B8F3208(v79, v103, &qword_27F069528);
    swift_storeEnumTagMultiPayload();
    sub_24BA39620();
    sub_24BA397D0();
    sub_24BAA8D0C();

    v68 = v79;
  }

  return sub_24B8F35E4(v68, v67);
}

uint64_t sub_24BA383B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0695C0);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  type metadata accessor for AppIconCache();
  sub_24BA39A4C(&qword_27F0651D0, type metadata accessor for AppIconCache);

  v13 = sub_24BAA86FC();
  v15 = v14;
  KeyPath = swift_getKeyPath();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0695C8) + 36);
  *&v12[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  swift_storeEnumTagMultiPayload();
  *v12 = a1;
  *(v12 + 1) = 0x403E000000000000;
  *(v12 + 2) = v13;
  *(v12 + 3) = v15;
  *(v12 + 4) = KeyPath;
  v12[40] = 0;
  LOBYTE(v13) = sub_24BAA910C();
  sub_24BAA828C();
  v18 = &v12[*(v8 + 44)];
  *v18 = v13;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v56 = a2;
  v57 = a3;
  sub_24B8F5E3C();

  v23 = sub_24BAA93CC();
  v25 = v24;
  LOBYTE(a1) = v26;
  sub_24BAA916C();
  v27 = sub_24BAA939C();
  v45 = v28;
  LOBYTE(v17) = v29;
  v46 = v30;

  sub_24B900910(v23, v25, a1 & 1);

  v31 = swift_getKeyPath();
  v32 = sub_24BAA988C();
  v33 = swift_getKeyPath();
  LOBYTE(v56) = v17 & 1;
  LOBYTE(v51) = 1;
  v34 = v48;
  sub_24B8F3208(v12, v48, &qword_27F0695C0);
  v35 = v47;
  sub_24B8F3208(v34, v47, &qword_27F0695C0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0695D0);
  v37 = v35 + *(v36 + 48);
  v38 = v45;
  *&v51 = v27;
  *(&v51 + 1) = v45;
  LOBYTE(v52) = v17 & 1;
  *(&v52 + 1) = *v50;
  DWORD1(v52) = *&v50[3];
  v39 = v46;
  *(&v52 + 1) = v46;
  v53 = v31;
  LOBYTE(v54) = 1;
  *(&v54 + 1) = *v49;
  DWORD1(v54) = *&v49[3];
  *(&v54 + 1) = v33;
  v55 = v32;
  *(v37 + 64) = v32;
  v40 = v52;
  *v37 = v51;
  *(v37 + 16) = v40;
  v41 = v54;
  *(v37 + 32) = v53;
  *(v37 + 48) = v41;
  v42 = v35 + *(v36 + 64);
  *v42 = 0;
  *(v42 + 8) = 1;
  sub_24B8F3208(&v51, &v56, &qword_27F067160);
  sub_24B8F35E4(v12, &qword_27F0695C0);
  v56 = v27;
  v57 = v38;
  v58 = v17 & 1;
  *v59 = *v50;
  *&v59[3] = *&v50[3];
  v60 = v39;
  v61 = v31;
  v62 = 0;
  v63 = 1;
  *v64 = *v49;
  *&v64[3] = *&v49[3];
  v65 = v33;
  v66 = v32;
  sub_24B8F35E4(&v56, &qword_27F067160);
  return sub_24B8F35E4(v48, &qword_27F0695C0);
}

uint64_t sub_24BA387B4@<X0>(uint64_t a1@<X8>)
{
  sub_24B8F5E3C();

  v2 = sub_24BAA93CC();
  v4 = v3;
  v6 = v5;
  sub_24BAA927C();
  v7 = sub_24BAA939C();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_24B900910(v2, v4, v6 & 1);

  KeyPath = swift_getKeyPath();
  v15 = sub_24BAA989C();
  v16 = swift_getKeyPath();
  v17 = *v24;
  *(&v26 + 1) = *v24;
  DWORD1(v26) = *&v24[3];
  DWORD1(v28) = *&v23[3];
  v18 = *v23;
  *(&v28 + 1) = *v23;
  *&v25 = v7;
  *(&v25 + 1) = v9;
  LOBYTE(v26) = v11 & 1;
  *(&v26 + 1) = v13;
  v27 = KeyPath;
  LOBYTE(v28) = 1;
  *(&v28 + 1) = v16;
  v29 = v15;
  v22[72] = 1;
  v19 = v28;
  *(a1 + 32) = KeyPath;
  *(a1 + 48) = v19;
  v20 = v26;
  *a1 = v25;
  *(a1 + 16) = v20;
  *(a1 + 64) = v15;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  v30[0] = v7;
  v30[1] = v9;
  v31 = v11 & 1;
  *&v32[3] = *&v24[3];
  *v32 = v17;
  v33 = v13;
  v34 = KeyPath;
  v35 = 0;
  v36 = 1;
  *&v37[3] = *&v23[3];
  *v37 = v18;
  v38 = v16;
  v39 = v15;
  sub_24B8F3208(&v25, v22, &qword_27F067160);
  return sub_24B8F35E4(v30, &qword_27F067160);
}

uint64_t sub_24BA38988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v88 = a5;
  v89 = a6;
  v86 = a3;
  v87 = a4;
  v85 = a2;
  v91 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0695D8);
  MEMORY[0x28223BE20](v8);
  v10 = &v83 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0695E0);
  MEMORY[0x28223BE20](v11);
  v13 = &v83 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0695E8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v90 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v83 - v17;
  if ([*(a1 + 16) platform] == 2)
  {
    type metadata accessor for AppIconCache();
    sub_24BA39A4C(&qword_27F0651D0, type metadata accessor for AppIconCache);

    v18 = sub_24BAA86FC();
    v20 = v19;
    KeyPath = swift_getKeyPath();
    v22 = sub_24BAA90EC();
    sub_24BAA828C();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    LOBYTE(v104) = 0;
    LOBYTE(v102[0]) = 0;
    v31 = sub_24BAA910C();
    sub_24BAA828C();
    LOBYTE(v109) = 0;
    *v13 = a1;
    *(v13 + 1) = 0x4034000000000000;
    *(v13 + 2) = v18;
    *(v13 + 3) = v20;
    *(v13 + 4) = KeyPath;
    v13[40] = 0;
    v13[48] = v22;
    *(v13 + 7) = v24;
    *(v13 + 8) = v26;
    *(v13 + 9) = v28;
    *(v13 + 10) = v30;
    v13[88] = 0;
    v13[96] = v31;
    *(v13 + 13) = v32;
    *(v13 + 14) = v33;
    *(v13 + 15) = v34;
    *(v13 + 16) = v35;
    v13[136] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0695F0);
    sub_24BA398DC(&qword_27F0695F8, &qword_27F0695F0, &unk_24BABACE8, sub_24BA398AC);
    sub_24BA398DC(&qword_27F069610, &qword_27F0695D8, &unk_24BABACD0, sub_24BA39960);
    sub_24BAA8D0C();
  }

  else
  {
    type metadata accessor for AppIconCache();
    sub_24BA39A4C(&qword_27F0651D0, type metadata accessor for AppIconCache);

    v36 = sub_24BAA86FC();
    v38 = v37;
    v39 = swift_getKeyPath();
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0695C8) + 36);
    *&v10[v40] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
    swift_storeEnumTagMultiPayload();
    *v10 = a1;
    *(v10 + 1) = 0x4034000000000000;
    *(v10 + 2) = v36;
    *(v10 + 3) = v38;
    *(v10 + 4) = v39;
    v10[40] = 0;
    LOBYTE(v36) = sub_24BAA90EC();
    sub_24BAA828C();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0695C0) + 36)];
    *v49 = v36;
    *(v49 + 1) = v42;
    *(v49 + 2) = v44;
    *(v49 + 3) = v46;
    *(v49 + 4) = v48;
    v49[40] = 0;
    LOBYTE(v36) = sub_24BAA910C();
    sub_24BAA828C();
    v50 = &v10[*(v8 + 36)];
    *v50 = v36;
    *(v50 + 1) = v51;
    *(v50 + 2) = v52;
    *(v50 + 3) = v53;
    *(v50 + 4) = v54;
    v50[40] = 0;
    sub_24B8F3208(v10, v13, &qword_27F0695D8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0695F0);
    sub_24BA398DC(&qword_27F0695F8, &qword_27F0695F0, &unk_24BABACE8, sub_24BA398AC);
    sub_24BA398DC(&qword_27F069610, &qword_27F0695D8, &unk_24BABACD0, sub_24BA39960);
    sub_24BAA8D0C();
    sub_24B8F35E4(v10, &qword_27F0695D8);
  }

  v84 = sub_24BAA8BDC();
  v94 = 1;
  sub_24BA391E4(v87, v88, &v109);
  v99 = *&v110[6];
  v100 = *&v110[8];
  v101[0] = *&v110[10];
  *(v101 + 9) = *(&v110[11] + 1);
  v95 = v109;
  v96 = *v110;
  v97 = *&v110[2];
  v98 = *&v110[4];
  v102[0] = v109;
  v102[1] = *v110;
  v102[2] = *&v110[2];
  v102[3] = *&v110[4];
  v102[4] = *&v110[6];
  v102[5] = *&v110[8];
  v103[0] = *&v110[10];
  *(v103 + 9) = *(&v110[11] + 1);
  sub_24B8F3208(&v95, &v104, &qword_27F069630);
  sub_24B8F35E4(v102, &qword_27F069630);
  *(&v93[4] + 7) = v99;
  *(&v93[5] + 7) = v100;
  *(&v93[6] + 7) = v101[0];
  v93[7] = *(v101 + 9);
  *(v93 + 7) = v95;
  *(&v93[1] + 7) = v96;
  *(&v93[2] + 7) = v97;
  *(&v93[3] + 7) = v98;
  v55 = v94;
  v56 = sub_24BAA90EC();
  v57 = v56;
  LODWORD(v88) = v56;
  sub_24BAA828C();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  LOBYTE(v104) = *(v89 + *(type metadata accessor for AppTriggerRowView() + 24) + 8);
  sub_24BAA99EC();
  LODWORD(v89) = v109;
  v66 = *(&v109 + 1);
  v67 = v92;
  v68 = v90;
  sub_24B8F3208(v92, v90, &qword_27F0695E8);
  v69 = v91;
  sub_24B8F3208(v68, v91, &qword_27F0695E8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069638);
  v71 = v70[12];
  *(&v105[4] + 1) = v93[4];
  *(&v105[5] + 1) = v93[5];
  *(&v105[6] + 1) = v93[6];
  *(&v105[7] + 1) = v93[7];
  *(&v105[1] + 1) = v93[1];
  *(&v105[2] + 1) = v93[2];
  v72 = v69 + v71;
  v73 = v84;
  v104 = v84;
  LOBYTE(v105[0]) = v55;
  *(&v105[3] + 1) = v93[3];
  *(v105 + 1) = v93[0];
  BYTE8(v105[8]) = v57;
  *&v106 = v59;
  *(&v106 + 1) = v61;
  *&v107 = v63;
  *(&v107 + 1) = v65;
  v108 = 0;
  *(v72 + 192) = 0;
  v74 = v105[2];
  *(v72 + 32) = v105[1];
  *(v72 + 48) = v74;
  v75 = v105[6];
  *(v72 + 96) = v105[5];
  *(v72 + 112) = v75;
  v76 = v105[4];
  *(v72 + 64) = v105[3];
  *(v72 + 80) = v76;
  v77 = v105[0];
  *v72 = v104;
  *(v72 + 16) = v77;
  v78 = v105[8];
  *(v72 + 128) = v105[7];
  *(v72 + 144) = v78;
  v79 = v107;
  *(v72 + 160) = v106;
  *(v72 + 176) = v79;
  v80 = v69 + v70[16];
  *v80 = 0;
  *(v80 + 8) = 1;
  v81 = v69 + v70[20];
  *v81 = v89;
  *(v81 + 8) = v66;
  sub_24B8F3208(&v104, &v109, &qword_27F069640);

  sub_24B8F35E4(v67, &qword_27F0695E8);

  *(&v110[8] + 1) = v93[4];
  *(&v110[10] + 1) = v93[5];
  *(&v110[12] + 1) = v93[6];
  *(&v110[14] + 1) = v93[7];
  *(v110 + 1) = v93[0];
  *(&v110[2] + 1) = v93[1];
  *(&v110[4] + 1) = v93[2];
  v109 = v73;
  LOBYTE(v110[0]) = v55;
  *(&v110[6] + 1) = v93[3];
  v111 = v88;
  v112 = v59;
  v113 = v61;
  v114 = v63;
  v115 = v65;
  v116 = 0;
  sub_24B8F35E4(&v109, &qword_27F069640);
  return sub_24B8F35E4(v68, &qword_27F0695E8);
}

uint64_t sub_24BA391E4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  sub_24B8F5E3C();

  v6 = sub_24BAA93CC();
  v8 = v7;
  v10 = v9;
  sub_24BAA916C();
  v11 = sub_24BAA939C();
  v37 = v12;
  v38 = v11;
  v14 = v13;
  v39 = v15;

  sub_24B900910(v6, v8, v10 & 1);

  KeyPath = swift_getKeyPath();
  v36 = sub_24BAA988C();
  v41 = swift_getKeyPath();
  v40 = v14 & 1;
  v50 = a1;
  v51 = a2;

  v16 = sub_24BAA93CC();
  v18 = v17;
  v20 = v19;
  sub_24BAA927C();
  v21 = sub_24BAA939C();
  v23 = v22;
  LOBYTE(v6) = v24;

  sub_24B900910(v16, v18, v20 & 1);

  sub_24BAA989C();
  v25 = sub_24BAA933C();
  v27 = v26;
  v29 = v28;
  v31 = v30;

  sub_24B900910(v21, v23, v6 & 1);

  v32 = swift_getKeyPath();
  *&v45 = v38;
  *(&v45 + 1) = v37;
  LOBYTE(v46) = v40;
  *(&v46 + 1) = *v44;
  DWORD1(v46) = *&v44[3];
  *(&v46 + 1) = v39;
  v47 = KeyPath;
  LOBYTE(v48) = 1;
  *(&v48 + 1) = *v43;
  DWORD1(v48) = *&v43[3];
  *(&v48 + 1) = v41;
  v49 = v36;
  v33 = v48;
  *(a3 + 32) = KeyPath;
  *(a3 + 48) = v33;
  v34 = v46;
  *a3 = v45;
  *(a3 + 16) = v34;
  *(a3 + 64) = v36;
  *(a3 + 72) = v25;
  *(a3 + 80) = v27;
  *(a3 + 88) = v29 & 1;
  *(a3 + 96) = v31;
  *(a3 + 104) = v32;
  *(a3 + 112) = 0;
  *(a3 + 120) = 1;
  sub_24B8F3208(&v45, &v50, &qword_27F067160);
  sub_24B8F319C(v25, v27, v29 & 1);

  sub_24B900910(v25, v27, v29 & 1);

  v50 = v38;
  v51 = v37;
  v52 = v40;
  *v53 = *v44;
  *&v53[3] = *&v44[3];
  v54 = v39;
  v55 = KeyPath;
  v56 = 0;
  v57 = 1;
  *v58 = *v43;
  *&v58[3] = *&v43[3];
  v59 = v41;
  v60 = v36;
  return sub_24B8F35E4(&v50, &qword_27F067160);
}

unint64_t sub_24BA39524()
{
  result = qword_27F069568;
  if (!qword_27F069568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069518);
    sub_24B8F384C(&qword_27F069560, &qword_27F069518);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069568);
  }

  return result;
}

unint64_t sub_24BA39620()
{
  result = qword_27F069570;
  if (!qword_27F069570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069550);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069540);
    sub_24BA39718();
    swift_getOpaqueTypeConformance2();
    sub_24BA39A4C(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069570);
  }

  return result;
}

unint64_t sub_24BA39718()
{
  result = qword_27F069578;
  if (!qword_27F069578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069540);
    sub_24B8F384C(&qword_27F069580, &qword_27F069588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069578);
  }

  return result;
}

unint64_t sub_24BA397D0()
{
  result = qword_27F069590;
  if (!qword_27F069590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069528);
    sub_24BA39524();
    sub_24BA39A4C(&qword_27F0690A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069590);
  }

  return result;
}

uint64_t sub_24BA398DC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24BA39990()
{
  result = qword_27F069620;
  if (!qword_27F069620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0695C8);
    sub_24B9BBFB4();
    sub_24BA39A4C(&qword_27F069628, type metadata accessor for TriggerCardLeadingImageModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069620);
  }

  return result;
}

uint64_t sub_24BA39A4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24BA39A98()
{
  result = qword_27F069648;
  if (!qword_27F069648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F069650);
    sub_24BA39620();
    sub_24BA397D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F069648);
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24BA39B48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_24BA39B90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24BA39C14()
{
  if (qword_27F0630E8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F077028;
  type metadata accessor for FilteredAppSource();
  v1 = swift_allocObject();

  sub_24BAA817C();
  v2 = (v1 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache);
  *v2 = 0u;
  v2[1] = 0u;
  *(v1 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource_base) = v0;
  *(v1 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource_excludeWebApps) = 0;
  return v1;
}

uint64_t sub_24BA39CF0()
{
  v1 = v0;
  sub_24BAAA1BC();
  sub_24BA3A504(v0, &v29);
  v2 = sub_24BAAA1AC();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v0[3];
  *(v3 + 64) = v0[2];
  *(v3 + 80) = v5;
  *(v3 + 96) = v0[4];
  *(v3 + 105) = *(v0 + 73);
  v6 = v0[1];
  *(v3 + 32) = *v0;
  *(v3 + 48) = v6;
  sub_24BA3A504(v0, &v29);
  v7 = sub_24BAAA1AC();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  v9 = v1[3];
  *(v8 + 64) = v1[2];
  *(v8 + 80) = v9;
  *(v8 + 96) = v1[4];
  *(v8 + 105) = *(v1 + 73);
  v10 = v1[1];
  *(v8 + 32) = *v1;
  *(v8 + 48) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063500);
  sub_24BAA9B9C();
  v11 = v29;
  v21 = v30;
  type metadata accessor for FilteredAppSource();
  sub_24BA3A630(&unk_27F065110, type metadata accessor for FilteredAppSource);
  sub_24BAA82FC();
  v12 = MEMORY[0x277D84F90];
  v13 = *(v1 + 3);
  if (*(v1 + 4))
  {
    v12 = *(v1 + 4);
  }

  v22 = v12;

  v14 = sub_24BAA84DC();
  v16 = v15;
  LOBYTE(v23) = 0;
  sub_24BAA99EC();
  v17 = v29;
  v18 = *(&v29 + 1);
  v29 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069658);
  sub_24BAA99FC();
  v19 = v23;
  type metadata accessor for AppIconCache();
  sub_24BA3A630(&qword_27F0651D0, type metadata accessor for AppIconCache);
  *&v24 = v14;
  *(&v24 + 1) = v16;
  *&v25 = v21;
  *(&v25 + 1) = v13;
  *&v26 = v22;
  BYTE8(v26) = 1;
  LOBYTE(v27) = v17;
  *(&v27 + 1) = v18;
  *&v28 = sub_24BAA813C();
  *(&v28 + 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064900);
  sub_24B91FE30();
  sub_24BAA967C();

  v31 = v25;
  v32 = v26;
  v33 = v27;
  v34 = v28;
  v29 = v24;
  v30 = v11;
  return sub_24BA3A6DC(&v29);
}

uint64_t sub_24BA3A09C(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (*a1 >> 62)
  {
    if (sub_24BAAA52C() >= 501)
    {
      goto LABEL_3;
    }
  }

  else if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 501)
  {
LABEL_3:
    v7 = *(a4 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
    return sub_24BAA9A0C();
  }

  *&v7 = sub_24B8F03FC(v6);
  sub_24BA3A744(&v7);
  v7 = *a4;
  v8 = *(a4 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
  return sub_24BAA9B6C();
}

uint64_t sub_24BA3A1A8@<X0>(uint64_t a1@<X8>)
{
  v21[3] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0664F8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v21 - v2;
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  v22 = sub_24BAA7C2C();
  v23 = v4;
  sub_24B8F5E3C();
  v5 = sub_24BAA93CC();
  v21[1] = v6;
  v21[2] = v5;
  v21[0] = v7;
  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24BAAD5B0;
  v9 = MEMORY[0x277D83C10];
  *(v8 + 56) = MEMORY[0x277D83B88];
  *(v8 + 64) = v9;
  *(v8 + 32) = 500;
  v10 = sub_24BAA9FEC();
  v12 = v11;

  v22 = v10;
  v23 = v12;
  sub_24BAA93CC();
  v22 = sub_24BAA7C2C();
  v23 = v13;
  v14 = sub_24BAA93CC();
  v16 = v15;
  v18 = v17;
  sub_24BAA971C();
  sub_24B900910(v14, v16, v18 & 1);

  v19 = sub_24BAA972C();
  (*(*(v19 - 8) + 56))(v3, 0, 1, v19);
  return sub_24BAA970C();
}

void *sub_24BA3A540@<X0>(void *a1@<X8>)
{
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
  result = MEMORY[0x24C24FC10](&v5, v3);
  *a1 = v5;
  return result;
}

uint64_t objectdestroyTm_20()
{
  swift_unknownObjectRelease();

  sub_24B91FF4C();

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t sub_24BA3A630(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24BA3A678()
{
  result = qword_27F063E70;
  if (!qword_27F063E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063E70);
  }

  return result;
}

uint64_t sub_24BA3A6DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24BA3A744(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24B9A2FBC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24B99B4F4(v6);
  return sub_24BAAA67C();
}

uint64_t sub_24BA3A7C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F064900);
  sub_24B91FE30();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24BA3A828(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24BA3A870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24BA3A8C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v6 = MEMORY[0x277D84F90];
    sub_24BAAA68C();
    v4 = a1 + 32;
    do
    {
      sub_24B8F3894(v4, &v5);
      type metadata accessor for AvailableAppsTableView.Coordinator.AppWrapper();
      swift_dynamicCast();
      sub_24BAAA66C();
      sub_24BAAA69C();
      sub_24BAAA6AC();
      sub_24BAAA67C();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

char *sub_24BA3A9B0(unint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1 >> 62)
  {
    v6 = sub_24BAAA52C();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_24B914E94(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x24C2506E0](i, a1);
        a3(a2);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_24B914E94((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_24B8F1EDC(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      a3(a2);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_24B914E94((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_24B8F1EDC(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_24BA3AB94(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_24BA3AC5C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x24C2506E0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_24BAAA52C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_24BA3AD84(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x24C2506E0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_24BAAA52C();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

void sub_24BA3AEC0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F069820);
  sub_24BAA8FCC();
  sub_24BA3C808();

  if (*(v1 + 49))
  {
    [a1 reloadData];
  }

  else
  {
    v3 = [objc_opt_self() defaultCenter];
    if (qword_27F0630D8 != -1)
    {
      swift_once();
    }

    [v3 postNotificationName:qword_27F069660 object:0];
  }
}

uint64_t sub_24BA3B068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  v15 = OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_collation;
  v16 = [objc_opt_self() currentCollation];
  *&v7[v15] = v16;
  *&v7[OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_availableApps] = a1;
  *&v7[OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_excludedApps] = a2;
  v17 = &v7[OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator__selectedApps];
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  *&v7[OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_iconCache] = a6;

  v18 = [v16 sectionTitles];
  v19 = sub_24BAAA12C();

  v20 = *(v19 + 16);

  *&v7[OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_sections] = sub_24BA3E54C(MEMORY[0x277D84F90], v20);
  v7[OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_showCheckmarks] = a7;
  v89.receiver = v7;
  v89.super_class = type metadata accessor for AvailableAppsTableView.Coordinator();
  v82 = objc_msgSendSuper2(&v89, sel_init);
  sub_24BA3C808();
  result = sub_24BA42F98();
  v22 = (a1 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache);
  if (*(a1 + OBJC_IVAR____TtC15FocusSettingsUI17FilteredAppSource__filteredAppsCache + 8))
  {
    v23 = *(v22[2] + 16);
    v84 = v22[2];

    if (!v23)
    {
LABEL_83:

      return v82;
    }

    v24 = 0;
    v83 = v22;
    while (1)
    {
      if (v24 >= *(v84 + 16))
      {
        goto LABEL_85;
      }

      v25 = *(v84 + 32 + 24 * v24 + 16);

      result = sub_24BA42F98();
      if (!v22[1])
      {
        goto LABEL_89;
      }

      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_86;
      }

      v26 = v22[3];
      if (v25 >= *(v26 + 16))
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v27 = (v26 + 32 * v25);
      v87 = v27[5];
      v29 = v27[6];
      v28 = v27[7];
      v85 = v24;
      swift_unknownObjectRetain();

      v88 = v28 >> 1;
      if (v29 != v28 >> 1)
      {
        break;
      }

LABEL_4:
      v24 = v85 + 1;
      result = swift_unknownObjectRelease();
      v22 = v83;
      if (v85 + 1 == v23)
      {
        goto LABEL_83;
      }
    }

    result = objc_opt_self();
    v86 = result;
    if (v29 < v88)
    {
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      while (1)
      {
        v30 = *(v87 + 8 * v29);

        v31 = [v86 mainScreen];
        [v31 scale];
        v33 = v32;

        v34 = [*(v30 + 16) platform];
        swift_beginAccess();
        v35 = *(a6[8] + 16);

        if (v35 && (sub_24BA157D4(v30, v34, 29.0, v33), (v36 & 1) != 0))
        {
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v37 = a6[6];
          if (*(v37 + 16))
          {
            sub_24BAAA7FC();
            sub_24BAAA81C();
            MEMORY[0x24C2508F0](0x403D000000000000);
            v38 = v33 == 0.0 ? 0.0 : v33;
            MEMORY[0x24C2508F0](*&v38);
            MEMORY[0x24C2508C0](v34);
            v39 = sub_24BAAA84C();
            v40 = -1 << *(v37 + 32);
            v41 = v39 & ~v40;
            if ((*(v37 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
            {
              v42 = ~v40;

              while (1)
              {
                v43 = *(v37 + 48) + 32 * v41;
                if (*v43)
                {
                  v44 = *(v43 + 24);
                  v46 = *(v43 + 8);
                  v45 = *(v43 + 16);
                  v47 = [*(*v43 + 16) isEqual_] && v46 == 29.0;
                  v48 = v47 && v45 == v33;
                  if (v48 && v44 == v34)
                  {
                    goto LABEL_57;
                  }
                }

                v41 = (v41 + 1) & v42;
                if (((*(v37 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
                {

                  break;
                }
              }
            }
          }

          v50 = a6[7];
          if (*(v50 + 16))
          {
            sub_24BAAA7FC();
            sub_24BAAA81C();
            MEMORY[0x24C2508F0](0x403D000000000000);
            v51 = v33 == 0.0 ? 0.0 : v33;
            MEMORY[0x24C2508F0](*&v51);
            MEMORY[0x24C2508C0](v34);
            v52 = sub_24BAAA84C();
            v53 = -1 << *(v50 + 32);
            v54 = v52 & ~v53;
            if ((*(v50 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
            {
              v55 = ~v53;

              while (1)
              {
                v56 = *(v50 + 48) + 32 * v54;
                if (*v56)
                {
                  v57 = *(v56 + 24);
                  v59 = *(v56 + 8);
                  v58 = *(v56 + 16);
                  v60 = [*(*v56 + 16) isEqual_] && v59 == 29.0;
                  v61 = v60 && v58 == v33;
                  if (v61 && v57 == v34)
                  {
                    break;
                  }
                }

                v54 = (v54 + 1) & v55;
                if (((*(v50 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
                {

                  goto LABEL_59;
                }
              }

LABEL_57:

              goto LABEL_14;
            }
          }

LABEL_59:
          v63 = a6[5];
          v64 = *(v63 + 16);
          if (v64)
          {

            v65 = 0;
            v66 = 64;
            while (1)
            {
              v67 = v63 + v66;
              v68 = *(v63 + v66 - 32);
              if (v68)
              {
                v69 = *(v67 - 8);
                v71 = *(v67 - 24);
                v70 = *(v67 - 16);
                v72 = [*(v68 + 16) isEqual_] && v71 == 29.0;
                v73 = v72 && v70 == v33;
                if (v73 && v69 == v34)
                {
                  break;
                }
              }

              ++v65;
              v66 += 32;
              if (v64 == v65)
              {

                goto LABEL_79;
              }
            }

            swift_beginAccess();
            v75 = a6[5];
            result = swift_isUniquelyReferenced_nonNull_native();
            a6[5] = v75;
            if ((result & 1) == 0)
            {
              result = sub_24B9AECC0(v75);
              v75 = result;
              a6[5] = result;
            }

            v76 = *(v75 + 16);
            if (v76 > v65)
            {
              v77 = v76 - 1;
              memmove((v75 + v66 - 32), (v75 + v66), 32 * (v76 - v65) - 32);
              *(v75 + 16) = v77;
              a6[5] = v75;
              swift_endAccess();

              goto LABEL_79;
            }

            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

LABEL_79:
          swift_beginAccess();
          v78 = a6[5];
          v79 = *(v78 + 2);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a6[5] = v78;
          if (!isUniquelyReferenced_nonNull_native || v79 >= *(v78 + 3) >> 1)
          {
            v78 = sub_24B99A96C(isUniquelyReferenced_nonNull_native, v79 + 1, 1, v78);
            a6[5] = v78;
          }

          swift_arrayDestroy();
          v81 = *(v78 + 2);
          memmove(v78 + 64, v78 + 32, 32 * v81);
          *(v78 + 2) = v81 + 1;
          *(v78 + 4) = v30;
          *(v78 + 5) = 0x403D000000000000;
          *(v78 + 6) = v33;
          *(v78 + 7) = v34;
          a6[5] = v78;
          swift_endAccess();
          sub_24B9AAE74();
        }

LABEL_14:
        if (++v29 == v88)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24BA3B8FC(void *a1)
{
  v2 = v1;
  v4 = sub_24BAA7F7C();
  v5 = sub_24BAA7F6C();
  v6 = OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_sections;
  result = swift_beginAccess();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(v1 + v6);
  if (v4 >= *(v8 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = *(v8 + 8 * v4 + 32);
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_15:

    v9 = MEMORY[0x24C2506E0](v5, v4);

    goto LABEL_7;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v5 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *(v4 + 8 * v5 + 32);

LABEL_7:
  v10 = sub_24BAA9FDC();
  v11 = sub_24BAA7F4C();
  v12 = [a1 dequeueReusableCellWithIdentifier:v10 forIndexPath:v11];

  type metadata accessor for AvailableAppsCell();
  v13 = swift_dynamicCastClassUnconditional();
  *&v13[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_app] = v9;

  v14 = sub_24BA3E234();
  v15 = sub_24BAA9FDC();
  [v14 setText_];

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = &v13[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_updateAppIcon];
  v18 = *&v13[OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_updateAppIcon];
  *v17 = sub_24BA3E7BC;
  v17[1] = v16;

  sub_24B926B78(v18);

  v19 = *v17;
  if (*v17)
  {

    v19(v13);
    sub_24B926B78(v19);
  }

  v20 = sub_24BA3C57C(v9);
  sub_24BA3D120(v20 & 1);
  v21 = v12;
  if (sub_24BA3C57C(v9))
  {
    v22 = *MEMORY[0x277D76598];
  }

  else
  {
    v22 = 0;
  }

  [v13 setAccessibilityTraits_];

  v23 = OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_showCheckmarks;
  v24 = *(v2 + OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_showCheckmarks);
  v25 = sub_24BA3E0B4();
  [v25 setHidden_];

  LOBYTE(v25) = ~*(v2 + v23);
  v26 = v21;
  [v13 setSelectionStyle_];

  return v13;
}

void sub_24BA3BC08(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(a1 + OBJC_IVAR____TtC15FocusSettingsUIP33_2EF9E2442F70F98F7D31043B99BD6EC917AvailableAppsCell_app))
    {

      v5 = sub_24BA3C6C8(v4);
      v6 = sub_24BA3E1B0();
      [v6 setImage_];

      v3 = v6;
    }
  }
}

void sub_24BA3BDD4(uint64_t a1)
{
  v3 = v1;
  v5 = sub_24BAA7F7C();
  v6 = sub_24BAA7F6C();
  v7 = OBJC_IVAR____TtCV15FocusSettingsUI22AvailableAppsTableView11Coordinator_sections;
  swift_beginAccess();
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = *(v3 + v7);
  if (v5 >= *(v8 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = *(v8 + 8 * v5 + 32);
  v17 = a1;
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      a1 = *(v7 + 8 * v6 + 32);

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_20:

  a1 = MEMORY[0x24C2506E0](v6, v7);

LABEL_7:
  v2 = sub_24BA3C57C(a1);
  if (v2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
    MEMORY[0x24C24FC10](&v18);
    v5 = sub_24B93D7B4(&v18, a1);

    if (!(v18 >> 62))
    {
      v9 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= v5)
      {
LABEL_10:
        sub_24B9AF5C4(v5, v9);
        goto LABEL_13;
      }

      goto LABEL_24;
    }

LABEL_23:
    v9 = sub_24BAAA52C();
    if (v9 >= v5)
    {
      goto LABEL_10;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F065120);
  v10 = MEMORY[0x24C24FC10](&v18);
  MEMORY[0x24C2501C0](v10);
  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_25:
    sub_24BAAA14C();
  }

  sub_24BAAA16C();
LABEL_13:
  sub_24BAA9B6C();

  v11 = sub_24BAA7F4C();
  v12 = [v17 cellForRowAtIndexPath_];

  if (v12)
  {
    type metadata accessor for AvailableAppsCell();
    v13 = swift_dynamicCastClassUnconditional();
    sub_24BA3D120((v2 & 1) == 0);
    v14 = v12;
    if (sub_24BA3C57C(a1))
    {
      v15 = *MEMORY[0x277D76598];
    }

    else
    {
      v15 = 0;
    }

    [v13 setAccessibilityTraits_];

    v16 = sub_24BAA7F4C();
    [v17 deselectRowAtIndexPath:v16 animated:1];
  }

  else
  {
    __break(1u);
  }
}