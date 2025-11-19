uint64_t sub_21BC01B18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FamilyLandingPageMainView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_21BBFEC98();
  sub_21BBB515C(a1, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_21BC0B23C(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for FamilyLandingPageMainView);
  v11[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6E28, &qword_21BE361C8);
  v11[1] = &type metadata for FamilyMemberForDisplay;
  v11[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6E30, &qword_21BE361D0);
  v11[3] = sub_21BB3B038(&qword_27CDB6E38, &qword_27CDB6E28, &qword_21BE361C8);
  v11[4] = sub_21BC0BFE0();
  v11[5] = sub_21BC0C034();
  result = swift_getKeyPath();
  *a2 = v7;
  a2[1] = result;
  a2[2] = sub_21BC0BF58;
  a2[3] = v9;
  return result;
}

double sub_21BC01CC4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21BE25FCC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FamilyLandingPageMainView();
  v7 = sub_21BC06A8C();
  v8 = [v7 me];

  if (v8)
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D07F40], v2);
    v9 = MEMORY[0x21CF01150](v6);
    (*(v3 + 8))(v6, v2);
    if ((v9 & 1) != 0 && ([v8 isGuardian] & 1) == 0)
    {
      type metadata accessor for ConfirmChildAgeViewModel();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass_];
      v23 = sub_21BE2599C();
      v25 = v24;

      *&v38 = v23;
      *(&v38 + 1) = v25;
      sub_21BB41FA4();
      v26 = sub_21BE27DBC();
      v28 = v27;
      v33 = v26;
      v34 = v27;
      v30 = v29 & 1;
      v35 = v29 & 1;
      v36 = v31;
      v37 = 0;
      sub_21BBA4A38(v26, v27, v29 & 1);

      sub_21BBA4A38(v26, v28, v30);

      sub_21BE2784C();

      sub_21BBC7C7C(v26, v28, v30);

      sub_21BBC7C7C(v26, v28, v30);

      goto LABEL_6;
    }
  }

  type metadata accessor for ConfirmChildAgeViewModel();
  v10 = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_21BE2599C();
  v14 = v13;

  *&v38 = v12;
  *(&v38 + 1) = v14;
  sub_21BB41FA4();
  v33 = sub_21BE27DBC();
  v34 = v16;
  v35 = v15 & 1;
  v36 = v17;
  v37 = 1;
  sub_21BE2784C();
LABEL_6:
  result = *&v38;
  v19 = v39;
  v20 = v40;
  *a1 = v38;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  return result;
}

void sub_21BC02050(uint64_t a1)
{
  v2 = type metadata accessor for FamilyLandingPageMainView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_21BC06A8C();
  v6 = [v5 pendingMembers];

  if (v6)
  {
    sub_21BB3A2A4(0, &qword_280BD8A40, 0x277D08268);
    v7 = sub_21BE28C3C();

    v10[1] = v7;
    swift_getKeyPath();
    sub_21BBB515C(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    sub_21BC0B23C(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for FamilyLandingPageMainView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6C58, &qword_21BE35F68);
    sub_21BB3B038(&qword_27CDB5CD0, &qword_27CDB5CC8, &qword_21BE36190);
    sub_21BB3CC48(&unk_280BD8A30, &qword_280BD8A40, 0x277D08268);
    sub_21BC0AF2C();
    sub_21BE285BC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BC022B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D00, &qword_21BE36008);
  v3 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v83 = v66 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D08, &qword_21BE36010);
  v5 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v7 = v66 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D10, &qword_21BE36018);
  v8 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v71 = v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D18, &qword_21BE36020);
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  MEMORY[0x28223BE20](v10);
  v75 = v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D20, &qword_21BE36028);
  v80 = *(v13 - 8);
  v81 = v13;
  v14 = *(v80 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v74 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = v66 - v17;
  v18 = sub_21BE25FCC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D28, &qword_21BE36030);
  v23 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v78 = v66 - v24;
  v70 = type metadata accessor for FamilyLandingPageMainView();
  v25 = (a1 + *(v70 + 64));
  v26 = *v25;
  v27 = v25[1];
  v28 = *(v25 + 16);
  type metadata accessor for FamilyChecklistStore();
  sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore);
  sub_21BE26EAC();

  v29 = *a1;
  v30 = a1[1];
  v31 = *(a1 + 16);
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BC089F4(&qword_27CDB68F0, v32, type metadata accessor for FAFamilyLandingPageViewModel);
  v33 = sub_21BE26EAC();
  v34 = *&v33[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v35 = v85;
  if (!v85)
  {
    v35 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  (*(v19 + 104))(v22, *MEMORY[0x277D07F38], v18);
  v36 = MEMORY[0x21CF01150](v22);
  (*(v19 + 8))(v22, v18);
  if (v36)
  {
    v37 = sub_21BE2900C();

    if (v37)
    {
      v39 = 1;
      v40 = v81;
      v41 = v78;
      goto LABEL_11;
    }
  }

  else
  {
  }

  v68 = v66;
  MEMORY[0x28223BE20](v38);
  v66[1] = &v66[-4];
  v67 = a1;
  v66[-2] = a1;
  v88 = &type metadata for FamilyTip;
  v89 = sub_21BC0B2AC();
  sub_21BE26AAC();
  v42 = &v7[*(v69 + 36)];
  *v42 = xmmword_21BE358C0;
  *(v42 + 1) = xmmword_21BE358C0;
  v42[32] = 0;
  v43 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v85 = sub_21BE2826C();
  sub_21BC0B300();
  v44 = v71;
  sub_21BE27E1C();

  sub_21BB3A4CC(v7, &qword_27CDB6D08, &qword_21BE36010);
  v45 = &v44[*(v72 + 36)];
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660) + 28);
  v47 = sub_21BE27D7C();
  (*(*(v47 - 8) + 56))(v45 + v46, 1, 1, v47);
  *v45 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D60, &qword_21BE36080);
  sub_21BC0B3E4();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D78, &qword_21BE36088);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D80, &qword_21BE36090);
  v50 = sub_21BC0B4EC();
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DA0, &qword_21BE360A0);
  v52 = type metadata accessor for ChecklistStateVars();
  v53 = sub_21BC0B5D8();
  v54 = sub_21BC089F4(&qword_27CDBDB60, 255, type metadata accessor for ChecklistStateVars);
  v85 = v51;
  v86 = v52;
  v87 = v53;
  v88 = v54;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v85 = v48;
  v86 = v49;
  v87 = v50;
  v88 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v56 = v75;
  sub_21BE285EC();
  v57 = [*(v67 + *(v70 + 48)) accountStore];
  v58 = [v57 aa_primaryAppleAccount];

  if (v58)
  {
    v59 = sub_21BE2943C();
  }

  else
  {
    v59 = 0;
  }

  v40 = v81;
  v41 = v78;
  KeyPath = swift_getKeyPath();
  v61 = swift_allocObject();
  *(v61 + 16) = v59 & 1;
  v62 = v74;
  (*(v76 + 32))(v74, v56, v77);
  v63 = (v62 + *(v40 + 36));
  *v63 = KeyPath;
  v63[1] = sub_21BC0C5A0;
  v63[2] = v61;
  v64 = v73;
  sub_21BBB7D84(v62, v73, &qword_27CDB6D20, &qword_21BE36028);
  sub_21BBB7D84(v64, v41, &qword_27CDB6D20, &qword_21BE36028);
  v39 = 0;
LABEL_11:
  (*(v80 + 56))(v41, v39, 1, v40);
  sub_21BBA3854(v41, v83, &qword_27CDB6D28, &qword_21BE36030);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6DC0, &qword_21BE360B0);
  sub_21BC0B6C4(&qword_27CDB6DC8, &qword_27CDB6DC0, &qword_21BE360B0, sub_21BC0B74C);
  sub_21BC0B8C4();
  sub_21BE2784C();
  return sub_21BB3A4CC(v41, &qword_27CDB6D28, &qword_21BE36030);
}

uint64_t sub_21BC02CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for FamilyLandingPageMainView();
  v35 = *(v3 - 8);
  v4 = *(v35 + 8);
  v5 = MEMORY[0x28223BE20](v3);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v6;
  MEMORY[0x28223BE20](v5);
  v40 = &v35 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D78, &qword_21BE36088);
  v8 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v35 - v9;
  v37 = v3;
  v10 = a1 + *(v3 + 64);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  type metadata accessor for FamilyChecklistStore();
  sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore);
  sub_21BE26EAC();
  v14 = sub_21BE07D30(0);

  v15 = 0;
  if (v14)
  {
    if (qword_280BD7FD8 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v15 = v45;
  }

  sub_21BE26EAC();
  v16 = sub_21BE07D30(0);

  if (v16)
  {
    if (qword_280BD7FD8 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v17 = v45 ^ 1;
  }

  else
  {
    v17 = 1;
  }

  v18 = v40;
  sub_21BBB515C(a1, v40);
  v19 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v20 = swift_allocObject();
  v35 = type metadata accessor for FamilyLandingPageMainView;
  sub_21BC0B23C(v18, v20 + v19, type metadata accessor for FamilyLandingPageMainView);
  v21 = v36;
  sub_21BBB515C(a1, v36);
  v22 = swift_allocObject();
  sub_21BC0B23C(v21, v22 + v19, type metadata accessor for FamilyLandingPageMainView);
  KeyPath = swift_getKeyPath();
  v53 = 0;
  LOBYTE(v45) = v15;
  v46 = sub_21BC0BC24;
  v47 = v22;
  v48 = sub_21BC0BB98;
  v49 = v20;
  v50 = v17 & 1;
  v51 = KeyPath;
  v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D98, &qword_21BE36098);
  sub_21BB3B038(&qword_27CDB6D90, &qword_27CDB6D98, &qword_21BE36098);
  sub_21BE2809C();

  v24 = a1 + *(v37 + 56);
  v25 = *v24;
  v26 = *(v24 + 8);
  v43 = v25;
  v44 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE2841C();
  v27 = v40;
  sub_21BBB515C(a1, v40);
  v28 = swift_allocObject();
  sub_21BC0B23C(v27, v28 + v19, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6D80, &qword_21BE36090);
  sub_21BC0B4EC();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DA0, &qword_21BE360A0);
  v30 = type metadata accessor for ChecklistStateVars();
  v31 = sub_21BC0B5D8();
  v32 = sub_21BC089F4(&qword_27CDBDB60, 255, type metadata accessor for ChecklistStateVars);
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v48 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v42;
  sub_21BE2812C();

  return sub_21BB3A4CC(v33, &qword_27CDB6D78, &qword_21BE36088);
}

uint64_t sub_21BC032EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19[-v4];
  v6 = type metadata accessor for FamilyLandingPageMainView();
  v7 = (a1 + *(v6 + 64));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  type metadata accessor for FamilyChecklistStore();
  sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore);
  sub_21BE26EAC();
  LOBYTE(v9) = sub_21BE07D30(0);

  if (v9)
  {
    if (qword_280BD7FD8 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    if (v20 == 1)
    {
      v12 = (a1 + *(v6 + 56));
      v13 = *v12;
      v14 = *(v12 + 1);
      v20 = v13;
      v21 = v14;
      v19[15] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
      sub_21BE2840C();
      v15 = sub_21BE28DAC();
      (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
      sub_21BE28D7C();
      v16 = sub_21BE28D6C();
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D85700];
      *(v17 + 16) = v16;
      *(v17 + 24) = v18;
      sub_21BBA932C(0, 0, v5, &unk_21BE36160, v17);
    }
  }

  return result;
}

uint64_t sub_21BC03578()
{
  sub_21BE28D7C();
  v0[2] = sub_21BE28D6C();
  v2 = sub_21BE28D0C();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x2822009F8](sub_21BC0360C, v2, v1);
}

uint64_t sub_21BC0360C()
{
  if (qword_27CDB4E48 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6E20, &unk_21BE36168);
  __swift_project_value_buffer(v1, qword_27CDD4198);
  v2 = *(MEMORY[0x277CE1A28] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_21BC036F0;

  return MEMORY[0x282134AA8]();
}

uint64_t sub_21BC036F0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v3 = *(v1 + 32);
  v4 = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_21BC03810, v4, v3);
}

uint64_t sub_21BC03810()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21BC03870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FamilyLandingPageMainView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21BBB515C(a1, &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 1]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21BC0B23C(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 1], v8 + v7, type metadata accessor for FamilyLandingPageMainView);
  type metadata accessor for FamilyChecklistStore();
  sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore);
  v9 = sub_21BE2727C();
  v11 = v10;
  sub_21BB3A2A4(0, &qword_280BD6980, 0x277D08248);
  sub_21BB3CC48(&qword_27CDB6A60, &qword_280BD6980, 0x277D08248);
  result = sub_21BE2727C();
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = sub_21BC0BD04;
  *(a2 + 24) = v8;
  *(a2 + 32) = 0;
  *(a2 + 33) = *v15;
  *(a2 + 36) = *&v15[3];
  *(a2 + 40) = result;
  *(a2 + 48) = v13;
  *(a2 + 56) = sub_21BC9EB04;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_21BC03A74(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for FamilyLandingPageMainView() + 68));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for FamilyNetworkMonitor();
  sub_21BC089F4(&qword_27CDBC320, 255, type metadata accessor for FamilyNetworkMonitor);

  return sub_21BE26EAC();
}

uint64_t sub_21BC03B1C()
{
  if (qword_27CDB4E70 != -1)
  {
    swift_once();
  }

  return sub_21BC25284();
}

uint64_t sub_21BC03B74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6DA0, &qword_21BE360A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v30 - v4);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5960, &qword_21BE3FDF0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for FamilyChecklistView();
  v7 = (v5 + v6[5]);
  type metadata accessor for FamilyChecklistStore();
  sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore);
  *v7 = sub_21BE2727C();
  v7[1] = v8;
  v9 = (v5 + v6[6]);
  type metadata accessor for FamilyNetworkMonitor();
  sub_21BC089F4(&qword_27CDBC320, 255, type metadata accessor for FamilyNetworkMonitor);
  *v9 = sub_21BE2727C();
  v9[1] = v10;
  v11 = (v5 + v6[7]);
  v31 = 0;
  sub_21BE283EC();
  v12 = v33;
  *v11 = v32;
  v11[1] = v12;
  v13 = v5 + v6[8];
  LOBYTE(v31) = 0;
  sub_21BE283EC();
  v14 = v33;
  *v13 = v32;
  *(v13 + 1) = v14;
  v15 = v6[9];
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  v16 = (v5 + v15);
  type metadata accessor for FamilyCircleStore(0);
  sub_21BC089F4(&qword_27CDB5C40, 255, type metadata accessor for FamilyCircleStore);

  *v16 = sub_21BE270CC();
  v16[1] = v17;
  v18 = type metadata accessor for FamilyLandingPageMainView();
  v19 = (a1 + *(v18 + 68));
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  v23 = sub_21BE26EAC();
  v24 = sub_21BE26BFC();
  v25 = (v5 + *(v2 + 36));
  *v25 = v24;
  v25[1] = v23;
  v26 = (a1 + *(v18 + 84));
  v28 = *v26;
  v27 = v26[1];
  v32 = v28;
  v33 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6E18, &qword_21BE36150);
  sub_21BE283FC();
  type metadata accessor for ChecklistStateVars();
  sub_21BC0B5D8();
  sub_21BC089F4(&qword_27CDBDB60, 255, type metadata accessor for ChecklistStateVars);
  sub_21BE27EEC();

  return sub_21BB3A4CC(v5, &qword_27CDB6DA0, &qword_21BE360A0);
}

