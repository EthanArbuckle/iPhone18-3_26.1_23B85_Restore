unint64_t sub_24B4C55B0()
{
  result = qword_27EFFCF50;
  if (!qword_27EFFCF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCF50);
  }

  return result;
}

unint64_t sub_24B4C5604()
{
  result = qword_27EFFCF58;
  if (!qword_27EFFCF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCF58);
  }

  return result;
}

unint64_t sub_24B4C5658()
{
  result = qword_27EFFCF60;
  if (!qword_27EFFCF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCF60);
  }

  return result;
}

uint64_t CreatePlanBannerVisibility.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF68, &qword_24B51DE40);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF70, &qword_24B51DE48);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF78, &qword_24B51DE50);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCF80, &unk_24B51DE58);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_24B4C555C();
  v20 = v43;
  sub_24B517FCC();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_24B517E1C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_24B4A39B8();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_24B517D0C();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
      *v30 = &type metadata for CreatePlanBannerVisibility;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_24B4C5604();
          sub_24B517D7C();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_24B4C55B0();
          v33 = v22;
          sub_24B517D7C();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_24B4C5658();
        sub_24B517D7C();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t CreatePlanBannerVisibility.hashValue.getter()
{
  v1 = *v0;
  sub_24B517F7C();
  MEMORY[0x24C241D70](v1);
  return sub_24B517FBC();
}

unint64_t sub_24B4C5CC4()
{
  result = qword_27EFFCF88;
  if (!qword_27EFFCF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCF88);
  }

  return result;
}

unint64_t sub_24B4C5D5C()
{
  result = qword_27EFFCF90;
  if (!qword_27EFFCF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCF90);
  }

  return result;
}

unint64_t sub_24B4C5DB4()
{
  result = qword_27EFFCF98;
  if (!qword_27EFFCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCF98);
  }

  return result;
}

unint64_t sub_24B4C5E0C()
{
  result = qword_27EFFCFA0;
  if (!qword_27EFFCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFA0);
  }

  return result;
}

unint64_t sub_24B4C5E64()
{
  result = qword_27EFFCFA8;
  if (!qword_27EFFCFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFA8);
  }

  return result;
}

unint64_t sub_24B4C5EBC()
{
  result = qword_27EFFCFB0;
  if (!qword_27EFFCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFB0);
  }

  return result;
}

unint64_t sub_24B4C5F14()
{
  result = qword_27EFFCFB8;
  if (!qword_27EFFCFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFB8);
  }

  return result;
}

unint64_t sub_24B4C5F6C()
{
  result = qword_27EFFCFC0;
  if (!qword_27EFFCFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFC0);
  }

  return result;
}

unint64_t sub_24B4C5FC4()
{
  result = qword_27EFFCFC8;
  if (!qword_27EFFCFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFC8);
  }

  return result;
}

unint64_t sub_24B4C601C()
{
  result = qword_27EFFCFD0;
  if (!qword_27EFFCFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFD0);
  }

  return result;
}

uint64_t sub_24B4C6070(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6564646968 && a2 == 0xE600000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C6269736976 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B4C618C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE0, qword_24B51E338);
  sub_24B496A60(&qword_2810ED738, &qword_27EFFCFE0, qword_24B51E338);

  return sub_24B516F7C();
}

uint64_t sub_24B4C622C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBD8, &qword_24B51CCA0);
  swift_getFunctionTypeMetadata2();
  return sub_24B516C7C();
}

uint64_t BrowseView.init(store:artworkViewBuilder:canvasViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *a4 = sub_24B48D8D8;
  *(a4 + 8) = v7;
  *(a4 + 16) = 0;
  v8 = type metadata accessor for BrowseView();
  v9 = *(v8 + 52);

  v10 = sub_24B4C622C();
  v11 = a4 + *(v8 + 56);
  a3(v10);
}

uint64_t BrowseView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v48 = *(a1 - 1);
  v55 = *(v48 + 64);
  MEMORY[0x28223BE20](a1);
  v54 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCFD8, &qword_24B51E2B0);
  v4 = a1[3];
  sub_24B51724C();
  sub_24B516CFC();
  sub_24B51724C();
  v5 = sub_24B51773C();
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - v7;
  v40 = v5;
  v9 = sub_24B51702C();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = &v38 - v11;
  v12 = sub_24B496A60(&qword_2810ED768, &qword_27EFFCFD8, &qword_24B51E2B0);
  v13 = a1[5];
  v70 = v12;
  v71 = v13;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_24B4C6AA4();
  v68 = WitnessTable;
  v69 = v15;
  v67 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v65 = v39;
  v66 = MEMORY[0x277CE0790];
  v43 = v9;
  v42 = swift_getWitnessTable();
  v61 = v9;
  v62 = MEMORY[0x277D839B0];
  v63 = v42;
  v64 = MEMORY[0x277D839C8];
  v45 = MEMORY[0x277CE0E40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v47 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v41 = &v38 - v17;
  *&v18 = a1[2];
  *(&v18 + 1) = v4;
  v53 = v18;
  *&v19 = a1[4];
  *(&v19 + 1) = v13;
  v52 = v19;
  v57 = v18;
  v58 = v19;
  v20 = v44;
  v59 = v44;
  sub_24B51772C();
  v21 = v48;
  v38 = *(v48 + 16);
  v22 = v54;
  v38(v54, v20, a1);
  v23 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v24 = swift_allocObject();
  v25 = v52;
  *(v24 + 16) = v53;
  *(v24 + 32) = v25;
  v48 = *(v21 + 32);
  (v48)(v24 + v23, v22, a1);
  v26 = v40;
  sub_24B51766C();

  (*(v49 + 8))(v8, v26);
  sub_24B4C618C();
  swift_getKeyPath();
  sub_24B5179CC();

  v60 = v61;
  v27 = v54;
  v38(v54, v20, a1);
  v28 = swift_allocObject();
  v29 = v52;
  *(v28 + 16) = v53;
  *(v28 + 32) = v29;
  (v48)(v28 + v23, v27, a1);
  v30 = v41;
  v31 = v43;
  v32 = MEMORY[0x277D839B0];
  v33 = v42;
  v34 = MEMORY[0x277D839C8];
  v35 = v56;
  sub_24B51768C();

  (*(v50 + 8))(v35, v31);
  v61 = v31;
  v62 = v32;
  v63 = v33;
  v64 = v34;
  swift_getOpaqueTypeConformance2();
  v36 = OpaqueTypeMetadata2;
  sub_24B5174CC();
  return (*(v47 + 8))(v30, v36);
}

unint64_t sub_24B4C6AA4()
{
  result = qword_2810EED30;
  if (!qword_2810EED30)
  {
    sub_24B516CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810EED30);
  }

  return result;
}

uint64_t sub_24B4C6AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v77 = a6;
  v11 = sub_24B516CFC();
  v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v68 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(a3 - 8);
  v15 = *(v67 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v66 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v65 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCFD8, &qword_24B51E2B0);
  v20 = sub_24B51724C();
  v73 = *(v20 - 8);
  v21 = *(v73 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v71 = v19;
  v72 = &v61 - v23;
  v64 = *(v19 - 8);
  v24 = *(v64 + 64);
  MEMORY[0x28223BE20](v22);
  v63 = &v61 - v25;
  State = type metadata accessor for BrowseLoadState();
  v27 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v29 = (&v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_24B51724C();
  v75 = *(v30 - 8);
  v76 = v30;
  v31 = *(v75 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v61 - v32;
  v61 = a2;
  v88 = a2;
  v89 = a3;
  v74 = a3;
  v62 = a4;
  v90 = a4;
  v91 = a5;
  v34 = a5;
  v35 = type metadata accessor for BrowseView();
  v70 = a1;
  sub_24B4C618C();
  swift_getKeyPath();
  sub_24B5179CC();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v45 = *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFE8, &qword_24B5252B0) + 64));

      sub_24B4C7EC8(v29, type metadata accessor for BrowseContent);
      v46 = v65;
      v47 = v74;
      sub_24B49711C(v70 + *(v35 + 56), v74, a5);
      v48 = v66;
      sub_24B49711C(v46, v47, a5);
      v49 = sub_24B496A60(&qword_2810ED768, &qword_27EFFCFD8, &qword_24B51E2B0);
      v50 = v72;
      sub_24B48D23C(v48, v71, v47);
      v80 = v49;
      v81 = v34;
      swift_getWitnessTable();
      sub_24B4C6AA4();
      sub_24B48D144(v50, v20);
      (*(v73 + 8))(v50, v20);
      v51 = *(v67 + 8);
      v51(v48, v47);
      v51(v46, v47);
    }

    else
    {
      v38 = *v29;
      v39 = v29[1];
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      v40 = v74;
      *(&v61 - 8) = v61;
      *(&v61 - 7) = v40;
      *(&v61 - 6) = v62;
      *(&v61 - 5) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCFF0, &qword_24B51E370);
      v59 = sub_24B4C7F3C();
      v60 = MEMORY[0x277CE1410];
      v57 = MEMORY[0x277CE1428];
      v58 = MEMORY[0x277CE0BC8];
      v41 = v63;
      sub_24B5172AC();

      v42 = sub_24B496A60(&qword_2810ED768, &qword_27EFFCFD8, &qword_24B51E2B0);
      v44 = v71;
      v43 = v72;
      sub_24B48D144(v41, v71);
      v78 = v42;
      v79 = v34;
      swift_getWitnessTable();
      sub_24B4C6AA4();
      sub_24B48D144(v43, v20);
      (*(v73 + 8))(v43, v20);
      (*(v64 + 8))(v41, v44);
    }
  }

  else
  {
    v37 = v68;
    sub_24B516CEC();
    v86 = sub_24B496A60(&qword_2810ED768, &qword_27EFFCFD8, &qword_24B51E2B0);
    v87 = v34;
    swift_getWitnessTable();
    sub_24B4C6AA4();
    sub_24B48D23C(v37, v20, v11);
    (*(v69 + 8))(v37, v11);
  }

  v84 = sub_24B496A60(&qword_2810ED768, &qword_27EFFCFD8, &qword_24B51E2B0);
  v85 = v34;
  WitnessTable = swift_getWitnessTable();
  v53 = sub_24B4C6AA4();
  v82 = WitnessTable;
  v83 = v53;
  v54 = v76;
  v55 = swift_getWitnessTable();
  sub_24B49711C(v33, v54, v55);
  return (*(v75 + 8))(v33, v54);
}

uint64_t sub_24B4C739C@<X0>(uint64_t a1@<X8>)
{
  sub_24B5171BC();
  result = sub_24B5174AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_24B4C7414@<D0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v10 = sub_24B516C4C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_24B517B1C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_24B517AFC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  *&v18 = a1;
  *(&v18 + 1) = a2;
  *&v19 = a3;
  *(&v19 + 1) = a4;
  type metadata accessor for BrowseView();
  sub_24B4C618C();
  swift_getKeyPath();
  sub_24B5179CC();

  if (a1 == 1)
  {
    sub_24B517AEC();
    sub_24B517ADC();
    sub_24B517ACC();
    sub_24B517ADC();
    sub_24B517B0C();
    if (qword_27EFFBD40 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_24B517ABC();
  if (qword_27EFFBD40 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v16 = qword_27F017B80;
  sub_24B4C618C();
  swift_getKeyPath();
  sub_24B5179CC();

  sub_24B51746C();
  sub_24B51723C();
  result = *&v18;
  *a5 = v18;
  *(a5 + 16) = v19;
  *(a5 + 32) = v20;
  return result;
}

uint64_t sub_24B4C7798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BrowseAction();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for BrowseView();
  sub_24B4C618C();
  swift_storeEnumTagMultiPayload();
  sub_24B5179DC();

  return sub_24B4C7EC8(v12, type metadata accessor for BrowseAction);
}

uint64_t sub_24B4C78A8()
{
  sub_24B5178FC();
  sub_24B516FFC();
}

uint64_t objectdestroy_2Tm()
{
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  v12 = *(v0 + 40);
  v1 = (type metadata accessor for BrowseView() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 48) & ~*(*v1 + 80)));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  sub_24B4956A8();
  v7 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBD8, &qword_24B51CCA0);
  swift_getFunctionTypeMetadata2();
  v8 = sub_24B516C9C();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);
  (*(*(v10 - 8) + 8))(v3 + v1[16]);
  return swift_deallocObject();
}

uint64_t sub_24B4C7AE8(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for BrowseView() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_24B4C7B98(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_24B4C7BE4(uint64_t a1)
{
  sub_24B4C7D00();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBE0, &qword_24B51CCA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCBD8, &qword_24B51CCA0);
    swift_getFunctionTypeMetadata2();
    sub_24B516C9C();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24B4C7D00()
{
  if (!qword_2810ED7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCFE0, qword_24B51E338);
    sub_24B496A60(&qword_2810ED738, &qword_27EFFCFE0, qword_24B51E338);
    v0 = sub_24B516F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_2810ED7A8);
    }
  }
}

uint64_t sub_24B4C7DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for BrowseAction();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for BrowseView();
  sub_24B4C618C();
  swift_storeEnumTagMultiPayload();
  sub_24B5179DC();

  return sub_24B4C7EC8(v12, type metadata accessor for BrowseAction);
}

uint64_t sub_24B4C7EC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_24B4C7F28@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  return sub_24B4C7414(v1[2], v1[3], v1[4], v1[5], a1);
}

unint64_t sub_24B4C7F3C()
{
  result = qword_27EFFCFF8;
  if (!qword_27EFFCFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCFF0, &qword_24B51E370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFCFF8);
  }

  return result;
}

__n128 CreatePlanBannerFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t CreatePlanBannerFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, char **a3, unsigned __int8 *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD000, &unk_24B51E3C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v80 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v80 - v18;
  result = MEMORY[0x28223BE20](v17);
  v22 = &v80 - v21;
  v23 = *a4;
  v24 = v4[1];
  v95 = *v4;
  v96 = v24;
  v97 = v4[2];
  switch(v23)
  {
    case 5:
      if (*(a2 + 56) == 1)
      {
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
        v53 = v52[12];
        v54 = v52[16];
        v88 = v52[20];
        v55 = &v16[v52[24]];
        v94[0] = 3;
        v93 = sub_24B4C894C();
        sub_24B517CBC();
        v56 = a3;
        v57 = *MEMORY[0x277D04400];
        v58 = sub_24B5179AC();
        v59 = *(v58 - 8);
        v60 = *(v59 + 104);
        v92 = v57;
        v90 = v60;
        v91 = v58;
        v89 = v59 + 104;
        (v60)(&v16[v54], v57);
        *v55 = &unk_24B51E3D0;
        *(v55 + 1) = 0;
        sub_24B517BDC();
        v61 = *MEMORY[0x277D043E8];
        v62 = sub_24B51799C();
        v63 = *(v62 - 8);
        v64 = *(v63 + 104);
        v84 = v62;
        v85 = v64;
        v83 = v63 + 104;
        (v64)(&v16[v88], v61);
        v65 = *(v9 + 104);
        LODWORD(v88) = *MEMORY[0x277D043B0];
        v87 = v65;
        v65(v16);
        v86 = v56;
        v66 = *v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_24B4CA2C4(0, *(v66 + 2) + 1, 1, v66, &qword_27EFFD070, &qword_24B51E568, &qword_27EFFD000, &unk_24B51E3C0);
        }

        v68 = *(v66 + 2);
        v67 = *(v66 + 3);
        if (v68 >= v67 >> 1)
        {
          v66 = sub_24B4CA2C4(v67 > 1, v68 + 1, 1, v66, &qword_27EFFD070, &qword_24B51E568, &qword_27EFFD000, &unk_24B51E3C0);
        }

        *(v66 + 2) = v68 + 1;
        v70 = *(v9 + 32);
        v69 = v9 + 32;
        v82 = (*(v69 + 48) + 32) & ~*(v69 + 48);
        v81 = *(v69 + 40);
        v71 = v70;
        v70(&v66[v82 + v81 * v68], v16, v8);
        v72 = v52[12];
        v73 = v52[16];
        v74 = v52[20];
        v75 = &v13[v52[24]];
        v94[0] = 1;
        sub_24B517CBC();
        sub_24B517BDC();
        v90(&v13[v73], v92, v91);
        v85(&v13[v74], *MEMORY[0x277D043E0], v84);
        v76 = swift_allocObject();
        v77 = v96;
        v76[1] = v95;
        v76[2] = v77;
        v76[3] = v97;
        *v75 = &unk_24B51E3E0;
        *(v75 + 1) = v76;
        v87(v13, v88, v8);
        sub_24B4C9D14(&v95, v94);
        v79 = *(v66 + 2);
        v78 = *(v66 + 3);
        if (v79 >= v78 >> 1)
        {
          v66 = sub_24B4CA2C4(v78 > 1, v79 + 1, 1, v66, &qword_27EFFD070, &qword_24B51E568, &qword_27EFFD000, &unk_24B51E3C0);
        }

        *(v66 + 2) = v79 + 1;
        result = v71(&v66[v82 + v79 * v81], v13, v8);
        *v86 = v66;
      }

      break;
    case 4:
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
      v40 = v39[12];
      v41 = v39[16];
      v42 = v39[20];
      v43 = &v19[v39[24]];
      v94[0] = 0;
      sub_24B4C894C();
      sub_24B517CBC();
      v44 = *MEMORY[0x277D043F0];
      v45 = sub_24B5179AC();
      (*(*(v45 - 8) + 104))(&v19[v41], v44, v45);
      v46 = swift_allocObject();
      v47 = v96;
      v46[1] = v95;
      v46[2] = v47;
      v46[3] = v97;
      *v43 = &unk_24B51E3F0;
      *(v43 + 1) = v46;
      sub_24B4C9D14(&v95, v94);
      sub_24B517BDC();
      v48 = *MEMORY[0x277D043E8];
      v49 = sub_24B51799C();
      (*(*(v49 - 8) + 104))(&v19[v42], v48, v49);
      (*(v9 + 104))(v19, *MEMORY[0x277D043B0], v8);
      v36 = *a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_24B4CA2C4(0, v36[2] + 1, 1, v36, &qword_27EFFD070, &qword_24B51E568, &qword_27EFFD000, &unk_24B51E3C0);
      }

      v51 = v36[2];
      v50 = v36[3];
      if (v51 >= v50 >> 1)
      {
        v36 = sub_24B4CA2C4(v50 > 1, v51 + 1, 1, v36, &qword_27EFFD070, &qword_24B51E568, &qword_27EFFD000, &unk_24B51E3C0);
      }

      v36[2] = v51 + 1;
      result = (*(v9 + 32))(v36 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v51, v19, v8);
      goto LABEL_14;
    case 3:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
      v26 = v25[12];
      v27 = v25[16];
      v28 = v25[20];
      v29 = &v22[v25[24]];
      v94[0] = 2;
      sub_24B4C894C();
      sub_24B517CBC();
      v30 = *MEMORY[0x277D04400];
      v31 = sub_24B5179AC();
      (*(*(v31 - 8) + 104))(&v22[v27], v30, v31);
      v32 = swift_allocObject();
      v33 = v96;
      v32[1] = v95;
      v32[2] = v33;
      v32[3] = v97;
      *v29 = &unk_24B51E400;
      *(v29 + 1) = v32;
      sub_24B4C9D14(&v95, v94);
      sub_24B517BDC();
      v34 = *MEMORY[0x277D043E8];
      v35 = sub_24B51799C();
      (*(*(v35 - 8) + 104))(&v22[v28], v34, v35);
      (*(v9 + 104))(v22, *MEMORY[0x277D043B0], v8);
      v36 = *a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_24B4CA2C4(0, v36[2] + 1, 1, v36, &qword_27EFFD070, &qword_24B51E568, &qword_27EFFD000, &unk_24B51E3C0);
      }

      v38 = v36[2];
      v37 = v36[3];
      if (v38 >= v37 >> 1)
      {
        v36 = sub_24B4CA2C4(v37 > 1, v38 + 1, 1, v36, &qword_27EFFD070, &qword_24B51E568, &qword_27EFFD000, &unk_24B51E3C0);
      }

      v36[2] = v38 + 1;
      result = (*(v9 + 32))(v36 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v38, v22, v8);
