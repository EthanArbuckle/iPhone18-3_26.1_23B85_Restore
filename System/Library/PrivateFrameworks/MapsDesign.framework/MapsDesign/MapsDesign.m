uint64_t sub_213DBBCC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NavigationTray.Metrics.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for NavigationTray.Metrics(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  sub_213F4EA90();
  v6 = (a2 + v4[8]);
  sub_213F4EA90();
  *v6 = v13;
  v6[1] = v14;
  v7 = a2 + v4[9];
  sub_213F4EA90();
  *v7 = v13;
  *(v7 + 1) = v14;
  v8 = a2 + v4[10];
  sub_213F4EA90();
  *v8 = v13;
  *(v8 + 1) = v14;
  v9 = v4[6];
  type metadata accessor for NavigationTray.MetricsViewModel(0);
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);

  sub_213F4ED60();
  swift_getKeyPath();
  sub_213F4CB80();

  swift_beginAccess();
  v10 = a2 + v4[7];
  v12 = *(a1 + 16) != 1;
  sub_213F4EA90();

  *v10 = 0;
  *(v10 + 1) = v15;
  return result;
}

uint64_t sub_213DBBFBC(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_213F10A6C(&v4);
}

double NavigationTray.Metrics.body.getter@<D0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v2 = type metadata accessor for NavigationTray.Metrics(0);
  v89 = *(v2 - 8);
  v3 = *(v89 + 64);
  v4 = v2 - 8;
  v79 = v2 - 8;
  v88 = v3;
  MEMORY[0x28223BE20](v2 - 8);
  v87 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_213F4D290();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v83 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v78 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v78 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC1F0, &qword_213F63188);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v78 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC1F8, &qword_213F63190);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v78 = &v78 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC200, &qword_213F63198);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v80 = &v78 - v28;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC208, &qword_213F631A0);
  v29 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v78 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC210, &qword_213F631A8);
  v85 = *(v31 - 8);
  v86 = v31;
  v32 = *(v85 + 64);
  MEMORY[0x28223BE20](v31);
  v84 = &v78 - v33;
  *v20 = sub_213F4D8A0();
  *(v20 + 1) = 0x4020000000000000;
  v20[16] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC218, &unk_213F631B0);
  sub_213F15108(&v20[*(v34 + 44)]);
  v35 = v1 + *(v4 + 36);
  v36 = v1;
  v37 = *v35;
  v38 = *(v35 + 8);
  LOBYTE(v92) = v37;
  v93 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAC0();
  v39 = *(&v94 + 1);
  v40 = v95;
  v41 = &v20[*(v17 + 44)];
  *v41 = v94;
  *(v41 + 1) = v39;
  v41[16] = v40;
  sub_213F12A40(v15);
  sub_213F4D280();
  sub_213F4D270();
  v42 = *(v7 + 8);
  v42(v13, v6);
  v42(v15, v6);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v43 = v20;
  v44 = v78;
  sub_213DE2B44(v43, v78, &qword_27C8FC1F0, &qword_213F63188);
  v45 = (v44 + *(v22 + 44));
  v46 = v95;
  *v45 = v94;
  v45[1] = v46;
  v45[2] = v96;
  LOBYTE(v15) = sub_213F4E040();
  sub_213F12A40(v13);
  v47 = v83;
  sub_213F4D280();
  sub_213F4D270();
  v42(v47, v6);
  v42(v13, v6);
  sub_213F4CDA0();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v80;
  sub_213DE2B44(v44, v80, &qword_27C8FC1F8, &qword_213F63190);
  v57 = v56 + *(v26 + 44);
  *v57 = v15;
  *(v57 + 8) = v49;
  *(v57 + 16) = v51;
  *(v57 + 24) = v53;
  *(v57 + 32) = v55;
  *(v57 + 40) = 0;
  LOBYTE(v6) = sub_213F4E0B0();
  sub_213F12E48();
  sub_213F4CDA0();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = v81;
  sub_213DE2B44(v56, v81, &qword_27C8FC200, &qword_213F63198);
  v67 = v66 + *(v82 + 36);
  *v67 = v6;
  *(v67 + 8) = v59;
  *(v67 + 16) = v61;
  *(v67 + 24) = v63;
  *(v67 + 32) = v65;
  *(v67 + 40) = 0;
  v68 = *(v79 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC220, &qword_213F631C0);
  sub_213F4ED40();
  v69 = v92;
  swift_getKeyPath();
  v92 = v69;
  sub_213DBBCC0(&qword_281187618, type metadata accessor for NavigationTray.MetricsViewModel);
  sub_213F4CB80();

  swift_beginAccess();
  v70 = *(v69 + 16);

  v91 = v70;
  v71 = v87;
  sub_213DBCA60(v36, v87);
  v72 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v73 = swift_allocObject();
  sub_213DBCAC4(v71, v73 + v72);
  sub_213F158B4(&qword_27C8FC228, &qword_27C8FC208, &qword_213F631A0, sub_213F15884);
  sub_213DBCB28();
  v74 = v84;
  sub_213F4E810();

  sub_213DE36FC(v66, &qword_27C8FC208, &qword_213F631A0);
  v75 = v90;
  (*(v85 + 32))(v90, v74, v86);
  v76 = v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC258, &qword_213F631D0) + 36);
  result = 1.72561845e-306;
  *v76 = xmmword_213F62F30;
  *(v76 + 16) = 16;
  return result;
}

uint64_t sub_213DBC7D8()
{
  v1 = type metadata accessor for NavigationTray.Metrics(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4D3B0();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = v1[6];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC220, &qword_213F631C0);
  (*(*(v11 - 8) + 8))(&v4[v10], v11);
  v12 = *&v4[v1[7] + 8];

  v13 = *&v4[v1[8] + 8];

  v14 = *&v4[v1[9] + 8];

  v15 = *&v4[v1[10] + 8];

  return swift_deallocObject();
}

unint64_t sub_213DBC9EC()
{
  result = qword_281182540;
  if (!qword_281182540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281182540);
  }

  return result;
}