uint64_t sub_21BC03F14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = type metadata accessor for AppleCardFamilySettingsCell();
  v87 = *(v3 - 8);
  v4 = *(v87 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6CA0, &qword_21BE35FC0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v84 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = v78 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6CA8, &qword_21BE35FC8);
  v12 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v85 = v78 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6CB0, &qword_21BE35FD0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v90 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v89 = v78 - v18;
  v19 = *a1;
  v20 = a1[1];
  v21 = *(a1 + 16);
  v22 = type metadata accessor for FAFamilyLandingPageViewModel();
  v24 = sub_21BC089F4(&qword_27CDB68F0, v23, type metadata accessor for FAFamilyLandingPageViewModel);
  v94 = v21;
  v96 = v24;
  v97 = v22;
  v25 = sub_21BE26EAC();
  v26 = *&v25[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v27 = v129;
  v88 = v3;
  if (!v129)
  {
    v27 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v82 = v6;
  v28 = [v27 me];

  v92 = a1;
  v93 = v19;
  v95 = v20;
  if (v28)
  {
    v29 = type metadata accessor for FamilyLandingPageMainView();
    v81 = *(a1 + v29[9] + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v30 = sub_21BCE6070(0xD000000000000011, 0x800000021BE55910, v129);

    v31 = sub_21BE26EAC();
    v32 = *&v31[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_familyPageSubscriptionsURLs];

    v33 = a1 + v29[10];
    LODWORD(v80) = *v33;
    v79 = *(v33 + 1);
    LOBYTE(v109) = v80;
    v110 = v79;
    v78[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
    sub_21BE2841C();
    v34 = v129;
    v35 = v130;
    v78[1] = v29[13];
    swift_unknownObjectWeakLoadStrong();
    v112 = v30;
    v113 = v32;
    v114 = v34;
    LOBYTE(v115) = v35;
    v116 = sub_21BC5D6B0;
    v117 = 0;
    v118 = 0;
    swift_unknownObjectWeakInit();
    v36 = v28;
    swift_unknownObjectRelease();
    v120 = v36;
    LOBYTE(v109) = 0;
    sub_21BE283EC();
    v121 = v129;
    v122 = *(&v129 + 1);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v37 = sub_21BCE6070(0xD000000000000010, 0x800000021BE55930, v129);

    v38 = sub_21BE26EAC();
    v39 = *&v38[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_familyPageSubscriptionsURLs];

    LOBYTE(v109) = v80;
    v110 = v79;
    sub_21BE2841C();
    v40 = v129;
    LOBYTE(v30) = v130;
    swift_unknownObjectWeakLoadStrong();
    v100[0] = v37;
    v100[1] = v39;
    v101 = v40;
    v102 = v30;
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v103 = v36;
    v104 = sub_21BDE9DE8;
    v105 = 0;
    v106 = 0;
    LOBYTE(v109) = 0;
    sub_21BE283EC();
    v107 = v129;
    v108 = *(&v129 + 1);
    sub_21BBA3854(&v112, v99, &qword_27CDB6CE8, &qword_21BE35FF0);
    sub_21BBA3854(v100, v98, &qword_27CDB6CF0, &qword_21BE35FF8);
    sub_21BBA3854(v99, &v109, &qword_27CDB6CE8, &qword_21BE35FF0);
    sub_21BBA3854(v98, &v111, &qword_27CDB6CF0, &qword_21BE35FF8);
    sub_21BB3A4CC(v100, &qword_27CDB6CF0, &qword_21BE35FF8);
    sub_21BB3A4CC(&v112, &qword_27CDB6CE8, &qword_21BE35FF0);
    sub_21BB3A4CC(v98, &qword_27CDB6CF0, &qword_21BE35FF8);
    sub_21BB3A4CC(v99, &qword_27CDB6CE8, &qword_21BE35FF0);
    sub_21BBB7D84(&v109, &v129, &qword_27CDB6CF8, &qword_21BE36000);
  }

  else
  {
    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
  }

  v41 = sub_21BE26EAC();
  v42 = *&v41[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v43 = v109;
  if (!v109)
  {
    v43 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v44 = v92;
  v45 = type metadata accessor for FamilyLandingPageMainView();
  v46 = *(v44 + v45[11] + 8);
  v47 = v44[4];
  v48 = *(v44 + v45[9] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v46;
  v81 = v47;
  sub_21BE26CAC();

  v80 = sub_21BCE6070(0xD000000000000011, 0x800000021BE57B00, v109);

  v50 = sub_21BE26EAC();
  v51 = *&v50[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v52 = v109;
  if (!v109)
  {
    v52 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  v53 = [v52 showLocationSplashScreen];
  v54 = v45[13];
  v55 = v92;
  swift_unknownObjectWeakLoadStrong();
  LODWORD(v97) = *(v48 + qword_280BDCB88);
  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  v112 = v43;
  sub_21BB3A2A4(0, &qword_280BD8A10, off_2782F0CC0);
  sub_21BB3CC48(&qword_280BD8A20, &qword_280BD8A10, off_2782F0CC0);
  v56 = v49;

  v113 = sub_21BE270CC();
  *&v114 = v57;
  type metadata accessor for LocationViewModel();
  sub_21BC089F4(&qword_27CDBDC20, 255, type metadata accessor for LocationViewModel);
  *(&v114 + 1) = sub_21BE270CC();
  v115 = v58;
  v116 = v80;
  LOBYTE(v117) = v53;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  LOBYTE(v100[0]) = 0;
  sub_21BE283EC();
  v119 = v109;
  v120 = v110;
  LOBYTE(v100[0]) = 0;
  sub_21BE283EC();
  v121 = v109;
  v122 = v110;
  LOBYTE(v100[0]) = v97;
  sub_21BE283EC();
  v123 = v109;
  v124 = v110;
  LOBYTE(v100[0]) = 0;
  sub_21BE283EC();
  v125 = v109;
  v126 = v110;
  type metadata accessor for ServicesStore();
  sub_21BC089F4(&qword_27CDB5750, 255, type metadata accessor for ServicesStore);
  v127 = sub_21BE270CC();
  v128 = v59;
  v60 = *(v55 + v45[19] + 8);
  v61 = v88;
  v62 = *(v88 + 24);
  KeyPath = swift_getKeyPath();
  v64 = v82;
  *(v82 + v62) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AppleCardFamilySettingsViewModel();
  sub_21BC089F4(&unk_27CDB5760, 255, type metadata accessor for AppleCardFamilySettingsViewModel);
  v65 = v60;
  *v64 = sub_21BE270CC();
  v64[1] = v66;
  v64[2] = sub_21BE270CC();
  v64[3] = v67;
  if (sub_21BBFE628())
  {
    v68 = v84;
    sub_21BC0B23C(v64, v84, type metadata accessor for AppleCardFamilySettingsCell);
    v69 = 0;
  }

  else
  {
    sub_21BC0B0A4(v64);
    v69 = 1;
    v68 = v84;
  }

  (*(v87 + 56))(v68, v69, 1, v61);
  v70 = v68;
  v71 = v83;
  sub_21BBB7D84(v70, v83, &qword_27CDB6CA0, &qword_21BE35FC0);
  v72 = v85;
  sub_21BBB7D84(v71, v85, &qword_27CDB6CA0, &qword_21BE35FC0);
  sub_21BC0B100(&qword_27CDB6CB8, &qword_27CDB6CA8, &qword_21BE35FC8, sub_21BC0B184);
  v73 = v89;
  sub_21BE2809C();
  sub_21BB3A4CC(v72, &qword_27CDB6CA8, &qword_21BE35FC8);
  sub_21BBA3854(&v129, &v109, &qword_27CDB6CD0, &qword_21BE35FD8);
  sub_21BBA3854(&v112, v100, &qword_27CDB6CD8, &qword_21BE35FE0);
  v74 = v90;
  sub_21BBA3854(v73, v90, &qword_27CDB6CB0, &qword_21BE35FD0);
  v75 = v91;
  sub_21BBA3854(&v109, v91, &qword_27CDB6CD0, &qword_21BE35FD8);
  sub_21BBA3854(v100, v75 + 192, &qword_27CDB6CD8, &qword_21BE35FE0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6CE0, &qword_21BE35FE8);
  sub_21BBA3854(v74, v75 + *(v76 + 64), &qword_27CDB6CB0, &qword_21BE35FD0);
  sub_21BB3A4CC(v73, &qword_27CDB6CB0, &qword_21BE35FD0);
  sub_21BB3A4CC(&v112, &qword_27CDB6CD8, &qword_21BE35FE0);
  sub_21BB3A4CC(&v129, &qword_27CDB6CD0, &qword_21BE35FD8);
  sub_21BB3A4CC(v74, &qword_27CDB6CB0, &qword_21BE35FD0);
  sub_21BB3A4CC(v100, &qword_27CDB6CD8, &qword_21BE35FE0);
  return sub_21BB3A4CC(&v109, &qword_27CDB6CD0, &qword_21BE35FD8);
}

uint64_t sub_21BC04D68@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FamilyPrivacyDisclosureView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_21BE25FCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277D07F28], v7);
  v12 = MEMORY[0x21CF01150](v11);
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    *(v6 + *(v2 + 20)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6138, &qword_21BE33F20);
    swift_storeEnumTagMultiPayload();
    *v6 = 0xD000000000000022;
    v6[1] = 0x800000021BE56360;
    sub_21BC0B23C(v6, a1, type metadata accessor for FamilyPrivacyDisclosureView);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  return (*(v3 + 56))(a1, v13, 1, v2);
}

uint64_t sub_21BC04F80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FamilyLandingPageMainView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = sub_21BE28DAC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_21BBB515C(a2, v6);
  sub_21BE28D7C();
  v12 = sub_21BE28D6C();
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_21BC0B23C(v6, v14 + v13, type metadata accessor for FamilyLandingPageMainView);
  sub_21BBA932C(0, 0, v10, &unk_21BE35EB8, v14);
}

uint64_t sub_21BC0514C()
{
  v1 = sub_21BE26A4C();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = sub_21BE28D7C();
  v0[6] = sub_21BE28D6C();
  v5 = sub_21BE28D0C();
  v0[7] = v5;
  v0[8] = v4;

  return MEMORY[0x2822009F8](sub_21BC05240, v5, v4);
}

uint64_t sub_21BC05240()
{
  v1 = v0[4];
  sub_21BE2614C();
  v2 = sub_21BE26A2C();
  v3 = sub_21BE28FFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21BB35000, v2, v3, "Landing page fielding update", v4, 2u);
    MEMORY[0x21CF05C50](v4, -1, -1);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  (*(v8 + 8))(v6, v7);
  v0[9] = sub_21BE28D6C();
  v10 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC05370, v10, v9);
}

uint64_t sub_21BC05370()
{
  v1 = v0[9];

  v2 = v0[7];
  v3 = v0[8];

  return MEMORY[0x2822009F8](sub_21BC053D4, v2, v3);
}

uint64_t sub_21BC053D4()
{
  v1 = v0[6];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BC05440(uint64_t a1)
{
  v2 = type metadata accessor for FamilyLandingPageMainView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18[-v8];
  if (qword_27CDB4F68 != -1)
  {
    swift_once();
  }

  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB57E0, &unk_21BE35E30);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6976614E77656976;
  *(inited + 16) = xmmword_21BE32770;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEF6F546465746167;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x800000021BE35AE0;

  v11 = sub_21BBB5E60(inited);
  swift_setDeallocating();
  sub_21BB3A4CC(inited + 32, &qword_27CDB57E8, &qword_21BE32890);
  sub_21BCA55DC(&v19, v11);

  sub_21BC0573C();
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_21BBB515C(a1, &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_21BE28D7C();
  v13 = sub_21BE28D6C();
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_21BC0B23C(v5, v15 + v14, type metadata accessor for FamilyLandingPageMainView);
  sub_21BC54908(0, 0, v9, &unk_21BE35E48, v15);
}

uint64_t sub_21BC0573C()
{
  v1 = type metadata accessor for FamilyLandingPageMainView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EA8 != -1)
  {
    swift_once();
  }

  [v9 postNotificationName:qword_27CDB7E58 object:0];

  v10 = sub_21BE28DAC();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_21BBB515C(v0, &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21BE28D7C();
  v11 = sub_21BE28D6C();
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21BC0B23C(v4, v13 + v12, type metadata accessor for FamilyLandingPageMainView);
  sub_21BBA932C(0, 0, v8, &unk_21BE35E60, v13);
}

uint64_t sub_21BC05978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21BE26B2C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_21BC05A6C, v9, v8);
}

uint64_t sub_21BC05A6C()
{
  if (qword_27CDB4FD8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_21BC05B30;

  return sub_21BDA69F4();
}

uint64_t sub_21BC05B30()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21BC05C50, v4, v3);
}

uint64_t sub_21BC05C50()
{
  v2 = v0[5];
  v1 = v0[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6B98, &qword_21BE35E50);
  v3 = *(sub_21BE26B4C() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_21BE32770;
  sub_21BE26B1C();
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  sub_21BE26B3C();
  (*(v7 + 8))(v6, v8);
  sub_21BE26B7C();

  v10 = v0[5];
  v11 = v0[2];
  v12 = *(v11 + *(type metadata accessor for FamilyLandingPageMainView() + 92));
  sub_21BC852D8();

  v13 = v0[1];

  return v13();
}

uint64_t sub_21BC05DF4@<X0>(void *a1@<X8>)
{
  type metadata accessor for ServicesStore();
  sub_21BC089F4(&qword_27CDB5750, 255, type metadata accessor for ServicesStore);
  v2 = sub_21BE2727C();
  v4 = v3;
  if (qword_280BD76F0 != -1)
  {
    swift_once();
  }

  v5 = qword_280BDCB98;
  v6 = sub_21BE26BFC();
  *a1 = 0xD000000000000011;
  a1[1] = 0x800000021BE55910;
  a1[2] = v2;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

uint64_t sub_21BC05F04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[1];
  v31 = *a1;
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BC089F4(&qword_27CDB68F0, v6, type metadata accessor for FAFamilyLandingPageViewModel);

  v7 = sub_21BE2727C();
  v29 = v8;
  v30 = v7;
  type metadata accessor for LocationViewModel();
  sub_21BC089F4(&qword_27CDBDC20, 255, type metadata accessor for LocationViewModel);
  v9 = sub_21BE2727C();
  v27 = v10;
  v28 = v9;
  KeyPath = swift_getKeyPath();
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  v25 = sub_21BE26EAC();
  v14 = sub_21BE26BFC();
  v15 = a2[4];
  v16 = sub_21BE26BFC();
  v17 = swift_getKeyPath();
  v18 = *(type metadata accessor for FamilyLandingPageMainView() + 52);
  Strong = swift_unknownObjectWeakLoadStrong();
  v20 = swift_getKeyPath();
  v21 = qword_27CDB4FD8;
  v22 = v15;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = qword_27CDD4360;
  *a3 = v31;
  *(a3 + 8) = v5;
  *(a3 + 16) = v30;
  *(a3 + 24) = v29;
  *(a3 + 32) = v28;
  *(a3 + 40) = v27;
  *(a3 + 48) = KeyPath;
  *(a3 + 56) = 0;
  *(a3 + 64) = v14;
  *(a3 + 72) = v25;
  *(a3 + 80) = v16;
  *(a3 + 88) = v22;
  *(a3 + 96) = v17;
  *(a3 + 104) = Strong;
  *(a3 + 112) = v20;
  *(a3 + 120) = v23;
}

uint64_t sub_21BC06120(uint64_t *a1)
{
  v2 = *a1;
  sub_21BC0A610();
  swift_unknownObjectRetain();
  return sub_21BE2756C();
}

uint64_t sub_21BC06180(uint64_t a1)
{
  v2 = type metadata accessor for FamilyLandingPageMainView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_21BE28DAC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21BBB515C(a1, v5);
  sub_21BE28D7C();
  v11 = sub_21BE28D6C();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21BC0B23C(v5, v13 + v12, type metadata accessor for FamilyLandingPageMainView);
  sub_21BBA932C(0, 0, v9, &unk_21BE35E00, v13);
}

uint64_t sub_21BC0634C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_21BE26A4C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_21BE28D7C();
  v4[6] = sub_21BE28D6C();
  v9 = sub_21BE28D0C();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_21BC06440, v9, v8);
}

uint64_t sub_21BC06440()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(type metadata accessor for FamilyLandingPageMainView() + 64);
  *(v0 + 72) = *v2;
  *(v0 + 80) = *(v2 + 8);
  *(v0 + 120) = *(v2 + 16);
  *(v0 + 88) = type metadata accessor for FamilyChecklistStore();
  *(v0 + 96) = sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore);
  sub_21BE26EAC();
  v3 = sub_21BE07D30(0);

  if (v3)
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 40);
    sub_21BE261BC();
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FCC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21BB35000, v9, v10, "Waiting to retry checklist", v11, 2u);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 120);
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    v19 = *(v0 + 24);

    (*(v18 + 8))(v17, v19);
    *(v0 + 104) = sub_21BE26EAC();
    v20 = swift_task_alloc();
    *(v0 + 112) = v20;
    *v20 = v0;
    v20[1] = sub_21BC066AC;

    return sub_21BE05F3C();
  }
}

uint64_t sub_21BC066AC()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 112);
  v5 = *v1;

  v6 = *(v2 + 104);
  if (v0)
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_21BC0C58C;
  }

  else
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_21BC067F0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_21BC067F0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 120);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  sub_21BE26EAC();
  v6 = sub_21BE07D30(0);

  if (v6)
  {
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 40);
    sub_21BE261BC();
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FCC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21BB35000, v12, v13, "Waiting to retry checklist", v14, 2u);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    v16 = *(v0 + 88);
    v15 = *(v0 + 96);
    v17 = *(v0 + 120);
    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v21 = *(v0 + 32);
    v20 = *(v0 + 40);
    v22 = *(v0 + 24);

    (*(v21 + 8))(v20, v22);
    *(v0 + 104) = sub_21BE26EAC();
    v23 = swift_task_alloc();
    *(v0 + 112) = v23;
    *v23 = v0;
    v23[1] = sub_21BC066AC;

    return sub_21BE05F3C();
  }
}

uint64_t sub_21BC069DC@<X0>(void *a1@<X8>)
{
  sub_21BC0A470();
  result = sub_21BE2755C();
  *a1 = v3;
  return result;
}

uint64_t sub_21BC06A2C(void **a1)
{
  v1 = *a1;
  sub_21BC0A470();
  v2 = v1;
  return sub_21BE2756C();
}

id sub_21BC06A8C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  type metadata accessor for FAFamilyLandingPageViewModel();
  sub_21BC089F4(&qword_27CDB68F0, v4, type metadata accessor for FAFamilyLandingPageViewModel);
  v5 = sub_21BE26EAC();
  v6 = *&v5[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v7 = v9;
  if (!v9)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D08248]) init];
  }

  return v7;
}

uint64_t sub_21BC06B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = sub_21BE28D7C();
  v4[8] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x2822009F8](sub_21BC06C68, v7, v6);
}

uint64_t sub_21BC06C68()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[11] = *(v2 + *(type metadata accessor for FamilyLandingPageMainView() + 36) + 8);
  v0[12] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v0[13] = v4;
  v0[14] = v3;

  return MEMORY[0x2822009F8](sub_21BC06D10, v4, v3);
}

void sub_21BC06D10()
{
  v1 = *(v0[11] + 40);
  v0[15] = v1;
  if (v1)
  {
    v2 = v0[6];
    v3 = sub_21BE28DAC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(MEMORY[0x277D07FD0] + 4);
    v7 = (*MEMORY[0x277D07FD0] + MEMORY[0x277D07FD0]);

    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_21BC06E24;
    v6 = v0[6];

    v7(v0 + 2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21BC06E24()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 128);
  v5 = *v1;

  v6 = *(v2 + 120);
  v7 = *(v2 + 48);
  if (v0)
  {

    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);
    v8 = *(v3 + 104);
    v9 = *(v3 + 112);
    v10 = sub_21BC070B4;
  }

  else
  {
    sub_21BB3A4CC(v7, &qword_27CDB5790, &qword_21BE32800);

    v8 = *(v3 + 104);
    v9 = *(v3 + 112);
    v10 = sub_21BC06FB4;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_21BC06FB4()
{
  v1 = v0[12];

  v2 = v0[2];

  v3 = v0[9];
  v4 = v0[10];

  return MEMORY[0x2822009F8](sub_21BC07020, v3, v4);
}

uint64_t sub_21BC07020()
{
  v1 = *(*(v0 + 40) + 32);
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_21BC07118;

  return sub_21BCD2AA8();
}

uint64_t sub_21BC070B4()
{
  v1 = v0[12];

  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x2822009F8](sub_21BC0C594, v2, v3);
}

uint64_t sub_21BC07118()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_21BC07238, v4, v3);
}

uint64_t sub_21BC07238()
{
  v1 = v0[11];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  v2 = sub_21BCE6070(0x535F44554F4C4349, 0xEE00454741524F54, v0[3]);

  if (v2)
  {
    v3 = v0[5];

    v5 = *v3;
    v4 = v3[1];
    v6 = *(v3 + 16);
    type metadata accessor for FAFamilyLandingPageViewModel();
    sub_21BC089F4(&qword_27CDB68F0, v7, type metadata accessor for FAFamilyLandingPageViewModel);
    v8 = sub_21BE26EAC();
    v9 = *&v8[OBJC_IVAR____TtC14FamilyCircleUI28FAFamilyLandingPageViewModel_circleStore];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v10 = v0[4];
    if (v10)
    {

      v8 = v10;
    }

    else
    {
    }

    v15 = v0[7];
    v0[18] = sub_21BE28D6C();
    v17 = sub_21BE28D0C();

    return MEMORY[0x2822009F8](sub_21BC07480, v17, v16);
  }

  else
  {
    v11 = v0[8];

    v12 = v0[6];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_21BC07480()
{
  v1 = v0[18];

  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x2822009F8](sub_21BC074E4, v2, v3);
}

uint64_t sub_21BC074E4()
{
  v1 = v0[8];

  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_21BC0754C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BC075CC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_21BE26CBC();
}

uint64_t sub_21BC07668(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBB7EB8;

  return sub_21BBFE078(a1, v1);
}

uint64_t sub_21BC07724(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21BDFE08C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21BC077A0(v6);
  return sub_21BE296CC();
}

void sub_21BC077A0(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21BE2991C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_21BE28C7C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_21BC079F4(v7, v8, a1, v4);
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
    sub_21BC07898(0, v2, 1, a1);
  }
}

void sub_21BC07898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    v6 = &selRef_fa_URLByAddingAirdropInviteParams;
LABEL_5:
    v23 = v4;
    v24 = a3;
    v7 = *(v25 + 8 * a3);
    v22 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      v11 = [v9 memberSortOrder];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 v6[236]];
      }

      else
      {
        v13 = 0;
      }

      v14 = [v10 memberSortOrder];
      if (v14)
      {
        v15 = v14;
        v16 = v6;
        v17 = [v14 v6[236]];

        v18 = v13 < v17;
        v6 = v16;
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v25)
      {
        break;
      }

      v19 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v19;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
LABEL_4:
        a3 = v24 + 1;
        v4 = v23 + 8;
        v5 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_21BC079F4(void ***a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_107:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v94 = v4;
LABEL_110:
      v4 = *(v94 + 2);
      if (v4 >= 2)
      {
        do
        {
          v95 = *v7;
          if (!*v7)
          {
            goto LABEL_144;
          }

          v7 = (v4 - 1);
          v96 = *&v94[16 * v4];
          v97 = v94;
          v98 = *&v94[16 * v4 + 24];
          sub_21BC08190((v95 + 8 * v96), (v95 + 8 * *&v94[16 * v4 + 16]), (v95 + 8 * v98), v9);
          if (v6)
          {
            break;
          }

          if (v98 < v96)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_21BDFD0AC(v97);
          }

          if (v4 - 2 >= *(v97 + 2))
          {
            goto LABEL_134;
          }

          v99 = &v97[16 * v4];
          *v99 = v96;
          *(v99 + 1) = v98;
          sub_21BDFD020(v4 - 1);
          v94 = v97;
          v4 = *(v97 + 2);
          v7 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v94 = sub_21BDFD0AC(v4);
    goto LABEL_110;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
LABEL_4:
  v11 = v9;
  v12 = v9 + 1;
  if (v9 + 1 < v8)
  {
    v103 = v10;
    v105 = v6;
    v4 = *v7;
    v13 = *(*v7 + 8 * v9);
    v14 = *(*v7 + 8 * v12);
    v15 = v13;
    v16 = [v14 memberSortOrder];
    if (v16)
    {
      v9 = v16;
      v112 = [v16 integerValue];
    }

    else
    {
      v112 = 0;
    }

    v17 = [v15 memberSortOrder];
    if (v17)
    {
      v9 = v17;
      v110 = [v17 integerValue];

      v14 = v15;
      v15 = v9;
    }

    else
    {
      v110 = 0;
    }

    v12 = v11 + 2;
    if (v11 + 2 < v8)
    {
      v100 = v11;
      v4 += 8 * v11 + 16;
      do
      {
        v18 = *(v4 - 8);
        v19 = *v4;
        v20 = v18;
        v21 = [v19 memberSortOrder];
        if (v21)
        {
          v9 = v21;
          v22 = [v21 integerValue];
        }

        else
        {
          v22 = 0;
        }

        v23 = [v20 memberSortOrder];
        if (v23)
        {
          v9 = v23;
          v24 = [v23 integerValue];

          if (v112 < v110 == v22 >= v24)
          {
LABEL_20:
            v7 = a3;
            goto LABEL_22;
          }
        }

        else
        {

          if (v112 < v110 == v22 >= 0)
          {
            goto LABEL_20;
          }
        }

        ++v12;
        v4 += 8;
        v7 = a3;
      }

      while (v8 != v12);
      v12 = v8;
LABEL_22:
      v11 = v100;
    }

    v10 = v103;
    v6 = v105;
    if (v112 < v110)
    {
      if (v12 < v11)
      {
        goto LABEL_137;
      }

      if (v11 < v12)
      {
        v25 = 8 * v12 - 8;
        v26 = 8 * v11;
        v27 = v12;
        v28 = v11;
        do
        {
          if (v28 != --v27)
          {
            v30 = *v7;
            if (!*v7)
            {
              goto LABEL_143;
            }

            v29 = *(v30 + v26);
            *(v30 + v26) = *(v30 + v25);
            *(v30 + v25) = v29;
          }

          ++v28;
          v25 -= 8;
          v26 += 8;
        }

        while (v28 < v27);
      }
    }
  }

  v31 = v7[1];
  if (v12 >= v31)
  {
    goto LABEL_55;
  }

  if (__OFSUB__(v12, v11))
  {
    goto LABEL_136;
  }

  if (v12 - v11 >= a4)
  {
    goto LABEL_55;
  }

  v32 = (v11 + a4);
  if (__OFADD__(v11, a4))
  {
    goto LABEL_138;
  }

  if (v32 >= v31)
  {
    v32 = v7[1];
  }

  if (v32 < v11)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v12 == v32)
  {
    goto LABEL_55;
  }

  v104 = v10;
  v106 = v6;
  v33 = *v7;
  v34 = *v7 + 8 * v12 - 8;
  v101 = v11;
  v35 = v11 - v12;
  v108 = v32;
LABEL_42:
  v111 = v34;
  v113 = v12;
  v36 = *(v33 + 8 * v12);
  v4 = v35;
  while (1)
  {
    v37 = *v34;
    v38 = v36;
    v39 = v37;
    v40 = [v38 memberSortOrder];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 integerValue];
    }

    else
    {
      v42 = 0;
    }

    v43 = [v39 memberSortOrder];
    if (v43)
    {
      v44 = v43;
      v9 = [v43 integerValue];

      if (v42 >= v9)
      {
        goto LABEL_41;
      }
    }

    else
    {

      if ((v42 & 0x8000000000000000) == 0)
      {
        goto LABEL_41;
      }
    }

    if (!v33)
    {
      break;
    }

    v45 = *v34;
    v36 = *(v34 + 8);
    *v34 = v36;
    *(v34 + 8) = v45;
    v34 -= 8;
    if (__CFADD__(v4++, 1))
    {
LABEL_41:
      v12 = v113 + 1;
      v34 = v111 + 8;
      --v35;
      if (v113 + 1 != v108)
      {
        goto LABEL_42;
      }

      v12 = v108;
      v10 = v104;
      v6 = v106;
      v7 = a3;
      v11 = v101;
LABEL_55:
      if (v12 < v11)
      {
        goto LABEL_135;
      }

      v47 = v10;
      v9 = v12;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v10 = v47;
      }

      else
      {
        v10 = sub_21BBBCBFC(0, *(v47 + 2) + 1, 1, v47);
      }

      v4 = *(v10 + 2);
      v48 = *(v10 + 3);
      v49 = v4 + 1;
      if (v4 >= v48 >> 1)
      {
        v10 = sub_21BBBCBFC((v48 > 1), v4 + 1, 1, v10);
      }

      *(v10 + 2) = v49;
      v50 = &v10[16 * v4];
      *(v50 + 4) = v11;
      *(v50 + 5) = v12;
      v51 = *a1;
      if (!*a1)
      {
        goto LABEL_145;
      }

      if (v4)
      {
        while (1)
        {
          v52 = v49 - 1;
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v53 = *(v10 + 4);
            v54 = *(v10 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_75:
            if (v56)
            {
              goto LABEL_124;
            }

            v69 = &v10[16 * v49];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_127;
            }

            v75 = &v10[16 * v52 + 32];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_130;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_131;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v49 - 2;
              }

              goto LABEL_96;
            }

            goto LABEL_89;
          }

          v79 = &v10[16 * v49];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_89:
          if (v74)
          {
            goto LABEL_126;
          }

          v82 = &v10[16 * v52];
          v84 = *(v82 + 4);
          v83 = *(v82 + 5);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_129;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_96:
          v4 = v52 - 1;
          if (v52 - 1 >= v49)
          {
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
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            goto LABEL_139;
          }

          if (!*v7)
          {
            goto LABEL_142;
          }

          v90 = v10;
          v91 = *&v10[16 * v4 + 32];
          v92 = *&v10[16 * v52 + 40];
          sub_21BC08190((*v7 + 8 * v91), (*v7 + 8 * *&v10[16 * v52 + 32]), (*v7 + 8 * v92), v51);
          if (v6)
          {
            goto LABEL_118;
          }

          if (v92 < v91)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_21BDFD0AC(v90);
          }

          if (v4 >= *(v90 + 2))
          {
            goto LABEL_121;
          }

          v93 = &v90[16 * v4];
          *(v93 + 4) = v91;
          *(v93 + 5) = v92;
          sub_21BDFD020(v52);
          v10 = v90;
          v49 = *(v90 + 2);
          if (v49 <= 1)
          {
            goto LABEL_3;
          }
        }

        v57 = &v10[16 * v49 + 32];
        v58 = *(v57 - 64);
        v59 = *(v57 - 56);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_122;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_123;
        }

        v64 = &v10[16 * v49];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_125;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_128;
        }

        if (v68 >= v60)
        {
          v86 = &v10[16 * v52 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_132;
          }

          if (v55 < v89)
          {
            v52 = v49 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_75;
      }

LABEL_3:
      v8 = v7[1];
      if (v9 >= v8)
      {
        goto LABEL_107;
      }

      goto LABEL_4;
    }
  }

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
}