LABEL_14:
      *a3 = v36;
      return result;
    default:
      *(a2 + 56) = v23;
      break;
  }

  return result;
}

unint64_t sub_24B4C894C()
{
  result = qword_27EFFD010;
  if (!qword_27EFFD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD010);
  }

  return result;
}

uint64_t sub_24B4C89A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = sub_24B517BCC();
  v2[4] = sub_24B517BBC();
  v4 = *(a2 + 40);
  v8 = (*(a2 + 32) + **(a2 + 32));
  v5 = *(*(a2 + 32) + 4);
  v6 = swift_task_alloc();
  v2[5] = v6;
  *v6 = v2;
  v6[1] = sub_24B4C8AB4;

  return v8(v2 + 10);
}

uint64_t sub_24B4C8AB4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v11 = *v1;
  v3[6] = v2;

  v8 = sub_24B517B9C();
  v3[7] = v8;
  v3[8] = v7;
  if (v2)
  {
    v9 = sub_24B4C8E60;
  }

  else
  {
    v9 = sub_24B4C8C14;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_24B4C8C14()
{
  *(v0 + 81) = *(v0 + 80);
  v1 = *(MEMORY[0x277D043C8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD068, &qword_24B51E560);
  *v2 = v0;
  v2[1] = sub_24B4C8CDC;
  v4 = *(v0 + 16);

  return MEMORY[0x282159B08](v0 + 81, v3);
}

uint64_t sub_24B4C8CDC()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_24B4C8DFC, v4, v3);
}

uint64_t sub_24B4C8DFC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B4C8E60()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_24B4C8EC4(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_24B517BCC();
  v2[3] = sub_24B517BBC();
  v4 = *(a2 + 24);
  v8 = (*(a2 + 16) + **(a2 + 16));
  v5 = *(*(a2 + 16) + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_24B4C8FCC;

  return v8();
}

uint64_t sub_24B4C8FCC()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_24B517B9C();
  if (v2)
  {
    v8 = sub_24B4C918C;
  }

  else
  {
    v8 = sub_24B4C9128;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24B4C9128()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B4C918C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_24B4C91F0()
{
  *(v0 + 16) = sub_24B517BCC();
  *(v0 + 24) = sub_24B517BBC();
  *(v0 + 40) = 3;
  v1 = *(MEMORY[0x277D043C8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD068, &qword_24B51E560);
  *v2 = v0;
  v2[1] = sub_24B4C92D4;

  return MEMORY[0x282159B08](v0 + 40, v3);
}

uint64_t sub_24B4C92D4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_24B517B9C();

  return MEMORY[0x2822009F8](sub_24B4CA72C, v5, v4);
}

uint64_t sub_24B4C9410(uint64_t a1, int **a2)
{
  v2[12] = a1;
  v2[13] = sub_24B517BCC();
  v2[14] = sub_24B517BBC();
  v4 = a2[1];
  v8 = (*a2 + **a2);
  v5 = (*a2)[1];
  v6 = swift_task_alloc();
  v2[15] = v6;
  *v6 = v2;
  v6[1] = sub_24B4C9524;

  return v8(v2 + 7);
}

uint64_t sub_24B4C9524()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v8 = *v0;

  v6 = sub_24B517B9C();
  *(v1 + 128) = v6;
  *(v1 + 136) = v5;

  return MEMORY[0x2822009F8](sub_24B4C9668, v6, v5);
}

uint64_t sub_24B4C9668()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_24B517C1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[13];
  v7 = sub_24B517BBC();
  v0[18] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_24B4C9840;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 21, v7, v11);
}

uint64_t sub_24B4C9840()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[18];

    v6 = v2[16];
    v7 = v2[17];

    return MEMORY[0x2822009F8](sub_24B4C9954, v6, v7);
  }

  return result;
}

uint64_t sub_24B4C9954()
{
  if (*(v0 + 168) == 1)
  {
    v1 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 169) = 3;
    v4 = *(MEMORY[0x277D043C8] + 4);
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD068, &qword_24B51E560);
    *v5 = v0;
    v5[1] = sub_24B4C9A70;
    v7 = *(v0 + 96);

    return MEMORY[0x282159B08](v0 + 169, v6);
  }
}

uint64_t sub_24B4C9A70()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_24B4C9B90, v4, v3);
}

uint64_t sub_24B4C9B90()
{
  v1 = v0[13];
  v2 = sub_24B517BBC();
  v0[18] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_24B4C9840;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 21, v2, v6);
}

uint64_t sub_24B4C9C7C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B4C9410(a1, (v1 + 16));
}

uint64_t sub_24B4C9D4C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4C9DE4;

  return sub_24B4C8EC4(a1, v1 + 16);
}

uint64_t sub_24B4C9DE4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_24B4C9F20(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B4CA728;

  return sub_24B4C89A0(a1, v1 + 16);
}

unint64_t sub_24B4C9FBC()
{
  result = qword_27EFFD018;
  if (!qword_27EFFD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD018);
  }

  return result;
}

unint64_t sub_24B4CA014()
{
  result = qword_27EFFD020;
  if (!qword_27EFFD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD020);
  }

  return result;
}

unint64_t sub_24B4CA06C()
{
  result = qword_27EFFD028;
  if (!qword_27EFFD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD028);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CreatePlanBannerFeature.TaskIdentifier(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CreatePlanBannerFeature.TaskIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B4CA228()
{
  result = qword_27EFFD030;
  if (!qword_27EFFD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD030);
  }

  return result;
}

size_t sub_24B4CA2C4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_24B4CA4FC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_24B4CA740()
{
  if (*v0)
  {
    result = 0x5472656E69617274;
  }

  else
  {
    result = 0x6169726F74696465;
  }

  *v0;
  return result;
}

uint64_t sub_24B4CA788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5472656E69617274 && a2 == 0xEB00000000737069)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B4CA870(uint64_t a1)
{
  v2 = sub_24B4CAC94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4CA8AC(uint64_t a1)
{
  v2 = sub_24B4CAC94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4CA8E8(uint64_t a1)
{
  v2 = sub_24B4CAD3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4CA924(uint64_t a1)
{
  v2 = sub_24B4CAD3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4CA960(uint64_t a1)
{
  v2 = sub_24B4CACE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4CA99C(uint64_t a1)
{
  v2 = sub_24B4CACE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseGalleryDestination.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD078, &qword_24B51E570);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD080, &qword_24B51E578);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD088, &qword_24B51E580);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4CAC94();
  sub_24B517FDC();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_24B4CACE8();
    sub_24B517E3C();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_24B4CAD3C();
    sub_24B517E3C();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_24B4CAC94()
{
  result = qword_27EFFD090;
  if (!qword_27EFFD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD090);
  }

  return result;
}

unint64_t sub_24B4CACE8()
{
  result = qword_27EFFD098;
  if (!qword_27EFFD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD098);
  }

  return result;
}

unint64_t sub_24B4CAD3C()
{
  result = qword_27EFFD0A0;
  if (!qword_27EFFD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0A0);
  }

  return result;
}

uint64_t sub_24B4CADAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B4CAE68(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t BrowseGalleryDestination.hashValue.getter(char a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1 & 1);
  return sub_24B517FBC();
}

uint64_t sub_24B4CAE68(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD0E8, &qword_24B51E900);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD0F0, &qword_24B51E908);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD0F8, &unk_24B51E910);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4CAC94();
  v15 = v32;
  sub_24B517FCC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_24B517E1C();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_24B4A39B0();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_24B517D0C();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
    *v24 = &type metadata for BrowseGalleryDestination;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_24B4CACE8();
    sub_24B517D7C();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_24B4CAD3C();
    sub_24B517D7C();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_24B4CB328()
{
  result = qword_27EFFD0A8;
  if (!qword_27EFFD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0A8);
  }

  return result;
}

unint64_t sub_24B4CB3C0()
{
  result = qword_27EFFD0B0;
  if (!qword_27EFFD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0B0);
  }

  return result;
}

unint64_t sub_24B4CB418()
{
  result = qword_27EFFD0B8;
  if (!qword_27EFFD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0B8);
  }

  return result;
}

unint64_t sub_24B4CB470()
{
  result = qword_27EFFD0C0;
  if (!qword_27EFFD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0C0);
  }

  return result;
}

unint64_t sub_24B4CB4C8()
{
  result = qword_27EFFD0C8;
  if (!qword_27EFFD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0C8);
  }

  return result;
}

unint64_t sub_24B4CB520()
{
  result = qword_27EFFD0D0;
  if (!qword_27EFFD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0D0);
  }

  return result;
}

unint64_t sub_24B4CB578()
{
  result = qword_27EFFD0D8;
  if (!qword_27EFFD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0D8);
  }

  return result;
}

unint64_t sub_24B4CB5D0()
{
  result = qword_27EFFD0E0;
  if (!qword_27EFFD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD0E0);
  }

  return result;
}

uint64_t NewAndFeaturedDataItemMetrics.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NewAndFeaturedDataItemMetrics.actionType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t NewAndFeaturedDataItemMetrics.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t NewAndFeaturedDataItemMetrics.targetIdentifierType.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t NewAndFeaturedDataItemMetrics.targetType.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t NewAndFeaturedDataItemMetrics.type.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t NewAndFeaturedDataItemMetrics.playbackEntitlement.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

void __swiftcall NewAndFeaturedDataItemMetrics.init(identifier:actionType:name:targetIdentifierType:targetType:type:playbackEntitlement:)(FitnessBrowsing::NewAndFeaturedDataItemMetrics *__return_ptr retstr, Swift::String identifier, Swift::String actionType, Swift::String_optional name, Swift::String targetIdentifierType, Swift::String targetType, Swift::String type, Swift::String playbackEntitlement)
{
  retstr->identifier = identifier;
  retstr->actionType = actionType;
  retstr->name = name;
  retstr->targetIdentifierType = targetIdentifierType;
  retstr->targetType = targetType;
  retstr->type = type;
  retstr->playbackEntitlement = playbackEntitlement;
}

unint64_t sub_24B4CB79C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 1701869940;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 == 3)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x7954746567726174;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79546E6F69746361;
  if (v1 != 1)
  {
    v5 = 1701667182;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B4CB868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4CC924(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4CB890(uint64_t a1)
{
  v2 = sub_24B4CC620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4CB8CC(uint64_t a1)
{
  v2 = sub_24B4CC620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewAndFeaturedDataItemMetrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD100, &qword_24B51E920);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v23[9] = v1[3];
  v23[10] = v10;
  v11 = v1[4];
  v23[7] = v1[5];
  v23[8] = v11;
  v12 = v1[6];
  v23[5] = v1[7];
  v23[6] = v12;
  v13 = v1[9];
  v23[2] = v1[8];
  v23[3] = v13;
  v14 = v1[11];
  v23[0] = v1[10];
  v23[1] = v14;
  v15 = v1[13];
  v23[4] = v1[12];
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v16);
  sub_24B4CC620();
  sub_24B517FDC();
  v31 = 0;
  v21 = v24;
  sub_24B517E7C();
  if (v21)
  {
    return (*(v4 + 8))(v7, v20);
  }

  v24 = v15;
  v30 = 1;
  sub_24B517E7C();
  v29 = 2;
  sub_24B517E4C();
  v28 = 3;
  sub_24B517E7C();
  v27 = 4;
  sub_24B517E7C();
  v26 = 5;
  sub_24B517E7C();
  v25 = 6;
  sub_24B517E7C();
  return (*(v4 + 8))(v7, v20);
}

uint64_t NewAndFeaturedDataItemMetrics.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[9];
  v14 = v0[10];
  v15 = v0[12];
  v12 = v0[11];
  v13 = v0[13];
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517F9C();
  if (v5)
  {
    sub_24B517B3C();
  }

  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();

  return sub_24B517B3C();
}

uint64_t NewAndFeaturedDataItemMetrics.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[9];
  v11 = v0[8];
  v12 = v0[11];
  v15 = v0[12];
  v13 = v0[10];
  v14 = v0[13];
  sub_24B517F7C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517F9C();
  if (v5)
  {
    sub_24B517B3C();
  }

  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t NewAndFeaturedDataItemMetrics.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD110, &qword_24B51E928);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4CC620();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v47[0]) = 0;
  v11 = sub_24B517DCC();
  v39 = v12;
  LOBYTE(v47[0]) = 1;
  *&v38 = sub_24B517DCC();
  *(&v38 + 1) = v13;
  LOBYTE(v47[0]) = 2;
  v36 = sub_24B517D9C();
  v15 = v14;
  LOBYTE(v47[0]) = 3;
  v16 = sub_24B517DCC();
  v37 = v17;
  v32 = v16;
  LOBYTE(v47[0]) = 4;
  v35 = 0;
  v31 = sub_24B517DCC();
  v34 = v18;
  LOBYTE(v47[0]) = 5;
  v30 = sub_24B517DCC();
  v33 = v19;
  v48 = 6;
  v20 = sub_24B517DCC();
  v21 = v9;
  v23 = v22;
  (*(v6 + 8))(v21, v5);
  *&v40 = v11;
  v24 = v39;
  *(&v40 + 1) = v39;
  v41 = v38;
  v25 = *(&v38 + 1);
  *&v42 = v36;
  *(&v42 + 1) = v15;
  *&v43 = v32;
  *(&v43 + 1) = v37;
  *&v44 = v31;
  *(&v44 + 1) = v34;
  *&v45 = v30;
  *(&v45 + 1) = v33;
  *&v46 = v20;
  *(&v46 + 1) = v23;
  v26 = v45;
  a2[4] = v44;
  a2[5] = v26;
  a2[6] = v46;
  v27 = v41;
  *a2 = v40;
  a2[1] = v27;
  v28 = v43;
  a2[2] = v42;
  a2[3] = v28;
  sub_24B4CC674(&v40, v47);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v47[0] = v11;
  v47[1] = v24;
  v47[2] = v38;
  v47[3] = v25;
  v47[4] = v36;
  v47[5] = v15;
  v47[6] = v32;
  v47[7] = v37;
  v47[8] = v31;
  v47[9] = v34;
  v47[10] = v30;
  v47[11] = v33;
  v47[12] = v20;
  v47[13] = v23;
  return sub_24B4CC6AC(v47);
}