uint64_t sub_213DBCA40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_213DBCA50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_213DBCA60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationTray.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DBCAC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationTray.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213DBCB28()
{
  result = qword_281187628[0];
  if (!qword_281187628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281187628);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10MapsDesign0aB19AccessibilityStringO(uint64_t a1)
{
  if ((*(a1 + 16) & 0x1Fu) <= 0x10)
  {
    return *(a1 + 16) & 0x1F;
  }

  else
  {
    return (*a1 + 17);
  }
}

uint64_t sub_213DBCBB0(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x11)
  {
    *result = a2 - 17;
    *(result + 8) = 0;
    LOBYTE(a2) = 17;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for CarSearchBar(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D3B0();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v4 + v1[5];
  v8 = sub_213F4CB40();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = type metadata accessor for CarSearchBarViewModel(0);
  v10 = *&v7[v9[5] + 8];

  v11 = *&v7[v9[6] + 8];

  v12 = *&v7[v9[7] + 8];

  v13 = *(v4 + v1[6] + 8);

  v14 = *(v4 + v1[7] + 8);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v3 = type metadata accessor for CenteredCardHeaderContent();
  v4 = (*(*(v3 - 1) + 80) + 48) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = &v0[v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4D290();
    (*(*(v8 - 8) + 8))(&v0[v4], v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = &v7[v3[9]];
  if (*(v10 + 1))
  {

    v11 = v10[32];
    if (v11 != 255)
    {
      sub_213DD9350(*(v10 + 2), *(v10 + 3), v11);
    }

    v12 = *(v10 + 6);

    v13 = v10[72];
    if (v13 != 255)
    {
      sub_213DD9350(*(v10 + 7), *(v10 + 8), v13);
    }

    v14 = *(v10 + 11);

    v15 = v10[112];
    if (v15 != 255)
    {
      sub_213DD9350(*(v10 + 12), *(v10 + 13), v15);
    }

    v16 = *(v10 + 17);

    if (*(v10 + 18))
    {
      v17 = *(v10 + 19);
    }
  }

  if (*(v10 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v10 + 21);
  }

  v18 = &v7[v3[11]];
  v19 = *v18;

  v20 = v18[1];

  v21 = v18[3];

  v22 = &v7[v3[12]];
  v23 = *v22;

  v24 = v22[1];

  v25 = &v7[v3[13]];
  v26 = *v25;

  v27 = v25[1];

  v28 = *&v7[v3[15] + 8];

  v29 = *&v7[v3[16] + 8];

  v30 = *&v7[v3[17] + 8];

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  if (v2 != 255)
  {
    sub_213DD9350(*(v0 + 32), *(v0 + 40), v2);
  }

  v3 = *(v0 + 64);

  v4 = *(v0 + 88);
  if (v4 != 255)
  {
    sub_213DD9350(*(v0 + 72), *(v0 + 80), v4);
  }

  v5 = *(v0 + 104);

  v6 = *(v0 + 128);
  if (v6 != 255)
  {
    sub_213DD9350(*(v0 + 112), *(v0 + 120), v6);
  }

  v7 = *(v0 + 152);

  if (*(v0 + 160))
  {
    v8 = *(v0 + 168);
  }

  v9 = *(v0 + 184);

  v10 = *(v0 + 192);

  v11 = *(v0 + 208);

  v12 = *(v0 + 216);

  v13 = *(v0 + 232);

  v14 = *(v0 + 240);

  v15 = *(v0 + 264);

  v16 = *(v0 + 280);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for CategoryTile(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4CEA0();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D390();
    (*(*(v11 - 8) + 8))(&v4[v10], v11);
  }

  else
  {
    v12 = *&v4[v10];
  }

  v13 = *&v4[v1[7]];

  v14 = *&v4[v1[8] + 8];

  v15 = *&v4[v1[9] + 8];

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for CityTile();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = (v4 + *(v1 + 20));
  v8 = v7[1];

  v9 = v7[3];

  v10 = v7[5];

  __swift_destroy_boxed_opaque_existential_1(v7 + 6);
  v11 = *(v4 + *(v1 + 24) + 8);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for GridButton(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4CEA0();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D390();
    (*(*(v11 - 8) + 8))(&v4[v10], v11);
  }

  else
  {
    v12 = *&v4[v10];
  }

  v13 = v1[7];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  (*(*(v14 - 8) + 8))(&v4[v13], v14);
  v15 = *&v4[v1[8] + 8];

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for GuideTile(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4D390();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = &v4[v1[6]];
  v11 = v10[1];

  v12 = v10[4];

  v13 = v10[6];

  if (v10[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v10 + 7);
  }

  if (v10[15])
  {
    __swift_destroy_boxed_opaque_existential_1(v10 + 12);
  }

  if (v10[18])
  {

    __swift_destroy_boxed_opaque_existential_1(v10 + 20);
    __swift_destroy_boxed_opaque_existential_1(v10 + 25);
  }

  v14 = v10[30];

  v15 = *&v4[v1[7]];

  v16 = *&v4[v1[8] + 8];

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for LocationTile(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4CEA0();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = *&v4[v1[6]];

  v11 = *&v4[v1[7] + 8];

  v12 = *&v4[v1[8] + 8];

  v13 = *&v4[v1[9] + 8];

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for MapsDesignImage();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_213E053BC(*v3, *(v3 + 8));
  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
    v6 = *(v3 + v4);
  }

  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4CEA0();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
    v9 = *(v3 + v7);
  }

  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D3B0();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
    v12 = *(v3 + v10);
  }

  __swift_destroy_boxed_opaque_existential_1((v3 + v1[8]));
  v13 = (v3 + v1[12]);
  if (*v13)
  {
    v14 = v13[1];
  }

  v15 = (v3 + v1[13]);
  if (*v15)
  {
    v16 = v15[1];
  }

  v17 = *(v3 + v1[14] + 32);

  v18 = v3 + v1[15];

  v19 = *(v18 + 8);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for NoteFieldView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v1 + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA088, &qword_213F5AFD0);
  (*(*(v8 - 8) + 8))(&v4[v7], v8);
  v9 = *&v4[*(v1 + 24) + 8];

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for ColumnView() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));
  v6 = sub_213F4CB40();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = (v5 + v3[11]);
  v8 = *v7;

  v9 = v7[1];

  v10 = *(v5 + v3[12] + 8);

  v11 = *(v5 + v3[13] + 8);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for GridButtonLayout();
  v4 = v3 - 8;
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = *(*(v3 - 8) + 64);
  (*(*(v2 - 8) + 8))(v0 + v5 + *(v3 + 36), v2);
  v7 = *(v0 + v5 + *(v4 + 48) + 16);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for VerticalLayout();
  v4 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = (v0 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_213F4CEA0();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = v3[9];
  v10 = sub_213F4CB40();
  (*(*(v10 - 8) + 8))(&v6[v9], v10);
  (*(*(v2 - 8) + 8))(&v6[v3[10]], v2);
  v11 = *&v6[v3[11] + 16];

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = (v1 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_213F4D290();
    (*(*(v6 - 8) + 8))(v1 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  __swift_destroy_boxed_opaque_existential_1((v5 + *(v2 + 20)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15()
{
  v1 = type metadata accessor for AudioPickerView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4CEA0();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4D3B0();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = &v4[v1[6]];
  v11 = sub_213F4CB40();
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = *&v10[*(type metadata accessor for AudioPickerViewModel(0) + 20)];

  v13 = *&v4[v1[7] + 8];

  v14 = *&v4[v1[8] + 8];

  v15 = *&v4[v1[9] + 8];

  v16 = *&v4[v1[10] + 16];

  v17 = *&v4[v1[11] + 8];

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16()
{
  v1 = type metadata accessor for SharedTripCell(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4CEA0();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  sub_213E053BC(*&v4[v1[6]], v4[v1[6] + 8]);
  v10 = *&v4[v1[7]];

  v11 = &v4[v1[8]];
  v12 = *v11;

  v13 = *(v11 + 1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for MapsDesignMarquee();
  v4 = *(*(v3 - 1) + 64);
  v5 = v0 + ((*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80));
  v6 = v3[12];
  v7 = sub_213F4D3B0();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v5 + v3[13] + 8);

  v9 = *(v5 + v3[14] + 16);

  v10 = *(v5 + v3[15] + 8);

  v11 = v5 + v3[16];
  v12 = sub_213F4CB00();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9B8, &qword_213F65450) + 28));

  sub_213F47E54(*(v5 + v3[17]), *(v5 + v3[17] + 8), *(v5 + v3[17] + 16), *(v5 + v3[17] + 17));
  v15 = v3[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_213F4D290();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
    v17 = *(v5 + v15);
  }

  v18 = (v5 + v3[19]);
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v18 + 16);
  sub_213F47E60();

  return swift_deallocObject();
}

uint64_t NavigationTray.MetricsViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray16MetricsViewModel___observationRegistrar;
  v5 = sub_213F4CBC0();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t NavigationTray.MetricSection.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__id;
  v2 = sub_213F4CB40();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unit + 8);

  v4 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__value + 8);

  v5 = *(v0 + OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection__unitAccessibilityLabel + 8);

  v6 = OBJC_IVAR____TtCV10MapsDesign14NavigationTray13MetricSection___observationRegistrar;
  v7 = sub_213F4CBC0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_213DBEBF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0A0, &qword_213F62C60);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DBED28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0A0, &qword_213F62C60);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

unint64_t sub_213DBEE50()
{
  result = qword_281183438;
  if (!qword_281183438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC1B8, &qword_213F62ED8);
    sub_213F033CC(qword_2811876D0, _s14AccessoryWaldoVMa);
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183438);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

double sub_213DBEF78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC268, &unk_213F634A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  *&v29 = a2;
  *(&v29 + 1) = a3;
  LOBYTE(v30) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAEB0, &qword_213F5E0E0);
  sub_213F4EC40();
  v15 = v31;
  v16 = v32;
  (*(v11 + 16))(v14, a1, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  (*(v11 + 32))(v18 + v17, v14, v10);
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC270, &qword_213F634B0);
  v20 = (a5 + v19[10]);
  *v20 = sub_213DBFE50;
  v20[1] = v18;
  v21 = a5 + v19[9];
  *v21 = v15;
  v21[16] = v16;
  v31 = xmmword_213F62F10;

  sub_213F4EA90();
  v22 = v30;
  v23 = a5 + v19[11];
  *v23 = v29;
  *(v23 + 2) = v22;
  sub_213F4F050();
  *&v31 = v24;
  *(&v31 + 1) = v25;
  sub_213F4EA90();

  v26 = v30;
  v27 = a5 + v19[12];
  result = *&v29;
  *v27 = v29;
  *(v27 + 2) = v26;
  return result;
}

uint64_t sub_213DBF1F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC268, &unk_213F634A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_213DBF29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v99 = a2;
  v5 = *(a1 + 16);
  v6 = sub_213F4D400();
  v89 = *(v6 - 8);
  v7 = v89[8];
  v8 = MEMORY[0x28223BE20](v6);
  v87 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v88 = &v82 - v11;
  v12 = *(a1 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v91 = v15;
  v93 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(v5 - 1);
  v16 = *(v92 + 64);
  MEMORY[0x28223BE20](v14);
  v90 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8648, &qword_213F54650);
  v18 = sub_213F4D400();
  v83 = *(v18 - 8);
  v19 = *(v83 + 64);
  MEMORY[0x28223BE20](v18);
  v82 = &v82 - v20;
  v100 = v21;
  v22 = sub_213F4D400();
  v86 = *(v22 - 8);
  v23 = *(v86 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v85 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v84 = &v82 - v26;
  v27 = sub_213F4D290();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v82 - v33;
  v97 = v22;
  v98 = v6;
  v96 = sub_213F4DBB0();
  v95 = *(v96 - 8);
  v35 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v82 - v36;
  if ((sub_213DBFDF0(a1) & 1) != 0 && (sub_213DBBD08(v34), sub_213F4D280(), sub_213DBBCC0(&qword_2811834A8, MEMORY[0x277CDF7E8]), v37 = sub_213F4F1F0(), v38 = *(v28 + 8), v38(v32, v27), v39 = (v38)(v34, v27), (v37 & 1) == 0))
  {
    v58 = &v3[*(a1 + 40)];
    v59 = *(v58 + 1);
    v60 = v90;
    v61 = (*v58)(v39);
    v89 = &v82;
    MEMORY[0x28223BE20](v61);
    v57 = *(a1 + 24);
    *(&v82 - 4) = v5;
    *(&v82 - 3) = v57;
    *(&v82 - 2) = v3;
    sub_213F4EEE0();
    sub_213F16D38();
    v62 = v82;
    sub_213F4E710();
    (*(v92 + 8))(v60, v5);
    v63 = v93;
    (*(v12 + 16))(v93, v3, a1);
    v64 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = v5;
    *(v65 + 24) = v57;
    (*(v12 + 32))(v65 + v64, v63, a1);
    v66 = sub_213DE3AE4(&qword_2811829A0, &qword_27C8F8648, &qword_213F54650);
    v105 = v57;
    v106 = v66;
    v67 = v100;
    WitnessTable = swift_getWitnessTable();
    v69 = v85;
    sub_213F4E800();

    (*(v83 + 8))(v62, v67);
    v103 = WitnessTable;
    v70 = MEMORY[0x277CE0790];
    v104 = MEMORY[0x277CE0790];
    v71 = v97;
    v72 = swift_getWitnessTable();
    v73 = v84;
    sub_213DBFEEC(v69, v71, v72);
    v74 = *(v86 + 8);
    v74(v69, v71);
    sub_213DBFEEC(v73, v71, v72);
    v101 = v57;
    v102 = v70;
    swift_getWitnessTable();
    v55 = v94;
    sub_213E95440(v69, v71);
    v74(v69, v71);
    v74(v73, v71);
  }

  else
  {
    v40 = &v3[*(a1 + 40)];
    v41 = *(v40 + 1);
    v42 = v90;
    (*v40)();
    v43 = v93;
    (*(v12 + 16))(v93, v3, a1);
    v44 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v45 = swift_allocObject();
    v46 = *(a1 + 24);
    *(v45 + 16) = v5;
    *(v45 + 24) = v46;
    (*(v12 + 32))(v45 + v44, v43, a1);
    v47 = v87;
    sub_213F4E800();

    (*(v92 + 8))(v42, v5);
    v119 = v46;
    v48 = MEMORY[0x277CE0790];
    v120 = MEMORY[0x277CE0790];
    v49 = v98;
    v50 = swift_getWitnessTable();
    v51 = v88;
    sub_213DBFEEC(v47, v49, v50);
    v52 = v89[1];
    (v52)(v47, v49);
    sub_213DBFEEC(v51, v49, v50);
    v53 = sub_213DE3AE4(&qword_2811829A0, &qword_27C8F8648, &qword_213F54650);
    v117 = v46;
    v118 = v53;
    v115 = swift_getWitnessTable();
    v116 = v48;
    v54 = v97;
    swift_getWitnessTable();
    v55 = v94;
    sub_213DBFF2C(v47, v54, v49);
    v56 = v47;
    v57 = v46;
    (v52)(v56, v49);
    (v52)(v51, v49);
  }

  v75 = sub_213DE3AE4(&qword_2811829A0, &qword_27C8F8648, &qword_213F54650);
  v113 = v57;
  v114 = v75;
  v111 = swift_getWitnessTable();
  v76 = MEMORY[0x277CE0790];
  v112 = MEMORY[0x277CE0790];
  v77 = swift_getWitnessTable();
  v109 = v57;
  v110 = v76;
  v78 = swift_getWitnessTable();
  v107 = v77;
  v108 = v78;
  v79 = v96;
  v80 = swift_getWitnessTable();
  sub_213DBFEEC(v55, v79, v80);
  return (*(v95 + 8))(v55, v79);
}