uint64_t sub_21BC08190(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
      v5 = __dst;
    }

    v15 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_24:
      v28 = v6;
      goto LABEL_50;
    }

    v47 = v15;
    while (1)
    {
      v16 = v5;
      v17 = *v13;
      v18 = *v5;
      v19 = v17;
      v20 = [v18 memberSortOrder];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 integerValue];
      }

      else
      {
        v22 = 0;
      }

      v23 = [v19 memberSortOrder];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 integerValue];

        if (v22 >= v25)
        {
          goto LABEL_20;
        }
      }

      else
      {

        if ((v22 & 0x8000000000000000) == 0)
        {
LABEL_20:
          v26 = v13;
          v27 = v6 == v13++;
          v5 = v16;
          if (v27)
          {
            goto LABEL_22;
          }

LABEL_21:
          *v6 = *v26;
          goto LABEL_22;
        }
      }

      v26 = v16;
      v5 = v16 + 1;
      if (v6 != v16)
      {
        goto LABEL_21;
      }

LABEL_22:
      ++v6;
      v15 = v47;
      if (v13 >= v47 || v5 >= v4)
      {
        goto LABEL_24;
      }
    }
  }

  if (a4 != __dst || &__dst[v12] <= a4)
  {
    v29 = a4;
    memmove(a4, __dst, 8 * v12);
    v5 = __dst;
    a4 = v29;
  }

  v48 = a4;
  v15 = &a4[v12];
  if (v10 < 8)
  {
    v13 = a4;
    goto LABEL_49;
  }

  v13 = a4;
  if (v5 <= v6)
  {
LABEL_49:
    v28 = v5;
    goto LABEL_50;
  }

  v31 = &off_2782F5000;
  do
  {
    v45 = v5;
    v32 = v5 - 1;
    --v4;
    v33 = v15;
    v46 = v32;
    while (1)
    {
      v34 = *--v33;
      v35 = *v32;
      v36 = v34;
      v37 = v35;
      v38 = [v36 v31[257]];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 integerValue];
      }

      else
      {
        v40 = 0;
      }

      v41 = [v37 v31[257]];
      if (!v41)
      {
        break;
      }

      v42 = v41;
      v43 = [v41 integerValue];

      if (v40 < v43)
      {
        goto LABEL_42;
      }

LABEL_40:
      v32 = v46;
      if (v4 + 1 != v15)
      {
        *v4 = *v33;
      }

      --v4;
      v15 = v33;
      v31 = &off_2782F5000;
      if (v33 <= v48)
      {
        v15 = v33;
        v13 = v48;
        v28 = v45;
        goto LABEL_50;
      }
    }

    if ((v40 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_42:
    v28 = v46;
    if (v4 + 1 != v45)
    {
      *v4 = *v46;
    }

    v13 = v48;
    v31 = &off_2782F5000;
    if (v15 <= v48)
    {
      break;
    }

    v5 = v46;
  }

  while (v46 > v6);
LABEL_50:
  if (v28 != v13 || v28 >= (v13 + ((v15 - v13 + (v15 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v28, v13, 8 * ((v15 - v13) / 8));
  }

  return 1;
}

uint64_t sub_21BC0852C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = v6;
  v8 = v6;

  sub_21BE2633C();
}

uint64_t sub_21BC085C8()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_21BC086F4;
  }

  else
  {
    v3 = sub_21BC086DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

unint64_t sub_21BC0870C(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_21BE2951C();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6E58, &qword_21BE361D8);
      result = sub_21BE295CC();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_21BE2951C();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x21CF047C0](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_21BE26BDC();
    sub_21BC089F4(&qword_27CDB6E60, 255, MEMORY[0x277CBCDA8]);
    result = sub_21BE2894C();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_21BC089F4(&qword_27CDB6E68, 255, MEMORY[0x277CBCDA8]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_21BE2899C();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for FamilyLandingPageMainView()
{
  result = qword_27CDB68D8;
  if (!qword_27CDB68D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21BC089F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21BC08A3C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FamilyLandingPageMainView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BBFFBC8(v4, a1);
}

void sub_21BC08B78()
{
  sub_21BC08E1C();
  if (v0 <= 0x3F)
  {
    sub_21BC08EAC();
    if (v1 <= 0x3F)
    {
      sub_21BC09314(319, &qword_280BD6A00);
      if (v2 <= 0x3F)
      {
        sub_21BC08F44();
        if (v3 <= 0x3F)
        {
          sub_21BC092B0(319, &qword_27CDB6908, MEMORY[0x277D40290], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_21BC08FA8();
            if (v5 <= 0x3F)
            {
              sub_21BBDAE70();
              if (v6 <= 0x3F)
              {
                sub_21BB3A2A4(319, &qword_27CDB6918, 0x277CED1D0);
                if (v7 <= 0x3F)
                {
                  sub_21BC09040();
                  if (v8 <= 0x3F)
                  {
                    sub_21BC090E8();
                    if (v9 <= 0x3F)
                    {
                      sub_21BC09180();
                      if (v10 <= 0x3F)
                      {
                        sub_21BBDADDC();
                        if (v11 <= 0x3F)
                        {
                          sub_21BC09218();
                          if (v12 <= 0x3F)
                          {
                            sub_21BC092B0(319, &qword_27CDB6950, type metadata accessor for ChecklistStateVars, MEMORY[0x277CE10B8]);
                            if (v13 <= 0x3F)
                            {
                              sub_21BC09314(319, &qword_27CDB6958);
                              if (v14 <= 0x3F)
                              {
                                type metadata accessor for FamilySignpost();
                                if (v15 <= 0x3F)
                                {
                                  type metadata accessor for FAFamilySettingsViewControllerV2();
                                  if (v16 <= 0x3F)
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
      }
    }
  }
}

void sub_21BC08E1C()
{
  if (!qword_27CDB68E8)
  {
    type metadata accessor for FAFamilyLandingPageViewModel();
    sub_21BC089F4(&qword_27CDB68F0, v0, type metadata accessor for FAFamilyLandingPageViewModel);
    v1 = sub_21BE26EBC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDB68E8);
    }
  }
}

void sub_21BC08EAC()
{
  if (!qword_27CDB68F8)
  {
    type metadata accessor for LocationViewModel();
    sub_21BC089F4(&qword_27CDBDC20, 255, type metadata accessor for LocationViewModel);
    v0 = sub_21BE270DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB68F8);
    }
  }
}

void sub_21BC08F44()
{
  if (!qword_27CDB6900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB68B0, &qword_21BE35938);
    v0 = sub_21BE26E8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB6900);
    }
  }
}

void sub_21BC08FA8()
{
  if (!qword_27CDB6910)
  {
    type metadata accessor for ServicesStore();
    sub_21BC089F4(&qword_27CDB5750, 255, type metadata accessor for ServicesStore);
    v0 = sub_21BE270DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB6910);
    }
  }
}

void sub_21BC09040()
{
  if (!qword_27CDB6920)
  {
    sub_21BB3A2A4(255, &qword_27CDB6928, off_2782F0B80);
    sub_21BB3CC48(&qword_27CDB6930, &qword_27CDB6928, off_2782F0B80);
    v0 = sub_21BE26EBC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB6920);
    }
  }
}

void sub_21BC090E8()
{
  if (!qword_27CDB6938)
  {
    type metadata accessor for FamilyChecklistStore();
    sub_21BC089F4(&qword_27CDB63D0, 255, type metadata accessor for FamilyChecklistStore);
    v0 = sub_21BE26EBC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB6938);
    }
  }
}

void sub_21BC09180()
{
  if (!qword_27CDB6940)
  {
    type metadata accessor for FamilyNetworkMonitor();
    sub_21BC089F4(&qword_27CDBC320, 255, type metadata accessor for FamilyNetworkMonitor);
    v0 = sub_21BE26EBC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB6940);
    }
  }
}

void sub_21BC09218()
{
  if (!qword_27CDB6948)
  {
    type metadata accessor for AppleCardFamilyCache();
    sub_21BC089F4(&qword_280BD8840, 255, type metadata accessor for AppleCardFamilyCache);
    v0 = sub_21BE26EBC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB6948);
    }
  }
}

void sub_21BC092B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21BC09314(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21BE2842C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_21BC0936C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_21BC093B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21BC09438()
{
  result = qword_27CDB6978;
  if (!qword_27CDB6978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6980, &qword_21BE35C50);
    sub_21BC094BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6978);
  }

  return result;
}

unint64_t sub_21BC094BC()
{
  result = qword_27CDB6988;
  if (!qword_27CDB6988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6990, &qword_21BE35C58);
    sub_21BB3B038(&qword_27CDB6998, &qword_27CDB69A0, &qword_21BE35C60);
    sub_21BBDD1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6988);
  }

  return result;
}

uint64_t sub_21BC09574(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21BBA6A64;

  return sub_21BBFE958(a1, v4);
}

uint64_t sub_21BC0961C(uint64_t a1)
{
  v2 = sub_21BE25E5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB69B8, &qword_21BE35CA8);
    v10 = sub_21BE295CC();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_21BC089F4(&qword_27CDB69C0, 255, MEMORY[0x277CC99D0]);
      v18 = sub_21BE2894C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_21BC089F4(&qword_27CDB69C8, 255, MEMORY[0x277CC99D0]);
          v25 = sub_21BE2899C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21BC0994C(uint64_t a1)
{
  v3 = *(type metadata accessor for FamilyLandingPageMainView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BC04F80(a1, v4);
}

void sub_21BC099BC(uint64_t a1, double *a2)
{
  v4 = type metadata accessor for FamilyLandingPageMainView();
  v5 = *(v2 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80)) + *(v4 + 96));
  sub_21BBA86A8(*a2 == 1.0);
}

uint64_t sub_21BC09A4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FamilyLandingPageMainView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_21BC05F04(a1, v6, a2);
}

unint64_t sub_21BC09AE4()
{
  result = qword_27CDB6A78;
  if (!qword_27CDB6A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB69D8, &qword_21BE35CB8);
    sub_21BC09B9C();
    sub_21BB3B038(&qword_27CDB6B70, &qword_27CDB6B78, &qword_21BE35DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6A78);
  }

  return result;
}

unint64_t sub_21BC09B9C()
{
  result = qword_27CDB6A80;
  if (!qword_27CDB6A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A70, &qword_21BE35D68);
    sub_21BC09C54();
    sub_21BB3B038(&qword_27CDB6B60, &qword_27CDB6B68, &qword_21BE35DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6A80);
  }

  return result;
}

unint64_t sub_21BC09C54()
{
  result = qword_27CDB6A88;
  if (!qword_27CDB6A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A68, &qword_21BE35D60);
    sub_21BC09D0C();
    sub_21BB3B038(&qword_27CDB6B50, &qword_27CDB6B58, &qword_21BE35DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6A88);
  }

  return result;
}

unint64_t sub_21BC09D0C()
{
  result = qword_27CDB6A90;
  if (!qword_27CDB6A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A58, &qword_21BE35D58);
    sub_21BC09DC4();
    sub_21BB3B038(&qword_27CDB6B40, &qword_27CDB6B48, &qword_21BE35DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6A90);
  }

  return result;
}

unint64_t sub_21BC09DC4()
{
  result = qword_27CDB6A98;
  if (!qword_27CDB6A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A50, &qword_21BE35D50);
    sub_21BC09E7C();
    sub_21BB3B038(&qword_27CDB6B30, &qword_27CDB6B38, &qword_21BE35DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6A98);
  }

  return result;
}

unint64_t sub_21BC09E7C()
{
  result = qword_27CDB6AA0;
  if (!qword_27CDB6AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A48, &qword_21BE35D20);
    sub_21BC09F34();
    sub_21BB3B038(&qword_27CDB6B20, &qword_27CDB6B28, &qword_21BE35DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6AA0);
  }

  return result;
}

unint64_t sub_21BC09F34()
{
  result = qword_27CDB6AA8;
  if (!qword_27CDB6AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A40, &qword_21BE35D18);
    sub_21BC09FEC();
    sub_21BB3B038(&qword_27CDB6B10, &qword_27CDB6B18, &qword_21BE35DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6AA8);
  }

  return result;
}

unint64_t sub_21BC09FEC()
{
  result = qword_27CDB6AB0;
  if (!qword_27CDB6AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A38, &qword_21BE35D10);
    sub_21BC0A0A4();
    sub_21BB3B038(&qword_27CDB6B00, &qword_27CDB6B08, &qword_21BE35DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6AB0);
  }

  return result;
}

unint64_t sub_21BC0A0A4()
{
  result = qword_27CDB6AB8;
  if (!qword_27CDB6AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A30, &qword_21BE35D08);
    sub_21BC0A130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6AB8);
  }

  return result;
}

unint64_t sub_21BC0A130()
{
  result = qword_27CDB6AC0;
  if (!qword_27CDB6AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A28, &unk_21BE35CF8);
    sub_21BC0A1F0();
    sub_21BC089F4(&qword_27CDB5C18, 255, type metadata accessor for ActiveStateChange);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6AC0);
  }

  return result;
}

unint64_t sub_21BC0A1F0()
{
  result = qword_27CDB6AC8;
  if (!qword_27CDB6AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A20, &qword_21BE35CF0);
    sub_21BC0A2A8();
    sub_21BB3B038(&qword_27CDB6AF0, &qword_27CDB6AF8, &qword_21BE35DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6AC8);
  }

  return result;
}

unint64_t sub_21BC0A2A8()
{
  result = qword_27CDB6AD0;
  if (!qword_27CDB6AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A18, &qword_21BE35CE8);
    sub_21BC0A360();
    sub_21BB3B038(&qword_27CDB6AE0, &qword_27CDB6AE8, &qword_21BE35D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6AD0);
  }

  return result;
}

unint64_t sub_21BC0A360()
{
  result = qword_27CDB6AD8;
  if (!qword_27CDB6AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6A08, &qword_21BE35CD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB69D0, &qword_21BE35CB0);
    sub_21BB3B038(&qword_27CDB6A00, &qword_27CDB69D0, &qword_21BE35CB0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6AD8);
  }

  return result;
}

unint64_t sub_21BC0A470()
{
  result = qword_27CDB6B88;
  if (!qword_27CDB6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6B88);
  }

  return result;
}

uint64_t sub_21BC0A4C4(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyLandingPageMainView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC0634C(a1, v6, v7, v1 + v5);
}

uint64_t keypath_get_55Tm@<X0>(void (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1();
  result = sub_21BE2755C();
  *a2 = v4;
  return result;
}

unint64_t sub_21BC0A610()
{
  result = qword_27CDB6B90;
  if (!qword_27CDB6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6B90);
  }

  return result;
}

uint64_t sub_21BC0A664(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyLandingPageMainView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBB7EB8;

  return sub_21BC05978(a1, v6, v7, v1 + v5);
}

uint64_t sub_21BC0A754(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyLandingPageMainView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21BBA6A64;

  return sub_21BC06B94(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_64Tm()
{
  v1 = type metadata accessor for FamilyLandingPageMainView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  sub_21BB47CD0(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16));

  v6 = *(v0 + v2 + 48);

  v7 = (v0 + v2 + v1[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5740, &qword_21BE327B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v7;

  if (EnumCaseMultiPayload == 1)
  {
    v10 = *(v7 + 1);

    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68B0, &qword_21BE35938) + 32);
    v12 = sub_21BE2722C();
    (*(*(v12 - 8) + 8))(&v7[v11], v12);
  }

  v13 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21BE2690C();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  v16 = *(v5 + v1[9] + 8);

  v17 = *(v5 + v1[10] + 8);

  MEMORY[0x21CF05D90](v5 + v1[13]);
  v18 = *(v5 + v1[14] + 8);

  sub_21BB47CD0(*(v5 + v1[15]), *(v5 + v1[15] + 8), *(v5 + v1[15] + 16));
  v19 = (v5 + v1[16]);
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  sub_21BB47CE0();
  v23 = (v5 + v1[17]);
  v24 = *v23;
  v25 = v23[1];
  v26 = *(v23 + 16);
  sub_21BB47CE0();
  v27 = *(v5 + v1[18] + 8);

  v28 = (v5 + v1[20]);
  v29 = *v28;
  v30 = v28[1];
  v31 = *(v28 + 16);
  sub_21BB47CE0();
  v32 = (v5 + v1[21]);
  v33 = *v32;

  v34 = v32[1];

  v35 = *(v5 + v1[22] + 8);

  v36 = *(v5 + v1[23]);

  return swift_deallocObject();
}

uint64_t sub_21BC0AB24()
{
  v2 = *(type metadata accessor for FamilyLandingPageMainView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21BBB7EB8;

  return sub_21BC0514C();
}

unint64_t sub_21BC0AC1C()
{
  result = qword_27CDB6C10;
  if (!qword_27CDB6C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6BF8, &qword_21BE35F18);
    sub_21BC0ACA8();
    sub_21BC0ACFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6C10);
  }

  return result;
}

unint64_t sub_21BC0ACA8()
{
  result = qword_27CDB6C18;
  if (!qword_27CDB6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6C18);
  }

  return result;
}

unint64_t sub_21BC0ACFC()
{
  result = qword_27CDB6C20;
  if (!qword_27CDB6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6C20);
  }

  return result;
}

unint64_t sub_21BC0AD50()
{
  result = qword_27CDB6C30;
  if (!qword_27CDB6C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6C08, &unk_21BE3F270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6C30);
  }

  return result;
}

unint64_t sub_21BC0ADCC()
{
  result = qword_27CDB6C38;
  if (!qword_27CDB6C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6BE0, &qword_21BE35F00);
    sub_21BC0AC1C();
    sub_21BB3B038(&qword_27CDB6C28, &qword_27CDB6C00, &unk_21BE35F20);
    sub_21BC0AD50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6C38);
  }

  return result;
}

unint64_t sub_21BC0AEA8()
{
  result = qword_27CDB6C48;
  if (!qword_27CDB6C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6C40, &qword_21BE35F60);
    sub_21BC0AF2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6C48);
  }

  return result;
}