uint64_t sub_24B4CC320()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[9];
  v11 = v0[8];
  v12 = v0[11];
  v15 = v0[12];
  v13 = v0[10];
  v14 = v0[13];
  sub_24B517F7C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517F9C();
  if (v5)
  {
    sub_24B517B3C();
  }

  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing29NewAndFeaturedDataItemMetricsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v26 = a1[6];
  v24 = a1[8];
  v25 = a1[7];
  v20 = a1[10];
  v19 = a1[11];
  v15 = a1[13];
  v16 = a1[12];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v22 = a2[8];
  v23 = a1[9];
  v21 = a2[9];
  v17 = a2[11];
  v18 = a2[10];
  v13 = a2[13];
  v14 = a2[12];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24B517EEC() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v8 || v5 != v9) && (sub_24B517EEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((v26 != v11 || v25 != v10) && (sub_24B517EEC() & 1) == 0 || (v24 != v22 || v23 != v21) && (sub_24B517EEC() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_24B517EEC();
}

unint64_t sub_24B4CC620()
{
  result = qword_27EFFD108;
  if (!qword_27EFFD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD108);
  }

  return result;
}

unint64_t sub_24B4CC6E0()
{
  result = qword_27EFFD118;
  if (!qword_27EFFD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD118);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_24B4CC758(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_24B4CC7A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B4CC820()
{
  result = qword_27EFFD120;
  if (!qword_27EFFD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD120);
  }

  return result;
}

unint64_t sub_24B4CC878()
{
  result = qword_27EFFD128;
  if (!qword_27EFFD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD128);
  }

  return result;
}

unint64_t sub_24B4CC8D0()
{
  result = qword_27EFFD130;
  if (!qword_27EFFD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD130);
  }

  return result;
}

uint64_t sub_24B4CC924(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B527860 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7954746567726174 && a2 == 0xEA00000000006570 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B527880 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_24B517EEC();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t BrowseFontSymbolicTrait.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6C6F427469617274;
  }
}

uint64_t sub_24B4CCBF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x800000024B5273C0;
  if (v2 == 1)
  {
    v4 = 0x800000024B5273C0;
  }

  else
  {
    v4 = 0x800000024B5273E0;
  }

  if (*a1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6C6F427469617274;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (*a2 != 1)
  {
    v3 = 0x800000024B5273E0;
  }

  if (*a2)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v7 = 0x6C6F427469617274;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xE900000000000064;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();
  }

  return v9 & 1;
}

uint64_t sub_24B4CCCC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s15FitnessBrowsing23BrowseFontSymbolicTraitO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_24B4CCCF8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0x800000024B5273C0;
  if (v2 != 1)
  {
    v4 = 0x800000024B5273E0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x6C6F427469617274;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_24B4CCE24()
{
  v1 = *v0;
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t sub_24B4CCED4()
{
  *v0;
  *v0;
  sub_24B517B3C();
}

uint64_t sub_24B4CCF70()
{
  v1 = *v0;
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing23BrowseFontSymbolicTraitO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_24B517D6C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_24B4CD06C()
{
  result = qword_27EFFD138;
  if (!qword_27EFFD138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFD140, &qword_24B51EC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD138);
  }

  return result;
}

unint64_t sub_24B4CD0D4()
{
  result = qword_27EFFD148;
  if (!qword_27EFFD148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD148);
  }

  return result;
}

unint64_t sub_24B4CD138()
{
  result = qword_27EFFD150;
  if (!qword_27EFFD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD150);
  }

  return result;
}

uint64_t NewAndFeaturedItemContext.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24B4CD1CC();
  return v1;
}

uint64_t sub_24B4CD1D8()
{
  if (*v0)
  {
    result = 0x6C6F686563616C70;
  }

  else
  {
    result = 1835365481;
  }

  *v0;
  return result;
}

uint64_t sub_24B4CD214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B4CD2F4(uint64_t a1)
{
  v2 = sub_24B4CE0C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4CD330(uint64_t a1)
{
  v2 = sub_24B4CE0C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4CD388(uint64_t a1)
{
  v2 = sub_24B4CE170();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4CD3C4(uint64_t a1)
{
  v2 = sub_24B4CE170();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4CD400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B517EEC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B4CD490(uint64_t a1)
{
  v2 = sub_24B4CE11C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4CD4CC(uint64_t a1)
{
  v2 = sub_24B4CE11C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewAndFeaturedItemContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD158, &qword_24B51ED00);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v24 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD160, &qword_24B51ED08);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD168, &qword_24B51ED10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = *v1;
  v27 = v1[1];
  v28 = v15;
  v16 = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4CE0C8();
  sub_24B517FDC();
  if (v16)
  {
    v30 = 1;
    sub_24B4CE11C();
    v18 = v24;
    sub_24B517E3C();
    v19 = v26;
    sub_24B517E7C();
    (*(v25 + 8))(v18, v19);
  }

  else
  {
    v29 = 0;
    sub_24B4CE170();
    sub_24B517E3C();
    v20 = v23;
    sub_24B517E7C();
    (*(v22 + 8))(v9, v20);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t NewAndFeaturedItemContext.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x24C241D70](*(v0 + 16));

  return sub_24B517B3C();
}

uint64_t NewAndFeaturedItemContext.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24B517F7C();
  MEMORY[0x24C241D70](v3);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t NewAndFeaturedItemContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD188, &qword_24B51ED18);
  v37 = *(v35 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD190, &qword_24B51ED20);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD198, &unk_24B51ED28);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24B4CE0C8();
  v17 = v39;
  sub_24B517FCC();
  if (!v17)
  {
    v39 = v11;
    v18 = sub_24B517E1C();
    v19 = (2 * *(v18 + 16)) | 1;
    v41 = v18;
    v42 = v18 + 32;
    v43 = 0;
    v44 = v19;
    v20 = sub_24B4A39B0();
    v21 = v10;
    if (v20 == 2 || v43 != v44 >> 1)
    {
      v28 = sub_24B517D0C();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
      *v30 = &type metadata for NewAndFeaturedItemContext;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v39 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v20;
      if (v20)
      {
        v46 = 1;
        sub_24B4CE11C();
        sub_24B517D7C();
        v23 = v38;
        v22 = v39;
        v24 = v35;
        v25 = sub_24B517DCC();
        v27 = v26;
        (*(v37 + 8))(v5, v24);
      }

      else
      {
        v46 = 0;
        sub_24B4CE170();
        v33 = v9;
        sub_24B517D7C();
        v23 = v38;
        v22 = v39;
        v25 = sub_24B517DCC();
        v27 = v34;
        (*(v36 + 8))(v33, v6);
      }

      (*(v22 + 8))(v14, v21);
      swift_unknownObjectRelease();
      *v23 = v25;
      *(v23 + 8) = v27;
      *(v23 + 16) = v45 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_24B4CDDD0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24B517F7C();
  MEMORY[0x24C241D70](v3);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t sub_24B4CDE34()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x24C241D70](*(v0 + 16));

  return sub_24B517B3C();
}

uint64_t sub_24B4CDE88()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24B517F7C();
  MEMORY[0x24C241D70](v3);
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing25NewAndFeaturedItemContextO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    v9 = *a2;
    v10 = a2[1];
    sub_24B4CD1CC();
    sub_24B4CD1CC();
    sub_24B4CE5C4();
    sub_24B4CE5C4();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v14 = sub_24B517EEC();
    sub_24B4CD1CC();
    sub_24B4CD1CC();
    sub_24B4CE5C4();
    sub_24B4CE5C4();
    return v14 & 1;
  }

LABEL_15:
  sub_24B4CD1CC();
  sub_24B4CD1CC();
  sub_24B4CE5C4();
  sub_24B4CE5C4();
  return 1;
}

unint64_t sub_24B4CE0C8()
{
  result = qword_27EFFD170;
  if (!qword_27EFFD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD170);
  }

  return result;
}

unint64_t sub_24B4CE11C()
{
  result = qword_27EFFD178;
  if (!qword_27EFFD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD178);
  }

  return result;
}

unint64_t sub_24B4CE170()
{
  result = qword_27EFFD180;
  if (!qword_27EFFD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD180);
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

uint64_t sub_24B4CE1E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_24B4CE22C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_24B4CE2B0()
{
  result = qword_27EFFD1A0;
  if (!qword_27EFFD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1A0);
  }

  return result;
}

unint64_t sub_24B4CE308()
{
  result = qword_27EFFD1A8;
  if (!qword_27EFFD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1A8);
  }

  return result;
}

unint64_t sub_24B4CE360()
{
  result = qword_27EFFD1B0;
  if (!qword_27EFFD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1B0);
  }

  return result;
}

unint64_t sub_24B4CE3B8()
{
  result = qword_27EFFD1B8;
  if (!qword_27EFFD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1B8);
  }

  return result;
}

unint64_t sub_24B4CE410()
{
  result = qword_27EFFD1C0;
  if (!qword_27EFFD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1C0);
  }

  return result;
}

unint64_t sub_24B4CE468()
{
  result = qword_27EFFD1C8;
  if (!qword_27EFFD1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1C8);
  }

  return result;
}

unint64_t sub_24B4CE4C0()
{
  result = qword_27EFFD1D0;
  if (!qword_27EFFD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1D0);
  }

  return result;
}

unint64_t sub_24B4CE518()
{
  result = qword_27EFFD1D8;
  if (!qword_27EFFD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1D8);
  }

  return result;
}

unint64_t sub_24B4CE570()
{
  result = qword_27EFFD1E0;
  if (!qword_27EFFD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1E0);
  }

  return result;
}

uint64_t NewAndFeaturedFeature.environment.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

uint64_t sub_24B4CE620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a5;
  v24[3] = a6;
  v24[4] = a7;
  v24[5] = a8;
  v24[6] = a9;
  v24[7] = a10;
  v13 = type metadata accessor for NewAndFeaturedFeature.TaskIdentifier();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(*(TupleTypeMetadata2 - 8) + 64);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v18 = v24 - v17;
  v19 = *(v16 + 56);
  v20 = *(*(v13 - 8) + 16);
  v20(v24 - v17, a1, v13);
  v20(&v18[v19], a2, v13);
  v21 = *(a10 + 8);
  LOBYTE(a2) = sub_24B517AAC();
  v22 = *(*(a4 - 8) + 8);
  v22(&v18[v19], a4);
  v22(v18, a4);
  return a2 & 1;
}

uint64_t sub_24B4CE794(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v2, a2);
  MEMORY[0x24C241D70](0);
  v8 = *(a2 + 24);
  v9 = *(a2 + 72);
  sub_24B517A9C();
  return (*(*(v8 - 8) + 8))(v6, v8);
}

uint64_t sub_24B4CE8A8(uint64_t a1)
{
  sub_24B517F7C();
  sub_24B4CE794(v3, a1);
  return sub_24B517FBC();
}

uint64_t sub_24B4CE8F8(uint64_t a1, uint64_t a2)
{
  sub_24B517F7C();
  sub_24B4CE794(v4, a2);
  return sub_24B517FBC();
}

__n128 NewAndFeaturedFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t NewAndFeaturedFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v95 = a4;
  v93 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD1E8, &unk_24B51F1E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v91 = &v82 - v9;
  v10 = a5[2];
  v11 = a5[3];
  v12 = a5[4];
  v13 = a5[5];
  v14 = a5[6];
  v15 = a5[7];
  v17 = a5[8];
  v16 = a5[9];
  v100 = v10;
  v107 = v10;
  v108 = v11;
  v105 = v13;
  v106 = v12;
  v109 = v12;
  v110 = v13;
  v104 = v14;
  v111 = v14;
  v112 = v15;
  v113 = v17;
  v114 = v16;
  v88 = type metadata accessor for NewAndFeaturedFeature.TaskIdentifier();
  v90 = *(v88 - 8);
  v18 = *(v90 + 64);
  MEMORY[0x28223BE20](v88);
  v20 = &v82 - v19;
  v107 = v11;
  v108 = v15;
  v102 = v17;
  v103 = v15;
  v109 = v17;
  v110 = v16;
  v101 = v16;
  v21 = type metadata accessor for NewAndFeaturedAction();
  v94 = sub_24B51794C();
  v92 = *(v94 - 8);
  v22 = *(v92 + 64);
  v23 = MEMORY[0x28223BE20](v94);
  v25 = &v82 - v24;
  v26 = *(v11 - 8);
  v27 = v26[8];
  v28 = MEMORY[0x28223BE20](v23);
  v89 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v82 - v30;
  v32 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v34 = &v82 - v33;
  v35 = v5[1];
  v37 = v5[2];
  v36 = v5[3];
  v96 = *v5;
  v97 = v37;
  v98 = v35;
  v99 = v36;
  (*(v38 + 16))(v34, v95, v21);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  if ((*(*(TupleTypeMetadata3 - 8) + 48))(v34, 1, TupleTypeMetadata3) == 1)
  {
    v40 = sub_24B517C0C();
    v41 = v91;
    (*(*(v40 - 8) + 56))(v91, 1, 1, v40);
    sub_24B517BCC();
    v42 = v98;

    v43 = v99;

    v44 = sub_24B517BBC();
    v45 = swift_allocObject();
    v46 = MEMORY[0x277D85700];
    v45[2] = v44;
    v45[3] = v46;
    v45[4] = v100;
    v45[5] = v11;
    v47 = v105;
    v45[6] = v106;
    v45[7] = v47;
    v48 = v103;
    v45[8] = v104;
    v45[9] = v48;
    v49 = v101;
    v45[10] = v102;
    v45[11] = v49;
    v50 = v97;
    v45[12] = v96;
    v45[13] = v42;
    v45[14] = v50;
    v45[15] = v43;
    sub_24B4CF5E4(0, 0, v41, &unk_24B51F1F8, v45);
  }

  else
  {
    v52 = &v34[*(TupleTypeMetadata3 + 48)];
    v53 = *(v52 + 2);
    v54 = *(v52 + 3);
    v55 = *(v52 + 4);
    v56 = *(v52 + 5);
    v57 = *(v52 + 6);
    v58 = *(v52 + 7);
    v80 = *(v52 + 12);
    v81 = *(v52 + 13);
    v78 = *(v52 + 4);
    v79 = *(v52 + 5);
    sub_24B4CF850(*v52, *(v52 + 1));
    v84 = v26;
    v87 = v26[4];
    v87(v31, v34, v11);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD008, &qword_24B51F200);
    v91 = v59[12];
    v83 = v59[16];
    v95 = v59[20];
    v85 = &v25[v59[24]];
    v60 = v26[2];
    v61 = v88;
    v62 = v25;
    v86 = v31;
    v60(v20, v31, v11);
    swift_getWitnessTable();
    sub_24B517D5C();
    (*(v90 + 8))(v20, v61);
    v63 = *MEMORY[0x277D043F0];
    v64 = sub_24B5179AC();
    (*(*(v64 - 8) + 104))(&v25[v83], v63, v64);
    v65 = v89;
    v60(v89, v31, v11);
    v66 = v84;
    v67 = (*(v84 + 80) + 112) & ~*(v84 + 80);
    v68 = swift_allocObject();
    *(v68 + 2) = v100;
    *(v68 + 3) = v11;
    v69 = v105;
    *(v68 + 4) = v106;
    *(v68 + 5) = v69;
    v70 = v103;
    *(v68 + 6) = v104;
    *(v68 + 7) = v70;
    v71 = v101;
    *(v68 + 8) = v102;
    *(v68 + 9) = v71;
    v72 = v97;
    v74 = v98;
    v73 = v99;
    *(v68 + 10) = v96;
    *(v68 + 11) = v74;
    *(v68 + 12) = v72;
    *(v68 + 13) = v73;
    v87(&v68[v67], v65, v11);
    v75 = v85;
    *v85 = &unk_24B51F210;
    *(v75 + 1) = v68;

    sub_24B517BDC();
    v76 = *MEMORY[0x277D043E8];
    v77 = sub_24B51799C();
    (*(*(v77 - 8) + 104))(&v62[v95], v76, v77);
    (*(v92 + 104))(v62, *MEMORY[0x277D043B0], v94);
    sub_24B517B8C();
    sub_24B517B7C();
    return (v66[1])(v86, v11);
  }
}

uint64_t sub_24B4CF138(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_24B517BCC();
  v6[3] = sub_24B517BBC();
  v12 = (a2 + *a2);
  v9 = a2[1];
  v10 = swift_task_alloc();
  v6[4] = v10;
  *v10 = v6;
  v10[1] = sub_24B4C8FCC;

  return v12(a6);
}