uint64_t sub_213DBFDF0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v8 = v3;
  v9 = v4;
  v10 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FAEB0, &qword_213F5E0E0);
  MEMORY[0x216052020](&v7, v5);
  return v7;
}

uint64_t sub_213DBFE50@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC268, &unk_213F634A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_213DBFF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_213F4DB90();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_213F4DBA0();
}

uint64_t sub_213DC0028(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for ShimmeringView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_213DC00D8(uint64_t a1)
{
  v2 = type metadata accessor for ShimmeringView();
  v3 = (a1 + *(v2 + 44));
  v8 = *(v3 + 2);
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC350, &unk_213F636E0);
  sub_213F4EAB0();
  sub_213F4F050();
  v4 = (a1 + *(v2 + 48));
  v7 = *v4;
  v9 = *(v4 + 2);
  return sub_213F4EAB0();
}

uint64_t sub_213DC018C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213DC01AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_213DC01D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213DC01F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_213DC02C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_213F4F250();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_213DC0364(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_213DDE350(v2, v3);
}

uint64_t sub_213DC03E0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_213DDF300(&v4);
}

uint64_t sub_213DC04A4()
{
  v1 = (type metadata accessor for CarButtonCircleStyle(0) - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = *(v3 + 2);

  v6 = v1[8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  v8 = *(*(v7 - 8) + 8);
  v8(&v3[v6], v7);
  v8(&v3[v1[9]], v7);
  v9 = *&v3[v1[10] + 8];

  return swift_deallocObject();
}

uint64_t sub_213DC05DC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_213DC0644@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27C8F7968;
  return result;
}

uint64_t sub_213DC0690(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27C8F7968 = v1;
  return result;
}

uint64_t sub_213DC06E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7970, &qword_213F51B20);
  sub_213DE416C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213DC0744(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_213F4D400();
  sub_213DE426C();
  return swift_getWitnessTable();
}

uint64_t sub_213DC07D0()
{
  v1 = type metadata accessor for CarGrabber();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4CEA0();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v4 + *(v1 + 20) + 8);

  v8 = *(v4 + *(v1 + 24) + 8);

  return swift_deallocObject();
}

uint64_t sub_213DC0904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A50, &qword_213F51D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213DC096C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DC0A34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DC0B00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_213DE5D6C(v2, v3);
}

uint64_t sub_213DC0B44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_213DE6218(v2, v3);
}

uint64_t sub_213DC0C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DC0CE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DC0DA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DC0E14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_213F4D710();
  *a1 = result;
  return result;
}

uint64_t sub_213DC0E40(uint64_t *a1)
{
  v1 = *a1;

  return sub_213F4D720();
}

uint64_t sub_213DC0E6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_213F4D6D0();
  *a1 = result;
  return result;
}

uint64_t sub_213DC0EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D48, &qword_213F52560);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213DC0FA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D48, &qword_213F52560);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213DC1058()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7D20, &qword_213F523B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F7D18, &qword_213F523B0);
  sub_213DEEA04();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213DC1128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DC11E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_213F4CB40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DC12A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CarSearchBarViewModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DC13BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for CarSearchBarViewModel(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DC14E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7EA0, &qword_213F529A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DC155C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213DC1618(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213DC16C8()
{
  v1 = (type metadata accessor for CardButton() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = *(v3 + 104);

  v7 = *(v3 + 120);

  v8 = *(v3 + 136);

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_213F4D290();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
    v11 = *(v3 + v9);
  }

  return swift_deallocObject();
}

uint64_t sub_213DC180C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_213F4D790();
  *a1 = result & 1;
  return result;
}

uint64_t sub_213DC1880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D48, &qword_213F52560);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213DC193C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D48, &qword_213F52560);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213DC1A48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8150, &qword_213F53580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DC1AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8150, &qword_213F53580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213DC1B20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DC1B58()
{
  v1 = type metadata accessor for CardHeaderText();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 32);
  if (v5 != 255)
  {
    sub_213DD9350(*(v3 + 16), *(v3 + 24), v5);
  }

  v6 = *(v3 + 48);

  v7 = *(v3 + 72);
  if (v7 != 255)
  {
    sub_213DD9350(*(v3 + 56), *(v3 + 64), v7);
  }

  v8 = *(v3 + 88);

  v9 = *(v3 + 112);
  if (v9 != 255)
  {
    sub_213DD9350(*(v3 + 96), *(v3 + 104), v9);
  }

  v10 = *(v3 + 136);

  if (*(v3 + 144))
  {
    v11 = *(v3 + 152);
  }

  v12 = v1[8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D48, &qword_213F52560);
  v14 = *(*(v13 - 8) + 8);
  v14(v3 + v12, v13);
  v14(v3 + v1[9], v13);
  v14(v3 + v1[10], v13);

  return swift_deallocObject();
}

uint64_t sub_213DC1CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F82D0, &qword_213F53778);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213DC1D64()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  return swift_deallocObject();
}

uint64_t sub_213DC1DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DC1E8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DC1F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8438, &unk_213F53C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DC1FDC()
{

  return swift_deallocObject();
}

uint64_t sub_213DC2014()
{
  v1 = type metadata accessor for CoverPhotoCardOrnament(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v4 + *(v1 + 20));

  v8 = *(v4 + *(v1 + 28) + 8);

  return swift_deallocObject();
}

uint64_t sub_213DC2148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DC2214(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DC22DC(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F84A0, &qword_213F53D28);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F84A8, &qword_213F53D30);
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  sub_213F4D400();
  swift_getWitnessTable();
  sub_213DD9674();
  return swift_getWitnessTable();
}

uint64_t sub_213DC24DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213DC2554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213DC264C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8850, &qword_213F55508);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DC26BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8850, &qword_213F55508);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213DC2730@<X0>(uint64_t a1@<X8>)
{
  result = sub_213F4D7B0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_213DC2764(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_213F4D7C0();
}

uint64_t sub_213DC2830()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DC2870()
{
  v1 = type metadata accessor for LeadingCardHeader(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v4 + *(v1 + 20);
  v8 = *(v7 + 1);

  v9 = v7[32];
  if (v9 != 255)
  {
    sub_213DD9350(*(v7 + 2), *(v7 + 3), v9);
  }

  v10 = *(v7 + 6);

  v11 = *(v7 + 8);

  v12 = *(v7 + 10);

  if (*(v7 + 15))
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + 12);
  }

  v13 = *(v7 + 17);

  v14 = *(v7 + 18);

  v15 = (v4 + *(v1 + 24));
  if (*v15)
  {
    v16 = v15[1];
  }

  return swift_deallocObject();
}

uint64_t sub_213DC2A38()
{

  return swift_deallocObject();
}

uint64_t sub_213DC2A70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DC2AA8()
{
  sub_213E14680(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_213DC2B08(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_213E15B2C(&v4);
}

uint64_t sub_213DC2BD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_213E16F34(v4);
}

uint64_t sub_213DC2D74@<X0>(_BYTE *a1@<X8>)
{
  sub_213E2785C();
  result = sub_213F4D800();
  *a1 = v3;
  return result;
}

uint64_t sub_213DC2DC4(char *a1)
{
  v2 = *a1;
  sub_213E2785C();
  return sub_213F4D810();
}

uint64_t sub_213DC2E10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DC2E90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + a2 - 16);
  v5 = *(a1 + a2 - 8);
  result = UIMutableTraits.shouldShowActionBar.getter();
  *a3 = result & 1;
  return result;
}

uint64_t sub_213DC2EC8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  return UIMutableTraits.shouldShowActionBar.setter();
}