unint64_t sub_21BC0AF2C()
{
  result = qword_27CDB6C50;
  if (!qword_27CDB6C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6C58, &qword_21BE35F68);
    sub_21BB3B038(&qword_27CDB6C60, &qword_27CDB6C68, &qword_21BE35F70);
    sub_21BBDD54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6C50);
  }

  return result;
}

unint64_t sub_21BC0AFEC()
{
  result = qword_27CDB6C88;
  if (!qword_27CDB6C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6BA0, &qword_21BE35EC0);
    sub_21BC089F4(&qword_27CDB6C90, 255, type metadata accessor for FamilyPrivacyDisclosureView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6C88);
  }

  return result;
}

uint64_t sub_21BC0B0A4(uint64_t a1)
{
  v2 = type metadata accessor for AppleCardFamilySettingsCell();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BC0B100(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_21BBDD54C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BC0B184()
{
  result = qword_27CDB6CC0;
  if (!qword_27CDB6CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6CA0, &qword_21BE35FC0);
    sub_21BC089F4(&qword_27CDB6CC8, 255, type metadata accessor for AppleCardFamilySettingsCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6CC0);
  }

  return result;
}

uint64_t sub_21BC0B23C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21BC0B2AC()
{
  result = qword_27CDB6D30;
  if (!qword_27CDB6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6D30);
  }

  return result;
}

unint64_t sub_21BC0B300()
{
  result = qword_27CDB6D38;
  if (!qword_27CDB6D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D08, &qword_21BE36010);
    sub_21BB3B038(&qword_27CDB6D40, &qword_27CDB6D48, &qword_21BE36038);
    sub_21BB3B038(&qword_27CDB6D50, &qword_27CDB6D58, &unk_21BE36040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6D38);
  }

  return result;
}

unint64_t sub_21BC0B3E4()
{
  result = qword_27CDB6D68;
  if (!qword_27CDB6D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D10, &qword_21BE36018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D08, &qword_21BE36010);
    sub_21BC0B300();
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&qword_27CDB6D70, &qword_27CDBC2A0, &qword_21BE33660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6D68);
  }

  return result;
}

unint64_t sub_21BC0B4EC()
{
  result = qword_27CDB6D88;
  if (!qword_27CDB6D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D78, &qword_21BE36088);
    sub_21BB3B038(&qword_27CDB6D90, &qword_27CDB6D98, &qword_21BE36098);
    sub_21BC089F4(&qword_27CDB6790, 255, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6D88);
  }

  return result;
}

unint64_t sub_21BC0B5D8()
{
  result = qword_27CDB6DA8;
  if (!qword_27CDB6DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DA0, &qword_21BE360A0);
    sub_21BC089F4(&qword_27CDB6DB0, 255, type metadata accessor for FamilyChecklistView);
    sub_21BB3B038(&unk_27CDBC380, &qword_27CDB6DB8, &qword_21BE360A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6DA8);
  }

  return result;
}

uint64_t sub_21BC0B6C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21BC0B74C()
{
  result = qword_27CDB6DD0;
  if (!qword_27CDB6DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DD8, &qword_21BE360B8);
    sub_21BC0B804();
    sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6DD0);
  }

  return result;
}

unint64_t sub_21BC0B804()
{
  result = qword_27CDB6DE0;
  if (!qword_27CDB6DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DE8, &unk_21BE360C0);
    sub_21BC089F4(&qword_27CDB6DF0, 255, type metadata accessor for FamilyChecklistCell);
    sub_21BBDD54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6DE0);
  }

  return result;
}

unint64_t sub_21BC0B8C4()
{
  result = qword_27CDB6E00;
  if (!qword_27CDB6E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D28, &qword_21BE36030);
    sub_21BC0B948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6E00);
  }

  return result;
}

unint64_t sub_21BC0B948()
{
  result = qword_27CDB6E08;
  if (!qword_27CDB6E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D20, &qword_21BE36028);
    sub_21BC0BA00();
    sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6E08);
  }

  return result;
}

unint64_t sub_21BC0BA00()
{
  result = qword_27CDB6E10;
  if (!qword_27CDB6E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D18, &qword_21BE36020);
    sub_21BC0B3E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D78, &qword_21BE36088);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6D80, &qword_21BE36090);
    sub_21BC0B4EC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6DA0, &qword_21BE360A0);
    type metadata accessor for ChecklistStateVars();
    sub_21BC0B5D8();
    sub_21BC089F4(&qword_27CDBDB60, 255, type metadata accessor for ChecklistStateVars);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6E10);
  }

  return result;
}

uint64_t sub_21BC0BBB0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FamilyLandingPageMainView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21BC0BC24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FamilyLandingPageMainView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21BC03870(v4, a1);
}

uint64_t sub_21BC0BC94()
{
  v1 = *(type metadata accessor for FamilyLandingPageMainView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21BC03B74(v2);
}

uint64_t sub_21BC0BD1C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BC03578();
}

uint64_t sub_21BC0BDC8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FamilyLandingPageMainView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21BBFF208(a1, v6, a2);
}

uint64_t sub_21BC0BE48(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyLandingPageMainView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21BBB7EB8;

  return sub_21BBFF3F8(a1, v1 + v5, v6);
}

uint64_t sub_21BC0BF58@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for FamilyLandingPageMainView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_21BBFEE4C(a1, a2, v8, a3);
}

unint64_t sub_21BC0BFE0()
{
  result = qword_27CDB6E40;
  if (!qword_27CDB6E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6E40);
  }

  return result;
}

unint64_t sub_21BC0C034()
{
  result = qword_27CDB6E48;
  if (!qword_27CDB6E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6E30, &qword_21BE361D0);
    sub_21BC0C0F4();
    sub_21BC089F4(&qword_27CDB6790, 255, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6E48);
  }

  return result;
}

unint64_t sub_21BC0C0F4()
{
  result = qword_27CDB6E50;
  if (!qword_27CDB6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6E50);
  }

  return result;
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = type metadata accessor for FamilyLandingPageMainView();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_21BB47CD0(*v3, *(v3 + 8), *(v3 + 16));

  v4 = *(v3 + 48);

  v5 = (v3 + v1[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB5740, &qword_21BE327B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *v5;

  if (EnumCaseMultiPayload == 1)
  {
    v8 = *(v5 + 1);

    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB68B0, &qword_21BE35938) + 32);
    v10 = sub_21BE2722C();
    (*(*(v10 - 8) + 8))(&v5[v9], v10);
  }

  v11 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDC10, &unk_21BE35940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21BE2690C();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
    v13 = *(v3 + v11);
  }

  v14 = *(v3 + v1[9] + 8);

  v15 = *(v3 + v1[10] + 8);

  MEMORY[0x21CF05D90](v3 + v1[13]);
  v16 = *(v3 + v1[14] + 8);

  sub_21BB47CD0(*(v3 + v1[15]), *(v3 + v1[15] + 8), *(v3 + v1[15] + 16));
  v17 = (v3 + v1[16]);
  v18 = *v17;
  v19 = v17[1];
  v20 = *(v17 + 16);
  sub_21BB47CE0();
  v21 = (v3 + v1[17]);
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  sub_21BB47CE0();
  v25 = *(v3 + v1[18] + 8);

  v26 = (v3 + v1[20]);
  v27 = *v26;
  v28 = v26[1];
  v29 = *(v26 + 16);
  sub_21BB47CE0();
  v30 = (v3 + v1[21]);
  v31 = *v30;

  v32 = v30[1];

  v33 = *(v3 + v1[22] + 8);

  v34 = *(v3 + v1[23]);

  return swift_deallocObject();
}

uint64_t sub_21BC0C438(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FamilyLandingPageMainView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21BC0C4DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21BBB7EB8;

  return sub_21BB44438(v2, v3, v0 + 4);
}

id sub_21BC0C5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a1;
  v46 = a3;
  v7 = sub_21BE25FCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_ruiController;
  v13 = [objc_allocWithZone(MEMORY[0x277D46220]) init];
  v43 = v12;
  *&v4[v12] = v13;
  v14 = &v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_guardianGSTokenErrorHeader];
  *v14 = 0xD000000000000017;
  *(v14 + 1) = 0x800000021BE57DB0;
  v15 = &v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_guardianGSTokenErrorHeaderValue];
  *v15 = 0x6E61696472617567;
  *(v15 + 1) = 0xE800000000000000;
  v16 = OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_familyDependentPasswordResetApi;
  type metadata accessor for FamilyDependentPasswordResetApi();
  v17 = swift_allocObject();
  *&v4[v16] = v17;
  *(v17 + 16) = 0;
  v18 = &v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_hearbeatTokenKey];
  *v18 = 0xD000000000000014;
  *(v18 + 1) = 0x800000021BE57DD0;
  v19 = OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_tokens;
  *&v4[v19] = sub_21BBB6068(MEMORY[0x277D84F90]);
  *&v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverResourceLoader] = 0;
  v44 = OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverHookHandler;
  *&v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverHookHandler] = 0;
  v20 = OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_sessionConfiguration;
  v21 = [objc_opt_self() defaultSessionConfiguration];
  v22 = [objc_allocWithZone(MEMORY[0x277CF0188]) init];
  [v21 set:v22 appleIDContext:?];

  *&v4[v20] = v21;
  v23 = &v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_parentAltDSID];
  v24 = v46;
  *v23 = v45;
  *(v23 + 1) = a2;
  v25 = &v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_dependentAltDSID];
  *v25 = v24;
  *(v25 + 1) = a4;
  v26 = objc_opt_self();

  result = [v26 defaultStore];
  if (result)
  {
    v28 = result;

    v29 = *v23;
    v30 = *(v23 + 1);

    v31 = sub_21BE289CC();

    v32 = [v28 aida:v31 accountForAltDSID:?];

    *&v4[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_parentAccount] = v32;
    (*(v8 + 104))(v11, *MEMORY[0x277D07F00], v7);
    LOBYTE(v31) = MEMORY[0x21CF01150](v11);
    (*(v8 + 8))(v11, v7);
    if (v31)
    {
      v33 = [objc_allocWithZone(MEMORY[0x277CF03B0]) init];
      v34 = *&v4[v43];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC1D0, &qword_21BE35080);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_21BE34D60;
      *(v35 + 32) = v33;
      v36 = objc_allocWithZone(MEMORY[0x277D46200]);
      v37 = v34;
      v38 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE0, &qword_21BE36248);
      v39 = sub_21BE28C1C();

      v40 = [v36 initWithRemoteUIController:v37 hooks:v39];

      v41 = *&v4[v44];
      *&v4[v44] = v40;
    }

    v42 = type metadata accessor for FamilyDependentPasswordResetController();
    v47.receiver = v4;
    v47.super_class = v42;
    return objc_msgSendSuper2(&v47, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21BC0C9C8(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  v14 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  [v14 setVerifyCredentialReason_];
  [v14 setAuthenticationType_];
  v6 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_dependentAltDSID);
  v7 = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_dependentAltDSID + 8);
  v8 = sub_21BE289CC();
  [v14 setAltDSID_];

  if (v5)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = v9;
    aBlock[4] = sub_21BC0FF6C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BBF23E4;
    aBlock[3] = &block_descriptor_44;
    v11 = _Block_copy(aBlock);
    v12 = v5;
    v13 = v14;

    [v12 getServerUILoadDelegateWithContext:v13 completion:v11];

    _Block_release(v11);
  }

  else
  {
  }
}

void sub_21BC0CBB8(void *a1, void *a2, void (*a3)(void *, uint64_t))
{
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  if (a2)
  {
    v14 = a2;
    sub_21BE2614C();
    v15 = a2;
    sub_21BC51D50(a2);

    (*(v7 + 8))(v13, v6);
    v16 = a2;
    a3(a2, 1);

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v18 = Strong;
  v19 = *MEMORY[0x277CEC6E8];
  v20 = sub_21BE28A0C();
  v22 = v21;
  v23 = *&v18[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_tokens];
  if (!*(v23 + 16) || (v24 = v20, v38 = a1, , v25 = sub_21BBB3108(v24, v22), v27 = v26, , (v27 & 1) == 0))
  {

LABEL_9:
    a3(0, 0);
    return;
  }

  v28 = (*(v23 + 56) + 16 * v25);
  v30 = *v28;
  v29 = v28[1];

  v31 = v38;
  if (v38)
  {
    [v38 setShouldSendSigningHeaders_];
    v32 = sub_21BE289CC();

    [v31 setServiceToken_];
  }

  else
  {
  }

  v33 = *&v18[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverResourceLoader];
  *&v18[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverResourceLoader] = v31;

  v34 = v31;
  sub_21BE2614C();
  v35 = sub_21BE26A2C();
  v36 = sub_21BE28FFC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_21BB35000, v35, v36, "Resource load delegate fetched successfully.", v37, 2u);
    MEMORY[0x21CF05C50](v37, -1, -1);
  }

  (*(v7 + 8))(v11, v6);
  a3(v31, 0);
}

void sub_21BC0CF14(void *a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21BE289CC();
  [a1 aa:v8 addAppProvidedContext:?];

  v9 = *MEMORY[0x277CEC718];
  v85 = a1;
  [a1 aa:v9 addSpyglassModeHeaderWithMask:?];
  v10 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_parentAccount);
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_hearbeatTokenKey);
  v12 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_hearbeatTokenKey + 8);
  v13 = sub_21BE289CC();
  v14 = [v10 aida:v13 tokenForService:?];

  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = *MEMORY[0x277CEC6E8];
  v16 = [v10 aida:*MEMORY[0x277CEC6E8] tokenForService:?];
  if (v16)
  {
    v81 = v15;
    v82 = v16;
    v83 = v14;
    v84 = v3;
    v17 = *MEMORY[0x277CEFFA8];
    v18 = sub_21BE28A0C();
    v20 = v19;
    v21 = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_tokens);
    if (*(v21 + 16))
    {
      v22 = v18;
      v79 = OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_tokens;
      v80 = v1;

      v23 = sub_21BBB3108(v22, v20);
      LOBYTE(v22) = v24;

      if (v22)
      {
        v25 = (*(v21 + 56) + 16 * v23);
        v26 = v25[1];
        v75 = *v25;
        v77 = v17;
        v78 = v26;

        v74 = objc_opt_self();
        v27 = [v74 sharedInstance];
        v28 = v80;
        v29 = *(v80 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_parentAltDSID);
        v76 = *(v80 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_parentAltDSID + 8);
        v30 = sub_21BE289CC();
        v31 = [v27 authKitAccountWithAltDSID_];

        if (!v31)
        {

          v14 = v82;
          v69 = v83;
          goto LABEL_17;
        }

        v73[1] = v29;
        v32 = *(v28 + v79);
        v3 = v84;
        if (!*(v32 + 16))
        {

          v69 = v82;
          v14 = v83;
          goto LABEL_18;
        }

        v33 = *(v28 + v79);

        v34 = sub_21BBB3108(v11, v12);
        v14 = v83;
        if ((v35 & 1) == 0)
        {

          v69 = v82;
          goto LABEL_18;
        }

        v36 = (*(v32 + 56) + 16 * v34);
        v38 = *v36;
        v37 = v36[1];

        v39 = sub_21BE28A0C();
        v41 = v40;
        v42 = *(v80 + v79);
        if (!*(v42 + 16))
        {

          v69 = v82;
          goto LABEL_17;
        }

        v43 = v39;
        v44 = *(v80 + v79);

        v45 = sub_21BBB3108(v43, v41);
        v47 = v46;

        if (v47)
        {
          v48 = (*(v42 + 56) + 16 * v45);
          v50 = *v48;
          v49 = v48[1];

          v51 = [v74 sharedInstance];
          v84 = v31;
          v52 = [v51 passwordResetTokenForAccount_];

          v53 = v85;
          [v85 ak:v52 addPasswordResetKeyHeader:?];

          v54 = sub_21BE289CC();

          v55 = *(v80 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_dependentAltDSID);
          v56 = *(v80 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_dependentAltDSID + 8);
          v57 = sub_21BE289CC();
          [v53 ak:v54 addAuthorizationHeaderWithIdentityToken:v57 forAltDSID:?];

          v58 = sub_21BE289CC();

          v59 = sub_21BE289CC();
          [v53 ak:v58 addAuthorizationHeaderWithHeartbeatToken:v59 forAltDSID:?];

          v60 = sub_21BE289CC();

          v61 = sub_21BE289CC();
          [v53 ak:v60 addAuthorizationHeaderWithServiceToken:v61 forAltDSID:?];

          v62 = [v10 aida:v77 tokenForService:?];
          if (v62)
          {
            v63 = v62;
            v64 = sub_21BE289CC();
            [v53 ak:v63 addGuardianAuthorizationHeaderWithIdentityToken:v64 forAltDSID:?];
          }

          v65 = sub_21BE289CC();
          v66 = v83;
          [v53 ak:v83 addGuardianAuthorizationHeaderWithHeartbeatToken:v65 forAltDSID:?];

          v83 = sub_21BE289CC();
          v67 = v82;
          [v53 ak:v82 addGuardianAuthorizationHeaderWithServiceToken:v83 forAltDSID:?];

          v68 = v83;

          return;
        }
      }
    }

    v69 = v82;
    v14 = v83;
LABEL_17:
    v3 = v84;
LABEL_18:
  }

LABEL_20:
  sub_21BE2614C();
  v70 = sub_21BE26A2C();
  v71 = sub_21BE28FDC();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_21BB35000, v70, v71, "addHeaders failure: Found nil token.", v72, 2u);
    MEMORY[0x21CF05C50](v72, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

uint64_t sub_21BC0D5DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = *(v4 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_tokens);
    *(v4 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_tokens) = a2;
    v15 = a1;

    v16 = *(v4 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_ruiController);

    [v16 setDelegate_];
    [v16 setHostViewController_];
    [v16 setSessionConfiguration_];
    v17 = *MEMORY[0x277CEFEC0];
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_21BC0FF4C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BC0D964;
    aBlock[3] = &block_descriptor_27;
    v19 = _Block_copy(aBlock);
    v20 = v17;

    [v16 setHandlerForElementName:v20 handler:v19];
    _Block_release(v19);

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = a3;
    v22[4] = a4;

    sub_21BC0C9C8(sub_21BC0FF54, v22);
  }

  else
  {
    sub_21BE2614C();
    v24 = sub_21BE26A2C();
    v25 = sub_21BE28FFC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21BB35000, v24, v25, "navigationController is nil.", v26, 2u);
      MEMORY[0x21CF05C50](v26, -1, -1);
    }

    return (*(v10 + 8))(v13, v9);
  }
}

void sub_21BC0D908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_21BC0F134(a3);
  }
}

uint64_t sub_21BC0D964(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a4)
  {
    v8 = sub_21BE2890C();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v10 = a3;
  v7(a2, a3, v8);
}

void sub_21BC0DA2C(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v73 = a4;
  v74 = a5;
  v72 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v70 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v68 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v68 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v68 - v16;
  v18 = sub_21BE26A4C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v68 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v68 - v27;
  if (a2)
  {
    sub_21BE2614C();
    v29 = sub_21BE26A2C();
    v30 = sub_21BE28FDC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_21BB35000, v29, v30, "ResourceLoadDelegate failure. RUI aborted.", v31, 2u);
      MEMORY[0x21CF05C50](v31, -1, -1);
    }

    (*(v19 + 8))(v23, v18);
    v73(0);
  }

  else if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = *(Strong + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_parentAltDSID);
      v34 = *(Strong + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_parentAltDSID + 8);
      v35 = Strong;

      v36 = sub_21BE289CC();
    }

    else
    {
      v36 = 0;
    }

    v40 = [objc_allocWithZone(MEMORY[0x277CEC7A8]) initWithAltDSID_];

    sub_21BE2614C();
    v41 = v40;
    v42 = sub_21BE26A2C();
    v43 = sub_21BE28FFC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v81 = v68;
      *v44 = 136315138;
      aBlock = 0;
      v76 = 0xE000000000000000;
      v69 = v43;
      if (v41)
      {
        v45 = [v41 urlRequest];
        if (v45)
        {
          v46 = v45;
          sub_21BE2574C();

          v47 = 0;
        }

        else
        {
          v47 = 1;
        }

        v49 = sub_21BE2575C();
        (*(*(v49 - 8) + 56))(v15, v47, 1, v49);
        sub_21BC0FE48(v15, v17);
      }

      else
      {
        v48 = sub_21BE2575C();
        (*(*(v48 - 8) + 56))(v17, 1, 1, v48);
      }

      sub_21BE2977C();
      sub_21BB3A4CC(v17, &qword_27CDB6EE8, &unk_21BE36250);
      v50 = sub_21BB3D81C(aBlock, v76, &v81);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_21BB35000, v42, v69, "Request:%s", v44, 0xCu);
      v51 = v68;
      __swift_destroy_boxed_opaque_existential_0Tm(v68);
      MEMORY[0x21CF05C50](v51, -1, -1);
      MEMORY[0x21CF05C50](v44, -1, -1);
    }

    (*(v19 + 8))(v28, v18);
    swift_beginAccess();
    v52 = swift_unknownObjectWeakLoadStrong();
    v54 = v70;
    v53 = v71;
    if (v52)
    {
      v55 = v52;
      v56 = *(v52 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_ruiController);

      if (v41)
      {
        v57 = [v41 urlRequest];
        v58 = v41;
        if (v57)
        {
          v59 = v57;
          sub_21BE2574C();

          v60 = 0;
        }

        else
        {
          v60 = 1;
        }

        v63 = sub_21BE2575C();
        v64 = *(v63 - 8);
        (*(v64 + 56))(v54, v60, 1, v63);
        sub_21BC0FE48(v54, v53);
        v62 = 0;
        if ((*(v64 + 48))(v53, 1, v63) != 1)
        {
          v62 = sub_21BE2573C();
          (*(v64 + 8))(v53, v63);
        }
      }

      else
      {
        v58 = 0;
        v61 = sub_21BE2575C();
        (*(*(v61 - 8) + 56))(v53, 1, 1, v61);
        v62 = 0;
      }

      v65 = swift_allocObject();
      v66 = v74;
      *(v65 + 16) = v73;
      *(v65 + 24) = v66;
      v79 = sub_21BC0FF64;
      v80 = v65;
      aBlock = MEMORY[0x277D85DD0];
      v76 = 1107296256;
      v77 = sub_21BD197D4;
      v78 = &block_descriptor_37;
      v67 = _Block_copy(&aBlock);

      [v56 loadRequest:v62 completion:v67];

      _Block_release(v67);
    }

    else
    {
    }
  }

  else
  {
    sub_21BE2614C();
    v37 = sub_21BE26A2C();
    v38 = sub_21BE28FFC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_21BB35000, v37, v38, "serverResourceLoader is nil.", v39, 2u);
      MEMORY[0x21CF05C50](v39, -1, -1);
    }

    (*(v19 + 8))(v26, v18);
  }
}