uint64_t sub_24B4CF258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = sub_24B517BCC();
  v6[3] = sub_24B517BBC();
  v11 = (a6 + *a6);
  v8 = a6[1];
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_24B4CF36C;

  return v11();
}

uint64_t sub_24B4CF36C()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_24B517B9C();
  if (v2)
  {
    v8 = sub_24B4CFDB4;
  }

  else
  {
    v8 = sub_24B4CA72C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24B4CF4C8(uint64_t a1)
{
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v15 = *(v1 + 56);
  v16 = *(v1 + 40);
  v14 = *(v1 + 72);
  v6 = *(v1 + 16);
  v8 = *(v1 + 88);
  v7 = *(v1 + 96);
  v9 = *(v1 + 104);
  v10 = *(v1 + 112);
  v11 = *(v1 + 120);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24B4CA728;

  return sub_24B4CF258(a1, v6, v5, v7, v9, v10);
}

uint64_t sub_24B4CF5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD1E8, &unk_24B51F1E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_24B4CFCDC(a3, v24 - v10);
  v12 = sub_24B517C0C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24B4CFD4C(v11);
  }

  else
  {
    sub_24B517BFC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24B517B9C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24B517B2C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_24B4CFD4C(a3);

      return v22;
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

  sub_24B4CFD4C(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_24B4CF850(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24B4CF8E0(uint64_t a1)
{
  v15 = *(v1 + 16);
  v12 = *(v1 + 48);
  v13 = *(v1 + 32);
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = (*(*(*(v1 + 24) - 8) + 80) + 112) & ~*(*(*(v1 + 24) - 8) + 80);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  v9 = *(v1 + 104);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24B4C9DE4;

  return sub_24B4CF138(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_24B4CFAD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24B4CFB20(uint64_t *a1, int a2)
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

uint64_t sub_24B4CFB68(uint64_t result, int a2, int a3)
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

uint64_t sub_24B4CFBC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_24B4CFCDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD1E8, &unk_24B51F1E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4CFD4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD1E8, &unk_24B51F1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BrowseEditorialDescriptor.content.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
}

uint64_t BrowseEditorialDescriptor.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t BrowseEditorialDescriptor.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BrowseEditorialDescriptor() + 40);

  return sub_24B4D1850(v3, a1);
}

uint64_t BrowseEditorialDescriptor.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrowseEditorialDescriptor() + 44);
  v4 = sub_24B516B8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BrowseEditorialDescriptor.init(content:displayStyle:galleryDestination:galleryDisplayStyle:identifier:preferredInsetBehavior:subtitle:title:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 9) = a3;
  *(a9 + 10) = a4;
  *(a9 + 11) = a5;
  *(a9 + 16) = a6;
  *(a9 + 24) = a7;
  *(a9 + 32) = a8;
  v12 = type metadata accessor for BrowseEditorialDescriptor();
  sub_24B4D18C0(a10, a9 + *(v12 + 40));
  v13 = *(v12 + 44);
  v14 = sub_24B516B8C();
  v15 = *(*(v14 - 8) + 32);

  return v15(a9 + v13, a11, v14);
}

uint64_t sub_24B4CFFAC()
{
  v1 = *v0;
  v2 = 0x746E65746E6F63;
  v3 = 0x656C746974627573;
  if (v1 != 6)
  {
    v3 = 0x656C746974;
  }

  v4 = 0x696669746E656469;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 2)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0x5379616C70736964;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B4D00BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4D1F0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4D00F0(uint64_t a1)
{
  v2 = sub_24B4D1930();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D012C(uint64_t a1)
{
  v2 = sub_24B4D1930();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseEditorialDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD1F0, &qword_24B51F388);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4D1930();
  sub_24B517FDC();
  v11 = *(v3 + 8);
  v18 = *v3;
  v19 = v11;
  v20 = 0;
  sub_24B4D1984();
  sub_24B517EBC();
  if (!v2)
  {
    LOBYTE(v18) = *(v3 + 9);
    v20 = 1;
    sub_24B49B688();
    sub_24B517EBC();
    LOBYTE(v18) = *(v3 + 10);
    v20 = 2;
    sub_24B4D19D8();
    sub_24B517E6C();
    LOBYTE(v18) = *(v3 + 11);
    v20 = 3;
    sub_24B517E6C();
    v12 = v3[2];
    v13 = v3[3];
    LOBYTE(v18) = 4;
    sub_24B517E7C();
    LOBYTE(v18) = *(v3 + 32);
    v20 = 5;
    sub_24B4D1A2C();
    sub_24B517E6C();
    v14 = type metadata accessor for BrowseEditorialDescriptor();
    v15 = *(v14 + 40);
    LOBYTE(v18) = 6;
    sub_24B516B8C();
    sub_24B47B654(&qword_27EFFC510, MEMORY[0x277CC8C40]);
    sub_24B517E6C();
    v16 = *(v14 + 44);
    LOBYTE(v18) = 7;
    sub_24B517EBC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t BrowseEditorialDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_24B516B8C();
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD218, &qword_24B51F390);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v31 - v13;
  v15 = type metadata accessor for BrowseEditorialDescriptor();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24B4D1930();
  v37 = v14;
  v21 = v38;
  sub_24B517FCC();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v38 = v10;
  v32 = v6;
  v22 = v35;
  v42 = 0;
  sub_24B4D1A80();
  v23 = v36;
  sub_24B517E0C();
  v24 = v41;
  v25 = v18;
  *v18 = v40;
  v18[8] = v24;
  v42 = 1;
  v26 = sub_24B49C974();
  sub_24B517E0C();
  v31[1] = v26;
  *(v25 + 9) = v40;
  v42 = 2;
  sub_24B4D1AD4();
  sub_24B517DBC();
  *(v25 + 10) = v40;
  v42 = 3;
  sub_24B517DBC();
  *(v25 + 11) = v40;
  LOBYTE(v40) = 4;
  *(v25 + 16) = sub_24B517DCC();
  *(v25 + 24) = v27;
  v42 = 5;
  sub_24B4D1B28();
  sub_24B517DBC();
  *(v25 + 32) = v40;
  LOBYTE(v40) = 6;
  sub_24B47B654(&qword_27EFFC588, MEMORY[0x277CC8C40]);
  v28 = v38;
  sub_24B517DBC();
  sub_24B4D18C0(v28, v25 + *(v15 + 40));
  LOBYTE(v40) = 7;
  v29 = v32;
  sub_24B517E0C();
  (*(v22 + 8))(v37, v23);
  (*(v34 + 32))(v25 + *(v15 + 44), v29, v3);
  sub_24B4D1B7C(v25, v33, type metadata accessor for BrowseEditorialDescriptor);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_24B4D1BE4(v25, type metadata accessor for BrowseEditorialDescriptor);
}

uint64_t BrowseEditorialDescriptor.hash(into:)(__int128 *a1)
{
  v3 = sub_24B516B8C();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = &v54 - v9;
  v10 = type metadata accessor for BrowseItem();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BrowseLazyItem();
  v60 = *(v13 - 8);
  v14 = *(v60 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  v20 = *v1;
  v59 = v1;
  v21 = *(v1 + 8);
  v55 = v6;
  if (v21)
  {
    MEMORY[0x24C241D70](1);
    sub_24B4844E8(a1, v20);
    goto LABEL_18;
  }

  MEMORY[0x24C241D70](0);
  MEMORY[0x24C241D70](*(v20 + 16));
  v62 = *(v20 + 16);
  if (v62)
  {
    v22 = 0;
    v61 = v20 + 32;
    v67 = v19;
    v68 = v13;
    while (1)
    {
      v66 = v22;
      v23 = (v61 + 24 * v22);
      v24 = *v23;
      v63 = v23[1];
      v25 = v23[2];
      v26 = *(v24 + 16);
      MEMORY[0x24C241D70](v26);
      v64 = v25;
      v65 = v24;
      if (v26)
      {
        break;
      }

LABEL_6:
      v22 = v66 + 1;
      sub_24B517B3C();

      if (v22 == v62)
      {
        goto LABEL_18;
      }
    }

    v27 = v60;
    v28 = v24 + ((*(v60 + 80) + 32) & ~*(v60 + 80));

    v29 = *(v27 + 72);
    v70 = v29;
    while (1)
    {
      sub_24B4D1B7C(v28, v19, type metadata accessor for BrowseLazyItem);
      sub_24B4D1B7C(v19, v17, type metadata accessor for BrowseLazyItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v30 = v69;
      sub_24B4850B8(v17, v69);
      MEMORY[0x24C241D70](0);
      BrowseItem.hash(into:)(a1);
      sub_24B4D1BE4(v30, type metadata accessor for BrowseItem);
LABEL_10:
      sub_24B4D1BE4(v19, type metadata accessor for BrowseLazyItem);
      v28 += v29;
      if (!--v26)
      {
        goto LABEL_6;
      }
    }

    v31 = *(v17 + 1);
    v32 = *(v17 + 2);
    v33 = *(v17 + 4);
    v34 = *(v17 + 5);
    v35 = *(v17 + 6);
    v71 = *(v17 + 3);
    v72 = v34;
    v36 = *(v17 + 8);
    v73 = *(v17 + 7);
    v74 = v35;
    v37 = v17[72];
    v38 = a1;
    v39 = *v17;
    MEMORY[0x24C241D70](1);
    v40 = v39;
    a1 = v38;
    BrowseDisplayStyle.rawValue.getter(v40);
    sub_24B517B3C();

    if (v32)
    {
      sub_24B517F9C();
      sub_24B517B3C();
      if (v33)
      {
LABEL_14:
        sub_24B517F9C();
        sub_24B517B3C();
LABEL_17:
        sub_24B517B3C();
        sub_24B517B3C();
        sub_24B517B3C();

        v19 = v67;
        v29 = v70;
        goto LABEL_10;
      }
    }

    else
    {
      sub_24B517F9C();
      if (v33)
      {
        goto LABEL_14;
      }
    }

    sub_24B517F9C();
    goto LABEL_17;
  }

LABEL_18:
  v41 = v59;
  BrowseDisplayStyle.rawValue.getter(*(v59 + 9));
  sub_24B517B3C();

  v42 = *(v41 + 10);
  sub_24B517F9C();
  if (v42 != 2)
  {
    MEMORY[0x24C241D70](v42 & 1);
  }

  v44 = v57;
  v43 = v58;
  v45 = v56;
  v46 = *(v41 + 11);
  sub_24B517F9C();
  if (v46 != 36)
  {
    BrowseDisplayStyle.rawValue.getter(v46);
    sub_24B517B3C();
  }

  v47 = *(v41 + 16);
  v48 = *(v41 + 24);
  sub_24B517B3C();
  v49 = *(v41 + 32);
  sub_24B517F9C();
  if (v49 != 2)
  {
    MEMORY[0x24C241D70](v49 & 1);
  }

  v50 = type metadata accessor for BrowseEditorialDescriptor();
  sub_24B4D1850(v41 + *(v50 + 40), v45);
  if ((*(v44 + 48))(v45, 1, v43) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    v51 = v55;
    (*(v44 + 32))(v55, v45, v43);
    sub_24B517F9C();
    sub_24B47B654(&qword_2810EED98, MEMORY[0x277CC8C40]);
    sub_24B517A9C();
    (*(v44 + 8))(v51, v43);
  }

  v52 = *(v50 + 44);
  sub_24B47B654(&qword_2810EED98, MEMORY[0x277CC8C40]);
  return sub_24B517A9C();
}

uint64_t BrowseEditorialDescriptor.hashValue.getter()
{
  sub_24B517F7C();
  BrowseEditorialDescriptor.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4D12E0()
{
  sub_24B517F7C();
  BrowseEditorialDescriptor.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4D1324()
{
  sub_24B517F7C();
  BrowseEditorialDescriptor.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing25BrowseEditorialDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516B8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC608, &qword_24B51F5B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = *a1;
  v19 = *a2;
  v20 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      goto LABEL_38;
    }

    v47 = v15;
    if ((sub_24B483BA0(v18, v19) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      goto LABEL_38;
    }

    v47 = v15;
    if ((sub_24B482FB8(v18, v19) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v21 = *(a2 + 9);
  v22 = BrowseDisplayStyle.rawValue.getter(*(a1 + 9));
  v24 = v23;
  if (v22 == BrowseDisplayStyle.rawValue.getter(v21) && v24 == v25)
  {
  }

  else
  {
    v26 = sub_24B517EEC();

    if ((v26 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v27 = *(a1 + 10);
  v28 = *(a2 + 10);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v29 = 0;
    if (v28 == 2 || ((v28 ^ v27) & 1) != 0)
    {
      return v29 & 1;
    }
  }

  v30 = *(a1 + 11);
  v31 = *(a2 + 11);
  if (v30 == 36)
  {
    if (v31 != 36)
    {
      goto LABEL_38;
    }
  }

  else
  {
    if (v31 == 36)
    {
      goto LABEL_38;
    }

    v32 = BrowseDisplayStyle.rawValue.getter(v30);
    v34 = v33;
    if (v32 == BrowseDisplayStyle.rawValue.getter(v31) && v34 == v35)
    {
    }

    else
    {
      v36 = sub_24B517EEC();

      if ((v36 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_24B517EEC() & 1) == 0)
  {
    goto LABEL_38;
  }

  v37 = *(a1 + 32);
  v38 = *(a2 + 32);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  v29 = 0;
  if (v38 != 2 && ((v38 ^ v37) & 1) == 0)
  {
LABEL_32:
    v46 = type metadata accessor for BrowseEditorialDescriptor();
    v39 = *(v46 + 40);
    v40 = *(v47 + 48);
    sub_24B4D1850(a1 + v39, v17);
    sub_24B4D1850(a2 + v39, &v17[v40]);
    v41 = *(v5 + 48);
    if (v41(v17, 1, v4) == 1)
    {
      if (v41(&v17[v40], 1, v4) == 1)
      {
        sub_24B49689C(v17, &qword_27EFFC4E8, &qword_24B51F380);
LABEL_41:
        v45 = *(v46 + 44);
        v29 = sub_24B516B7C();
        return v29 & 1;
      }

      goto LABEL_37;
    }

    sub_24B4D1850(v17, v12);
    if (v41(&v17[v40], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
LABEL_37:
      sub_24B49689C(v17, &qword_27EFFC608, &qword_24B51F5B0);
      goto LABEL_38;
    }

    (*(v5 + 32))(v8, &v17[v40], v4);
    sub_24B47B654(&qword_2810EED90, MEMORY[0x277CC8C40]);
    v43 = sub_24B517AAC();
    v44 = *(v5 + 8);
    v44(v8, v4);
    v44(v12, v4);
    sub_24B49689C(v17, &qword_27EFFC4E8, &qword_24B51F380);
    if (v43)
    {
      goto LABEL_41;
    }

LABEL_38:
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_24B4D1850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4D18C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4D1930()
{
  result = qword_27EFFD1F8;
  if (!qword_27EFFD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD1F8);
  }

  return result;
}

unint64_t sub_24B4D1984()
{
  result = qword_27EFFD200;
  if (!qword_27EFFD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD200);
  }

  return result;
}

unint64_t sub_24B4D19D8()
{
  result = qword_27EFFD208;
  if (!qword_27EFFD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD208);
  }

  return result;
}

unint64_t sub_24B4D1A2C()
{
  result = qword_27EFFD210;
  if (!qword_27EFFD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD210);
  }

  return result;
}

unint64_t sub_24B4D1A80()
{
  result = qword_27EFFD220;
  if (!qword_27EFFD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD220);
  }

  return result;
}

unint64_t sub_24B4D1AD4()
{
  result = qword_27EFFD228;
  if (!qword_27EFFD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD228);
  }

  return result;
}

unint64_t sub_24B4D1B28()
{
  result = qword_27EFFD230;
  if (!qword_27EFFD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD230);
  }

  return result;
}

uint64_t sub_24B4D1B7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4D1BE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for BrowseEditorialDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BrowseEditorialDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B4D1E08()
{
  result = qword_27EFFD240;
  if (!qword_27EFFD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD240);
  }

  return result;
}

unint64_t sub_24B4D1E60()
{
  result = qword_27EFFD248;
  if (!qword_27EFFD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD248);
  }

  return result;
}

unint64_t sub_24B4D1EB8()
{
  result = qword_27EFFD250;
  if (!qword_27EFFD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD250);
  }

  return result;
}

uint64_t sub_24B4D1F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B5278A0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B5278C0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B5278E0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t BrowseArtwork.init(backgroundColor:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24B49AA90(a1, a3, &qword_27EFFCBE0, &qword_24B51CCA8);
  v5 = type metadata accessor for BrowseArtwork();
  return sub_24B49AA90(a2, a3 + *(v5 + 20), &qword_27EFFCBD8, &qword_24B51CCA0);
}

uint64_t sub_24B4D228C()
{
  if (*v0)
  {
    result = 0x6574616C706D6574;
  }

  else
  {
    result = 0x756F72676B636162;
  }

  *v0;
  return result;
}

uint64_t sub_24B4D22DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B4D23C4(uint64_t a1)
{
  v2 = sub_24B4D26A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D2400(uint64_t a1)
{
  v2 = sub_24B4D26A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD258, &qword_24B51F5B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4D26A0();
  sub_24B517FDC();
  v11[15] = 0;
  sub_24B516CAC();
  sub_24B47B7BC(&qword_27EFFD268, MEMORY[0x277D09D68]);
  sub_24B517E6C();
  if (!v1)
  {
    v9 = *(type metadata accessor for BrowseArtwork() + 20);
    v11[14] = 1;
    sub_24B516BAC();
    sub_24B47B7BC(&qword_27EFFC048, MEMORY[0x277CC9260]);
    sub_24B517E6C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24B4D26A0()
{
  result = qword_27EFFD260;
  if (!qword_27EFFD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD260);
  }

  return result;
}

uint64_t BrowseArtwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBD8, &qword_24B51CCA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v28 = &v24 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD270, &qword_24B51F5C0);
  v27 = *(v29 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v13 = &v24 - v12;
  v14 = type metadata accessor for BrowseArtwork();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4D26A0();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v19 = v17;
  v20 = v27;
  sub_24B516CAC();
  v31 = 0;
  sub_24B47B7BC(&qword_27EFFD278, MEMORY[0x277D09D68]);
  v21 = v28;
  v22 = v29;
  sub_24B517DBC();
  sub_24B49AA90(v21, v19, &qword_27EFFCBE0, &qword_24B51CCA8);
  sub_24B516BAC();
  v30 = 1;
  sub_24B47B7BC(&qword_27EFFC068, MEMORY[0x277CC9260]);
  sub_24B517DBC();
  (*(v20 + 8))(v13, v22);
  sub_24B49AA90(v7, v19 + *(v25 + 20), &qword_27EFFCBD8, &qword_24B51CCA0);
  sub_24B4D2AA4(v19, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B4D2B08(v19);
}

uint64_t sub_24B4D2AA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseArtwork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4D2B08(uint64_t a1)
{
  v2 = type metadata accessor for BrowseArtwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BrowseArtwork.hash(into:)()
{
  v1 = v0;
  v2 = sub_24B516BAC();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBD8, &qword_24B51CCA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_24B516CAC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v23 - v16;
  sub_24B496724(v1, &v23 - v16, &qword_27EFFCBE0, &qword_24B51CCA8);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_24B517F9C();
    sub_24B47B7BC(&qword_2810EED50, MEMORY[0x277D09D68]);
    sub_24B517A9C();
    (*(v10 + 8))(v13, v9);
  }

  v18 = type metadata accessor for BrowseArtwork();
  sub_24B496724(v1 + *(v18 + 20), v8, &qword_27EFFCBD8, &qword_24B51CCA0);
  v20 = v25;
  v19 = v26;
  if ((*(v25 + 48))(v8, 1, v26) == 1)
  {
    return sub_24B517F9C();
  }

  v22 = v24;
  (*(v20 + 32))(v24, v8, v19);
  sub_24B517F9C();
  sub_24B47B7BC(&qword_2810EED80, MEMORY[0x277CC9260]);
  sub_24B517A9C();
  return (*(v20 + 8))(v22, v19);
}

uint64_t BrowseArtwork.hashValue.getter()
{
  sub_24B517F7C();
  BrowseArtwork.hash(into:)();
  return sub_24B517FBC();
}

uint64_t sub_24B4D2F80()
{
  sub_24B517F7C();
  BrowseArtwork.hash(into:)();
  return sub_24B517FBC();
}

uint64_t sub_24B4D2FC4()
{
  sub_24B517F7C();
  BrowseArtwork.hash(into:)();
  return sub_24B517FBC();
}

BOOL _s15FitnessBrowsing13BrowseArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516BAC();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBD8, &qword_24B51CCA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v44 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD298, &qword_24B51F800);
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = &v44 - v11;
  v12 = sub_24B516CAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCBE0, &qword_24B51CCA8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD2A0, &qword_24B51F808);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v44 - v24;
  v26 = *(v23 + 56);
  v48 = a1;
  sub_24B496724(a1, &v44 - v24, &qword_27EFFCBE0, &qword_24B51CCA8);
  v49 = a2;
  sub_24B496724(a2, &v25[v26], &qword_27EFFCBE0, &qword_24B51CCA8);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_24B496724(v25, v20, &qword_27EFFCBE0, &qword_24B51CCA8);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      (*(v13 + 32))(v16, &v25[v26], v12);
      sub_24B47B7BC(&qword_2810EED48, MEMORY[0x277D09D68]);
      v31 = sub_24B517AAC();
      v32 = *(v13 + 8);
      v32(v16, v12);
      v32(v20, v12);
      sub_24B49689C(v25, &qword_27EFFCBE0, &qword_24B51CCA8);
      if ((v31 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v13 + 8))(v20, v12);
LABEL_6:
    v28 = &qword_27EFFD2A0;
    v29 = &qword_24B51F808;
    v30 = v25;
LABEL_14:
    sub_24B49689C(v30, v28, v29);
    return 0;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_24B49689C(v25, &qword_27EFFCBE0, &qword_24B51CCA8);
LABEL_8:
  v33 = *(type metadata accessor for BrowseArtwork() + 20);
  v34 = v47;
  v35 = *(v46 + 48);
  sub_24B496724(v48 + v33, v47, &qword_27EFFCBD8, &qword_24B51CCA0);
  sub_24B496724(v49 + v33, v34 + v35, &qword_27EFFCBD8, &qword_24B51CCA0);
  v37 = v50;
  v36 = v51;
  v38 = *(v50 + 48);
  if (v38(v34, 1, v51) == 1)
  {
    if (v38(v34 + v35, 1, v36) == 1)
    {
      sub_24B49689C(v34, &qword_27EFFCBD8, &qword_24B51CCA0);
      return 1;
    }

    goto LABEL_13;
  }

  v39 = v45;
  sub_24B496724(v34, v45, &qword_27EFFCBD8, &qword_24B51CCA0);
  if (v38(v34 + v35, 1, v36) == 1)
  {
    (*(v37 + 8))(v39, v36);
LABEL_13:
    v28 = &qword_27EFFD298;
    v29 = &qword_24B51F800;
    v30 = v34;
    goto LABEL_14;
  }

  v41 = v44;
  (*(v37 + 32))(v44, v34 + v35, v36);
  sub_24B47B7BC(&qword_2810EED78, MEMORY[0x277CC9260]);
  v42 = sub_24B517AAC();
  v43 = *(v37 + 8);
  v43(v41, v36);
  v43(v39, v36);
  sub_24B49689C(v34, &qword_27EFFCBD8, &qword_24B51CCA0);
  return (v42 & 1) != 0;
}

unint64_t sub_24B4D3670()
{
  result = qword_27EFFD280;
  if (!qword_27EFFD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD280);
  }

  return result;
}

unint64_t sub_24B4D36C8()
{
  result = qword_27EFFD288;
  if (!qword_27EFFD288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD288);
  }

  return result;
}