__n128 sub_213DC2F04(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_213DC2F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D38, &qword_213F578A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CD0, &qword_213F56720);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DC3034(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D38, &qword_213F578A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CD0, &qword_213F56720);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DC3154(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D60, &unk_213F56AB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_213DC3210(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D60, &unk_213F56AB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213DC32C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ActionBarModifier(255);
  sub_213F4D400();
  sub_213E1575C(&qword_27C8F8DB8, type metadata accessor for ActionBarModifier);
  return swift_getWitnessTable();
}

uint64_t sub_213DC33A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_213F4CB40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213DC3450(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_213F4CB40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213DC34F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DC35BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DC3680()
{
  v1 = type metadata accessor for ActionBarItem(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 24);

  v5 = *(v0 + 40);

  v6 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_213F4D290();
    (*(*(v7 - 8) + 8))(v0 + v2, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v6 + *(v1 + 20));

  v10 = *(v6 + *(v1 + 24) + 8);

  return swift_deallocObject();
}

uint64_t sub_213DC37C0()
{
  v1 = type metadata accessor for ActionBarItem(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 24);

  v5 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_213F4D290();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20));

  v9 = *(v5 + *(v1 + 24) + 8);

  return swift_deallocObject();
}

uint64_t sub_213DC38F8()
{
  v1 = type metadata accessor for ActionBarItem(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v4 + *(v1 + 20));

  v9 = *(v4 + *(v1 + 24) + 8);

  v10 = *(v0 + v7 + 8);

  v11 = *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_213DC3AAC()
{
  v1 = type metadata accessor for ActionBarModifier(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
    if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
    {
      v6 = *v4;

      v7 = *(v4 + 1);

      v8 = *(v5 + 32);
      v9 = sub_213F4EDA0();
      (*(*(v9 - 8) + 8))(&v4[v8], v9);
    }
  }

  else
  {
    v10 = *v4;
  }

  v11 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_213E053BC(*&v4[v1[5]], v4[v1[5] + 8]);
  v12 = v1[6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CD0, &qword_213F56720);
  (*(*(v13 - 8) + 8))(&v4[v12], v13);
  v14 = *&v4[v1[7] + 8];

  v15 = *(v0 + v11);

  return swift_deallocObject();
}

uint64_t sub_213DC3CB0()
{
  v1 = type metadata accessor for ActionBarModifier(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
    if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
    {
      v6 = *v4;

      v7 = *(v4 + 1);

      v8 = *(v5 + 32);
      v9 = sub_213F4EDA0();
      (*(*(v9 - 8) + 8))(&v4[v8], v9);
    }
  }

  else
  {
    v10 = *v4;
  }

  sub_213E053BC(*&v4[v1[5]], v4[v1[5] + 8]);
  v11 = v1[6];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8CD0, &qword_213F56720);
  (*(*(v12 - 8) + 8))(&v4[v11], v12);
  v13 = *&v4[v1[7] + 8];

  return swift_deallocObject();
}

uint64_t sub_213DC3F04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_213DC407C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DC41F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9198, &qword_213F570D0);
  sub_213DE3AE4(&qword_27C8F91D0, &qword_27C8F9198, &qword_213F570D0);
  sub_213E2EE14();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213DC429C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9208, &qword_213F57228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DC430C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9208, &qword_213F57228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213DC43A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9378, &qword_213F57818);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DC4414(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9378, &qword_213F57818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213DC447C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  if (*(v0 + 64) >= 2uLL)
  {
  }

  sub_213DD9350(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  }

  return swift_deallocObject();
}

uint64_t sub_213DC4514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D38, &qword_213F578A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_213DC4650(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8D38, &qword_213F578A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213DC478C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DC4850()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for CellButton();
  v4 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = v0[5];

  v7 = (v0 + v4);
  if (*(v0 + v4))
  {
    v8 = v7[1];
  }

  v9 = v7[3];

  if (v7[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v7 + 4);
  }

  v10 = v7[11];

  v11 = v7[14];

  v12 = v7 + *(v3 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8C80, &qword_213F57940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8FC8, &qword_213F61200);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      v14 = *v12;

      v15 = *(v12 + 1);

      v16 = *(v13 + 32);
      v17 = sub_213F4EDA0();
      (*(*(v17 - 8) + 8))(&v12[v16], v17);
    }
  }

  else
  {
    v18 = *v12;
  }

  v19 = *(v3 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_213F4D290();
    (*(*(v20 - 8) + 8))(v7 + v19, v20);
  }

  else
  {
    v21 = *(v7 + v19);
  }

  return swift_deallocObject();
}

uint64_t sub_213DC4A8C(uint64_t *a1)
{
  v3 = a1[1];
  v2 = *a1;
  sub_213F4EB20();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  sub_213F4D400();
  swift_getWitnessTable();
  sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  sub_213F4D450();
  swift_getOpaqueTypeConformance2();
  sub_213E37C44();
  swift_getWitnessTable();
  sub_213E38728(&qword_281182C78, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D0, &unk_213F5A1B0);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9000, &qword_213F56ED0);
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D8, &qword_213F57938);
  sub_213F4D400();
  sub_213F4DBB0();
  sub_213E37C98();
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_213DE3AE4(&qword_281182848, &qword_27C8F9000, &qword_213F56ED0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213E37CEC();
  swift_getWitnessTable();
  type metadata accessor for BackgroundUIView();
  sub_213F4D400();
  swift_getWitnessTable();
  type metadata accessor for BackgroundUIView();
  sub_213F4DBB0();
  sub_213F4DBB0();
  sub_213F4E9C0();
  sub_213F4DF60();
  sub_213F4D400();
  swift_getOpaqueTypeConformance2();
  sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213E38728(&qword_281182838, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_213F4DBB0();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_213DC524C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DC5318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DC53E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9408, &qword_213F57BF8);
  sub_213DE3AE4(&qword_281182760, &qword_27C8F9408, &qword_213F57BF8);
  sub_213E2EE14();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213DC54B0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[7])
  {
    v1 = v0[8];
  }

  return swift_deallocObject();
}

uint64_t sub_213DC5528()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9508, &qword_213F58070);
  sub_213DE3AE4(&qword_27C8F9520, &qword_27C8F9508, &qword_213F58070);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213DC55F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9570, &qword_213F583D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DC5670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DC5730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_213F4CB40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DC57EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FadingLabelViewModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DC5904(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for FadingLabelViewModel(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DC5A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9668, &qword_213F58660);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_213DC5B98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9668, &qword_213F58660);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_213DC5D00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9698, &qword_213F587A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DC5D70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DC5DE8()
{
  v1 = type metadata accessor for FilterBarButton(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4CEA0();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  sub_213E053BC(*(v4 + v1[5]), *(v4 + v1[5] + 8));
  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4D290();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  else
  {
    v9 = *(v4 + v7);
  }

  v10 = (v4 + v1[7]);
  v11 = v10[1];

  v12 = v10[3];

  v13 = v10[5];

  v14 = v10[8];

  v15 = v10[10];

  v16 = v10[11];

  v17 = (v4 + v1[9]);
  if (*v17)
  {
    v18 = v17[1];
  }

  v19 = v1[10];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D48, &qword_213F52560);
  v21 = *(*(v20 - 8) + 8);
  v21(v4 + v19, v20);
  v21(v4 + v1[11], v20);

  return swift_deallocObject();
}

uint64_t sub_213DC6044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_213F4CA10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213DC60F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_213F4CA10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213DC6194(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D48, &qword_213F52560);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_213DC6330(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7D48, &qword_213F52560);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_213DC64CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97B0, &qword_213F589F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_213DC6608(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97B0, &qword_213F589F0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213DC67D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_213DC6810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9788, &qword_213F589D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DC6880()
{
  v1 = (type metadata accessor for FilterBar(0) - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = *(v3 + 2);

  v6 = *(v3 + 5);

  v7 = &v3[v1[9]];
  v8 = sub_213F4D2F0();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F97B0, &qword_213F589F0) + 28)];

  v10 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
    (*(*(v11 - 8) + 8))(&v3[v10], v11);
  }

  else
  {
    v12 = *&v3[v10];
  }

  return swift_deallocObject();
}

uint64_t sub_213DC6A20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_213E469FC(v2, v3);
}

uint64_t sub_213DC6A9C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_213E477F0(&v4);
}

uint64_t sub_213DC6AD8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_213E47CA4(&v4);
}

uint64_t sub_213DC6B40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_213E485F0(v4);
}

uint64_t sub_213DC6C28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_213DC6DF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DC6FC0()
{
  v1 = type metadata accessor for GridButton(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4CEA0();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D390();
    (*(*(v11 - 8) + 8))(&v4[v10], v11);
  }

  else
  {
    v12 = *&v4[v10];
  }

  v13 = v1[7];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9838, &qword_213F58FF0);
  (*(*(v14 - 8) + 8))(&v4[v13], v14);
  v15 = *&v4[v1[8] + 8];

  return swift_deallocObject();
}

uint64_t sub_213DC7248()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  if (v0[8])
  {
    v1 = v0[9];
  }

  return swift_deallocObject();
}

uint64_t sub_213DC72C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DC73F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DC7518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DC7640(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DC7764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DC7830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DC7900()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_213DC7938@<X0>(_BYTE *a1@<X8>)
{
  result = sub_213F4D6F0();
  *a1 = result;
  return result;
}

uint64_t sub_213DC798C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9AE8, &qword_213F59E48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DC7A10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  if (*(v0 + 64) >= 2uLL)
  {
  }

  sub_213DD9350(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_213DC7A7C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x216050B30]();
  *a1 = result;
  return result;
}

uint64_t sub_213DC7AA8(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x216050B40](v2);
}

uint64_t sub_213DC7B68@<X0>(_BYTE *a1@<X8>)
{
  sub_213E38388();
  result = sub_213F4D820();
  *a1 = v3;
  return result;
}

uint64_t sub_213DC7BB8(char *a1)
{
  v2 = *a1;
  sub_213E38388();
  return sub_213F4D830();
}

uint64_t sub_213DC7C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DC7D44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DC7E64()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9DE8, &qword_213F5A4B8);
  sub_213DE3AE4(&qword_27C8F9E20, &qword_27C8F9DE8, &qword_213F5A4B8);
  sub_213E2EE14();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213DC7F40@<X0>(void *a1@<X8>)
{
  result = sub_213F4D5D0();
  *a1 = v3;
  return result;
}