uint64_t sub_21BC0E228(int a1, void *a2, uint64_t (*a3)(void))
{
  LODWORD(v5) = a1;
  v6 = sub_21BE26A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  if (v5)
  {
    sub_21BE2614C();
    v14 = sub_21BE26A2C();
    v15 = sub_21BE28FFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21BB35000, v14, v15, "RUI loaded successfully.", v16, 2u);
      MEMORY[0x21CF05C50](v16, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
  }

  else
  {
    sub_21BE2614C();
    v17 = a2;
    v18 = sub_21BE26A2C();
    v19 = sub_21BE28FDC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v28 = v5;
      v5 = v20;
      v21 = swift_slowAlloc();
      v27 = v21;
      *v5 = 136315138;
      v29 = a2;
      v30 = 0;
      v31 = 0xE000000000000000;
      v32 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF8, &qword_21BE36260);
      sub_21BE2977C();
      v22 = a3;
      v23 = sub_21BB3D81C(v30, v31, &v32);

      *(v5 + 4) = v23;
      a3 = v22;
      _os_log_impl(&dword_21BB35000, v18, v19, "RUI load error: %s", v5, 0xCu);
      v24 = v27;
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x21CF05C50](v24, -1, -1);
      v25 = v5;
      LOBYTE(v5) = v28;
      MEMORY[0x21CF05C50](v25, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
  }

  return a3(v5 & 1);
}

id sub_21BC0E51C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyDependentPasswordResetController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BC0E674(char a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, void *), uint64_t a5)
{
  v10 = sub_21BE26A4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v30 - v16;
  if ((a1 & 1) == 0)
  {
    sub_21BE2614C();
    sub_21BC51D50(a2);
    result = (*(v11 + 8))(v15, v10);
    if (a4)
    {
      v27 = 0;
      v28 = a2;
      return a4(v27, v28);
    }

    __break(1u);
    goto LABEL_15;
  }

  sub_21BE2614C();
  v18 = a3;
  v19 = sub_21BE26A2C();
  v20 = sub_21BE28FFC();
  if (!os_log_type_enabled(v19, v20))
  {

    result = (*(v11 + 8))(v17, v10);
    goto LABEL_11;
  }

  v30[1] = a5;
  v21 = swift_slowAlloc();
  result = swift_slowAlloc();
  *v21 = 136315138;
  v31 = 0;
  v32 = 0xE000000000000000;
  v33 = result;
  if (a3)
  {
    v23 = result;

    v24 = [v18 allHTTPHeaderFields];
    if (v24)
    {
      v25 = v24;
      v26 = sub_21BE2890C();
    }

    else
    {
      v26 = 0;
    }

    v30[2] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6F00, qword_21BE36268);
    sub_21BE2977C();

    v29 = sub_21BB3D81C(v31, v32, &v33);

    *(v21 + 4) = v29;
    _os_log_impl(&dword_21BB35000, v19, v20, "Headers added:%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x21CF05C50](v23, -1, -1);
    MEMORY[0x21CF05C50](v21, -1, -1);

    result = (*(v11 + 8))(v17, v10);
LABEL_11:
    if (a4)
    {
      v27 = 1;
      v28 = 0;
      return a4(v27, v28);
    }

LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21BC0EA90(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = aBlock - v8;
  if (a1)
  {
    v10 = *(a2 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_ruiController);
    sub_21BC0FDD8(a3, v9);
    v11 = sub_21BE2575C();
    v12 = *(v11 - 8);
    v13 = 0;
    if ((*(v12 + 48))(v9, 1, v11) != 1)
    {
      v13 = sub_21BE2573C();
      (*(v12 + 8))(v9, v11);
    }

    aBlock[4] = sub_21BC0EC44;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BD197D4;
    aBlock[3] = &block_descriptor_5;
    v14 = _Block_copy(aBlock);
    [v10 loadRequest:v13 completion:v14];
    _Block_release(v14);
  }
}

uint64_t sub_21BC0EC44(char a1, void *a2)
{
  v4 = sub_21BE26A4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  if (a1)
  {
    sub_21BE2614C();
    v12 = sub_21BE26A2C();
    v13 = sub_21BE28FFC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21BB35000, v12, v13, "RUI loaded successfully.", v14, 2u);
      MEMORY[0x21CF05C50](v14, -1, -1);
    }

    return (*(v5 + 8))(v11, v4);
  }

  else
  {
    sub_21BE2614C();
    v16 = a2;
    v17 = sub_21BE26A2C();
    v18 = sub_21BE28FDC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 136315138;
      v22 = a2;
      v23 = 0;
      v24 = 0xE000000000000000;
      v25 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF8, &qword_21BE36260);
      sub_21BE2977C();
      v21 = sub_21BB3D81C(v23, v24, &v25);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_21BB35000, v17, v18, "RUI load error: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x21CF05C50](v20, -1, -1);
      MEMORY[0x21CF05C50](v19, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }
}

void sub_21BC0F134(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  v2 = v1;
  v4 = *MEMORY[0x277CEFEE8];
  sub_21BE28A0C();
  sub_21BE2958C();
  if (!*(a1 + 16) || (v5 = sub_21BBB31E8(v19), (v6 & 1) == 0))
  {
    sub_21BBB7238(v19);
LABEL_17:
    v20 = 0u;
    v21 = 0u;
    goto LABEL_18;
  }

  sub_21BB3DCD4(*(a1 + 56) + 32 * v5, &v20);
  sub_21BBB7238(v19);
  if (!*(&v21 + 1))
  {
LABEL_18:
    sub_21BB3A4CC(&v20, &qword_27CDB5940, &unk_21BE32B10);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v8 = v19[0];
  v7 = v19[1];
  v9 = *MEMORY[0x277CEFEC8];
  if (sub_21BE28A0C() == v8 && v10 == v7)
  {
    goto LABEL_13;
  }

  v12 = sub_21BE2995C();

  if (v12)
  {
LABEL_14:

LABEL_15:

    return;
  }

  v13 = *MEMORY[0x277CEFED0];
  if (sub_21BE28A0C() == v8 && v14 == v7)
  {
    goto LABEL_13;
  }

  v15 = sub_21BE2995C();

  if (v15)
  {
    goto LABEL_14;
  }

  v16 = *MEMORY[0x277CEFED8];
  if (sub_21BE28A0C() == v8 && v17 == v7)
  {
LABEL_13:

    goto LABEL_14;
  }

  v18 = sub_21BE2995C();

  if (v18)
  {
    goto LABEL_15;
  }
}

void sub_21BC0F350(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v9 = sub_21BE26A4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverResourceLoader);
  if (!v14)
  {
    sub_21BE2614C();
    v16 = sub_21BE26A2C();
    v17 = sub_21BE28FFC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21BB35000, v16, v17, "shouldLoad: serverResourceLoader nil", v18, 2u);
      MEMORY[0x21CF05C50](v18, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    if (a3)
    {
      a3(0, 0);
      return;
    }

    goto LABEL_13;
  }

  if (a2)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
  }

  else
  {
    v15 = 0;
  }

  v19 = v14;
  [v19 processResponse_];
  if (!a1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  sub_21BC0CF14(a1);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a3;
  v20[4] = a4;
  aBlock[4] = sub_21BC0FF40;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21BD197D4;
  aBlock[3] = &block_descriptor_21;
  v21 = _Block_copy(aBlock);
  v22 = a1;
  sub_21BB3D80C(a3);

  [v19 signRequest:v22 withCompletionHandler:v21];
  _Block_release(v21);
}

void sub_21BC0F5F0(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v41 - v8;
  v10 = sub_21BE26A4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = *&v2[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverResourceLoader];
  if (v18)
  {
    v42 = v18;
    [v42 processResponse_];
    if (!a1)
    {
      __break(1u);
      return;
    }

    if ([a1 statusCode] != 401)
    {
      goto LABEL_13;
    }

    v19 = [a1 _allHTTPHeaderFieldsAsArrays];
    if (!v19)
    {
      goto LABEL_13;
    }

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EF0, &unk_21BE33800);
    v21 = sub_21BE2890C();

    if (*(v21 + 16) && (v41 = v2, v22 = sub_21BBB3108(*&v2[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_guardianGSTokenErrorHeader], *&v2[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_guardianGSTokenErrorHeader + 8]), (v23 & 1) != 0) && (v24 = *(*(v21 + 56) + 8 * v22), , , v24[2]))
    {
      v26 = v24[4];
      v25 = v24[5];

      if (v26 == *&v41[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_guardianGSTokenErrorHeaderValue] && v25 == *&v41[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_guardianGSTokenErrorHeaderValue + 8])
      {
      }

      else
      {
        v28 = sub_21BE2995C();

        if ((v28 & 1) == 0)
        {
LABEL_13:
          v29 = v42;

          return;
        }
      }

      sub_21BE2614C();
      v33 = sub_21BE26A2C();
      v34 = sub_21BE28FFC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_21BB35000, v33, v34, "Renewing credentials for parent account...", v35, 2u);
        MEMORY[0x21CF05C50](v35, -1, -1);
      }

      (*(v11 + 8))(v17, v10);
      v36 = v41;
      v37 = *&v41[OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_familyDependentPasswordResetApi];
      sub_21BC0FDD8(a2, v9);
      v38 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v36;
      sub_21BC0FE48(v9, v39 + v38);
      v40 = v36;
      sub_21BE17344(sub_21BC0FEB8, v39);
    }

    else
    {
    }
  }

  else
  {
    sub_21BE2614C();
    v30 = sub_21BE26A2C();
    v31 = sub_21BE28FFC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_21BB35000, v30, v31, "didReceiveHTTPResponse: serverResourceLoader nil", v32, 2u);
      MEMORY[0x21CF05C50](v32, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
  }
}

id sub_21BC0FABC(uint64_t a1)
{
  v3 = sub_21BE26A4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v1 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverHookHandler);
  if (result)
  {
    if (a1)
    {

      return [result processObjectModel:a1 isModal:0];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_21BE2614C();
    v9 = sub_21BE26A2C();
    v10 = sub_21BE28FFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21BB35000, v9, v10, "Server hook handler not initialized", v11, 2u);
      MEMORY[0x21CF05C50](v11, -1, -1);
    }

    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

id sub_21BC0FC48(uint64_t a1, char a2)
{
  v5 = sub_21BE26A4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v2 + OBJC_IVAR____TtC14FamilyCircleUI38FamilyDependentPasswordResetController_serverHookHandler);
  if (result)
  {
    if (a1)
    {

      return [result processObjectModel:a1 isModal:a2 & 1];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_21BE2614C();
    v11 = sub_21BE26A2C();
    v12 = sub_21BE28FFC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21BB35000, v11, v12, "Server hook handler not initialized", v13, 2u);
      MEMORY[0x21CF05C50](v13, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_21BC0FDD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC0FE48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21BC0FEB8(char a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6EE8, &unk_21BE36250) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_21BC0EA90(a1, v4, v5);
}

void sub_21BC0FF6C(void *a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_21BC0CBB8(a1, a2, *(v2 + 16));
}

void sub_21BC0FFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_21BE26A4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4 && a2)
  {
    v17 = objc_allocWithZone(MEMORY[0x277CF0178]);

    v18 = [v17 init];
    v19 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
    v20 = *MEMORY[0x277CEFF38];
    v32 = v19;
    [v32 setAppProvidedContext_];
    v21 = sub_21BE289CC();
    [v32 setAltDSID_];

    [v32 setIsUsernameEditable_];
    v22 = sub_21BE289CC();
    [v32 setDependentAltDSID_];

    [v32 setServiceType_];
    [v32 setAuthenticationType_];
    if (v18)
    {
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = a1;
      v24[4] = a2;
      v24[5] = a3;
      v24[6] = a4;
      v24[7] = a5;
      v24[8] = a6;
      aBlock[4] = sub_21BC10DDC;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21BC10BBC;
      aBlock[3] = &block_descriptor_6;
      v25 = _Block_copy(aBlock);
      v26 = v18;

      [v26 authenticateWithContext:v32 completion:v25];

      _Block_release(v25);
    }

    else
    {

      v30 = v32;
    }
  }

  else
  {
    sub_21BE2614C();
    v27 = sub_21BE26A2C();
    v28 = sub_21BE28FFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_21BB35000, v27, v28, "Alt DSID's are nil", v29, 2u);
      MEMORY[0x21CF05C50](v29, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
  }
}

void sub_21BC10364(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *, uint64_t), uint64_t a9)
{
  v92 = a8;
  v93 = a9;
  v94 = sub_21BE26A4C();
  v16 = *(v94 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v94);
  v20 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v88 - v22;
  MEMORY[0x28223BE20](v21);
  v91 = v88 - v24;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      v27 = *MEMORY[0x277CEFF78];
      v28 = sub_21BE28A0C();
      if (*(a1 + 16))
      {
        v30 = sub_21BBB3108(v28, v29);
        v32 = v31;

        if ((v32 & 1) == 0)
        {
          goto LABEL_27;
        }

        v95 = *(*(a1 + 56) + 8 * v30);
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F28, &unk_21BE36330);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_27;
        }

        if (v96 == a4 && v97 == a5)
        {
        }

        else
        {
          v39 = sub_21BE2995C();

          if ((v39 & 1) == 0)
          {
LABEL_27:
            sub_21BE2614C();
            v84 = sub_21BE26A2C();
            v85 = sub_21BE28FDC();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              *v86 = 0;
              _os_log_impl(&dword_21BB35000, v84, v85, "Failure to parse dependent tokens", v86, 2u);
              MEMORY[0x21CF05C50](v86, -1, -1);
            }

            (*(v16 + 8))(v23, v94);
            v87 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) init];
            v92(v87, 1);

            return;
          }
        }

        v40 = *MEMORY[0x277CEFFA8];
        v41 = sub_21BE28A0C();
        if (*(a1 + 16))
        {
          v43 = sub_21BBB3108(v41, v42);
          v45 = v44;

          if ((v45 & 1) == 0)
          {
            goto LABEL_27;
          }

          v95 = *(*(a1 + 56) + 8 * v43);
          swift_unknownObjectRetain();
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_27;
          }

          v46 = v96;
          v47 = v97;
          v48 = *MEMORY[0x277CEFFA0];
          v49 = sub_21BE28A0C();
          if (*(a1 + 16))
          {
            v90 = v46;
            v51 = sub_21BBB3108(v49, v50);
            v53 = v52;

            if ((v53 & 1) == 0)
            {
              goto LABEL_26;
            }

            v96 = *(*(a1 + 56) + 8 * v51);
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F30, &unk_21BE411F0);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_26;
            }

            v54 = v95;
            if (*(v95 + 16))
            {
              v55 = &v26[OBJC_IVAR____TtC14FamilyCircleUI35FamilyMemberAccountDetailsViewModel_hearbeatTokenKey];
              v56 = *&v26[OBJC_IVAR____TtC14FamilyCircleUI35FamilyMemberAccountDetailsViewModel_hearbeatTokenKey];
              v57 = *&v26[OBJC_IVAR____TtC14FamilyCircleUI35FamilyMemberAccountDetailsViewModel_hearbeatTokenKey + 8];

              v58 = sub_21BBB3108(v56, v57);
              v60 = v59;

              if (v60)
              {
                v61 = (*(v54 + 56) + 16 * v58);
                v62 = v61[1];
                v89 = *v61;
                v88[1] = *MEMORY[0x277CEC6E8];
                v63 = sub_21BE28A0C();
                v65 = v64;
                if (*(v54 + 16))
                {
                  v66 = v63;
                  v88[0] = v62;

                  v67 = sub_21BBB3108(v66, v65);
                  LOBYTE(v66) = v68;

                  if (v66)
                  {
                    v69 = (*(v54 + 56) + 16 * v67);
                    v70 = *v69;
                    v71 = v69[1];

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F38, &qword_21BE36340);
                    inited = swift_initStackObject();
                    *(inited + 16) = xmmword_21BE362A0;
                    *(inited + 32) = sub_21BE28A0C();
                    v73 = v90;
                    *(inited + 40) = v74;
                    *(inited + 48) = v73;
                    *(inited + 56) = v47;
                    v75 = *v55;
                    v76 = *(v55 + 1);
                    *(inited + 64) = v75;
                    *(inited + 72) = v76;
                    v77 = v88[0];
                    *(inited + 80) = v89;
                    *(inited + 88) = v77;
                    *(inited + 96) = sub_21BE28A0C();
                    *(inited + 104) = v78;
                    *(inited + 112) = v70;
                    *(inited + 120) = v71;

                    v79 = sub_21BBB6068(inited);
                    swift_setDeallocating();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB6F40, qword_21BE36348);
                    swift_arrayDestroy();
                    v80 = v91;
                    sub_21BE2614C();
                    v81 = sub_21BE26A2C();
                    v82 = sub_21BE28FFC();
                    if (os_log_type_enabled(v81, v82))
                    {
                      v83 = swift_slowAlloc();
                      *v83 = 0;
                      _os_log_impl(&dword_21BB35000, v81, v82, "Dependent tokens fetched successfully.", v83, 2u);
                      MEMORY[0x21CF05C50](v83, -1, -1);
                    }

                    (*(v16 + 8))(v80, v94);
                    v92(v79, 0);

                    return;
                  }
                }
              }
            }
          }
        }
      }

LABEL_26:

      goto LABEL_27;
    }
  }

  sub_21BE2614C();
  sub_21BC51D50(a2);
  (*(v16 + 8))(v20, v94);
  if (a2)
  {
    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = *(v33 + OBJC_IVAR____TtC14FamilyCircleUI35FamilyMemberAccountDetailsViewModel_familyDependentPasswordResetApi);
      v35 = v33;
      v36 = a2;

      v37 = a2;

      v38 = v93;

      sub_21BE17A70(v34, a3, a4, a5, a6, a7, v92, v38, a2);
    }
  }
}

void sub_21BC10B04(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      sub_21BC0FFAC(a3, a4, a5, a6, a7, a8);
    }
  }

  else
  {
    a7(a9, 1);
  }
}

uint64_t sub_21BC10BBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F28, &unk_21BE36330);
    v4 = sub_21BE2890C();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_21BC10CF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyMemberAccountDetailsViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21BC10DA0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FamilyMemberAccountDetailsViewModel();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