unint64_t sub_24B4D3720()
{
  result = qword_27EFFD290;
  if (!qword_27EFFD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD290);
  }

  return result;
}

uint64_t sub_24B4D3784(uint64_t a1)
{
  v2 = sub_24B4D4014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D37C0(uint64_t a1)
{
  v2 = sub_24B4D4014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4D37FC(uint64_t a1)
{
  v2 = sub_24B4D3FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D3838(uint64_t a1)
{
  v2 = sub_24B4D3FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4D3874(uint64_t a1)
{
  v2 = sub_24B4D3F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D38B0(uint64_t a1)
{
  v2 = sub_24B4D3F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4D38EC()
{
  v1 = 0x654C6D6F74746F62;
  v2 = 0x654C7265746E6563;
  if (*v0 != 2)
  {
    v2 = 0x696461654C706F74;
  }

  if (*v0)
  {
    v1 = 0x7265746E6563;
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

uint64_t sub_24B4D3970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4D4138(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4D3998(uint64_t a1)
{
  v2 = sub_24B4D3EC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D39D4(uint64_t a1)
{
  v2 = sub_24B4D3EC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4D3A10(uint64_t a1)
{
  v2 = sub_24B4D3F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D3A4C(uint64_t a1)
{
  v2 = sub_24B4D3F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicBrickDisplayStyle.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD2A8, &qword_24B51F810);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD2B0, &qword_24B51F818);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD2B8, &qword_24B51F820);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD2C0, &qword_24B51F828);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD2C8, &qword_24B51F830);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4D3EC4();
  sub_24B517FDC();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_24B4D3F6C();
      v12 = v29;
      sub_24B517E3C();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_24B4D3F18();
      v12 = v32;
      sub_24B517E3C();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_24B4D3FC0();
    sub_24B517E3C();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_24B4D4014();
  sub_24B517E3C();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_24B4D3EC4()
{
  result = qword_27EFFD2D0;
  if (!qword_27EFFD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD2D0);
  }

  return result;
}

unint64_t sub_24B4D3F18()
{
  result = qword_27EFFD2D8;
  if (!qword_27EFFD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD2D8);
  }

  return result;
}

unint64_t sub_24B4D3F6C()
{
  result = qword_27EFFD2E0;
  if (!qword_27EFFD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD2E0);
  }

  return result;
}

unint64_t sub_24B4D3FC0()
{
  result = qword_27EFFD2E8;
  if (!qword_27EFFD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD2E8);
  }

  return result;
}

unint64_t sub_24B4D4014()
{
  result = qword_27EFFD2F0;
  if (!qword_27EFFD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD2F0);
  }

  return result;
}

void *sub_24B4D4080@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B4D42B0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t DynamicBrickDisplayStyle.hashValue.getter(unsigned __int8 a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1);
  return sub_24B517FBC();
}

uint64_t sub_24B4D4138(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654C6D6F74746F62 && a2 == 0xED0000676E696461;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654C7265746E6563 && a2 == 0xED0000676E696461 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696461654C706F74 && a2 == 0xEA0000000000676ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_24B4D42B0(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD358, &qword_24B51FD30);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x28223BE20](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD360, &qword_24B51FD38);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD368, &qword_24B51FD40);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD370, &qword_24B51FD48);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD378, &unk_24B51FD50);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24B4D3EC4();
  v21 = v50;
  sub_24B517FCC();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_24B517E1C();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_24B4A39B4();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_24B4D3FC0();
        v36 = v40;
        sub_24B517D7C();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_24B4D4014();
        v29 = v40;
        sub_24B517D7C();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_24B4D3F6C();
      v35 = v40;
      sub_24B517D7C();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_24B4D3F18();
      v37 = v40;
      sub_24B517D7C();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_24B517D0C();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
  *v15 = &type metadata for DynamicBrickDisplayStyle;
  sub_24B517D8C();
  sub_24B517CFC();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x277D84160], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v15;
}

unint64_t sub_24B4D48F4()
{
  result = qword_27EFFD2F8;
  if (!qword_27EFFD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD2F8);
  }

  return result;
}

unint64_t sub_24B4D49AC()
{
  result = qword_27EFFD300;
  if (!qword_27EFFD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD300);
  }

  return result;
}

unint64_t sub_24B4D4A04()
{
  result = qword_27EFFD308;
  if (!qword_27EFFD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD308);
  }

  return result;
}

unint64_t sub_24B4D4A5C()
{
  result = qword_27EFFD310;
  if (!qword_27EFFD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD310);
  }

  return result;
}

unint64_t sub_24B4D4AB4()
{
  result = qword_27EFFD318;
  if (!qword_27EFFD318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD318);
  }

  return result;
}

unint64_t sub_24B4D4B0C()
{
  result = qword_27EFFD320;
  if (!qword_27EFFD320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD320);
  }

  return result;
}

unint64_t sub_24B4D4B64()
{
  result = qword_27EFFD328;
  if (!qword_27EFFD328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD328);
  }

  return result;
}

unint64_t sub_24B4D4BBC()
{
  result = qword_27EFFD330;
  if (!qword_27EFFD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD330);
  }

  return result;
}

unint64_t sub_24B4D4C14()
{
  result = qword_27EFFD338;
  if (!qword_27EFFD338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD338);
  }

  return result;
}

unint64_t sub_24B4D4C6C()
{
  result = qword_27EFFD340;
  if (!qword_27EFFD340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD340);
  }

  return result;
}

unint64_t sub_24B4D4CC4()
{
  result = qword_27EFFD348;
  if (!qword_27EFFD348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD348);
  }

  return result;
}

unint64_t sub_24B4D4D1C()
{
  result = qword_27EFFD350;
  if (!qword_27EFFD350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD350);
  }

  return result;
}

uint64_t BrowseItemPlaceholder.editorialCardIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t BrowseItemPlaceholder.groupTitle.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t BrowseItemPlaceholder.identifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t BrowseItemPlaceholder.referenceIdentifier.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_24B4D4E6C()
{
  v1 = *v0;
  v2 = 0x5379616C70736964;
  v3 = 0x696669746E656469;
  v4 = 0x636E657265666572;
  if (v1 == 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 != 1)
  {
    v5 = 0x74695470756F7267;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B4D4F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4D5DD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4D4F74(uint64_t a1)
{
  v2 = sub_24B4D52A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D4FB0(uint64_t a1)
{
  v2 = sub_24B4D52A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseItemPlaceholder.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD380, &qword_24B51FD60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v29 = *(v1 + 2);
  v30 = v10;
  v11 = *(v1 + 3);
  v27 = *(v1 + 4);
  v28 = v11;
  v12 = *(v1 + 5);
  v25 = *(v1 + 6);
  v26 = v12;
  v13 = *(v1 + 8);
  v23 = *(v1 + 7);
  v24 = v13;
  v14 = v1[72];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v15);
  sub_24B4D52A8();
  sub_24B517FDC();
  v38 = v9;
  v37 = 0;
  sub_24B49B688();
  sub_24B517EBC();
  if (!v2)
  {
    v22 = v14;
    v36 = 1;
    sub_24B517E4C();
    v35 = 2;
    sub_24B517E4C();
    v34 = 3;
    sub_24B517E7C();
    v33 = 4;
    sub_24B517E7C();
    v32 = v22;
    v31 = 5;
    sub_24B49B784();
    sub_24B517EBC();
  }

  return (*(v5 + 8))(v8, v19);
}

unint64_t sub_24B4D52A8()
{
  result = qword_27EFFD388;
  if (!qword_27EFFD388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD388);
  }

  return result;
}

uint64_t BrowseItemPlaceholder.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD390, &qword_24B51FD68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4D52A8();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33) = 0;
  sub_24B49C974();
  sub_24B517E0C();
  v11 = v37[0];
  v37[0] = 1;
  v12 = sub_24B517D9C();
  v47 = v11;
  v32 = v13;
  v37[0] = 2;
  v14 = sub_24B517D9C();
  v31 = v15;
  v29 = v14;
  v37[0] = 3;
  v28 = sub_24B517DCC();
  v30 = v16;
  v37[0] = 4;
  v27 = sub_24B517DCC();
  v18 = v17;
  v48 = 5;
  sub_24B49CADC();
  sub_24B517E0C();
  (*(v6 + 8))(v9, v5);
  HIDWORD(v26) = v49;
  v19 = v47;
  LOBYTE(v33) = v47;
  v20 = v32;
  *(&v33 + 1) = v12;
  *&v34 = v32;
  v21 = v29;
  *(&v34 + 1) = v29;
  *&v35 = v31;
  v22 = v30;
  *(&v35 + 1) = v28;
  *v36 = v30;
  *&v36[8] = v27;
  *&v36[16] = v18;
  v36[24] = v49;
  v23 = *v36;
  a2[2] = v35;
  a2[3] = v23;
  v24 = v34;
  *a2 = v33;
  a2[1] = v24;
  *(a2 + 57) = *&v36[9];
  sub_24B4D5738(&v33, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v19;
  v38 = v12;
  v39 = v20;
  v40 = v21;
  v41 = v31;
  v42 = v28;
  v43 = v22;
  v44 = v27;
  v45 = v18;
  v46 = BYTE4(v26);
  return sub_24B4851E4(v37);
}