uint64_t sub_213DC7FAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MapsDesignImage() + 48));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;

  return sub_213DD74C4(v4);
}

uint64_t sub_213DC800C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_7;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[8] + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DC8184(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 24) = (a2 - 1);
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[7];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

uint64_t sub_213DC82F8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9F50, &qword_213F5A8E0);
  sub_213F4CEA0();
  sub_213E64E38();
  sub_213E65060();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213DC837C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DC83F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FB0, &qword_213F5AC98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DC8460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FB0, &qword_213F5AC98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213DC84C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DC8500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DC85CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DC8698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9FE8, &qword_213F5ACB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DC876C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_213E6A4FC(&v4);
}

uint64_t sub_213DC87B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA088, &qword_213F5AFD0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_213DC88E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA088, &qword_213F5AFD0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DC8A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA150, &qword_213F5B220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DC8A88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA120, &unk_213F5B1F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DC8B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DC8BD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DC8CBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DC8D14()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[7])
  {
    v1 = v0[8];
  }

  return swift_deallocObject();
}

uint64_t sub_213DC8D9C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[7])
  {
    v1 = v0[8];
  }

  return swift_deallocObject();
}

uint64_t sub_213DC8E10()
{
  v1 = type metadata accessor for RecentSearchCell();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D390();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  (*(*(v8 - 8) + 8))(&v4[v7], v8);
  __swift_destroy_boxed_opaque_existential_1(&v4[v1[6]]);
  v9 = &v4[v1[7]];
  if (*v9)
  {
    v10 = *(v9 + 1);
  }

  return swift_deallocObject();
}

uint64_t sub_213DC8FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DC90CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DC9248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_213F4CA10();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_213DC9364(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_213F4CB40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_213F4CA10();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DC94B4()
{
  v1 = type metadata accessor for MultiTextView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D390();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4D290();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  __swift_destroy_boxed_opaque_existential_1(&v4[*(v1 + 24)]);

  return swift_deallocObject();
}

uint64_t sub_213DC9670(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[11]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_213DC97E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DC9970()
{
  v1 = type metadata accessor for RichTextView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D390();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4D290();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D3B0();
    (*(*(v11 - 8) + 8))(&v4[v10], v11);
  }

  else
  {
    v12 = *&v4[v10];
  }

  sub_213E053BC(*&v4[v1[7]], v4[v1[7] + 8]);
  sub_213E053BC(*&v4[v1[8]], v4[v1[8] + 8]);
  v13 = &v4[v1[10]];
  if (v13[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v14 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *&v4[v1[11]];

  sub_213DBCA40(*(v0 + v14), *(v0 + v14 + 8), *(v0 + v14 + 16));
  v16 = *(v0 + v14 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DC9BD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DC9C10()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_213DC9CB0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  if (v0[8])
  {
    v1 = v0[9];
  }

  return swift_deallocObject();
}

uint64_t sub_213DC9D20()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  if (v0[8])
  {
    v1 = v0[9];
  }

  return swift_deallocObject();
}

uint64_t sub_213DC9DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DC9E6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_213F4CB40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DC9F28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = type metadata accessor for SectionHeaderViewModel(0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_213DCA0F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for SectionHeaderViewModel(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DCA2BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DCA318()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  if (v0[8])
  {
    v1 = v0[9];
  }

  return swift_deallocObject();
}

uint64_t sub_213DCA38C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_213E8ACBC(v2, v3);
}

uint64_t sub_213DCA404()
{
  v1 = type metadata accessor for TagView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4CEA0();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = *&v4[v1[6]];

  v11 = *&v4[v1[7] + 8];

  return swift_deallocObject();
}

uint64_t sub_213DCA5AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA7D0, &qword_213F5D3C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213DCA614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FA7E0, &qword_213F5D3D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DCA684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DCA7A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DCA8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DCA9A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DCAA64()
{
  v1 = type metadata accessor for ActionButtonLayout();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v4 + *(v1 + 20));

  v8 = *(v4 + *(v1 + 24) + 8);

  return swift_deallocObject();
}

uint64_t sub_213DCAB94()
{
  v1 = type metadata accessor for ActionButtonLayout();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v4 + *(v1 + 20));

  v9 = *(v4 + *(v1 + 24) + 8);

  v10 = *(v0 + v7 + 8);

  v11 = *(v0 + v7 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DCAD00(uint64_t a1, uint64_t a2)
{
  v4 = sub_213F4CB40();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213DCAD6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_213F4CB40();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213DCADDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ColumnViewConfig();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DCAE9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ColumnViewConfig();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DCAF58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA3C0, &qword_213F5D780);
  sub_213F4D400();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_213F4EB50();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_213F4EB50();
  sub_213F4DBB0();
  sub_213E800BC();
  sub_213F4ECE0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4CE30();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_213F4CE40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_213F4DFB0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_213F4CE40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_213F4D490();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  sub_213F4D400();
  swift_getWitnessTable();
  sub_213E37C44();
  return swift_getWitnessTable();
}

uint64_t sub_213DCB4F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_213F4D430();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = (type metadata accessor for ColumnView() - 8);
  v8 = (v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  v9 = *(*v7 + 64);
  (*(v4 + 8))(v0 + v5, v3);
  v10 = sub_213F4CB40();
  (*(*(v10 - 8) + 8))(v0 + v8, v10);
  v11 = (v0 + v8 + v7[11]);
  v12 = *v11;

  v13 = v11[1];

  v14 = *(v0 + v8 + v7[12] + 8);

  v15 = *(v0 + v8 + v7[13] + 8);

  return swift_deallocObject();
}

uint64_t sub_213DCB6B0(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA8F0, &unk_213F5D8A0);
  sub_213DE3AE4(&qword_2811825C0, &qword_27C8FA8F0, &unk_213F5D8A0);
  sub_213F4DD80();
  sub_213F4E9C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96F8, &qword_213F587F8);
  sub_213F4D400();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213DE3AE4(&qword_281182910, &qword_27C8F96F8, &qword_213F587F8);
  return swift_getWitnessTable();
}

uint64_t sub_213DCB81C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for GridButtonLayout() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = sub_213F4D960();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = v0 + v4;
  (*(*(v2 - 8) + 8))(v10 + v3[11], v2);
  v11 = *(v10 + v3[12] + 16);

  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_213DCB99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213DCBA68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_213F4CB40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 1;
  }

  return result;
}

uint64_t sub_213DCBB28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for DefaultLayout();
  type metadata accessor for ComposeLayout();
  sub_213F4DBB0();
  type metadata accessor for ShelfLayout();
  type metadata accessor for StackLayout();
  sub_213F4DBB0();
  sub_213F4DBB0();
  type metadata accessor for VerticalLayout();
  sub_213F4DBB0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_213DCBD30()
{
  v1 = sub_213F4D960();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_213DCBDB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DCBDF0()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = (type metadata accessor for ComposeLayout() - 8);
  v4 = (*(*v3 + 80) + 40) & ~*(*v3 + 80);
  v5 = *(*v3 + 64);
  v6 = *(v0 + 4);

  v7 = sub_213F4CB40();
  (*(*(v7 - 8) + 8))(&v0[v4], v7);
  (*(*(v2 - 8) + 8))(&v0[v4 + v3[11]], v2);
  v8 = *&v0[v4 + 16 + v3[13]];

  v9 = *&v0[v4 + 16 + v3[14]];

  v10 = *&v0[v4 + 8 + v3[15]];

  v11 = *&v0[v4 + v3[16]];

  v12 = *&v0[v4 + v3[17]];

  return swift_deallocObject();
}

uint64_t sub_213DCBF60()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_213DCBFA0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for ShelfLayout();
  v4 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = (v0 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_213F4D290();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v3[9];
  v11 = sub_213F4CB40();
  (*(*(v11 - 8) + 8))(&v6[v10], v11);
  (*(*(v2 - 8) + 8))(&v6[v3[10]], v2);
  v12 = *&v6[v3[11]];

  v13 = *&v6[v3[12] + 16];

  v14 = *&v6[v3[13] + 8];

  v15 = *&v6[v3[14] + 16];

  v16 = *&v6[v3[15] + 8];

  v17 = *(v0 + v9);

  return swift_deallocObject();
}

uint64_t sub_213DCC198()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for StackLayout() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = sub_213F4CB40();
  (*(*(v7 - 8) + 8))(v6, v7);
  (*(*(v2 - 8) + 8))(v6 + v3[11], v2);
  v8 = *(v6 + v3[12]);

  v9 = *(v6 + v3[13] + 16);

  v10 = *(v6 + v3[14] + 16);

  v11 = *(v6 + v3[15] + 16);

  v12 = *(v6 + v3[16] + 8);

  v13 = *(v0 + v5);

  return swift_deallocObject();
}

uint64_t sub_213DCC320(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAB98, &qword_213F5DE18);
  sub_213EA81A4();
  sub_213F4DD80();
  sub_213F4E9C0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4CE40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96F8, &qword_213F587F8);
  sub_213F4D400();
  swift_getOpaqueTypeConformance2();
  sub_213DE3AE4(&qword_281182910, &qword_27C8F96F8, &qword_213F587F8);
  return swift_getWitnessTable();
}

uint64_t sub_213DCC51C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FABB0, &qword_213F5DE20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FABB8, &qword_213F5DE28);
  sub_213EA82F8();
  swift_getOpaqueTypeConformance2();
  sub_213F4DD80();
  sub_213F4E9C0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4CE40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_213F4DFB0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96F8, &qword_213F587F8);
  sub_213F4D400();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  sub_213F4D400();
  swift_getWitnessTable();
  sub_213E37C44();
  return swift_getWitnessTable();
}

uint64_t sub_213DCC8A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAC60, &qword_213F5DEC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAC68, &qword_213F5DED0);
  sub_213EA8DD0();
  swift_getOpaqueTypeConformance2();
  sub_213F4DD80();
  sub_213F4E9C0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4CE40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_213F4DFB0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96F8, &qword_213F587F8);
  sub_213F4D400();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  sub_213F4D400();
  swift_getWitnessTable();
  sub_213E37C44();
  return swift_getWitnessTable();
}