uint64_t sub_21BC10E38@<X0>(char *a1@<X8>)
{
  v136 = a1;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F50, &qword_21BE36380);
  v131 = *(v132 - 1);
  v2 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v130 = &v117 - v3;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F58, &qword_21BE36388);
  v134 = *(v135 - 8);
  v4 = *(v134 + 64);
  v5 = MEMORY[0x28223BE20](v135);
  v144 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v142 = &v117 - v7;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F60, &qword_21BE36390);
  v133 = *(v147 - 8);
  v8 = *(v133 + 64);
  v9 = MEMORY[0x28223BE20](v147);
  v143 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v141 = &v117 - v11;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F68, &qword_21BE36398);
  v120 = *(v121 - 8);
  v12 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v119 = &v117 - v13;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F70, &qword_21BE363A0);
  v128 = *(v129 - 8);
  v14 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v118 = &v117 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F78, &qword_21BE363A8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v146 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v137 = &v117 - v20;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F80, &qword_21BE363B0);
  v21 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v23 = &v117 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6F88, &qword_21BE363B8);
  v139 = *(v24 - 8);
  v140 = v24;
  v25 = v139[8];
  v26 = MEMORY[0x28223BE20](v24);
  v138 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v145 = &v117 - v28;
  v29 = v1[10];
  v152 = v1[9];
  v153 = v29;
  v30 = sub_21BB41FA4();

  v127 = v30;
  v31 = sub_21BE27DBC();
  v33 = v32;
  v35 = v34;
  v125 = v1;
  v36 = v1[11];
  v37 = v1[12];

  sub_21BE2767C();
  v38 = sub_21BE27DAC();
  v40 = v39;
  LOBYTE(v36) = v41;
  v123 = sub_21BE27D6C();
  v43 = v42;
  v122 = v44;
  v124 = v45;
  sub_21BBC7C7C(v38, v40, v36 & 1);

  sub_21BBC7C7C(v31, v33, v35 & 1);

  v46 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CE8, &unk_21BE363C0) + 36)];
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBC2A0, &qword_21BE33660) + 28);
  v48 = sub_21BE27D7C();
  v49 = 1;
  (*(*(v48 - 8) + 56))(v46 + v47, 1, 1, v48);
  *v46 = swift_getKeyPath();
  *v23 = v123;
  *(v23 + 1) = v43;
  v50 = v125;
  v23[16] = v122 & 1;
  *(v23 + 3) = v124;
  v51 = sub_21BE27CCC();
  KeyPath = swift_getKeyPath();
  v53 = &v23[*(v126 + 36)];
  *v53 = KeyPath;
  v53[1] = v51;
  sub_21BC12A90();
  sub_21BE285EC();
  v54 = v50[1];
  v55 = sub_21BCD11F4();
  v56 = [v55 me];

  v57 = 0x277CCA000uLL;
  v58 = &selRef_bundleURL;
  if (v56)
  {
    type metadata accessor for ConfirmChildAgeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v60 = objc_opt_self();
    v61 = [v60 bundleForClass_];
    v62 = sub_21BE2599C();
    v64 = v63;

    v152 = v62;
    v153 = v64;
    v152 = sub_21BE27DBC();
    v153 = v65;
    v154 = v66 & 1;
    v155 = v67;
    v148 = sub_21BDF83D4();
    v149 = v68;
    v148 = sub_21BE27DBC();
    v149 = v69;
    v150 = v70 & 1;
    v151 = v71;
    MEMORY[0x28223BE20](v148);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6FC8, &qword_21BE36448);
    sub_21BC12CD0();
    v72 = v119;
    sub_21BE285FC();
    v73 = [v60 bundleForClass_];
    v74 = sub_21BE2599C();
    v76 = v75;

    v152 = v74;
    v153 = v76;
    sub_21BC12E34();
    v77 = v118;
    v78 = v121;
    sub_21BE27F9C();

    v79 = v72;
    v57 = 0x277CCA000;
    (*(v120 + 8))(v79, v78);
    v80 = v128;
    v81 = v137;
    v82 = v129;
    (*(v128 + 32))(v137, v77, v129);
    v49 = 0;
    v83 = v81;
    v84 = v82;
    v85 = v80;
    v58 = &selRef_bundleURL;
  }

  else
  {
    v83 = v137;
    v84 = v129;
    v85 = v128;
  }

  (*(v85 + 56))(v83, v49, 1, v84);
  type metadata accessor for ConfirmChildAgeViewModel();
  v86 = swift_getObjCClassFromMetadata();
  v87 = *(v57 + 2264);
  v88 = [objc_opt_self() v58[363]];
  v89 = sub_21BE2599C();
  v91 = v90;

  v152 = v89;
  v153 = v91;
  v152 = sub_21BE27DBC();
  v153 = v92;
  v154 = v93 & 1;
  v155 = v94;
  MEMORY[0x28223BE20](v152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6FA0, &qword_21BE36438);
  sub_21BB3B038(&qword_27CDB6FA8, &qword_27CDB6FA0, &qword_21BE36438);
  v95 = v141;
  sub_21BE2861C();
  type metadata accessor for FindMyButton();
  sub_21BC12F9C(&qword_27CDB6FB0, type metadata accessor for FindMyButton);
  v96 = v130;
  sub_21BE2860C();
  sub_21BC12C08();
  v97 = v142;
  v98 = v132;
  sub_21BE27E3C();
  (*(v131 + 8))(v96, v98);
  v99 = v138;
  v100 = v139[2];
  v101 = v140;
  v100(v138, v145, v140);
  sub_21BBA3854(v83, v146, &qword_27CDB6F78, &qword_21BE363A8);
  v102 = v133;
  v132 = *(v133 + 16);
  (v132)(v143, v95, v147);
  v103 = v134;
  v131 = *(v134 + 16);
  v104 = v97;
  v105 = v135;
  (v131)(v144, v104, v135);
  v106 = v136;
  v100(v136, v99, v101);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6FC0, &qword_21BE36440);
  sub_21BBA3854(v146, &v106[v107[12]], &qword_27CDB6F78, &qword_21BE363A8);
  v108 = v143;
  v109 = v147;
  (v132)(&v106[v107[16]], v143, v147);
  v110 = &v106[v107[20]];
  v111 = v144;
  (v131)(v110, v144, v105);
  v112 = *(v103 + 8);
  v112(v142, v105);
  v113 = *(v102 + 8);
  v113(v141, v109);
  sub_21BB3A4CC(v137, &qword_27CDB6F78, &qword_21BE363A8);
  v114 = v140;
  v115 = v139[1];
  v115(v145, v140);
  v112(v111, v105);
  v113(v108, v147);
  sub_21BB3A4CC(v146, &qword_27CDB6F78, &qword_21BE363A8);
  return (v115)(v138, v114);
}

uint64_t sub_21BC11C60(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = sub_21BCD11F4();
  v6 = sub_21BE2905C();

  v14 = v6;
  swift_getKeyPath();
  v7 = swift_allocObject();
  v8 = *(a1 + 32);
  *(v7 + 72) = *(a1 + 48);
  v9 = *(a1 + 80);
  *(v7 + 88) = *(a1 + 64);
  *(v7 + 104) = v9;
  v10 = *(a1 + 16);
  *(v7 + 24) = *a1;
  *(v7 + 40) = v10;
  *(v7 + 16) = a2;
  *(v7 + 120) = *(a1 + 96);
  *(v7 + 56) = v8;
  v11 = a2;
  sub_21BC12ED0(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CC8, &qword_21BE36190);
  sub_21BB3B038(&qword_27CDB5CD0, &qword_27CDB5CC8, &qword_21BE36190);
  sub_21BC12F9C(&unk_280BD8A30, sub_21BBE66D8);
  sub_21BC12DE0();
  return sub_21BE285BC();
}

id sub_21BC11DEC@<X0>(void **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v18 = *a3;
  v6 = v5;
  sub_21BC12F2C(&v18, v16);
  type metadata accessor for LocationViewModel();
  sub_21BC12F9C(&qword_27CDBDC20, type metadata accessor for LocationViewModel);
  v7 = sub_21BE270CC();
  v9 = v8;
  v19[0] = 0;
  sub_21BE283EC();
  v10 = v16[0];
  v11 = v17;
  v19[0] = 0;
  sub_21BE283EC();
  v12 = v16[0];
  v13 = v17;
  *a4 = v6;
  *(a4 + 8) = a2;
  *(a4 + 16) = v7;
  *(a4 + 24) = v9;
  *(a4 + 32) = v10;
  *(a4 + 33) = v16[0];
  *(a4 + 36) = *(v16 + 3);
  *(a4 + 40) = v11;
  *(a4 + 48) = v12;
  *(a4 + 49) = *v19;
  *(a4 + 52) = *&v19[3];
  *(a4 + 56) = v13;

  return a2;
}

uint64_t sub_21BC11F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21BE275DC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7000, &qword_21BE364C8);
  return sub_21BC11F90(a1, a2 + *(v4 + 44));
}

uint64_t sub_21BC11F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7008, &qword_21BE364D0);
  v59 = *(v60 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v58 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7010, &qword_21BE364D8);
  v6 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v61 = &v58 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7018, &unk_21BE364E0);
  v8 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v67 = &v58 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7020, &qword_21BE39520);
  v10 = *(v68 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v68);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7028, &unk_21BE364F0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v70 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v69 = &v58 - v18;
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();
  v21 = [v20 bundleForClass_];
  v22 = sub_21BE2599C();
  v24 = v23;

  *&v72 = v22;
  *(&v72 + 1) = v24;
  sub_21BB41FA4();
  v64 = sub_21BE27DBC();
  v63 = v25;
  v62 = v26;
  v65 = v27;
  v72 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDBBB50, &unk_21BE333D0);
  sub_21BE283FC();
  if (v73 == 1)
  {
    sub_21BE26EEC();
    v28 = v68;
    (*(v10 + 16))(v67, v13, v68);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520);
    sub_21BC130F8();
    v29 = v69;
    sub_21BE2784C();
    (*(v10 + 8))(v13, v28);
  }

  else
  {
    v30 = [v20 bundleForClass_];
    v31 = sub_21BE2599C();
    v33 = v32;

    v73 = v31;
    v74 = v33;
    sub_21BE28D7C();
    sub_21BC12ED0(a1, &v72);
    v34 = sub_21BE28D6C();
    v35 = swift_allocObject();
    v36 = MEMORY[0x277D85700];
    *(v35 + 16) = v34;
    *(v35 + 24) = v36;
    v37 = *(a1 + 80);
    *(v35 + 96) = *(a1 + 64);
    *(v35 + 112) = v37;
    *(v35 + 128) = *(a1 + 96);
    v38 = *(a1 + 16);
    *(v35 + 32) = *a1;
    *(v35 + 48) = v38;
    v39 = *(a1 + 48);
    *(v35 + 64) = *(a1 + 32);
    *(v35 + 80) = v39;
    sub_21BC12ED0(a1, &v72);
    v40 = sub_21BE28D6C();
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = v36;
    v42 = *(a1 + 80);
    *(v41 + 96) = *(a1 + 64);
    *(v41 + 112) = v42;
    *(v41 + 128) = *(a1 + 96);
    v43 = *(a1 + 16);
    *(v41 + 32) = *a1;
    *(v41 + 48) = v43;
    v44 = *(a1 + 48);
    *(v41 + 64) = *(a1 + 32);
    *(v41 + 80) = v44;
    sub_21BE2857C();
    v45 = v58;
    sub_21BE284CC();
    sub_21BB3B038(&qword_27CDB7030, &qword_27CDB7008, &qword_21BE364D0);
    v46 = v61;
    v47 = v60;
    sub_21BE27F3C();
    (*(v59 + 8))(v45, v47);
    v48 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    LOBYTE(v47) = v72;
    KeyPath = swift_getKeyPath();
    v50 = swift_allocObject();
    *(v50 + 16) = v47;
    v51 = (v46 + *(v71 + 36));
    *v51 = KeyPath;
    v51[1] = sub_21BC130E0;
    v51[2] = v50;
    sub_21BBA3854(v46, v67, &qword_27CDB7010, &qword_21BE364D8);
    swift_storeEnumTagMultiPayload();
    sub_21BB3B038(&qword_27CDBC4E0, &qword_27CDB7020, &qword_21BE39520);
    sub_21BC130F8();
    v29 = v69;
    sub_21BE2784C();
    sub_21BB3A4CC(v46, &qword_27CDB7010, &qword_21BE364D8);
  }

  v52 = v70;
  sub_21BBA3854(v29, v70, &qword_27CDB7028, &unk_21BE364F0);
  v53 = v64;
  v54 = v63;
  *a2 = v64;
  *(a2 + 8) = v54;
  v55 = v62 & 1;
  *(a2 + 16) = v62 & 1;
  *(a2 + 24) = v65;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7040, qword_21BE36580);
  sub_21BBA3854(v52, a2 + *(v56 + 64), &qword_27CDB7028, &unk_21BE364F0);
  sub_21BBA4A38(v53, v54, v55);

  sub_21BB3A4CC(v29, &qword_27CDB7028, &unk_21BE364F0);
  sub_21BB3A4CC(v52, &qword_27CDB7028, &unk_21BE364F0);
  sub_21BBC7C7C(v53, v54, v55);
}

id sub_21BC127C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBDBD0, &qword_21BE364C0);
  swift_storeEnumTagMultiPayload();
  sub_21BE25B7C();
  v6 = sub_21BE25B9C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_21BC12FE4(v5);
    result = sub_21BE2978C();
    __break(1u);
  }

  else
  {
    MyButton = type metadata accessor for FindMyButton();
    (*(v7 + 32))(a1 + *(MyButton + 20), v5, v6);
    v9 = *(MyButton + 24);
    result = [objc_opt_self() defaultWorkspace];
    *(a1 + v9) = result;
  }

  return result;
}

uint64_t sub_21BC129AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7048, &unk_21BE36610);
  sub_21BB3B038(&qword_27CDB7050, &qword_27CDB7048, &unk_21BE36610);
  return sub_21BE27E3C();
}

uint64_t sub_21BC12A38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21BE2743C();
  *a1 = result;
  return result;
}

uint64_t sub_21BC12A64(uint64_t *a1)
{
  v1 = *a1;

  return sub_21BE2744C();
}

unint64_t sub_21BC12A90()
{
  result = qword_27CDB6F90;
  if (!qword_27CDB6F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6F80, &qword_21BE363B0);
    sub_21BC12B48();
    sub_21BB3B038(&unk_27CDBC3F0, &qword_27CDB5D50, &qword_21BE36430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6F90);
  }

  return result;
}

unint64_t sub_21BC12B48()
{
  result = qword_27CDB6F98;
  if (!qword_27CDB6F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB5CE8, &unk_21BE363C0);
    sub_21BB3B038(&qword_27CDB6D70, &qword_27CDBC2A0, &qword_21BE33660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6F98);
  }

  return result;
}

unint64_t sub_21BC12C08()
{
  result = qword_27CDB6FB8;
  if (!qword_27CDB6FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6F50, &qword_21BE36380);
    sub_21BC12F9C(&qword_27CDB6FB0, type metadata accessor for FindMyButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6FB8);
  }

  return result;
}

unint64_t sub_21BC12CD0()
{
  result = qword_27CDB6FD0;
  if (!qword_27CDB6FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6FC8, &qword_21BE36448);
    sub_21BC12D5C();
    sub_21BBDD54C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6FD0);
  }

  return result;
}

unint64_t sub_21BC12D5C()
{
  result = qword_27CDB6FD8;
  if (!qword_27CDB6FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6FE0, &unk_21BE36450);
    sub_21BC12DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6FD8);
  }

  return result;
}

unint64_t sub_21BC12DE0()
{
  result = qword_27CDB6FE8;
  if (!qword_27CDB6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6FE8);
  }

  return result;
}

unint64_t sub_21BC12E34()
{
  result = qword_27CDB6FF0;
  if (!qword_27CDB6FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB6F68, &qword_21BE36398);
    sub_21BC12CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB6FF0);
  }

  return result;
}

uint64_t sub_21BC12F2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6FF8, &unk_21BE36480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21BC12F9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BC12FE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDB57F0, &qword_21BE328A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21BC1304C@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21BDF8984(v1 + 32, a1);
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 80);

  v3 = *(v0 + 96);

  v4 = *(v0 + 112);

  v5 = *(v0 + 128);

  return swift_deallocObject();
}

unint64_t sub_21BC130F8()
{
  result = qword_27CDB7038;
  if (!qword_27CDB7038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7010, &qword_21BE364D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7008, &qword_21BE364D0);
    sub_21BB3B038(&qword_27CDB7030, &qword_27CDB7008, &qword_21BE364D0);
    swift_getOpaqueTypeConformance2();
    sub_21BB3B038(&qword_27CDBC560, &qword_27CDB6DF8, &qword_21BE3B850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7038);
  }

  return result;
}

uint64_t sub_21BC13278@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  result = sub_21BE27DBC();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

double sub_21BC13350@<D0>(id a1@<X2>, uint64_t a2@<X8>)
{
  if (![a1 isMe])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    if (*(v61 + 16) && (v21 = sub_21BBB31A4(a1), (v22 & 1) != 0))
    {
      v23 = *(*(v61 + 56) + v21);

      if (v23 == 1)
      {
        type metadata accessor for ConfirmChildAgeViewModel();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v25 = [objc_opt_self() bundleForClass_];
        sub_21BE2599C();

        sub_21BB41FA4();
        v26 = sub_21BE27DBC();
        v28 = v27;
        v30 = v29;
        sub_21BE27BEC();
        v31 = sub_21BE27D9C();
        v33 = v32;
        v35 = v34;

        sub_21BBC7C7C(v26, v28, v30 & 1);

        sub_21BE2833C();
        v36 = sub_21BE27D4C();
        v38 = v37;
        v40 = v39;
        v42 = v41;

        sub_21BBC7C7C(v31, v33, v35 & 1);

        *&v62 = v36;
        *(&v62 + 1) = v38;
        LOBYTE(v63) = v40 & 1;
        *(&v63 + 1) = *v60;
        DWORD1(v63) = *&v60[3];
        *(&v63 + 1) = v42;
        v64 = v58;
        LOBYTE(v65) = v59;
        HIBYTE(v65) = 1;
        sub_21BBA4A38(v36, v38, v40 & 1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7070, &qword_21BE36720);
        sub_21BC13BF4();
        sub_21BE2784C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7058, &qword_21BE36718);
        sub_21BC13B68();
        sub_21BE2784C();
        sub_21BBC7C7C(v36, v38, v40 & 1);
        goto LABEL_3;
      }
    }

    else
    {
    }

    type metadata accessor for ConfirmChildAgeViewModel();
    v43 = swift_getObjCClassFromMetadata();
    v44 = [objc_opt_self() bundleForClass_];
    v45 = sub_21BE2599C();
    v47 = v46;

    *&v62 = v45;
    *(&v62 + 1) = v47;
    sub_21BB41FA4();
    v48 = sub_21BE27DBC();
    v50 = v49;
    LOBYTE(v47) = v51;
    sub_21BE27BEC();
    v52 = sub_21BE27D9C();
    v54 = v53;
    v56 = v55;

    sub_21BBC7C7C(v48, v50, v47 & 1);

    sub_21BE2833C();
    sub_21BE27D4C();

    sub_21BBC7C7C(v52, v54, v56 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7058, &qword_21BE36718);
    sub_21BC13B68();
    sub_21BE2784C();
    goto LABEL_10;
  }

  sub_21BCCCA8C();
  sub_21BB41FA4();
  v4 = sub_21BE27DBC();
  v6 = v5;
  v8 = v7;
  sub_21BE27BEC();
  v9 = sub_21BE27D9C();
  v11 = v10;
  v13 = v12;

  sub_21BBC7C7C(v4, v6, v8 & 1);

  sub_21BE2833C();
  v14 = sub_21BE27D4C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_21BBC7C7C(v9, v11, v13 & 1);

  *&v62 = v14;
  *(&v62 + 1) = v16;
  LOBYTE(v63) = v18 & 1;
  *(&v63 + 1) = v58;
  DWORD1(v63) = *(&v58 + 3);
  *(&v63 + 1) = v20;
  *&v64 = swift_getKeyPath();
  *(&v64 + 1) = 1;
  v65 = 0;
  sub_21BBA4A38(v14, v16, v18 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7070, &qword_21BE36720);
  sub_21BC13BF4();
  sub_21BE2784C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7058, &qword_21BE36718);
  sub_21BC13B68();
  sub_21BE2784C();
  sub_21BBC7C7C(v14, v16, v18 & 1);

LABEL_3:

LABEL_10:
  result = *&v62;
  *a2 = v62;
  *(a2 + 16) = v63;
  *(a2 + 32) = v64;
  *(a2 + 48) = v65;
  *(a2 + 50) = v66;
  return result;
}

void sub_21BC13A84(uint64_t a1@<X8>)
{
  *a1 = 13;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_282D85600;
  *(a1 + 24) = &unk_282D85630;
  *(a1 + 32) = 0;
}

id sub_21BC13AAC@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v8 = v1[2];
  v5 = swift_allocObject();
  *(v5 + 2) = v3;
  *(v5 + 3) = v4;
  *(v5 + 4) = v8;
  *a1 = sub_21BC13278;
  a1[1] = 0;
  a1[2] = sub_21BC13B5C;
  a1[3] = v5;
  a1[4] = sub_21BC13A84;
  a1[5] = 0;
  v6 = v4;

  return v8;
}

double sub_21BC13B5C@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21BC13350(*(v1 + 32), a1);
}

unint64_t sub_21BC13B68()
{
  result = qword_27CDB7060;
  if (!qword_27CDB7060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7058, &qword_21BE36718);
    sub_21BC13BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7060);
  }

  return result;
}

unint64_t sub_21BC13BF4()
{
  result = qword_27CDB7068;
  if (!qword_27CDB7068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7070, &qword_21BE36720);
    sub_21BB3B038(&qword_27CDB7078, &qword_27CDB7080, &qword_21BE36728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7068);
  }

  return result;
}

uint64_t View.familyDestination<A, B>(for:makeView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_21BC1666C(a2, a3, &v14);
  v17 = v15;
  v18 = BYTE8(v15);
  v19 = v16;
  v13[0] = v14;
  v13[1] = v15;
  v13[2] = v16;
  v11 = type metadata accessor for FamilyDestinationModifier();
  MEMORY[0x21CF03340](v13, a4, v11, a7);

  sub_21BB3A4CC(&v17, &qword_27CDB7098, &qword_21BE36770);
  return sub_21BB3A4CC(&v19, &qword_27CDB70A0, qword_21BE36778);
}

uint64_t View.handleFamilyDeepLinks()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NavigationManager();
  sub_21BC16738();
  v6 = sub_21BE26E9C();
  v7 = v4 & 1;
  MEMORY[0x21CF03340](&v6, a1, &type metadata for HandleDeepLinksModifier, a2);
}

uint64_t sub_21BC13E5C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t sub_21BC14104()
{
  v3 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB70A0, qword_21BE36778);
  sub_21BE2841C();
  return v2;
}