uint64_t BrowseItemPlaceholder.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v10 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  BrowseDisplayStyle.rawValue.getter(*v0);
  sub_24B517B3C();

  if (v2)
  {
    sub_24B517F9C();
    sub_24B517B3C();
    if (v3)
    {
LABEL_3:
      sub_24B517F9C();
      sub_24B517B3C();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24B517F9C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  sub_24B517F9C();
LABEL_6:
  sub_24B517B3C();
  sub_24B517B3C();

  return sub_24B49A070();
}

uint64_t BrowseItemPlaceholder.hashValue.getter()
{
  sub_24B517F7C();
  BrowseItemPlaceholder.hash(into:)();
  return sub_24B517FBC();
}

uint64_t sub_24B4D5904()
{
  sub_24B517F7C();
  BrowseItemPlaceholder.hash(into:)();
  return sub_24B517FBC();
}

uint64_t sub_24B4D5948()
{
  sub_24B517F7C();
  BrowseItemPlaceholder.hash(into:)();
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing21BrowseItemPlaceholderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v23 = *(a1 + 48);
  v24 = *(a1 + 24);
  v17 = *(a1 + 72);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v25 = *(a2 + 40);
  v26 = *(a1 + 40);
  v21 = *(a1 + 56);
  v22 = *(a2 + 48);
  v19 = *(a1 + 64);
  v20 = *(a2 + 56);
  v18 = *(a2 + 64);
  v16 = *(a2 + 72);
  v9 = *a2;
  v10 = BrowseDisplayStyle.rawValue.getter(*a1);
  v12 = v11;
  if (v10 == BrowseDisplayStyle.rawValue.getter(v9) && v12 == v13)
  {
  }

  else
  {
    v14 = sub_24B517EEC();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!v6 || (v2 != v5 || v3 != v6) && (sub_24B517EEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (!v4)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v8 || (v24 != v7 || v4 != v8) && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if ((v26 != v25 || v23 != v22) && (sub_24B517EEC() & 1) == 0 || (v21 != v20 || v19 != v18) && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  return sub_24B4FED70(v17, v16);
}

unint64_t sub_24B4D5B98()
{
  result = qword_2810EDFE0[0];
  if (!qword_2810EDFE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810EDFE0);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24B4D5C10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24B4D5C58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B4D5CD0()
{
  result = qword_27EFFD398;
  if (!qword_27EFFD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD398);
  }

  return result;
}

unint64_t sub_24B4D5D28()
{
  result = qword_27EFFD3A0;
  if (!qword_27EFFD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD3A0);
  }

  return result;
}

unint64_t sub_24B4D5D80()
{
  result = qword_27EFFD3A8;
  if (!qword_27EFFD3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD3A8);
  }

  return result;
}

uint64_t sub_24B4D5DD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B527900 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74695470756F7267 && a2 == 0xEA0000000000656CLL || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B527610 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006570795465)
  {

    return 5;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

FitnessBrowsing::BrowseFontDesign_optional __swiftcall BrowseFontDesign.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_24B517D6C();

  if (v1 == 1)
  {
    v2.value = FitnessBrowsing_BrowseFontDesign_rounded;
  }

  else
  {
    v2.value = FitnessBrowsing_BrowseFontDesign_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t BrowseFontDesign.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6465646E756F72;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_24B4D6080(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6465646E756F72;
  }

  else
  {
    v2 = 0x746C7561666564;
  }

  if (*a2)
  {
    v3 = 0x6465646E756F72;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_24B517EEC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_24B4D6108@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24B517D6C();

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

void sub_24B4D6168(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x6465646E756F72;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

unint64_t sub_24B4D61A4()
{
  result = qword_27EFFD3B0;
  if (!qword_27EFFD3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFD3B8, &qword_24B520010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD3B0);
  }

  return result;
}

unint64_t sub_24B4D62CC()
{
  result = qword_27EFFD3C0;
  if (!qword_27EFFD3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD3C0);
  }

  return result;
}

uint64_t sub_24B4D6320()
{
  v1 = *v0;
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t sub_24B4D6398()
{
  *v0;
  sub_24B517B3C();
}

uint64_t sub_24B4D63F4()
{
  v1 = *v0;
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

unint64_t sub_24B4D6478()
{
  result = qword_27EFFD3C8;
  if (!qword_27EFFD3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD3C8);
  }

  return result;
}

uint64_t BrowseDetailVideoLinkItem.attributedTitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24B516B8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BrowseDetailVideoLinkItem.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for BrowseDetailVideoLinkItem() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t BrowseDetailVideoLinkItem.init(attributedTitle:identifier:videoAsset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_24B516B8C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for BrowseDetailVideoLinkItem();
  v12 = (a5 + *(v11 + 20));
  *v12 = a2;
  v12[1] = a3;
  v13 = a5 + *(v11 + 24);

  return sub_24B4D666C(a4, v13);
}

uint64_t sub_24B4D666C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoAsset();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4D66D0()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x7373416F65646976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_24B4D673C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4D77BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4D6764(uint64_t a1)
{
  v2 = sub_24B4D6A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4D67A0(uint64_t a1)
{
  v2 = sub_24B4D6A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseDetailVideoLinkItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD3D0, &qword_24B520110);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4D6A10();
  sub_24B517FDC();
  v17[15] = 0;
  sub_24B516B8C();
  sub_24B47B69C(&qword_27EFFC510, MEMORY[0x277CC8C40]);
  sub_24B517EBC();
  if (!v2)
  {
    v11 = type metadata accessor for BrowseDetailVideoLinkItem();
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v17[14] = 1;
    sub_24B517E7C();
    v15 = *(v11 + 24);
    v17[13] = 2;
    type metadata accessor for VideoAsset();
    sub_24B47B69C(&qword_27EFFD3E0, type metadata accessor for VideoAsset);
    sub_24B517EBC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_24B4D6A10()
{
  result = qword_27EFFD3D8;
  if (!qword_27EFFD3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD3D8);
  }

  return result;
}

uint64_t BrowseDetailVideoLinkItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = type metadata accessor for VideoAsset();
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24B516B8C();
  v32 = *(v34 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD3E8, &qword_24B520118);
  v31 = *(v35 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v26 - v10;
  v12 = type metadata accessor for BrowseDetailVideoLinkItem();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4D6A10();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v31;
  v18 = v32;
  v27 = v15;
  v28 = a1;
  v26 = v6;
  v38 = 0;
  sub_24B47B69C(&qword_27EFFC588, MEMORY[0x277CC8C40]);
  sub_24B517E0C();
  v19 = v27;
  (*(v18 + 32))();
  v37 = 1;
  v20 = sub_24B517DCC();
  v21 = v19;
  v22 = (v19 + *(v12 + 20));
  *v22 = v20;
  v22[1] = v23;
  v36 = 2;
  sub_24B47B69C(&qword_27EFFD3F0, type metadata accessor for VideoAsset);
  v24 = v26;
  sub_24B517E0C();
  (*(v17 + 8))(v11, v35);
  sub_24B4D666C(v24, v21 + *(v12 + 24));
  sub_24B4D6ED0(v21, v29, type metadata accessor for BrowseDetailVideoLinkItem);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_24B4D6F38(v21);
}

uint64_t sub_24B4D6ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4D6F38(uint64_t a1)
{
  v2 = type metadata accessor for BrowseDetailVideoLinkItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static BrowseDetailVideoLinkItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_24B516B7C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BrowseDetailVideoLinkItem();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);

  return _s15FitnessBrowsing10VideoAssetV2eeoiySbAC_ACtFZ_0((a1 + v10), (a2 + v10));
}

uint64_t BrowseDetailVideoLinkItem.hash(into:)()
{
  sub_24B516B8C();
  sub_24B47B69C(&qword_2810EED98, MEMORY[0x277CC8C40]);
  sub_24B517A9C();
  v1 = type metadata accessor for BrowseDetailVideoLinkItem();
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  sub_24B517B3C();
  v5 = (v0 + *(v1 + 24));
  v6 = *v5;
  v7 = v5[1];
  sub_24B517B3C();
  if (v5[3])
  {
    v8 = v5[2];
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  v9 = *(type metadata accessor for VideoAsset() + 24);
  sub_24B516BAC();
  sub_24B47B69C(&qword_2810EED80, MEMORY[0x277CC9260]);
  return sub_24B517A9C();
}

uint64_t BrowseDetailVideoLinkItem.hashValue.getter()
{
  sub_24B517F7C();
  sub_24B516B8C();
  sub_24B47B69C(&qword_2810EED98, MEMORY[0x277CC8C40]);
  sub_24B517A9C();
  v1 = type metadata accessor for BrowseDetailVideoLinkItem();
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  sub_24B517B3C();
  v5 = (v0 + *(v1 + 24));
  v6 = *v5;
  v7 = v5[1];
  sub_24B517B3C();
  if (v5[3])
  {
    v8 = v5[2];
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  v9 = *(type metadata accessor for VideoAsset() + 24);
  sub_24B516BAC();
  sub_24B47B69C(&qword_2810EED80, MEMORY[0x277CC9260]);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4D730C(uint64_t a1, uint64_t a2)
{
  sub_24B516B8C();
  sub_24B47B69C(&qword_2810EED98, MEMORY[0x277CC8C40]);
  sub_24B517A9C();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_24B517B3C();
  v7 = (v2 + *(a2 + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_24B517B3C();
  if (v7[3])
  {
    v10 = v7[2];
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  v11 = *(type metadata accessor for VideoAsset() + 24);
  sub_24B516BAC();
  sub_24B47B69C(&qword_2810EED80, MEMORY[0x277CC9260]);
  return sub_24B517A9C();
}

uint64_t sub_24B4D7450(uint64_t a1, uint64_t a2)
{
  sub_24B517F7C();
  sub_24B516B8C();
  sub_24B47B69C(&qword_2810EED98, MEMORY[0x277CC8C40]);
  sub_24B517A9C();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_24B517B3C();
  v7 = (v2 + *(a2 + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_24B517B3C();
  if (v7[3])
  {
    v10 = v7[2];
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  v11 = *(type metadata accessor for VideoAsset() + 24);
  sub_24B516BAC();
  sub_24B47B69C(&qword_2810EED80, MEMORY[0x277CC9260]);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4D75A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_24B516B7C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);

  return _s15FitnessBrowsing10VideoAssetV2eeoiySbAC_ACtFZ_0((a1 + v11), (a2 + v11));
}

unint64_t sub_24B4D76B8()
{
  result = qword_27EFFD400;
  if (!qword_27EFFD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD400);
  }

  return result;
}

unint64_t sub_24B4D7710()
{
  result = qword_27EFFD408;
  if (!qword_27EFFD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD408);
  }

  return result;
}

unint64_t sub_24B4D7768()
{
  result = qword_27EFFD410;
  if (!qword_27EFFD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD410);
  }

  return result;
}

uint64_t sub_24B4D77BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475626972747461 && a2 == 0xEF656C7469546465;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373416F65646976 && a2 == 0xEA00000000007465)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t BrowseError.hashValue.getter()
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](0);
  return sub_24B517FBC();
}

unint64_t sub_24B4D7960()
{
  result = qword_27EFFD418;
  if (!qword_27EFFD418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD418);
  }

  return result;
}

uint64_t NewAndFeaturedDataItem.referenceIdentifier.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 112));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t NewAndFeaturedDataItem.sampleContentIdentifier.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 116));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t NewAndFeaturedDataItem.presentationContextKey.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 120);
  v5 = sub_24B516C2C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

__n128 NewAndFeaturedDataItem.init(id:artwork:title:subtitle:assetLoadStatus:healthKitActivityTypes:isBookmarked:mediaType:referenceIdentifier:sampleContentIdentifier:metrics:presentationContextKey:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __n128 *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v39 = a14[4];
  v40 = a14[5];
  v41 = a14[6];
  v35 = *a14;
  v36 = a14[1];
  v37 = a14[2];
  v38 = a14[3];
  (*(*(a17 - 8) + 32))(a9, a1, a17);
  v22 = type metadata accessor for NewAndFeaturedDataItem();
  (*(*(a16 - 8) + 32))(a9 + v22[21], a2, a16);
  v23 = v22[22];
  v24 = sub_24B516DDC();
  v25 = *(*(v24 - 8) + 32);
  v25(a9 + v23, a3, v24);
  v25(a9 + v22[23], a4, v24);
  *(a9 + v22[24]) = a5;
  *(a9 + v22[25]) = a6;
  *(a9 + v22[26]) = a7;
  *(a9 + v22[27]) = a8;
  v26 = (a9 + v22[28]);
  *v26 = a10;
  v26[1] = a11;
  v27 = (a9 + v22[29]);
  *v27 = a12;
  v27[1] = a13;
  v28 = v22[30];
  v29 = sub_24B516C2C();
  (*(*(v29 - 8) + 32))(a9 + v28, a15, v29);
  v30 = (a9 + v22[31]);
  v30[4] = v39;
  v30[5] = v40;
  v30[6] = v41;
  *v30 = v35;
  v30[1] = v36;
  result = v38;
  v30[2] = v37;
  v30[3] = v38;
  return result;
}

BOOL static NewAndFeaturedDataItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  v17 = *(*(&a9 + 1) + 8);
  if ((sub_24B517AAC() & 1) == 0)
  {
    return 0;
  }

  *&v88 = a3;
  *(&v88 + 1) = a4;
  *&v89 = a5;
  *(&v89 + 1) = a6;
  *&v90 = a7;
  *(&v90 + 1) = a8;
  v91 = a9;
  v18 = type metadata accessor for NewAndFeaturedDataItem();
  v19 = v18[21];
  v20 = *(a7 + 8);
  if ((sub_24B517AAC() & 1) == 0)
  {
    return 0;
  }

  v21 = v18[22];
  if ((sub_24B516DCC() & 1) == 0)
  {
    return 0;
  }

  v22 = v18[23];
  if ((sub_24B516DCC() & 1) == 0)
  {
    return 0;
  }

  v23 = v18[24];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 9)
  {
    if (v25 != 9)
    {
      return 0;
    }
  }

  else if (v24 != v25)
  {
    return 0;
  }

  if ((sub_24B48407C(*(a1 + v18[25]), *(a2 + v18[25])) & 1) == 0)
  {
    return 0;
  }

  v26 = v18[26];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      return 0;
    }

    goto LABEL_15;
  }

  result = 0;
  if (v28 != 2 && ((v28 ^ v27) & 1) == 0)
  {
LABEL_15:
    v30 = v18[27];
    v31 = *(a1 + v30);
    v32 = *(a2 + v30);
    if (v31 == 4)
    {
      if (v32 != 4)
      {
        return 0;
      }
    }

    else if (v31 != v32)
    {
      return 0;
    }

    v33 = v18[28];
    v34 = *(a1 + v33);
    v35 = *(a1 + v33 + 8);
    v36 = (a2 + v33);
    if ((v34 != *v36 || v35 != v36[1]) && (sub_24B517EEC() & 1) == 0)
    {
      return 0;
    }

    v37 = v18[29];
    v38 = (a1 + v37);
    v39 = *(a1 + v37 + 8);
    v40 = (a2 + v37);
    v41 = v40[1];
    if (v39)
    {
      if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_24B517EEC() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v41)
    {
      return 0;
    }

    v42 = v18[30];
    if (sub_24B516C0C())
    {
      v43 = v18[31];
      v44 = (a1 + v43);
      v45 = *(a1 + v43 + 48);
      v46 = *(a1 + v43 + 80);
      v117 = *(a1 + v43 + 64);
      v118 = v46;
      v47 = *(a1 + v43 + 80);
      v119 = *(a1 + v43 + 96);
      v48 = *(a1 + v43 + 16);
      v114[0] = *(a1 + v43);
      v114[1] = v48;
      v49 = *(a1 + v43 + 16);
      v50 = *(a1 + v43 + 48);
      v115 = *(a1 + v43 + 32);
      v116 = v50;
      v51 = (a2 + v43);
      v52 = v51[1];
      v120[0] = *v51;
      v120[1] = v52;
      v53 = v51[5];
      v125 = v51[6];
      v54 = v51[3];
      v55 = v51[5];
      v123 = v51[4];
      v124 = v55;
      v56 = v51[1];
      v57 = v51[3];
      v121 = v51[2];
      v122 = v57;
      v110 = v45;
      v111 = v117;
      v58 = v44[6];
      v112 = v47;
      v113 = v58;
      v108 = v49;
      v109 = v115;
      v59 = v114[0];
      v60 = v120[0];
      v102 = v56;
      v103 = v121;
      v61 = v51[6];
      v106 = v53;
      v107 = v61;
      v104 = v54;
      v105 = v123;
      if (*(&v114[0] + 1))
      {
        v88 = v114[0];
        v62 = v44[4];
        v91 = v44[3];
        v92 = v62;
        v63 = v44[6];
        v93 = v44[5];
        v94 = v63;
        v64 = v44[2];
        v89 = v44[1];
        v90 = v64;
        v81 = v114[0];
        v82 = v89;
        v86 = v93;
        v87 = v63;
        v84 = v91;
        v85 = v62;
        v83 = v64;
        if (*(&v120[0] + 1))
        {
          v65 = v51[4];
          v77 = v51[3];
          v78 = v65;
          v66 = v51[6];
          v79 = v51[5];
          v80 = v66;
          v67 = v51[2];
          v75 = v51[1];
          v76 = v67;
          v74 = v120[0];
          v68 = _s15FitnessBrowsing29NewAndFeaturedDataItemMetricsV2eeoiySbAC_ACtFZ_0(&v81, &v74);
          v72[4] = v78;
          v72[5] = v79;
          v72[6] = v80;
          v72[0] = v74;
          v72[1] = v75;
          v72[2] = v76;
          v72[3] = v77;
          sub_24B4D8258(v114, v73);
          sub_24B4D8258(v120, v73);
          sub_24B4D8258(&v88, v73);
          sub_24B4CC6AC(v72);
          v73[4] = v85;
          v73[5] = v86;
          v73[6] = v87;
          v73[0] = v81;
          v73[1] = v82;
          v73[2] = v83;
          v73[3] = v84;
          sub_24B4CC6AC(v73);
          v74 = v59;
          v77 = v110;
          v78 = v111;
          v79 = v112;
          v80 = v113;
          v75 = v108;
          v76 = v109;
          sub_24B49689C(&v74, &qword_27EFFCEA0, &unk_24B5203F0);
          return (v68 & 1) != 0;
        }

        v78 = v92;
        v79 = v93;
        v80 = v94;
        v74 = v88;
        v75 = v89;
        v76 = v90;
        v77 = v91;
        sub_24B4D8258(v114, v73);
        sub_24B4D8258(v120, v73);
        sub_24B4D8258(&v88, v73);
        sub_24B4CC6AC(&v74);
      }

      else
      {
        if (!*(&v120[0] + 1))
        {
          v88 = *&v114[0];
          v69 = v44[4];
          v91 = v44[3];
          v92 = v69;
          v70 = v44[6];
          v93 = v44[5];
          v94 = v70;
          v71 = v44[2];
          v89 = v44[1];
          v90 = v71;
          sub_24B4D8258(v114, &v81);
          sub_24B4D8258(v120, &v81);
          sub_24B49689C(&v88, &qword_27EFFCEA0, &unk_24B5203F0);
          return 1;
        }

        sub_24B4D8258(v114, &v88);
        sub_24B4D8258(v120, &v88);
      }

      v88 = v59;
      v91 = v110;
      v92 = v111;
      v93 = v112;
      v94 = v113;
      v89 = v108;
      v90 = v109;
      v95 = v60;
      v96 = v102;
      v97 = v103;
      v100 = v106;
      v101 = v107;
      v98 = v104;
      v99 = v105;
      sub_24B49689C(&v88, &qword_27EFFD420, &qword_24B524220);
    }

    return 0;
  }

  return result;
}