uint64_t sub_213DCCC24(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAD40, &qword_213F5DF98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAD48, &qword_213F5DFA0);
  sub_213EAADEC();
  swift_getOpaqueTypeConformance2();
  sub_213F4DD80();
  sub_213F4E9C0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4CE40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_213F4DFB0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96F8, &qword_213F587F8);
  sub_213F4D400();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  sub_213F4D400();
  swift_getWitnessTable();
  sub_213E37C44();
  return swift_getWitnessTable();
}

uint64_t sub_213DCCFA8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FADF8, &qword_213F5E040);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAE00, &qword_213F5E048);
  sub_213EAB314();
  swift_getOpaqueTypeConformance2();
  sub_213F4DD80();
  sub_213F4E9C0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4CE40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_213F4DFB0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F96F8, &qword_213F587F8);
  sub_213F4D400();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  sub_213F4D400();
  swift_getWitnessTable();
  sub_213E37C44();
  return swift_getWitnessTable();
}

uint64_t sub_213DCD330()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_213DCD3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 100));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DCD4B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 100)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DCD574()
{
  v13 = *(v0 + 1);
  v14 = *(v0 + 2);
  v15 = *(v0 + 3);
  v16 = *(v0 + 4);
  v1 = type metadata accessor for ListCellLayout();
  v2 = (*(*(v1 - 1) + 80) + 80) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = &v0[v2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F9190, &qword_213F58FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D390();
    (*(*(v5 - 8) + 8))(&v0[v2], v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *&v4[v1[25] + 8];

  v8 = *&v4[v1[26] + 8];

  v9 = *&v4[v1[27] + 8];

  v10 = *&v4[v1[28] + 8];

  v11 = *&v4[v1[29] + 16];

  return swift_deallocObject();
}

uint64_t sub_213DCD6E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  sub_213F4D400();
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAF90, &qword_213F5E380);
  sub_213F4D400();
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  sub_213F4D400();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4DBB0();
  sub_213F4E9C0();
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  sub_213F4D400();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930);
  return swift_getWitnessTable();
}

uint64_t sub_213DCDA20(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAFA0, &qword_213F5E3C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FAFA8, &qword_213F5E3C8);
  sub_213EB1FF8();
  sub_213F4DD80();
  sub_213F4E9C0();
  sub_213DE3AE4(&qword_27C8FAFB8, &qword_27C8FAFA0, &qword_213F5E3C0);
  sub_213F4D1F0();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8F90, &qword_213F57930);
  sub_213F4D400();
  sub_213DE3AE4(qword_27C8FAFC0, &qword_27C8FAFA0, &qword_213F5E3C0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213E5A778();
  swift_getWitnessTable();
  sub_213DE3AE4(&qword_281182968, &qword_27C8F8F90, &qword_213F57930);
  return swift_getWitnessTable();
}

uint64_t sub_213DCDCBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213DCDD34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213DCDDD4()
{
  v1 = *(type metadata accessor for TagFlow() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_213F4D290();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
    v5 = *(v0 + v2);
  }

  return swift_deallocObject();
}

uint64_t sub_213DCDED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (((2 * v10) & 0x7C) != 0)
    {
      return 128 - ((2 * v10) & 0x7C | (v10 >> 6));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213DCDFA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_213F4CB40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = a1 + *(a4 + 20);
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
  }

  return result;
}