uint64_t sub_21BC14158@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v150 = a1;
  v158 = a3;
  swift_getWitnessTable();
  v4 = sub_21BE2794C();
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v151 = a2;
  v9 = type metadata accessor for FamilyDestinationModifier.DestinationSheet();
  WitnessTable = swift_getWitnessTable();
  v159 = swift_getWitnessTable();
  v173 = MEMORY[0x277CDEE28];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v165 = v5;
  v164 = v6;
  v163 = v7;
  v162 = v8;
  type metadata accessor for FamilyDestinationModifier.DestinationContent();
  v11 = type metadata accessor for NavigationManager();
  swift_getWitnessTable();
  v12 = sub_21BC16738();
  v13 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v189 = MEMORY[0x277CE1428];
  v190 = v13;
  v191 = MEMORY[0x277CE1410];
  v192 = OpaqueTypeConformance2;
  sub_21BE270BC();
  v15 = sub_21BE2719C();
  v195 = swift_getWitnessTable();
  v196 = sub_21BC17798();
  v139 = v15;
  v138 = swift_getWitnessTable();
  v168 = sub_21BE2782C();
  v16 = sub_21BE2719C();
  v140 = *(v16 - 8);
  v17 = *(v140 + 64);
  MEMORY[0x28223BE20](v16);
  v152 = &v133 - v18;
  v169 = v19;
  v20 = sub_21BE2719C();
  v143 = *(v20 - 8);
  v21 = *(v143 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v142 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v141 = &v133 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7138, &qword_21BE36988);
  v149 = v4;
  v189 = v4;
  v190 = v9;
  v26 = v174;
  v148 = v9;
  v191 = WitnessTable;
  v192 = v159;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = sub_21BC177EC();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7148, &unk_21BE36990);
  v30 = sub_21BC17840();
  v189 = v29;
  v190 = v11;
  v191 = v30;
  v192 = v12;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = OpaqueTypeMetadata2;
  v189 = OpaqueTypeMetadata2;
  v190 = &type metadata for AnyLinkDestination;
  v171 = v25;
  v191 = v25;
  v192 = v27;
  v173 = v27;
  v167 = v28;
  v193 = v28;
  v194 = v31;
  v166 = v31;
  v33 = swift_getOpaqueTypeMetadata2();
  v137 = *(v33 - 8);
  v34 = *(v137 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v136 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v135 = &v133 - v37;
  v153 = v38;
  v157 = v20;
  v156 = sub_21BE2785C();
  v155 = *(v156 - 8);
  v39 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v154 = &v133 - v40;
  v41 = sub_21BE2754C();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v133 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v32;
  v161 = *(v32 - 8);
  v47 = *(v161 + 64);
  v48 = MEMORY[0x28223BE20](v44);
  v134 = &v133 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v172 = &v133 - v50;
  v199 = *(v26 + 24);
  v198 = *(v26 + 2);
  LODWORD(v32) = v199;

  v146 = v32;
  if ((v32 & 1) == 0)
  {
    sub_21BE28FEC();
    v51 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v198, &qword_27CDB7098, &qword_21BE36770);
    (*(v42 + 8))(v46, v41);
  }

  v52 = v165;
  v53 = v42;
  v54 = v41;
  v55 = v163;
  v145 = sub_21BC584C8(v165, v165, v163);
  v144 = v56;

  v57 = v174;
  v58 = v46;
  v59 = *(v174 + 1);
  v197 = v174[2];
  v60 = swift_allocObject();
  v61 = v164;
  *(v60 + 16) = v52;
  *(v60 + 24) = v61;
  *(v60 + 32) = v55;
  v62 = v54;
  v63 = v53;
  *(v60 + 40) = v162;
  v64 = v57[1];
  *(v60 + 48) = *v57;
  *(v60 + 64) = v64;
  *(v60 + 80) = v57[2];
  sub_21BBA3854(&v198, &v189, &qword_27CDB7098, &qword_21BE36770);
  v147 = v59;
  v65 = v58;

  sub_21BBA3854(&v197, &v189, &qword_27CDB70A0, qword_21BE36778);
  swift_checkMetadataState();
  v66 = swift_checkMetadataState();
  v131 = v159;
  v129 = v66;
  v130 = WitnessTable;
  sub_21BE2812C();

  v68 = v146;
  if ((v146 & 1) == 0)
  {
    sub_21BE28FEC();
    v69 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v198, &qword_27CDB7098, &qword_21BE36770);
    (*(v63 + 8))(v65, v62);
    v67 = v189;
  }

  v70 = *(v67 + 16);

  v71 = v173;
  v72 = v171;
  if (v70 == 1)
  {
    v73 = v134;
    v74 = v170;
    v75 = v174;
    sub_21BC155A8(v172, v151, v170, v173, v134);
    v76 = swift_allocObject();
    v77 = v164;
    *(v76 + 16) = v165;
    *(v76 + 24) = v77;
    v78 = v162;
    *(v76 + 32) = v163;
    *(v76 + 40) = v78;
    v79 = v75[1];
    *(v76 + 48) = *v75;
    *(v76 + 64) = v79;
    *(v76 + 80) = v75[2];
    sub_21BBA3854(&v198, &v189, &qword_27CDB7098, &qword_21BE36770);

    sub_21BBA3854(&v197, &v189, &qword_27CDB70A0, qword_21BE36778);
    v80 = v166;
    v131 = v166;
    v81 = v136;
    v82 = v167;
    sub_21BE2807C();

    v83 = *(v161 + 8);
    v161 += 8;
    v174 = v83;
    (v83)(v73, v74);
    v189 = v74;
    v190 = &type metadata for AnyLinkDestination;
    v191 = v72;
    v192 = v71;
    v193 = v82;
    v194 = v80;
    swift_getOpaqueTypeConformance2();
    v84 = v135;
    v85 = v153;
    sub_21BD37338(v81);
    v86 = *(v137 + 8);
    v86(v81, v85);
    sub_21BD37338(v84);
    v87 = swift_getWitnessTable();
    v177 = v173;
    v178 = v87;
    v175 = swift_getWitnessTable();
    v176 = MEMORY[0x277CE0790];
    swift_getWitnessTable();
    v88 = v154;
    sub_21BD36AA0(v81, v85);
    v89 = v81;
    v90 = v170;
    v86(v89, v85);
    v86(v84, v85);
    v91 = v173;
    (v174)(v172, v90);
  }

  else
  {
    v92 = sub_21BC14104();
    v94 = v93;
    LODWORD(WitnessTable) = v95;

    if ((v68 & 1) == 0)
    {
      sub_21BE28FEC();
      v96 = sub_21BE27B2C();
      sub_21BE269DC();

      sub_21BE2753C();
      swift_getAtKeyPath();
      sub_21BB3A4CC(&v198, &qword_27CDB7098, &qword_21BE36770);
      (*(v63 + 8))(v65, v62);
    }

    v97 = v165;
    v98 = v163;
    v99 = sub_21BC58778(v165, v165, v163);
    v101 = v100;
    v103 = v102;

    v104 = sub_21BC15AA0(v99, v101, v103 & 1, v92, v94, WitnessTable);
    v106 = v105;
    v108 = v107;

    MEMORY[0x28223BE20](v109);
    v110 = v164;
    *(&v133 - 8) = v97;
    *(&v133 - 7) = v110;
    v111 = v162;
    *(&v133 - 6) = v98;
    *(&v133 - 5) = v111;
    v129 = v104;
    v130 = v106;
    v112 = v108 & 1;
    LOBYTE(v131) = v108 & 1;
    v113 = v174;
    v132 = v174;
    sub_21BE2869C();
    sub_21BE27E8C();
    v114 = swift_allocObject();
    *(v114 + 16) = v97;
    *(v114 + 24) = v110;
    *(v114 + 32) = v98;
    *(v114 + 40) = v111;
    WitnessTable = v104;
    *(v114 + 48) = v104;
    *(v114 + 56) = v106;
    v159 = v106;
    *(v114 + 64) = v112;
    v115 = v113[1];
    *(v114 + 72) = *v113;
    *(v114 + 88) = v115;
    *(v114 + 104) = v113[2];
    sub_21BBA3854(&v198, &v189, &qword_27CDB7098, &qword_21BE36770);

    sub_21BBA3854(&v197, &v189, &qword_27CDB70A0, qword_21BE36778);

    v116 = swift_getWitnessTable();
    v91 = v173;
    v187 = v173;
    v188 = v116;
    v117 = v169;
    v118 = swift_getWitnessTable();
    v119 = v142;
    v120 = v152;
    sub_21BE281AC();

    (*(v140 + 8))(v120, v117);
    v185 = v118;
    v186 = MEMORY[0x277CE0790];
    v90 = v170;
    v121 = v157;
    swift_getWitnessTable();
    v122 = v141;
    sub_21BD37338(v119);
    v123 = *(v143 + 8);
    v123(v119, v121);
    sub_21BD37338(v122);
    v189 = v90;
    v190 = &type metadata for AnyLinkDestination;
    v191 = v171;
    v192 = v91;
    v193 = v167;
    v194 = v166;
    swift_getOpaqueTypeConformance2();
    v88 = v154;
    sub_21BD36B98(v119, v153, v121);

    v123(v119, v121);
    v123(v122, v121);
    (*(v161 + 8))(v172, v90);
  }

  v189 = v90;
  v190 = &type metadata for AnyLinkDestination;
  v191 = v171;
  v192 = v91;
  v193 = v167;
  v194 = v166;
  v124 = swift_getOpaqueTypeConformance2();
  v125 = swift_getWitnessTable();
  v183 = v91;
  v184 = v125;
  v181 = swift_getWitnessTable();
  v182 = MEMORY[0x277CE0790];
  v126 = swift_getWitnessTable();
  v179 = v124;
  v180 = v126;
  v127 = v156;
  swift_getWitnessTable();
  sub_21BD37338(v88);
  return (*(v155 + 8))(v88, v127);
}

uint64_t sub_21BC15480(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = *a1;
  v10 = a1[1];

  v15 = sub_21BC16300(v9);
  v16 = v11;
  v17 = v12;
  v18 = v13 & 1;
  type metadata accessor for FamilyDestinationModifier.DestinationSheet();
  swift_getWitnessTable();
  sub_21BD37338(&v15);

  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  sub_21BD37338(&v15);
}

uint64_t sub_21BC155A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_21BE2754C();
  *&v24 = *(v11 - 8);
  v12 = *(v24 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v5 + 24);
  v25 = v5[2];
  v15 = v26;

  if ((v15 & 1) == 0)
  {
    sub_21BE28FEC();
    *&v23 = v11;
    v16 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v25, &qword_27CDB7098, &qword_21BE36770);
    (*(v24 + 8))(v14, v23);
  }

  v18 = *v5;
  v17 = v5[1];
  v19 = swift_allocObject();
  v20 = *(a2 + 16);
  v23 = *(a2 + 32);
  v21 = v23;
  v24 = v20;
  *(v19 + 16) = v20;
  *(v19 + 32) = a3;
  *(v19 + 40) = v21;
  *(v19 + 56) = a4;
  *(v19 + 64) = v18;
  *(v19 + 72) = v17;

  sub_21BC56190(v24, sub_21BC17954, v19, v24, v23);

  return (*(*(a3 - 8) + 16))(a5, a1, a3);
}

uint64_t sub_21BC1580C(void *a1, uint64_t a2)
{
  v4 = sub_21BE2754C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 24);
  v15 = *(a2 + 16);
  v9 = v16;

  if ((v9 & 1) == 0)
  {
    sub_21BE28FEC();
    v10 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v15, &qword_27CDB7098, &qword_21BE36770);
    (*(v5 + 8))(v8, v4);
  }

  sub_21BC56C0C(a1, &v14);

  v13[2] = v14;

  if ((v9 & 1) == 0)
  {
    sub_21BE28FEC();
    v11 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v15, &qword_27CDB7098, &qword_21BE36770);
    (*(v5 + 8))(v8, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7148, &unk_21BE36990);
  type metadata accessor for NavigationManager();
  sub_21BC17840();
  sub_21BC16738();
  sub_21BE27EEC();
}

uint64_t sub_21BC15AA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  *(v12 + 56) = a1;
  *(v12 + 64) = a2;
  *(v12 + 72) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a6;
  *(v13 + 56) = a1;
  *(v13 + 64) = a2;
  *(v13 + 72) = a3;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_21BE2857C();
  return v15;
}

uint64_t sub_21BC15BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v32 = a6;
  v33 = a7;
  v35 = a4;
  v36 = a2;
  v37 = a3;
  v34 = a1;
  v38 = a9;
  type metadata accessor for FamilyDestinationModifier.DestinationContent();
  type metadata accessor for NavigationManager();
  swift_getWitnessTable();
  sub_21BC16738();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = MEMORY[0x277CE1428];
  v48 = OpaqueTypeMetadata2;
  v49 = MEMORY[0x277CE1410];
  v50 = OpaqueTypeConformance2;
  v12 = sub_21BE270BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &OpaqueTypeMetadata2 - v15;
  v17 = sub_21BE2719C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &OpaqueTypeMetadata2 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &OpaqueTypeMetadata2 - v23;
  v40 = a5;
  v41 = v32;
  v42 = v33;
  v43 = a8;
  v25 = v34;
  v44 = v35;

  v26 = v36;

  sub_21BC1635C(v25, v26, v37, sub_21BC179A4, v39, nullsub_1, 0, MEMORY[0x277CE1428], OpaqueTypeMetadata2);
  WitnessTable = swift_getWitnessTable();
  sub_21BE2813C();
  (*(v13 + 8))(v16, v12);
  v28 = sub_21BC17798();
  v45 = WitnessTable;
  v46 = v28;
  swift_getWitnessTable();
  sub_21BD37338(v22);
  v29 = *(v18 + 8);
  v29(v22, v17);
  sub_21BD37338(v24);
  return (v29)(v24, v17);
}

uint64_t sub_21BC15F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v49 = a6;
  v11 = sub_21BE2754C();
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v14 = type metadata accessor for FamilyDestinationModifier.DestinationContent();
  v15 = type metadata accessor for NavigationManager();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_21BC16738();
  v45 = v15;
  v46 = v14;
  v50 = v14;
  v51 = v15;
  v47 = v17;
  v48 = WitnessTable;
  v52 = WitnessTable;
  v53 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v39 - v24;
  v27 = *a1;
  v26 = *(a1 + 8);

  v50 = sub_21BC16300(v27);
  v51 = v28;
  v43 = v28;
  v44 = v29;
  v52 = v29;
  LOBYTE(v53) = v30 & 1;
  v54 = *(a1 + 16);
  v55 = *(a1 + 24);
  LOBYTE(a1) = v55;

  if ((a1 & 1) == 0)
  {
    sub_21BE28FEC();
    v31 = sub_21BE27B2C();
    sub_21BE269DC();

    v32 = v40;
    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v54, &qword_27CDB7098, &qword_21BE36770);
    (*(v41 + 8))(v32, v42);
  }

  v33 = swift_checkMetadataState();
  v34 = swift_checkMetadataState();
  v35 = v47;
  v36 = v48;
  sub_21BE27EEC();

  v50 = v33;
  v51 = v34;
  v52 = v36;
  v53 = v35;
  swift_getOpaqueTypeConformance2();
  sub_21BD37338(v23);
  v37 = *(v19 + 8);
  v37(v23, OpaqueTypeMetadata2);
  sub_21BD37338(v25);
  return (v37)(v25, OpaqueTypeMetadata2);
}

uint64_t sub_21BC16300(uint64_t a1)
{
  type metadata accessor for NavigationManager();
  sub_21BC16738();
  sub_21BE26E9C();
  return a1;
}

uint64_t sub_21BC1635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(*(a9 - 8) + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v11(v10);
  return sub_21BE2707C();
}

uint64_t sub_21BC1643C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_21BE2754C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a4 + 24);
  v41 = *(a4 + 16);
  v18 = v42;

  if ((v18 & 1) == 0)
  {
    sub_21BE28FEC();
    v19 = sub_21BE27B2C();
    v32 = v13;
    v20 = a7;
    v21 = a1;
    v22 = a2;
    v23 = a3;
    v24 = v19;
    sub_21BE269DC();

    a3 = v23;
    a2 = v22;
    a1 = v21;
    a7 = v20;
    sub_21BE2753C();
    swift_getAtKeyPath();
    sub_21BB3A4CC(&v41, &qword_27CDB7098, &qword_21BE36770);
    (*(v14 + 8))(v17, v32);
  }

  v25 = sub_21BC58778(a5, a5, a7);
  v27 = v26;
  v29 = v28;

  v38 = v25;
  v39 = v27;
  v40 = v29 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  MEMORY[0x21CF036E0](&v37);
  v30 = v37;

  v34 = a1;
  v35 = a2;
  v36 = a3 & 1;
  v33 = v30;
  return sub_21BE2854C();
}

uint64_t sub_21BC1666C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for NavigationManager();
  sub_21BC16738();
  v6 = sub_21BE26E9C();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6A10, &qword_21BE35CE0);
  result = sub_21BE283EC();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8 & 1;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

unint64_t sub_21BC16738()
{
  result = qword_27CDB69B0;
  if (!qword_27CDB69B0)
  {
    type metadata accessor for NavigationManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB69B0);
  }

  return result;
}

unint64_t sub_21BC16790()
{
  result = qword_27CDB70A8[0];
  if (!qword_27CDB70A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDB70A8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21BC16804(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21BC1684C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_21BC168A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21BC168F0(uint64_t *a1, int a2)
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

uint64_t sub_21BC16938(uint64_t result, int a2, int a3)
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

uint64_t sub_21BC169A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  return sub_21BC14158(a1, a2, a3);
}

uint64_t sub_21BC169DC(void (*a1)(char *), uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a2;
  v33 = a5;
  v31 = a1;
  v12 = sub_21BE2754C();
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a6;
  v16 = sub_21BE2946C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v28 - v22;

  if ((a4 & 1) == 0)
  {
    sub_21BE28FEC();
    v24 = sub_21BE27B2C();
    v28[1] = a7;
    v25 = v24;
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v29 + 8))(v15, v30);
  }

  sub_21BC58D4C(v31, v32, v33, v34, v21);

  v35 = a8;
  swift_getWitnessTable();
  sub_21BD37338(v21);
  v26 = *(v17 + 8);
  v26(v21, v16);
  sub_21BD37338(v23);
  return (v26)(v23, v16);
}

uint64_t sub_21BC16CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a8;
  v62 = a7;
  v60 = a2;
  v67 = a9;
  v58 = a5;
  v13 = sub_21BE2946C();
  v64 = *(v13 - 8);
  v14 = *(v64 + 64);
  MEMORY[0x28223BE20](v13);
  v61 = &v57 - v15;
  v65 = a6;
  v16 = sub_21BE2946C();
  v70 = *(v16 - 8);
  v17 = *(v70 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v66 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v59 = &v57 - v21;
  MEMORY[0x28223BE20](v20);
  v63 = &v57 - v22;
  v23 = sub_21BE2754C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_21BE2946C();
  v69 = *(v28 - 8);
  v29 = *(v69 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v68 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v57 - v32;

  if ((a4 & 1) == 0)
  {
    sub_21BE28FEC();
    v34 = sub_21BE27B2C();
    v57 = v23;
    v35 = v33;
    v36 = v28;
    v37 = a1;
    v38 = v13;
    v39 = v34;
    sub_21BE269DC();

    v13 = v38;
    a1 = v37;
    v28 = v36;
    v33 = v35;
    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v24 + 8))(v27, v57);
    a3 = v77;
  }

  swift_getKeyPath();
  v76 = a3;
  sub_21BC16738();
  sub_21BE25F1C();

  swift_beginAccess();
  sub_21BBA3854(a3 + 32, &v77, &qword_27CDB7278, &qword_21BE3A250);

  if (*(&v78 + 1))
  {
    v81[0] = v77;
    v81[1] = v78;
    v81[2] = v79;
    v82 = v80;
    sub_21BB3A35C(v81, &v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7280, &unk_21BE36B80);
    v40 = v61;
    v41 = v58;
    v42 = swift_dynamicCast();
    v43 = (*(*(v41 - 8) + 56))(v40, v42 ^ 1u, 1, v41);
    MEMORY[0x28223BE20](v43);
    v44 = v65;
    *(&v57 - 6) = v41;
    *(&v57 - 5) = v44;
    v45 = v71;
    *(&v57 - 4) = v62;
    *(&v57 - 3) = v45;
    v46 = v60;
    *(&v57 - 2) = a1;
    *(&v57 - 1) = v46;
    v47 = v59;
    sub_21BC13E5C(sub_21BC17C50, (&v57 - 8), MEMORY[0x277D84A98], v44, v48, v59);
    sub_21BC17C80(v81);
    (*(v64 + 8))(v40, v13);
    v72 = v45;
    swift_getWitnessTable();
    v49 = v63;
    sub_21BD37338(v47);
    v50 = v70;
    v51 = *(v70 + 8);
    v51(v47, v16);
    v52 = v66;
    sub_21BD37338(v49);
    v51(v49, v16);
    v53 = v68;
    (*(v50 + 32))(v68, v52, v16);
    (*(v50 + 56))(v53, 0, 1, v16);
    sub_21BD36C90(v53, v33);
    v54 = *(v69 + 8);
    v54(v53, v28);
  }

  else
  {
    sub_21BB3A4CC(&v77, &qword_27CDB7278, &qword_21BE3A250);
    v55 = v68;
    (*(v70 + 56))(v68, 1, 1, v16);
    v75 = v71;
    swift_getWitnessTable();
    sub_21BD36C90(v55, v33);
    v54 = *(v69 + 8);
    v54(v55, v28);
  }

  v74 = v71;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21BD37338(v33);
  return (v54)(v33, v28);
}

uint64_t sub_21BC174A0(uint64_t *a1, uint64_t a2, char a3)
{
  v5 = sub_21BE2754C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];

  if ((a3 & 1) == 0)
  {
    sub_21BE28FEC();
    v12 = sub_21BE27B2C();
    sub_21BE269DC();

    sub_21BE2753C();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
  }

  v13 = static AnyLinkDestination.path(fromString:)(v10, v11);
  sub_21BC55C18(v13);
}

uint64_t sub_21BC17610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  if (qword_280BD7CC0 != -1)
  {
    swift_once();
  }

  v7 = *(qword_280BD7CD0 + OBJC_IVAR____TtC14FamilyCircleUI25FamilySettingsApplication_navigationPathSubject);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7160, &qword_21BE369A8);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDB7168, &unk_21BE369B0);
  *(a2 + *(v10 + 52)) = v7;
  v11 = (a2 + *(v10 + 56));
  *v11 = sub_21BC17B7C;
  v11[1] = v8;
}