uint64_t sub_24B4D8258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCEA0, &unk_24B5203F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4D82C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616F4C7465737361 && a2 == 0xEF73757461745364 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B5275F0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x616D6B6F6F427369 && a2 == 0xEC00000064656B72 || (sub_24B517EEC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_24B517EEC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B527610 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024B527630 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B527920 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_24B4D869C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000017;
    v7 = 0x7363697274656DLL;
    if (a1 == 10)
    {
      v7 = 0xD000000000000016;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000013;
    if (a1 == 7)
    {
      v8 = 0x707954616964656DLL;
    }

    if (a1 == 6)
    {
      v8 = 0x616D6B6F6F427369;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x656C746974627573;
    v3 = 0x616F4C7465737361;
    if (a1 != 4)
    {
      v3 = 0xD000000000000016;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6B726F77747261;
    if (a1 != 1)
    {
      v4 = 0x656C746974;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_24B4D8830(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  return sub_24B4D869C(*v1);
}

uint64_t sub_24B4D8868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  v13 = a3[9];
  result = sub_24B4D82C8(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_24B4D88B0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  result = sub_24B4DAF18();
  *a2 = result;
  return result;
}

uint64_t sub_24B4D88EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B4D8940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t NewAndFeaturedDataItem.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 56);
  v39 = *(a2 + 24);
  *&v50[8] = v39;
  v35 = *(a2 + 40);
  *&v50[24] = v35;
  v36 = v3;
  v37 = a2;
  *v50 = v3;
  *&v50[40] = v4;
  v38 = *(a2 + 64);
  v51 = v38;
  type metadata accessor for NewAndFeaturedDataItem.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_24B517ECC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B517FDC();
  v50[0] = 0;
  v11 = v40;
  sub_24B517EBC();
  if (v11)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v6;
  v14 = v37[21];
  v50[0] = 1;
  sub_24B517EBC();
  v15 = v37[22];
  v50[0] = 2;
  sub_24B516DDC();
  sub_24B4DA1EC(&qword_27EFFD428, MEMORY[0x277D096C8]);
  v16 = v9;
  sub_24B517EBC();
  v17 = v37[23];
  v50[0] = 3;
  sub_24B517EBC();
  v18 = v56;
  v50[0] = *(v56 + v37[24]);
  LOBYTE(v43) = 4;
  sub_24B49B634();
  sub_24B517E6C();
  *v50 = *(v18 + v37[25]);
  LOBYTE(v43) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC550, &qword_24B520400);
  sub_24B49CA1C(&qword_27EFFC558);
  sub_24B517EBC();
  v19 = *(v18 + v37[26]);
  v50[0] = 6;
  sub_24B517E5C();
  v50[0] = *(v18 + v37[27]);
  LOBYTE(v43) = 7;
  sub_24B49B730();
  sub_24B517E6C();
  v20 = (v18 + v37[28]);
  v21 = *v20;
  v22 = v20[1];
  v50[0] = 8;
  sub_24B517E7C();
  v23 = (v18 + v37[29]);
  v24 = *v23;
  v25 = v23[1];
  v50[0] = 9;
  sub_24B517E4C();
  v26 = v37[30];
  v55 = 10;
  sub_24B516C2C();
  sub_24B4DA1EC(&qword_27EFFD430, MEMORY[0x277CC95F0]);
  sub_24B517EBC();
  v27 = (v56 + v37[31]);
  v28 = v27[3];
  v29 = v27[5];
  v52 = v27[4];
  v53 = v29;
  v30 = v27[5];
  v54 = v27[6];
  v31 = v27[1];
  *v50 = *v27;
  *&v50[16] = v31;
  v32 = v27[3];
  v34 = *v27;
  v33 = v27[1];
  *&v50[32] = v27[2];
  v51 = v32;
  v47 = v52;
  v48 = v30;
  v49 = v27[6];
  v43 = v34;
  v44 = v33;
  v45 = *&v50[32];
  v46 = v28;
  v42 = 11;
  sub_24B4D8258(v50, v41);
  sub_24B4DA198();
  sub_24B517E6C();
  v41[4] = v47;
  v41[5] = v48;
  v41[6] = v49;
  v41[0] = v43;
  v41[1] = v44;
  v41[2] = v45;
  v41[3] = v46;
  sub_24B49689C(v41, &qword_27EFFCEA0, &unk_24B5203F0);
  return (*(v13 + 8))(v16, v5);
}

uint64_t NewAndFeaturedDataItem.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 24);
  v6 = *(a2 + 72);
  sub_24B517A9C();
  v7 = *(a2 + 16);
  v8 = *(a2 + 48);
  v9 = v2 + *(a2 + 84);
  sub_24B517A9C();
  v10 = *(a2 + 88);
  sub_24B516DDC();
  sub_24B4DA1EC(&qword_2810ED7E8, MEMORY[0x277D096C8]);
  sub_24B517A9C();
  v11 = v3 + *(a2 + 92);
  sub_24B517A9C();
  v12 = *(v3 + *(a2 + 96));
  sub_24B517F9C();
  if (v12 != 9)
  {
    MEMORY[0x24C241D70](v12);
  }

  v13 = *(v3 + *(a2 + 100));
  MEMORY[0x24C241D70](*(v13 + 16));
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (v13 + 32);
    do
    {
      v16 = *v15++;
      MEMORY[0x24C241D70](v16);
      --v14;
    }

    while (v14);
  }

  if (*(v3 + *(a2 + 104)) != 2)
  {
    sub_24B517F9C();
  }

  sub_24B517F9C();
  v17 = *(v3 + *(a2 + 108));
  sub_24B517F9C();
  if (v17 != 4)
  {
    MEMORY[0x24C241D70](v17);
  }

  v18 = (v3 + *(a2 + 112));
  v19 = *v18;
  v20 = v18[1];
  sub_24B517B3C();
  v21 = (v3 + *(a2 + 116));
  if (v21[1])
  {
    v22 = *v21;
    sub_24B517F9C();
    sub_24B517B3C();
  }

  else
  {
    sub_24B517F9C();
  }

  v23 = *(a2 + 120);
  sub_24B516C2C();
  sub_24B4DA1EC(&qword_27EFFD440, MEMORY[0x277CC95F0]);
  sub_24B517A9C();
  v24 = (v3 + *(a2 + 124));
  v25 = v24[5];
  v32 = v24[4];
  v33 = v25;
  v34 = v24[6];
  v26 = v24[1];
  v29[0] = *v24;
  v29[1] = v26;
  v27 = v24[3];
  v30 = v24[2];
  v31 = v27;
  if (!*(&v29[0] + 1))
  {
    return sub_24B517F9C();
  }

  sub_24B517F9C();

  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517F9C();
  if (*(&v30 + 1))
  {
    sub_24B517B3C();
  }

  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  sub_24B517B3C();
  return sub_24B49689C(v29, &qword_27EFFCEA0, &unk_24B5203F0);
}

uint64_t NewAndFeaturedDataItem.hashValue.getter(uint64_t a1)
{
  sub_24B517F7C();
  NewAndFeaturedDataItem.hash(into:)(v3, a1);
  return sub_24B517FBC();
}

uint64_t NewAndFeaturedDataItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v86 = a5;
  v88 = a1;
  v67 = a9;
  v85 = a10;
  v73 = sub_24B516C2C();
  v72 = *(v73 - 8);
  v17 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v68 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24B516DDC();
  v74 = *(v76 - 8);
  v19 = *(v74 + 64);
  v20 = MEMORY[0x28223BE20](v76);
  v69 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v70 = &v66 - v23;
  v71 = *(a2 - 8);
  v24 = *(v71 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v78 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(a3 - 8);
  v27 = *(v75 + 64);
  MEMORY[0x28223BE20](v25);
  v84 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v89 = a2;
  *(&v89 + 1) = a3;
  *&v90 = a4;
  *(&v90 + 1) = a5;
  *&v91 = a6;
  *(&v91 + 1) = a7;
  v29 = a6;
  *&v92 = a8;
  *(&v92 + 1) = a10;
  v30 = a8;
  type metadata accessor for NewAndFeaturedDataItem.CodingKeys();
  swift_getWitnessTable();
  v82 = sub_24B517E2C();
  v81 = *(v82 - 8);
  v31 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v33 = &v66 - v32;
  v77 = a2;
  *&v89 = a2;
  *(&v89 + 1) = a3;
  v83 = a3;
  v79 = a4;
  *&v90 = a4;
  *(&v90 + 1) = v86;
  *&v91 = v29;
  *(&v91 + 1) = a7;
  v80 = a7;
  *&v92 = v30;
  *(&v92 + 1) = v85;
  v34 = v88;
  v35 = type metadata accessor for NewAndFeaturedDataItem();
  v85 = *(v35 - 8);
  v36 = *(v85 + 64);
  MEMORY[0x28223BE20](v35);
  v38 = &v66 - v37;
  v39 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  v86 = v33;
  v40 = v87;
  sub_24B517FCC();
  if (v40)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v41 = v35;
  v42 = v78;
  v87 = v38;
  LOBYTE(v89) = 0;
  v43 = v83;
  sub_24B517E0C();
  v44 = v87;
  (*(v75 + 32))(v87, v84, v43);
  LOBYTE(v89) = 1;
  v45 = v77;
  sub_24B517E0C();
  (*(v71 + 32))(&v44[*(v35 + 84)], v42, v45);
  LOBYTE(v89) = 2;
  sub_24B4DA1EC(&qword_27EFFD448, MEMORY[0x277D096C8]);
  v46 = v70;
  v47 = v44;
  v48 = v76;
  v84 = 0;
  sub_24B517E0C();
  v49 = v41[22];
  v50 = v41;
  v51 = *(v74 + 32);
  v51(&v47[v49], v46, v48);
  LOBYTE(v89) = 3;
  v52 = v69;
  sub_24B517E0C();
  v51(&v47[v50[23]], v52, v48);
  v96 = 4;
  sub_24B49C920();
  sub_24B517DBC();
  v47[v50[24]] = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC550, &qword_24B520400);
  v96 = 5;
  sub_24B49CA1C(&qword_27EFFC5C0);
  sub_24B517E0C();
  *&v47[v50[25]] = v89;
  LOBYTE(v89) = 6;
  v47[v50[26]] = sub_24B517DAC();
  v96 = 7;
  sub_24B49CA88();
  sub_24B517DBC();
  v87[v50[27]] = v89;
  LOBYTE(v89) = 8;
  v53 = sub_24B517DCC();
  v54 = &v87[v50[28]];
  *v54 = v53;
  v54[1] = v55;
  LOBYTE(v89) = 9;
  v56 = sub_24B517D9C();
  v57 = &v87[v50[29]];
  *v57 = v56;
  v57[1] = v58;
  LOBYTE(v89) = 10;
  sub_24B4DA1EC(&qword_27EFFD450, MEMORY[0x277CC95F0]);
  sub_24B517E0C();
  (*(v72 + 32))(&v87[v50[30]], v68, v73);
  v96 = 11;
  sub_24B4DA234();
  sub_24B517DBC();
  (*(v81 + 8))(v86, v82);
  v59 = v87;
  v60 = &v87[v50[31]];
  v61 = v94;
  *(v60 + 4) = v93;
  *(v60 + 5) = v61;
  *(v60 + 6) = v95;
  v62 = v90;
  *v60 = v89;
  *(v60 + 1) = v62;
  v63 = v92;
  *(v60 + 2) = v91;
  *(v60 + 3) = v63;
  v64 = v85;
  (*(v85 + 16))(v67, v59, v50);
  __swift_destroy_boxed_opaque_existential_1(v88);
  return (*(v64 + 8))(v59, v50);
}

uint64_t sub_24B4DA0FC(uint64_t a1, uint64_t a2)
{
  sub_24B517F7C();
  NewAndFeaturedDataItem.hash(into:)(v4, a2);
  return sub_24B517FBC();
}

unint64_t sub_24B4DA198()
{
  result = qword_27EFFD438;
  if (!qword_27EFFD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD438);
  }

  return result;
}

uint64_t sub_24B4DA1EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24B4DA234()
{
  result = qword_27EFFD458[0];
  if (!qword_27EFFD458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EFFD458);
  }

  return result;
}