uint64_t sub_213DCE074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BottomAccessoryViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213DCE0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BottomAccessoryViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213DCE16C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DCE238(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DCE300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DCE424(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DCE548()
{
  v1 = type metadata accessor for NoteBottomAccessory(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v4 + *(v1 + 20);
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = v7[16];
  sub_213EB8B1C();
  v11 = *(v4 + *(v1 + 24) + 8);

  return swift_deallocObject();
}

uint64_t sub_213DCE698()
{
  v1 = type metadata accessor for PhotosBottomAccessory(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v4 + *(v1 + 20);
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_213EB8B1C();
  v12 = *(v4 + *(v1 + 24));

  v13 = *(v0 + v7 + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + v7 + 16));

  return swift_deallocObject();
}

uint64_t sub_213DCE7FC()
{
  v1 = type metadata accessor for RefinementBottomAccessory(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4CEA0();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = &v4[v1[6]];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = v10[16];
  sub_213EB8B1C();
  v14 = *&v4[v1[7]];

  v15 = *&v4[v1[8]];

  return swift_deallocObject();
}

uint64_t sub_213DCE9B4()
{
  v1 = type metadata accessor for RefinementBottomAccessory(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4CEA0();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = &v4[v1[6]];
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = v11[16];
  sub_213EB8B1C();
  v15 = *&v4[v1[7]];

  v16 = *&v4[v1[8]];

  v17 = *(v0 + v10 + 8);

  v18 = *(v0 + v10 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DCEC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_213DCED68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_213F4CB40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ContextLineAccessoryViewModel.ContextLineAccessoryType(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_213DCEE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextLineAccessoryViewModel(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213DCEED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextLineAccessoryViewModel(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213DCEF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DCF0C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DCF1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_213DCF2B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DCF380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4CA10();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213DCF44C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_213F4CA10();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_213DCF504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4CA10();
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

uint64_t sub_213DCF5C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_213F4CA10();
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

uint64_t sub_213DCF67C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_213EB8B1C();
  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  sub_213EB8F2C(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_213DCF6F0()
{
  v1 = (type metadata accessor for FeaturedInGuideContextLineAccessory(0) - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  sub_213EB8B1C();
  v7 = v1[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  v9 = *(*(v8 - 8) + 8);
  v9(v3 + v7, v8);
  v9(v3 + v1[8], v8);
  v9(v3 + v1[9], v8);
  __swift_destroy_boxed_opaque_existential_1((v3 + v1[10]));
  v10 = *(v3 + v1[11]);

  return swift_deallocObject();
}

uint64_t sub_213DCF858()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_213EB8B1C();
  v4 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_213DCF9FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_213F4EB20();

  return swift_getWitnessTable();
}

uint64_t sub_213DCFA94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

double sub_213DCFB1C@<D0>(_OWORD *a1@<X8>)
{
  sub_213EC3F40();
  sub_213F4D820();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_213DCFBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_213DCFCE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 24) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DCFE14()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v1 = v0[7];

  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  }

  return swift_deallocObject();
}

uint64_t sub_213DCFE84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FB4F0, &qword_213F5FF28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DCFF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 104);
    if (v10 > 4)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213DCFFCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_213F4CB40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 104) = -a2;
  }

  return result;
}

uint64_t sub_213DD0088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for LeadingAccessoryViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_213DD01E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for LeadingAccessoryViewModel(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_213DD0534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DD065C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DD0B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    if (v10 > 6)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213DD0BD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_213F4CB40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 40) = -a2;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SbIegy_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_213DD0CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for TrailingAccessoryViewModel(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_213DD0E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F91E8, &qword_213F592A0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for TrailingAccessoryViewModel(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_213DD0F84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DD0FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_213DD10E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DD1204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DD132C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DD1450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 3)
      {
        return v14 - 2;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_213DD1570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DD1690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
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

uint64_t sub_213DD1758(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
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

uint64_t sub_213DD181C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_213DD18EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DD19BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_213EB8B1C();
  v4 = *(v0 + 48);

  sub_213EB8F2C(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

uint64_t sub_213DD1A24()
{
  v1 = type metadata accessor for ActionTrailingAccessory(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4CEA0();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = &v4[v1[6]];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = v10[16];
  sub_213EB8B1C();
  v14 = *&v4[v1[7] + 8];

  v15 = *&v4[v1[8] + 8];

  sub_213EB8F2C(*&v4[v1[9]], *&v4[v1[9] + 8], v4[v1[9] + 16]);

  return swift_deallocObject();
}

uint64_t sub_213DD1C00()
{
  v1 = type metadata accessor for ButtonTrailingAccessory(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  sub_213EB8B1C();
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4D290();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
    v9 = *(v3 + v7);
  }

  v10 = *(v3 + v1[6] + 8);

  sub_213EB8F2C(*(v3 + v1[7]), *(v3 + v1[7] + 8), *(v3 + v1[7] + 16));

  return swift_deallocObject();
}

uint64_t sub_213DD1D58()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  if (*(v0 + 64) >= 2uLL)
  {
  }

  sub_213DD9350(*(v0 + 80), *(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_213DD1E30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FBBA8, &qword_213F61D48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9348, &unk_213F577F0);
  sub_213F4DBB0();
  sub_213EF99D0();
  sub_213DE3AE4(&qword_281182588, &qword_27C8F9348, &unk_213F577F0);
  swift_getWitnessTable();
  sub_213F4E280();
  sub_213F4D360();
  swift_getWitnessTable();
  sub_213EF7D6C(&qword_281183498, MEMORY[0x277CDD9E0]);
  swift_getOpaqueTypeMetadata2();
  sub_213F4D450();
  swift_getOpaqueTypeConformance2();
  sub_213EF7D6C(&qword_281182C78, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D0, &unk_213F5A1B0);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B58, &unk_213F59EF0);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9368, &unk_213F59F80);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FA708, &qword_213F61F30);
  sub_213F4D400();
  sub_213F4DBC0();
  swift_getOpaqueTypeConformance2();
  sub_213DE3AE4(&qword_281182978, &qword_27C8F93D0, &unk_213F5A1B0);
  swift_getWitnessTable();
  sub_213DE3AE4(&qword_2811828A0, &qword_27C8F9B58, &unk_213F59EF0);
  swift_getWitnessTable();
  sub_213DE3AE4(&qword_281182890, &qword_27C8F9368, &unk_213F59F80);
  swift_getWitnessTable();
  sub_213DE3AE4(&qword_2811828E0, &qword_27C8FA708, &qword_213F61F30);
  swift_getWitnessTable();
  sub_213EF7D6C(&qword_2811829B0, MEMORY[0x277CDDFF8]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for BackgroundUIView();
  sub_213F4D400();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_213DD2348(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 28)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 32)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_213DD2484(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 28)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 32)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213DD25C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D8, &qword_213F57938);
  sub_213F4D400();
  sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938);
  return swift_getWitnessTable();
}

uint64_t sub_213DD267C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DD2738(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_213F4CB40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DD27F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DD28B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_213F4CB40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DD296C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for AudioPickerViewModel(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_213DD2AD8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for AudioPickerViewModel(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DD2C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FBE38, &qword_213F62250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DD2CC8()
{
  v1 = type metadata accessor for AudioPickerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_213F4D160();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v23 = *(v6 + 64);
  v8 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_213F4CEA0();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
    v10 = *v8;
  }

  v11 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_213F4D3B0();
    (*(*(v12 - 8) + 8))(&v8[v11], v12);
  }

  else
  {
    v13 = *&v8[v11];
  }

  v14 = &v8[v1[6]];
  v15 = sub_213F4CB40();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = *&v14[*(type metadata accessor for AudioPickerViewModel(0) + 20)];

  v17 = *&v8[v1[7] + 8];

  v18 = *&v8[v1[8] + 8];

  v19 = *&v8[v1[9] + 8];

  v20 = *&v8[v1[10] + 16];

  v21 = *&v8[v1[11] + 8];

  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_213DD2F94()
{
  v1 = type metadata accessor for AudioPickerView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4CEA0();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_213F4D3B0();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = &v4[v1[6]];
  v11 = sub_213F4CB40();
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = *&v10[*(type metadata accessor for AudioPickerViewModel(0) + 20)];

  v13 = *&v4[v1[7] + 8];

  v14 = *&v4[v1[8] + 8];

  v15 = *&v4[v1[9] + 8];

  v16 = *&v4[v1[10] + 16];

  v17 = *&v4[v1[11] + 8];

  return swift_deallocObject();
}

uint64_t sub_213DD31DC()
{
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v1 = v0[7];

  if (v0[8])
  {
    v2 = v0[9];
  }

  return swift_deallocObject();
}

uint64_t sub_213DD3268(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_213F03790(v4);
}

uint64_t sub_213DD32F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_213F05248(v2, v3);
}

uint64_t sub_213DD3350(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_213F069B0(&v4);
}

uint64_t sub_213DD3408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC098, &qword_213F62C28);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DD352C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC098, &qword_213F62C28);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DD3650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0A8, &qword_213F62C80);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DD3774(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0A8, &qword_213F62C80);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DD38A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DD38DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0F8, &qword_213F62D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DD3954()
{
  v1 = _s14AccessoryWaldoVMa(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_213F4D290();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = v1[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC0A8, &qword_213F62C80);
  (*(*(v8 - 8) + 8))(&v4[v7], v8);
  v9 = *&v4[v1[7] + 8];

  v10 = *&v4[v1[8] + 8];

  return swift_deallocObject();
}

uint64_t sub_213DD3C24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC220, &qword_213F631C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_213DD3DAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AE8, &qword_213F528F0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC220, &qword_213F631C0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DD3F28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC280, &qword_213F634C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DD3FB8()
{
  v1 = type metadata accessor for NavigationTray.Metrics(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_213F4D290();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_213F4D3B0();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = v1[6];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC220, &qword_213F631C0);
  (*(*(v12 - 8) + 8))(&v5[v11], v12);
  v13 = *&v5[v1[7] + 8];

  v14 = *&v5[v1[8] + 8];

  v15 = *&v5[v1[9] + 8];

  v16 = *&v5[v1[10] + 8];

  return swift_deallocObject();
}

uint64_t sub_213DD41DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DD42A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DD43B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8648, &qword_213F54650);
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_2811829A0, &qword_27C8F8648, &qword_213F54650);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_213DD451C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_213F17694(&v4);
}

uint64_t sub_213DD45F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213DD4714(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DD4864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_213F4D610();
  *a1 = result;
  return result;
}

uint64_t sub_213DD4890(uint64_t *a1)
{
  v1 = *a1;

  return sub_213F4D620();
}

uint64_t sub_213DD48E4@<X0>(_BYTE *a1@<X8>)
{
  sub_213DE3F00();
  result = sub_213F4D820();
  *a1 = v3;
  return result;
}

uint64_t sub_213DD4934(char *a1)
{
  v2 = *a1;
  sub_213DE3F00();
  return sub_213F4D830();
}

uint64_t sub_213DD4980()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_213DD49B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4CB40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DD4A74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_213F4CB40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DD4B2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for RoutePlanningCellViewModel(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[11];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[14]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_213DD4C98(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[9];
    }

    else
    {
      result = type metadata accessor for RoutePlanningCellViewModel(0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[14]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[11];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DD4E00(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4A8, &qword_213F63DB8);
  type metadata accessor for RoutePlanningCell.NestedFocusState();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B0, &unk_213F63DC0);
  sub_213F391DC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_213DE295C();
  swift_getOpaqueTypeMetadata2();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4B8, &qword_213F63DD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C0, &qword_213F63DD8);
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4C8, &unk_213F63DE0);
  swift_getTupleTypeMetadata();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F99C8, &qword_213F59548);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D0, &qword_213F63DF0);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4D8, &qword_213F63DF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E0, &qword_213F63E00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4E8, &qword_213F63E08);
  sub_213F39294();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F8, &qword_213F63E18);
  sub_213F4DBB0();
  sub_213DE3AE4(&qword_281182478, &qword_27C8FC4D8, &qword_213F63DF8);
  sub_213F4ECE0();
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC4F0, &qword_213F63E10);
  sub_213DE3AE4(&qword_2811826C8, &qword_27C8FC4F0, &qword_213F63E10);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4D400();
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBE0();
  sub_213F4DBB0();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_213F4EB20();
  sub_213F4DCA0();
  swift_getWitnessTable();
  sub_213F39194(&qword_281182998, MEMORY[0x277CDE0B8]);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F9B38, &qword_213F60B00);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F93D8, &qword_213F57938);
  sub_213F4D400();
  sub_213F4D400();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_213DE3AE4(&qword_281182898, &qword_27C8F9B38, &qword_213F60B00);
  swift_getWitnessTable();
  sub_213DE3AE4(&qword_281182C10, &qword_27C8F93D8, &qword_213F57938);
  swift_getWitnessTable();
  sub_213DD9674();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4DBB0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_213DD5A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_213DD5B70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213DD5CC8@<X0>(void *a1@<X8>)
{
  result = sub_213F4D690();
  *a1 = v3;
  return result;
}

uint64_t sub_213DD5D28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for RoutePlanningCell();
  v4 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = (v0 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_213F4D290();
    (*(*(v7 - 8) + 8))(v0 + v4, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = v3[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_213F4CEA0();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
    v11 = *&v6[v9];
  }

  sub_213E053BC(*&v6[v3[10]], v6[v3[10] + 8]);
  v12 = &v6[v3[11]];
  v13 = sub_213F4CB40();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = type metadata accessor for RoutePlanningCellViewModel(0);
  v15 = &v12[v14[5]];
  v16 = *v15;

  v17 = *(v15 + 1);

  v18 = &v12[v14[6]];
  if (*v18)
  {

    v19 = *(v18 + 1);
  }

  v20 = &v12[v14[7]];
  if (*v20)
  {

    v21 = *(v20 + 1);
  }

  v22 = *&v12[v14[11]];

  v23 = *&v6[v3[14] + 8];

  v24 = &v6[v3[15]];
  if (*v24)
  {
    v25 = *(v24 + 1);
  }

  v26 = &v6[v3[16]];
  if (*v26)
  {
    v27 = *(v26 + 1);
  }

  v28 = *&v6[v3[17] + 8];

  v29 = &v6[v3[18]];
  if (*v29)
  {
    v30 = *(v29 + 1);
  }

  v31 = *&v6[v3[19] + 8];

  v32 = &v6[v3[20]];
  v33 = *v32;

  v34 = *(v32 + 1);

  v35 = *(v0 + ((v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_213DD6028()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DD6060(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ContentShapeInsetModifier();
  swift_getWitnessTable();
  sub_213F4DD50();
  sub_213F4D400();
  sub_213F4DD30();
  sub_213F4D400();
  sub_213F4D400();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_213DD61F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC850, &unk_213F64960);
  sub_213F4D400();
  sub_213F3D084();
  return swift_getWitnessTable();
}

uint64_t sub_213DD6268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213F4D950();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_213DD6328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_213F4D950();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_213DD63F8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_213F3E620(v2);
}

uint64_t sub_213DD645C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213DD6524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A80, &unk_213F57200);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213DD65EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_213F4D400();
  sub_213E5A778();
  return swift_getWitnessTable();
}

double sub_213DD6670@<D0>(uint64_t a1@<X8>)
{
  sub_213F4AD34();
  sub_213F4D820();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_213DD66C8(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  sub_213F4AD34();
  return sub_213F4D830();
}

uint64_t sub_213DD6744()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DD6784(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_213F4D3B0();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[12];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[13]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9B8, &qword_213F65450);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[16];
      goto LABEL_3;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[18];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_213DD690C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_213F4D3B0();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[12];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[13]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9B8, &qword_213F65450);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[16];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7F50, &qword_213F56B20);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[18];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_213DD6A94(uint64_t *a1)
{
  v1 = *a1;
  sub_213F4DEF0();
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC998, &qword_213F65430);
  sub_213F4D400();
  sub_213F4DF60();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4F6B0();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  sub_213F4D400();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_213F4D250();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9A0, &qword_213F65438);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9A8, &qword_213F65440);
  sub_213F4D400();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FC9B0, &qword_213F65448);
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4ACE4(&qword_2811828E8, MEMORY[0x277CDE300]);
  sub_213F4D060();
  swift_getWitnessTable();
  sub_213DE3AE4(&qword_2811834D0, &qword_27C8FC9A0, &qword_213F65438);
  swift_getWitnessTable();
  sub_213DE3AE4(&qword_281182880, &qword_27C8FC9A8, &qword_213F65440);
  swift_getWitnessTable();
  sub_213DE3AE4(&qword_2811828B8, &qword_27C8FC9B0, &qword_213F65448);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_213DD6EEC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_213F4D400();
  sub_213F4A370();
  return swift_getWitnessTable();
}