unint64_t sub_21BC17798()
{
  result = qword_27CDB7130;
  if (!qword_27CDB7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7130);
  }

  return result;
}

unint64_t sub_21BC177EC()
{
  result = qword_27CDB7140;
  if (!qword_27CDB7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7140);
  }

  return result;
}

unint64_t sub_21BC17840()
{
  result = qword_27CDB7150;
  if (!qword_27CDB7150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7148, &unk_21BE36990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7150);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_21BC17944(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_21BC1580C(a1, (v1 + 6));
}

uint64_t sub_21BC17954@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[6];
  v8 = v2[8];
  v7 = v2[9];
  a2[3] = v5;
  a2[4] = v6;
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v8(a1);
}

uint64_t sub_21BC179B4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 48);
  result = sub_21BC17AF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21BC179F0(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v10 = *a4;
  v11 = a4[1];
  v12 = *(a4 + 16);
  v7 = *a5;
  v8 = a5[1];
  v9 = *(a5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7158, &qword_21BE369A0);
  sub_21BE2854C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
  return sub_21BE2854C();
}

uint64_t objectdestroy_21Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_21BC17AF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7158, &qword_21BE369A0);
  MEMORY[0x21CF036E0](&v4, v0);
  v1 = v4;
  if (v4 == 2)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5CD8, &unk_21BE335A0);
    MEMORY[0x21CF036E0](&v4, v2);
    v1 = v4;
  }

  return v1 & 1;
}

unint64_t sub_21BC17B88()
{
  result = qword_27CDB7270;
  if (!qword_27CDB7270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDB7168, &unk_21BE369B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7270);
  }

  return result;
}

uint64_t sub_21BC17C1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21BC17C50()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_21BC17CEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB6E20, &unk_21BE36168);
  __swift_allocate_value_buffer(v0, qword_27CDD4198);
  __swift_project_value_buffer(v0, qword_27CDD4198);
  return sub_21BE26B5C();
}

uint64_t sub_21BC17D88()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  return sub_21BE27DBC();
}

uint64_t sub_21BC17E58()
{
  type metadata accessor for ConfirmChildAgeViewModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_21BE2599C();

  sub_21BB41FA4();
  return sub_21BE27DBC();
}

uint64_t sub_21BC17F34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7290, &qword_21BE36C40);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB7298, &qword_21BE36C48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72A0, &unk_21BE36C50);
  v10 = sub_21BE26AFC();
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_21BE32770;
  sub_21BE26B0C();
  v13 = MEMORY[0x277CE1A00];
  sub_21BE26ABC();

  v17 = v10;
  v18 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF01C90](v9, v5, OpaqueTypeConformance2);
  v17 = v5;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v15 = sub_21BE26ADC();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  return v15;
}

unint64_t sub_21BC18208()
{
  result = qword_27CDB7288;
  if (!qword_27CDB7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7288);
  }

  return result;
}

uint64_t sub_21BC1825C()
{
  type metadata accessor for FamilyChecklistStore();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_21BE289CC();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  if (v3)
  {

    return sub_21BE2836C();
  }

  else
  {
    result = sub_21BE2978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_21BC1837C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t *MultipleInviteViewModel.deinit()
{
  swift_beginAccess();
  v1 = v0[13];
  v0[13] = MEMORY[0x277D84FA0];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v2 = v0[13];

  v3 = OBJC_IVAR____TtC14FamilyCircleUI23MultipleInviteViewModel__invites;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72B0, &qword_21BE36C60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t MultipleInviteViewModel.__deallocating_deinit()
{
  swift_beginAccess();
  v1 = v0[13];
  v0[13] = MEMORY[0x277D84FA0];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v2 = v0[13];

  v3 = OBJC_IVAR____TtC14FamilyCircleUI23MultipleInviteViewModel__invites;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72B0, &qword_21BE36C60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_21BC18588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_21BE28D7C();
  v4[4] = sub_21BE28D6C();
  v6 = sub_21BE28D0C();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21BC18620, v6, v5);
}

uint64_t sub_21BC18620()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_21BE290EC();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v6;

  sub_21BE26CBC();
  v8 = v1[5];
  v9 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v11 = [v10 me];

  if (v11)
  {
  }

  *(v0[3] + 96) = v11 != 0;
  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_21BC187C4;
  v13 = v0[3];

  return sub_21BC188E4();
}

uint64_t sub_21BC187C4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21BBDBEE0, v4, v3);
}

uint64_t sub_21BC188E4()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDBC7B0, &unk_21BE39C70);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5980, &unk_21BE32BA0);
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5988, &qword_21BE4B180);
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  sub_21BE28D7C();
  v1[15] = sub_21BE28D6C();
  v12 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC18AB4, v12, v11);
}

uint64_t sub_21BC18AB4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v18 = v0[11];
  v20 = v0[10];
  v21 = v0[13];
  v4 = v0[8];
  v19 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  v8 = v7[5];
  v9 = v7[6];
  __swift_project_boxed_opaque_existential_1Tm(v7 + 2, v8);
  (*(v9 + 32))(v8, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = sub_21BE2635C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_21BE2634C();
  sub_21BB3B038(&qword_280BD6AB0, &qword_27CDB5988, &qword_21BE4B180);
  sub_21BB3CCDC();
  sub_21BE26D0C();
  sub_21BB3B038(&qword_280BD6AF0, &unk_27CDBC7B0, &unk_21BE39C70);
  sub_21BE26CFC();
  (*(v5 + 8))(v4, v6);
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &unk_21BE36D98;
  v15[4] = v10;
  sub_21BB3B038(&qword_280BD6AD0, &qword_27CDB5980, &unk_21BE32BA0);

  sub_21BE26D1C();

  (*(v20 + 8))(v18, v19);
  (*(v21 + 8))(v2, v3);
  swift_beginAccess();
  sub_21BE26BBC();
  swift_endAccess();

  v16 = v0[1];

  return v16();
}

uint64_t sub_21BC18DB8(uint64_t a1, uint64_t a2)
{
  v2[18] = a2;
  v3 = sub_21BE26A4C();
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  sub_21BE28D7C();
  v2[22] = sub_21BE28D6C();
  v7 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC18EAC, v7, v6);
}

uint64_t sub_21BC18EAC()
{
  v27 = v0;
  v2 = v0[21];
  v1 = v0[22];

  sub_21BE260FC();
  v3 = sub_21BE26A2C();
  v4 = sub_21BE28FCC();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21BB3D81C(0xD000000000000018, 0x800000021BE581A0, &v26);
    _os_log_impl(&dword_21BB35000, v3, v4, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x21CF05C50](v10, -1, -1);
    MEMORY[0x21CF05C50](v9, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v11 = v0[18];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_21BB3A35C(Strong + 16, (v0 + 2));

    v13 = v0[5];
    v14 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v13);
    v15 = (*(v14 + 8))(v13, v14);
    if (v15)
    {
      v16 = v15;
      v17 = sub_21BE290EC();
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v18 = v0[18];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21BE26CAC();

    v19 = v0[16];

    v21 = sub_21BC20844(v20, v19);

    if (v21)
    {
      goto LABEL_13;
    }
  }

  v22 = v0[18];
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_13:
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v0[17] = v17;
    sub_21BE26CBC();
  }

  v23 = v0[21];

  v24 = v0[1];

  return v24();
}

uint64_t sub_21BC191C8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MultipleInviteViewModel();
  result = sub_21BE26C0C();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for MultipleInviteViewModel()
{
  result = qword_27CDB72B8;
  if (!qword_27CDB72B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21BC1925C()
{
  sub_21BC19328();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21BC19328()
{
  if (!qword_27CDB72C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB72D0, &qword_21BE36D30);
    v0 = sub_21BE26CCC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDB72C8);
    }
  }
}

uint64_t sub_21BC1938C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  *a2 = v5;
  return result;
}

uint64_t sub_21BC1940C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21BE26CBC();
}

uint64_t sub_21BC19488(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_21BBA6A64;

  return sub_21BC18DB8(a1, v1);
}

unint64_t sub_21BC19520()
{
  result = qword_280BD6970;
  if (!qword_280BD6970)
  {
    sub_21BC19578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BD6970);
  }

  return result;
}

unint64_t sub_21BC19578()
{
  result = qword_280BD6980;
  if (!qword_280BD6980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BD6980);
  }

  return result;
}

void sub_21BC195C4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_27CDD41B0 = v1 == 1;
}

uint64_t sub_21BC19628()
{
  v0 = *MEMORY[0x277D25EA8];
  result = sub_21BE28A0C();
  qword_27CDD41B8 = result;
  unk_27CDD41C0 = v2;
  return result;
}

void sub_21BC19658()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 model];

  v2 = sub_21BE28A0C();
  v4 = v3;

  qword_27CDD41C8 = v2;
  unk_27CDD41D0 = v4;
}

FamilyCircleUI::ScrollNavKey_optional __swiftcall ScrollNavKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21BE2980C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ScrollNavKey.rawValue.getter()
{
  v1 = 0x64756F6C4369;
  v2 = 0x6573616863727550;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461636F4CLL;
  }

  if (*v0)
  {
    v1 = 0x7069726373627553;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_21BC197F8(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x64756F6C4369;
  v4 = 0x6573616863727550;
  if (*v1 != 2)
  {
    v4 = 0x6E6F697461636F4CLL;
  }

  if (*v1)
  {
    v3 = 0x7069726373627553;
    v2 = 0xED0000736E6F6974;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xEF676E6972616853;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_21BC1989C()
{
  result = qword_27CDB72D8;
  if (!qword_27CDB72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB72D8);
  }

  return result;
}

uint64_t sub_21BC198F0()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC199D4()
{
  *v0;
  *v0;
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BC19AA4()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

unint64_t sub_21BC19B88()
{
  result = qword_27CDB72E0;
  if (!qword_27CDB72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB72E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChecklistRole(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChecklistRole(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t OnboardingAnalyticsLogger.AnalyticEventType.hashValue.getter()
{
  v1 = *v0;
  sub_21BE29ACC();
  MEMORY[0x21CF04C80](v1);
  return sub_21BE29B0C();
}

uint64_t static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 8);
  *(v2 + 32) = *(a1 + 16);
  *(v2 + 28) = *a2;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_21BC19E78;

  return FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v2 + 16, v4);
}

uint64_t sub_21BC19E78()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC19F74, 0, 0);
}

uint64_t sub_21BC19F74()
{
  v15 = v0;
  v1 = *(v0 + 28);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v5 = *(v0 + 26);
  v6 = *(v0 + 27);
  if (v1 > 1)
  {
    v9 = *(v0 + 16);
    v10 = v3;
    v11 = v4;
    v12 = v5;
    v13 = v6;
    if (v1 == 2)
    {
      sub_21BD5DF78(&v9);
    }

    else
    {
      sub_21BD5DF88(&v9);
    }
  }

  else if (*(v0 + 28))
  {
    v9 = *(v0 + 16);
    v10 = v3;
    v11 = v4;
    v12 = v5;
    v13 = v6;
    sub_21BD5DF68(&v9);
  }

  else
  {
    if (*(v0 + 32))
    {
      v9 = *(v0 + 16);
      v10 = v3;
      v11 = v4;
      v12 = v5;
      v13 = v6;
      v14 = 0;
    }

    else
    {
      v9 = *(v0 + 16);
      v10 = v3;
      v11 = v4;
      v12 = v5;
      v13 = v6;
      v14 = 1;
    }

    _s14FamilyCircleUI0A25DeclaredAgeRangeAnalyticsC33sendOnboardingViewNavigationEvent4with4viewyAA0adefG7PackageV_AA0efgiJ0OtFZ_0(&v9, &v14);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t static OnboardingAnalyticsLogger.logNavigationEvent(ageRangeContext:view:)(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 8);
  *(v2 + 32) = *(a1 + 16);
  *(v2 + 28) = *a2;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_21BC1A15C;

  return FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v2 + 16, v4);
}

uint64_t sub_21BC1A15C()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC1A258, 0, 0);
}

uint64_t sub_21BC1A258()
{
  v16 = v0;
  v1 = *(v0 + 28);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v5 = *(v0 + 26);
  v6 = *(v0 + 27);
  if (v1 >= 2)
  {
    v10 = *(v0 + 16);
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v14 = v6;
    if (v1 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    if (*(v0 + 32))
    {
      v10 = *(v0 + 16);
      v11 = v3;
      v12 = v4;
      v13 = v5;
      v14 = v6;
      v15 = 0;
      goto LABEL_9;
    }

    v10 = *(v0 + 16);
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v14 = v6;
    v7 = 1;
  }

  v15 = v7;
LABEL_9:
  _s14FamilyCircleUI0A25DeclaredAgeRangeAnalyticsC33sendOnboardingViewNavigationEvent4with4viewyAA0adefG7PackageV_AA0efgiJ0OtFZ_0(&v10, &v15);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t static OnboardingAnalyticsLogger.logChooseHowToShareEvent(ageRangeContext:option:)(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 8);
  *(v2 + 28) = *a2;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_21BC1A40C;

  return FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v2 + 16, v4);
}

uint64_t sub_21BC1A40C()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21BC1A508, 0, 0);
}

uint64_t sub_21BC1A508()
{
  v12 = v0;
  v1 = *(v0 + 28);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 27);
  v7 = *(v0 + 16);
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v1;
  sub_21BD5DF98(&v7, &v11);
  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_21BC1A598()
{
  result = qword_27CDB72E8;
  if (!qword_27CDB72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB72E8);
  }

  return result;
}

uint64_t sub_21BC1A60C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_21BC1A654(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_21BC1A6B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x44495344746C61;
  }

  else
  {
    v4 = 0x6C6562616CLL;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x44495344746C61;
  }

  else
  {
    v6 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21BE2995C();
  }

  return v9 & 1;
}

uint64_t sub_21BC1A754()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC1A7D4()
{
  *v0;
  sub_21BE28ABC();
}

uint64_t sub_21BC1A840()
{
  v1 = *v0;
  sub_21BE29ACC();
  sub_21BE28ABC();

  return sub_21BE29B0C();
}

uint64_t sub_21BC1A8BC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21BE2980C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_21BC1A91C(uint64_t *a1@<X8>)
{
  v2 = 0x6C6562616CLL;
  if (*v1)
  {
    v2 = 0x44495344746C61;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21BC1A958()
{
  if (*v0)
  {
    result = 0x44495344746C61;
  }

  else
  {
    result = 0x6C6562616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_21BC1A990@<X0>(char *a1@<X8>)
{
  v2 = sub_21BE2980C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21BC1A9F4(uint64_t a1)
{
  v2 = sub_21BC1AFC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21BC1AA30(uint64_t a1)
{
  v2 = sub_21BC1AFC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21BC1AA6C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[5];
  v33 = v1[4];
  v6 = qword_280BD83C0;

  if (v6 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyPictureStore(0);
  sub_21BC1AD2C(&qword_27CDB5CE0, type metadata accessor for FamilyPictureStore);

  v7 = sub_21BE270CC();
  v31 = v8;
  v32 = v7;
  if (qword_280BD79D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for FamilyCircleStore(0);
  sub_21BC1AD2C(&qword_27CDB5C40, type metadata accessor for FamilyCircleStore);

  v9 = sub_21BE270CC();
  v29 = v10;
  v30 = v9;
  sub_21BB41FA4();
  v11 = sub_21BE27DBC();
  v13 = v12;
  v15 = v14;
  sub_21BE2833C();
  v16 = sub_21BE27D4C();
  v18 = v17;
  v20 = v19;

  sub_21BBC7C7C(v11, v13, v15 & 1);

  sub_21BE27CAC();
  v21 = sub_21BE27D9C();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_21BBC7C7C(v16, v18, v20 & 1);

  *a1 = v33;
  *(a1 + 8) = v5;
  *(a1 + 16) = v21;
  *(a1 + 24) = v23;
  *(a1 + 32) = v25 & 1;
  *(a1 + 40) = v27;
  *(a1 + 48) = v32;
  *(a1 + 56) = v31;
  *(a1 + 64) = v30;
  *(a1 + 72) = v29;
  return result;
}

double sub_21BC1ACC0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_21BC1AD80(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_21BC1AD04@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_21BC1AD2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21BC1AD80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB72F0, &qword_21BE370E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v11 = sub_21BE29B3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v14 = v12;
  v25 = a2;
  v26 = v11;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_21BC1AFC0();
  sub_21BE29B4C();
  v28 = 0;
  v16 = sub_21BE2986C();
  v18 = v17;
  v24 = v16;
  v27 = 1;
  v19 = sub_21BE2986C();
  v21 = v20;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v22 = v25;
  *v25 = v26;
  v22[1] = v14;
  v22[2] = v24;
  v22[3] = v18;
  v22[4] = v19;
  v22[5] = v21;
  return result;
}

unint64_t sub_21BC1AFC0()
{
  result = qword_27CDB72F8;
  if (!qword_27CDB72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB72F8);
  }

  return result;
}

unint64_t sub_21BC1B024()
{
  result = qword_27CDB7300;
  if (!qword_27CDB7300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDB7308, &qword_21BE370F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7300);
  }

  return result;
}

unint64_t sub_21BC1B08C()
{
  result = qword_27CDB7310;
  if (!qword_27CDB7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7310);
  }

  return result;
}

unint64_t sub_21BC1B0E4()
{
  result = qword_27CDB7318;
  if (!qword_27CDB7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7318);
  }

  return result;
}

unint64_t sub_21BC1B13C()
{
  result = qword_27CDB7320;
  if (!qword_27CDB7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDB7320);
  }

  return result;
}

uint64_t sub_21BC1B190()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21BE26CAC();

  return v1;
}

uint64_t sub_21BC1B204(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_21BE28D7C();
  v1[4] = sub_21BE28D6C();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_21BBCD93C;

  return sub_21BC1B450();
}

uint64_t sub_21BC1B2B4(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_21BE28D7C();
  v2[6] = sub_21BE28D6C();
  v4 = sub_21BE28D0C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_21BC1B34C, v4, v3);
}

uint64_t sub_21BC1B34C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_21BBCDD2C;

    return sub_21BBCB004();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21BC1B450()
{
  v1[17] = v0;
  v2 = type metadata accessor for ParentalControlDataItem(0);
  v1[18] = v2;
  v3 = *(v2 - 8);
  v1[19] = v3;
  v4 = *(v3 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v5 = sub_21BE26A4C();
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB9720, &unk_21BE39F00);
  v1[26] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = sub_21BE28D7C();
  v1[30] = sub_21BE28D6C();
  v11 = sub_21BE28D0C();
  v1[31] = v11;
  v1[32] = v10;

  return MEMORY[0x2822009F8](sub_21BC1B604, v11, v10);
}

uint64_t sub_21BC1B604()
{
  v1 = v0[17];
  v3 = *(v1 + qword_27CDB63F0);
  v2 = *(v1 + qword_27CDB63F0 + 8);
  v4 = type metadata accessor for FamilySignpost();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v0[33] = sub_21BC84D18(v3, v2, "computeItems", 12, 2);
  sub_21BB3A35C(v1 + qword_27CDB7330, (v0 + 2));
  v7 = swift_task_alloc();
  v0[34] = v7;
  *v7 = v0;
  v7[1] = sub_21BC1B72C;
  v8 = v0[17];

  return (sub_21BE19D18)(v0 + 2);
}

uint64_t sub_21BC1B72C(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[34];
  v9 = *v2;
  v3[35] = a1;
  v3[36] = v1;

  __swift_destroy_boxed_opaque_existential_0Tm(v3 + 2);
  v5 = v3[31];
  v6 = v3[32];
  if (v1)
  {
    v7 = sub_21BC1CC40;
  }

  else
  {
    v7 = sub_21BC1B848;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21BC1B848()
{
  v1 = v0[35];
  v2 = sub_21BE290DC();
  v0[37] = v2;
  if (v2 >> 62)
  {
    v4 = sub_21BE2951C();
    v0[38] = v4;
    if (v4)
    {
LABEL_3:
      v0[40] = MEMORY[0x277D84F90];
      v0[41] = 0;
      v5 = v0[37];
      v0[39] = v0[36];
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21CF047C0](0);
      }

      else
      {
        if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x2822009F8](v4, v5, v3);
        }

        v6 = *(v5 + 32);
      }

      v0[42] = v6;
      v0[43] = 1;
      v7 = v0[28];
      v8 = sub_21BE25D1C();
      (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
      v4 = sub_21BC1BA44;
      v5 = 0;
      v3 = 0;

      return MEMORY[0x2822009F8](v4, v5, v3);
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[38] = v4;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v9 = v0[37];
  v10 = v0[35];
  v11 = v0[33];
  v12 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v16 = v0[24];
  v15 = v0[25];
  v18 = v0[20];
  v17 = v0[21];

  sub_21BC852D8();

  v19 = v0[1];
  v20 = MEMORY[0x277D84F90];

  return v19(v20);
}

uint64_t sub_21BC1BA44()
{
  v1 = *(v0 + 232);
  *(v0 + 352) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC1BAD0, v3, v2);
}

uint64_t sub_21BC1BAD0()
{
  v1 = *(v0 + 352);

  return MEMORY[0x2822009F8](sub_21BC1BB38, 0, 0);
}

uint64_t sub_21BC1BB38()
{
  v1 = *(v0 + 232);
  *(v0 + 360) = sub_21BE28D6C();
  v3 = sub_21BE28D0C();

  return MEMORY[0x2822009F8](sub_21BC1BBC4, v3, v2);
}

uint64_t sub_21BC1BBC4()
{
  v1 = *(v0 + 360);

  swift_beginAccess();
  v2 = qword_27CDB9740;
  *(v0 + 368) = qword_27CDB9740;
  v3 = v2;

  return MEMORY[0x2822009F8](sub_21BC1BC58, 0, 0);
}