void sub_24B4DA324(uint64_t a1)
{
  v2 = *(a1 + 24);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      sub_24B516DDC();
      if (v6 <= 0x3F)
      {
        sub_24B47C4CC(319, qword_2810ED9D8, &type metadata for BrowseItemAssetLoadStatus, MEMORY[0x277D83D88]);
        if (v7 <= 0x3F)
        {
          sub_24B47C4CC(319, &qword_2810ED6F0, MEMORY[0x277D83E88], MEMORY[0x277D83940]);
          if (v8 <= 0x3F)
          {
            sub_24B47C4CC(319, &qword_2810ED6E8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
            if (v9 <= 0x3F)
            {
              sub_24B47C4CC(319, &qword_2810EE2A8, &type metadata for BrowseItemMediaType, MEMORY[0x277D83D88]);
              if (v10 <= 0x3F)
              {
                sub_24B47C4CC(319, &qword_2810ED708, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                if (v11 <= 0x3F)
                {
                  sub_24B516C2C();
                  if (v12 <= 0x3F)
                  {
                    sub_24B47C4CC(319, &qword_2810ED8B0, &type metadata for NewAndFeaturedDataItemMetrics, MEMORY[0x277D83D88]);
                    if (v13 <= 0x3F)
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

uint64_t sub_24B4DA548(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v40 = *(a3 + 24);
  v4 = *(v40 - 8);
  v39 = *(a3 + 16);
  v5 = *(v4 + 84);
  v6 = *(v39 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v37 = sub_24B516DDC();
  v9 = *(v37 - 8);
  v42 = v9;
  v38 = *(v9 + 84);
  if (v38 > v8)
  {
    v8 = *(v9 + 84);
  }

  v10 = *(sub_24B516C2C() - 8);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  v15 = *(v10 + 80);
  if (v8 <= *(v10 + 84))
  {
    v16 = *(v10 + 84);
  }

  else
  {
    v16 = v8;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v4 + 64) + v11;
  v19 = v14 + v13;
  v20 = v15 + 16;
  v21 = a1;
  if (v17 >= a2)
  {
    goto LABEL_35;
  }

  v22 = ((*(v10 + 64) + ((v20 + ((((((((v19 + ((v12 + v13 + (v18 & ~v11)) & ~v13)) & ~v13) + v14) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 112;
  v23 = v22 & 0xFFFFFFF8;
  if ((v22 & 0xFFFFFFF8) != 0)
  {
    v24 = 2;
  }

  else
  {
    v24 = a2 - v17 + 1;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 <= 1)
  {
    if (!v26)
    {
      goto LABEL_35;
    }

    v27 = *(a1 + v22);
    if (!v27)
    {
      goto LABEL_35;
    }

LABEL_32:
    v29 = v27 - 1;
    if (v23)
    {
      v29 = 0;
      v30 = *a1;
    }

    else
    {
      v30 = 0;
    }

    return v17 + (v30 | v29) + 1;
  }

  if (v26 == 2)
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v27 = *(a1 + v22);
    if (v27)
    {
      goto LABEL_32;
    }
  }

LABEL_35:
  if (v5 == v17)
  {
    v31 = v40;
    v32 = *(v4 + 48);
    v33 = v5;
LABEL_41:

    return v32(v21, v33, v31);
  }

  v21 = ((a1 + v18) & ~v11);
  if (v7 == v17)
  {
    v32 = *(v6 + 48);
    v33 = v7;
    v31 = v39;
    goto LABEL_41;
  }

  v21 = ((v21 + v12 + v13) & ~v13);
  if (v38 == v17)
  {
    v32 = *(v42 + 48);
    v33 = v38;
    v31 = v37;
    goto LABEL_41;
  }

  v34 = (((v21 + v19) & ~v13) + v14) & 0xFFFFFFFFFFFFFFF8;
  if ((v16 & 0x80000000) != 0)
  {
    v36 = *(v10 + 48);

    return v36((v20 + ((((v34 + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
  }

  else
  {
    v35 = *(v34 + 8);
    if (v35 >= 0xFFFFFFFF)
    {
      LODWORD(v35) = -1;
    }

    return (v35 + 1);
  }
}

void sub_24B4DA918(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v32 = v5;
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 16) - 8);
  v31 = *(v7 + 84);
  if (v31 <= v6)
  {
    v8 = *(v5 + 84);
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v9 = *(sub_24B516DDC() - 8);
  v10 = *(v9 + 84);
  if (v10 > v8)
  {
    v8 = *(v9 + 84);
  }

  v11 = *(sub_24B516C2C() - 8);
  v12 = *(v5 + 64);
  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v11 + 80);
  if (v8 <= *(v11 + 84))
  {
    v18 = *(v11 + 84);
  }

  else
  {
    v18 = v8;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = ((*(v11 + 64) + ((v17 + 16 + ((((((((v16 + v15 + ((v14 + v15 + ((v12 + v13) & ~v13)) & ~v15)) & ~v15) + v16) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 112;
  if (v19 >= a3)
  {
    v23 = 0;
  }

  else
  {
    if (((*(v11 + 64) + ((v17 + 16 + ((((((((v16 + v15 + ((v14 + v15 + ((v12 + v13) & ~v13)) & ~v15)) & ~v15) + v16) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v17) + 7) & 0xFFFFFFF8) == 0xFFFFFF90)
    {
      v21 = a3 - v19 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  if (a2 > v19)
  {
    if (((*(v11 + 64) + ((v17 + 16 + ((((((((v16 + v15 + ((v14 + v15 + ((v12 + v13) & ~v13)) & ~v15)) & ~v15) + v16) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v17) + 7) & 0xFFFFFFF8) == 0xFFFFFF90)
    {
      v24 = a2 - v19;
    }

    else
    {
      v24 = 1;
    }

    if (((*(v11 + 64) + ((v17 + 16 + ((((((((v16 + v15 + ((v14 + v15 + ((v12 + v13) & ~v13)) & ~v15)) & ~v15) + v16) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & ~v17) + 7) & 0xFFFFFFF8) != 0xFFFFFF90)
    {
      v25 = ~v19 + a2;
      bzero(a1, v20);
      *a1 = v25;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        *(a1 + v20) = v24;
      }

      else
      {
        *(a1 + v20) = v24;
      }
    }

    else if (v23)
    {
      *(a1 + v20) = v24;
    }

    return;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

LABEL_42:
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (v23 == 2)
  {
    *(a1 + v20) = 0;
    goto LABEL_42;
  }

  *(a1 + v20) = 0;
  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v6 == v19)
  {
    v26 = *(v32 + 56);
    v27 = a1;

LABEL_57:
    v26(v27);
    return;
  }

  v27 = ((a1 + v12 + v13) & ~v13);
  if (v31 == v19)
  {
    v26 = *(v7 + 56);

    goto LABEL_57;
  }

  v27 = ((v27 + v14 + v15) & ~v15);
  if (v10 == v19)
  {
    v26 = *(v9 + 56);

    goto LABEL_57;
  }

  v28 = (((v27 + v16 + v15) & ~v15) + v16) & 0xFFFFFFFFFFFFFFF8;
  if ((v18 & 0x80000000) != 0)
  {
    v30 = *(v11 + 56);

    v30((v17 + 16 + ((((v28 + 25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v17);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v29 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v29 = a2 - 1;
    }

    *(v28 + 8) = v29;
  }
}

uint64_t sub_24B4DAD84(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_24B4DAE14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 BrowseEnvironment.init(fetchEditorialCollectionDetail:fetchEditorialGalleryItems:fetchSectionDescriptors:invalidateAllPlaceholders:makeAllowedContentRatingsUpdatedStream:makeAppDidEnterBackgroundStream:makeArchivedSessionsUpdatedStream:makeAudioLanguagePreferenceUpdatedStream:makeBrowsingIdentityUpdatedStream:makeCatalogUpdatedStream:makeSignificantTimeChangeStream:makeStorefrontLanguageUpdatedStream:makeTrainerTipJournalsUpdatedStream:makeWheelchairStatusUpdatedStream:refreshCanvas:refreshCanvasItems:reloadCanvas:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __n128 a21, uint64_t a22, uint64_t a23)
{
  result = a21;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 176) = a17;
  *(a9 + 192) = a18;
  *(a9 + 208) = a19;
  *(a9 + 224) = a20;
  *(a9 + 240) = a21;
  *(a9 + 256) = a22;
  *(a9 + 264) = a23;
  return result;
}

uint64_t sub_24B4DAF74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_24B4DAFBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t BrowseGalleryDescriptor.copyWith(displayStyle:identifier:items:preferredInsetBehavior:title:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a6;
  v33 = a2;
  v34 = a1;
  v12 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29 - v15;
  v17 = sub_24B516B8C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 == 36)
  {
    v34 = *v7;
  }

  if (a3)
  {
    v31 = a3;
    if (a4)
    {
LABEL_5:
      v29 = a4;
      goto LABEL_8;
    }
  }

  else
  {
    v22 = *(v7 + 2);
    v33 = *(v7 + 1);
    v31 = v22;

    if (a4)
    {
      goto LABEL_5;
    }
  }

  v29 = *(v7 + 3);

LABEL_8:
  if (a5 == 2)
  {
    v32 = v7[32];
  }

  else
  {
    v32 = a5;
  }

  sub_24B4D1850(v30, v16);
  v23 = *(v18 + 48);
  if (v23(v16, 1, v17) == 1)
  {
    v24 = type metadata accessor for BrowseGalleryDescriptor();
    (*(v18 + 16))(v21, &v7[*(v24 + 32)], v17);
    v25 = v23(v16, 1, v17);

    if (v25 != 1)
    {
      sub_24B4DB2F8(v16);
    }
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
  }

  *a7 = v34;
  v26 = v31;
  *(a7 + 8) = v33;
  *(a7 + 16) = v26;
  *(a7 + 24) = v29;
  *(a7 + 32) = v32 & 1;
  v27 = type metadata accessor for BrowseGalleryDescriptor();
  return (*(v18 + 32))(a7 + *(v27 + 32), v21, v17);
}

uint64_t sub_24B4DB2F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CreatePlanBannerDescriptor.actionTitle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CreatePlanBannerDescriptor.subtitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CreatePlanBannerDescriptor.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall CreatePlanBannerDescriptor.init(actionTitle:subtitle:title:)(FitnessBrowsing::CreatePlanBannerDescriptor *__return_ptr retstr, Swift::String_optional actionTitle, Swift::String_optional subtitle, Swift::String_optional title)
{
  retstr->actionTitle = actionTitle;
  retstr->subtitle = subtitle;
  retstr->title = title;
}

uint64_t sub_24B4DB404()
{
  v1 = 0x656C746974627573;
  if (*v0 != 1)
  {
    v1 = 0x656C746974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69546E6F69746361;
  }
}

uint64_t sub_24B4DB464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4DBF78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4DB48C(uint64_t a1)
{
  v2 = sub_24B4DBCE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DB4C8(uint64_t a1)
{
  v2 = sub_24B4DBCE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CreatePlanBannerDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD4E0, &qword_24B520790);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4DBCE8();
  sub_24B517FDC();
  v18 = 0;
  v13 = v15[5];
  sub_24B517E4C();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_24B517E4C();
  v16 = 2;
  sub_24B517E4C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t CreatePlanBannerDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD4F0, &qword_24B520798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4DBCE8();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_24B517D9C();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_24B517D9C();
  v23 = v14;
  v25 = 2;
  v15 = sub_24B517D9C();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CreatePlanBannerDescriptor.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    sub_24B517F9C();
    sub_24B517B3C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_24B517F9C();
    if (v4)
    {
      goto LABEL_4;
    }

    return sub_24B517F9C();
  }

  sub_24B517F9C();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_24B517F9C();
  sub_24B517B3C();
  if (!v4)
  {
    return sub_24B517F9C();
  }

LABEL_4:
  sub_24B517F9C();

  return sub_24B517B3C();
}

uint64_t CreatePlanBannerDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_24B517F7C();
  if (v2)
  {
    sub_24B517F9C();
    sub_24B517B3C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_24B517F9C();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_24B517F9C();
    return sub_24B517FBC();
  }

  sub_24B517F9C();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_24B517F9C();
  sub_24B517B3C();
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_24B517F9C();
  sub_24B517B3C();
  return sub_24B517FBC();
}

uint64_t sub_24B4DBB38()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_24B517F7C();
  CreatePlanBannerDescriptor.hash(into:)();
  return sub_24B517FBC();
}

uint64_t sub_24B4DBB90()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  sub_24B517F7C();
  CreatePlanBannerDescriptor.hash(into:)();
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing26CreatePlanBannerDescriptorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_24B517EEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v4 != v9 || v6 != v11) && (sub_24B517EEC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12 && (v5 == v10 && v7 == v12 || (sub_24B517EEC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_24B4DBCE8()
{
  result = qword_27EFFD4E8;
  if (!qword_27EFFD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD4E8);
  }

  return result;
}

unint64_t sub_24B4DBD40()
{
  result = qword_27EFFD4F8;
  if (!qword_27EFFD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD4F8);
  }

  return result;
}

uint64_t sub_24B4DBD94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24B4DBDF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_24B4DBE74()
{
  result = qword_27EFFD500;
  if (!qword_27EFFD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD500);
  }

  return result;
}

unint64_t sub_24B4DBECC()
{
  result = qword_27EFFD508;
  if (!qword_27EFFD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD508);
  }

  return result;
}

unint64_t sub_24B4DBF24()
{
  result = qword_27EFFD510;
  if (!qword_27EFFD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD510);
  }

  return result;
}

uint64_t sub_24B4DBF78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69546E6F69746361 && a2 == 0xEB00000000656C74;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B4DC090(uint64_t a1)
{
  v2 = sub_24B4DC98C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DC0CC(uint64_t a1)
{
  v2 = sub_24B4DC98C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4DC108(uint64_t a1)
{
  v2 = sub_24B4DC938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DC144(uint64_t a1)
{
  v2 = sub_24B4DC938();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24B4DC180()
{
  v1 = 0x615472656E6E6162;
  v2 = 0x6570704177656976;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_24B4DC204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B4DD9F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B4DC22C(uint64_t a1)
{
  v2 = sub_24B4DC83C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DC268(uint64_t a1)
{
  v2 = sub_24B4DC83C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4DC2A4(uint64_t a1)
{
  v2 = sub_24B4DC8E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DC2E0(uint64_t a1)
{
  v2 = sub_24B4DC8E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4DC31C(uint64_t a1)
{
  v2 = sub_24B4DC890();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4DC358(uint64_t a1)
{
  v2 = sub_24B4DC890();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CreatePlanBannerAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD518, &qword_24B5209D0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v37 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD520, &qword_24B5209D8);
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v34 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD528, &qword_24B5209E0);
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD530, &qword_24B5209E8);
  v30 = *(v13 - 8);
  v31 = v13;
  v14 = *(v30 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD538, &qword_24B5209F0);
  v17 = *(v40 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v40);
  v20 = &v30 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4DC83C();
  sub_24B517FDC();
  switch(v21)
  {
    case 5:
      v43 = 2;
      sub_24B4DC8E4();
      v12 = v34;
      v24 = v40;
      sub_24B517E3C();
      v26 = v35;
      v25 = v36;
      goto LABEL_7;
    case 4:
      v42 = 1;
      sub_24B4DC938();
      v24 = v40;
      sub_24B517E3C();
      v26 = v32;
      v25 = v33;
LABEL_7:
      (*(v26 + 8))(v12, v25);
      return (*(v17 + 8))(v20, v24);
    case 3:
      v41 = 0;
      sub_24B4DC98C();
      v23 = v40;
      sub_24B517E3C();
      (*(v30 + 8))(v16, v31);
      break;
    default:
      v45 = 3;
      sub_24B4DC890();
      v28 = v37;
      v23 = v40;
      sub_24B517E3C();
      v44 = v21;
      sub_24B4A4B48();
      v29 = v39;
      sub_24B517EBC();
      (*(v38 + 8))(v28, v29);
      break;
  }

  return (*(v17 + 8))(v20, v23);
}

unint64_t sub_24B4DC83C()
{
  result = qword_27EFFD540;
  if (!qword_27EFFD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD540);
  }

  return result;
}

unint64_t sub_24B4DC890()
{
  result = qword_27EFFD548;
  if (!qword_27EFFD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD548);
  }

  return result;
}

unint64_t sub_24B4DC8E4()
{
  result = qword_27EFFD550;
  if (!qword_27EFFD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD550);
  }

  return result;
}

unint64_t sub_24B4DC938()
{
  result = qword_27EFFD558;
  if (!qword_27EFFD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD558);
  }

  return result;
}

unint64_t sub_24B4DC98C()
{
  result = qword_27EFFD560;
  if (!qword_27EFFD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD560);
  }

  return result;
}

uint64_t CreatePlanBannerAction.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD568, &qword_24B5209F8);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v45 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD570, &qword_24B520A00);
  v47 = *(v49 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v54 = &v45 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD578, &qword_24B520A08);
  v53 = *(v50 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD580, &qword_24B520A10);
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD588, &unk_24B520A18);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24B4DC83C();
  v23 = v57;
  sub_24B517FCC();
  if (!v23)
  {
    v24 = v15;
    v45 = v12;
    v46 = 0;
    v25 = v11;
    v27 = v53;
    v26 = v54;
    v57 = v17;
    v28 = v55;
    v29 = v56;
    v30 = sub_24B517E1C();
    v31 = (2 * *(v30 + 16)) | 1;
    v59 = v30;
    v60 = v30 + 32;
    v61 = 0;
    v62 = v31;
    v32 = sub_24B4A39B4();
    if (v32 == 4 || v61 != v62 >> 1)
    {
      v34 = sub_24B517D0C();
      swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0) + 48);
      *v36 = &type metadata for CreatePlanBannerAction;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
    }

    else
    {
      if (v32 > 1u)
      {
        v39 = v29;
        v40 = v57;
        if (v32 == 2)
        {
          v63 = 2;
          sub_24B4DC8E4();
          v41 = v46;
          sub_24B517D7C();
          if (!v41)
          {
            (*(v47 + 8))(v26, v49);
            (*(v40 + 8))(v20, v16);
            swift_unknownObjectRelease();
            *v39 = 5;
            return __swift_destroy_boxed_opaque_existential_1(v58);
          }
        }

        else
        {
          v63 = 3;
          sub_24B4DC890();
          v43 = v46;
          sub_24B517D7C();
          if (!v43)
          {
            sub_24B4A4F64();
            v44 = v51;
            sub_24B517E0C();
            (*(v52 + 8))(v28, v44);
            (*(v40 + 8))(v20, v16);
            swift_unknownObjectRelease();
            *v39 = v63;
            return __swift_destroy_boxed_opaque_existential_1(v58);
          }
        }

        (*(v40 + 8))(v20, v16);
        goto LABEL_10;
      }

      if (v32)
      {
        v63 = 1;
        sub_24B4DC938();
        v42 = v46;
        sub_24B517D7C();
        if (!v42)
        {
          (*(v27 + 8))(v25, v50);
          (*(v57 + 8))(v20, v16);
          swift_unknownObjectRelease();
          *v29 = 4;
          return __swift_destroy_boxed_opaque_existential_1(v58);
        }
      }

      else
      {
        v63 = 0;
        sub_24B4DC98C();
        v33 = v46;
        sub_24B517D7C();
        if (!v33)
        {
          (*(v48 + 8))(v24, v45);
          (*(v57 + 8))(v20, v16);
          swift_unknownObjectRelease();
          *v29 = 3;
          return __swift_destroy_boxed_opaque_existential_1(v58);
        }
      }
    }

    (*(v57 + 8))(v20, v16);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}