uint64_t sub_213DD6F5C()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_213DD6F9C()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_213DD6FD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for MapsDesignMarquee();
  v4 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
  v25 = *(*(v3 - 1) + 64);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FCA58, &qword_213F65740);
  v5 = *(v27 - 8);
  v6 = *(v5 + 80);
  v26 = *(v5 + 64);
  v7 = v0 + v4;
  v8 = v3[12];
  v9 = sub_213F4D3B0();
  (*(*(v9 - 8) + 8))(v0 + v4 + v8, v9);
  v10 = *(v0 + v4 + v3[13] + 8);

  v11 = *(v0 + v4 + v3[14] + 16);

  v12 = *(v0 + v4 + v3[15] + 8);

  v13 = v0 + v4 + v3[16];
  v14 = sub_213F4CB00();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1, v14))
  {
    (*(v15 + 8))(v13, v14);
  }

  v16 = *(v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8FC9B8, &qword_213F65450) + 28));

  sub_213F47E54(*(v7 + v3[17]), *(v7 + v3[17] + 8), *(v7 + v3[17] + 16), *(v7 + v3[17] + 17));
  v17 = v3[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_213F4D290();
    (*(*(v18 - 8) + 8))(v7 + v17, v18);
  }

  else
  {
    v19 = *(v7 + v17);
  }

  v20 = (v7 + v3[19]);
  v21 = *v20;
  v22 = v20[1];
  v23 = *(v20 + 16);
  sub_213F47E60();
  (*(v5 + 8))(v0 + ((v4 + v25 + v6) & ~v6), v27);

  return swift_deallocObject();
}

uint64_t sub_213DD72D0()
{
  v1 = sub_213F4D160();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_213DD7358()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_213DD73A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_213DD73DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8FCA78, &qword_213F65840);
  sub_213F4B250();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213DD74C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_213DD74D4@<X0>(void *a1@<X8>)
{
  result = sub_213F4D140();
  *a1 = v3;
  return result;
}

uint64_t sub_213DD7500(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_213DD7524@<X0>(void *a1@<X8>)
{
  result = sub_213F4D140();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_213DD7558(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_213DD7568(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEF && *(a1 + 17))
  {
    return (*a1 + 239);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0x11)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_213DD75B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEE)
  {
    *(result + 16) = 0;
    *result = a2 - 239;
    *(result + 8) = 0;
    if (a3 >= 0xEF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_213DD76C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 1:
      v10 = *v0;
      v20 = *(v0 + 8);
      sub_213DD8630(v1, v2, 1u);
      v3 = 0x6E6F74747542;
      goto LABEL_14;
    case 2:
      v10 = *v0;
      v16 = *(v0 + 8);
      sub_213DD8630(v1, v2, 2u);
      v3 = 1819043139;
      goto LABEL_23;
    case 3:
      v10 = *v0;
      v18 = *(v0 + 8);
      sub_213DD8630(v1, v2, 3u);
      v3 = 0x7472616843;
      goto LABEL_20;
    case 4:
      v8 = *v0;
      v9 = *(v0 + 8);
      sub_213F4F710();

      v10 = v8;
      v3 = 0x4C747865746E6F43;
      v4 = 0xEF6D657449656E69;
      goto LABEL_24;
    case 5:
      v10 = *v0;
      v21 = *(v0 + 8);
      sub_213DD8630(v1, v2, 5u);
      v3 = 0x6567616D49;
      goto LABEL_20;
    case 6:
      v10 = *v0;
      v23 = *(v0 + 8);
      sub_213DD8630(v1, v2, 6u);
      v3 = 0x6C6562614CLL;
      goto LABEL_20;
    case 7:
      v10 = *v0;
      v19 = *(v0 + 8);
      sub_213DD8630(v1, v2, 7u);
      v3 = 1802398028;
      goto LABEL_23;
    case 8:
      v10 = *v0;
      v25 = *(v0 + 8);
      sub_213DD8630(v1, v2, 8u);
      v3 = 1953720652;
      goto LABEL_23;
    case 9:
      v10 = *v0;
      v15 = *(v0 + 8);
      sub_213DD8630(v1, v2, 9u);
      v3 = 0x6E6F6974636553;
      v4 = 0xE700000000000000;
      goto LABEL_24;
    case 0xA:
      v10 = *v0;
      v24 = *(v0 + 8);
      sub_213DD8630(v1, v2, 0xAu);
      v3 = 0x546E6F6974636553;
      v4 = 0xEC000000656C7469;
      goto LABEL_24;
    case 0xB:
      v5 = *v0;
      v6 = *(v0 + 8);

      return v5;
    case 0xC:
      v10 = *v0;
      v14 = *(v0 + 8);
      sub_213DD8630(v1, v2, 0xCu);
      v3 = 1701603668;
      goto LABEL_23;
    case 0xD:
      v10 = *v0;
      v22 = *(v0 + 8);
      sub_213DD8630(v1, v2, 0xDu);
      v3 = 7366996;
      v4 = 0xE300000000000000;
      goto LABEL_24;
    case 0xE:
      v10 = *v0;
      v13 = *(v0 + 8);
      sub_213DD8630(v1, v2, 0xEu);
      v3 = 0x656C746954;
LABEL_20:
      v4 = 0xE500000000000000;
      goto LABEL_24;
    case 0xF:
      v10 = *v0;
      v17 = *(v0 + 8);
      sub_213DD8630(v1, v2, 0xFu);
      v3 = 0x726564616548;
LABEL_14:
      v4 = 0xE600000000000000;
      goto LABEL_24;
    case 0x10:
      v10 = *v0;
      v12 = *(v0 + 8);
      sub_213DD8630(v1, v2, 0x10u);
      v3 = 2003134806;
LABEL_23:
      v4 = 0xE400000000000000;
      goto LABEL_24;
    case 0x11:
      result = 0x747475426B636142;
      switch(*v0)
      {
        case 1:
          result = 0x74754265736F6C43;
          break;
        case 2:
          result = 0x614C7265746F6F46;
          break;
        case 3:
          result = 0x67616D496E6F6349;
          break;
        case 4:
          result = 0x747475426F666E49;
          break;
        case 5:
          result = 0x486E6F6974636553;
          break;
        case 6:
          result = 0x64657463656C6553;
          break;
        case 7:
          result = 0x6F74617261706553;
          break;
        case 8:
          result = 0x656C746974627553;
          break;
        case 9:
          result = 0x7972616974726554;
          break;
        case 0xALL:
          result = 0x62614C656C746954;
          break;
        case 0xBLL:
          result = 0x656C67676F54;
          break;
        case 0xCLL:
          result = 0xD000000000000012;
          break;
        default:
          return result;
      }

      return result;
    default:
      v10 = *v0;
      v11 = *(v0 + 8);
      sub_213DD8630(v1, v2, 0);
      v3 = 0x726F737365636341;
      v4 = 0xE900000000000079;
LABEL_24:
      MEMORY[0x216052710](v3, v4);
      return v10;
  }
}

uint64_t sub_213DD7B10(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x21604FFE0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_213DD7B64(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x21604FFF0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_213DD7BF8(uint64_t a1, id *a2)
{
  result = sub_213F4F230();
  *a2 = 0;
  return result;
}

uint64_t sub_213DD7C70(uint64_t a1, id *a2)
{
  v3 = sub_213F4F240();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_213DD7CF0@<X0>(uint64_t *a1@<X8>)
{
  sub_213F4F250();
  v2 = sub_213F4F220();

  *a1 = v2;
  return result;
}

void *sub_213DD7D34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_213DD7D44@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_213DD7D50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_213F4F250();
  v6 = v5;
  if (v4 == sub_213F4F250() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_213F4F830();
  }

  return v9 & 1;
}

uint64_t sub_213DD7DD8()
{
  v2 = *v0;
  sub_213DD80A8(&qword_27C8F7498, type metadata accessor for Weight);
  sub_213DD80A8(&qword_27C8F74A0, type metadata accessor for Weight);
  sub_213DD85DC();
  return sub_213F4F800();
}

uint64_t sub_213DD7EA0()
{
  sub_213DD80A8(&qword_27C8F7508, type metadata accessor for TextStyle);
  sub_213DD80A8(&unk_27C8F7510, type metadata accessor for TextStyle);

  return sub_213F4F800();
}

uint64_t sub_213DD7F5C()
{
  sub_213DD80A8(&qword_281182390, type metadata accessor for AttributeName);
  sub_213DD80A8(&qword_27C8F74C8, type metadata accessor for AttributeName);

  return sub_213F4F800();
}

uint64_t sub_213DD80A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_213DD80F0()
{
  sub_213DD80A8(&qword_27C8F74B0, type metadata accessor for TraitKey);
  sub_213DD80A8(&unk_27C8F74B8, type metadata accessor for TraitKey);

  return sub_213F4F800();
}

uint64_t sub_213DD835C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_213F4F220();

  *a2 = v5;
  return result;
}

uint64_t sub_213DD83A4()
{
  sub_213DD80A8(&qword_2811823C8, type metadata accessor for Key);
  sub_213DD80A8(&qword_27C8F7490, type metadata accessor for Key);

  return sub_213F4F800();
}

uint64_t sub_213DD8468()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x216052CB0](*&v1);
}

uint64_t sub_213DD84A4(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x2821FE3B0](a1, *&v2);
}

unint64_t sub_213DD85DC()
{
  result = qword_27C8F74A8;
  if (!qword_27C8F74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F74A8);
  }

  return result;
}

uint64_t sub_213DD8630(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x10u)
  {
  }

  return result;
}

void sub_213DD8698(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}