uint64_t sub_1E5984AE8(uint64_t a1)
{
  v2 = v1[1];
  v26 = *v1;
  v27 = v2;
  v28 = v1[2];
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF98, &qword_1E5A3C558);
  type metadata accessor for TrainerPreferenceView();
  sub_1E5A2A6C4();
  sub_1E5A2AA84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEFA0, &qword_1E5A3C560);
  sub_1E5A2AA84();
  v3 = sub_1E598BCF4();
  WitnessTable = swift_getWitnessTable();
  v20 = MEMORY[0x1E69805D0];
  v17 = v3;
  v18 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = sub_1E598BDD4();
  swift_getWitnessTable();
  sub_1E5A2B484();
  v12 = v33;
  v13 = v34;
  v14 = v35;
  v10 = v31;
  v11 = v32;
  v4 = sub_1E5A2B494();
  v5 = swift_getWitnessTable();
  sub_1E58B41DC(&v10, v4, v5);
  v29[2] = v12;
  v29[3] = v13;
  v30 = v14;
  v29[0] = v10;
  v29[1] = v11;
  v6 = *(*(v4 - 8) + 8);
  v6(v29, v4);
  v12 = v23;
  v13 = v24;
  v14 = v25;
  v10 = v21;
  v11 = v22;
  sub_1E58B41DC(&v10, v4, v5);
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v31 = v10;
  v32 = v11;
  return v6(&v31, v4);
}

uint64_t sub_1E5984D90(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for WorkoutPlanCreationAction();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *a1;
  v10 = *(a4 + 8);
  *v9 = v8;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E598BC20(v9, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5984E48(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v11 = &unk_1F5F5BC40;
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  *(v6 + 32) = *a1;
  *(v6 + 48) = v7;
  *(v6 + 64) = a1[2];
  v8 = type metadata accessor for PageContentSection();
  (*(*(v8 - 8) + 16))(v10, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCDC0, &qword_1E5A3C5C0);
  sub_1E58CD164(&qword_1ECFFF000, &qword_1ECFFCDC0, &qword_1E5A3C5C0);
  sub_1E598C180();
  return sub_1E5A2B6E4();
}

uint64_t sub_1E5984FB0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E5A29EB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 8);
  LOBYTE(a1) = *a1;
  swift_getKeyPath();
  sub_1E5A2B934();

  v12 = v20[0];
  swift_getKeyPath();
  sub_1E5A2B944();

  v13 = sub_1E590F070(v12, v10, a1);
  v15 = v14;

  (*(v7 + 8))(v10, v6);
  v20[0] = v13;
  v20[1] = v15;
  sub_1E58D1C80();
  result = sub_1E5A2AFD4();
  *a3 = result;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18 & 1;
  *(a3 + 24) = v19;
  return result;
}

uint64_t sub_1E5985120(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v97 = *a1;
  v6 = *(&v97 + 1);
  swift_getKeyPath();
  sub_1E58BABA0(&v97, &v98, &qword_1ECFFEFE0, &qword_1E5A3C590);
  swift_retain_n();
  sub_1E5A2B934();

  sub_1E58BAD14(&v97, &qword_1ECFFEFE0, &qword_1E5A3C590);
  sub_1E58BAD14(&v97, &qword_1ECFFEFE0, &qword_1E5A3C590);
  v7 = MEMORY[0x1E69805D0];
  if (v96)
  {
    if (v96 == 1)
    {
      v8 = *(a1 + 4);
      v9 = *(a1 + 5);

      TrainerPreferenceView.init(store:artworkViewBuilder:)(v6, v8, v9, v92);
      *&v84[8] = *&v92[8];
      *v84 = *v92;
      *&v84[24] = *&v92[24];
      v10 = swift_allocObject();
      *(v10 + 16) = a2;
      *(v10 + 24) = a3;
      v11 = a1[1];
      *(v10 + 32) = *a1;
      *(v10 + 48) = v11;
      *(v10 + 64) = a1[2];
      v12 = type metadata accessor for PageContentSection();
      (*(*(v12 - 8) + 16))(&v98, a1, v12);
      type metadata accessor for TrainerPreferenceView();
      WitnessTable = swift_getWitnessTable();
      sub_1E5A2B364();

      *v92 = v98;
      *&v92[16] = v99;
      v93 = v100;
      v94 = v101;
      v14 = sub_1E5A2A6C4();
      v59 = WitnessTable;
      v60 = v7;
      v15 = swift_getWitnessTable();
      sub_1E58B41DC(v92, v14, v15);
      v65[0] = *v92;
      v65[1] = *&v92[16];
      v65[2] = v93;
      v65[3] = v94;
      v16 = *(v14 - 8);
      v17 = *(v16 + 8);
      v17(v65, v14);
      v66[0] = v61;
      v66[1] = v62;
      v66[2] = v63;
      v66[3] = v64;
      v98 = v61;
      v99 = v62;
      v100 = v63;
      v101 = v64;
      sub_1E58B41DC(&v98, v14, v15);
      v67[0] = v98;
      v67[1] = v99;
      v67[2] = v100;
      v67[3] = v101;
      v18 = *(v16 + 16);
      v18(v92, v66, v14);
      v17(v67, v14);
      v68[0] = v55;
      v68[1] = v56;
      v68[2] = v57;
      v68[3] = v58;
      *v92 = v55;
      *&v92[16] = v56;
      v93 = v57;
      v94 = v58;
      v18(&v98, v68, v14);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF98, &qword_1E5A3C558);
      sub_1E598BCF4();
      sub_1E595ECB8(v92, v19, v14);
      v69[0] = *v92;
      v69[1] = *&v92[16];
      v69[2] = v93;
      v69[3] = v94;
      v17(v69, v14);
      v52 = v100;
      v53 = v101;
      v54 = v102;
      v50 = v98;
      v51 = v99;
      v20 = sub_1E5A2AA84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEFA0, &qword_1E5A3C560);
      swift_getWitnessTable();
      sub_1E598BDD4();
      sub_1E595EBC0(&v50, v20);
      v85 = v52;
      v86 = v53;
      LOBYTE(v87) = v54;
      *v84 = v50;
      *&v84[16] = v51;
      (*(*(v20 - 8) + 8))(v84, v20);
      v70 = v55;
      v71 = v56;
      v72 = v57;
      v73 = v58;
      v17(&v70, v14);
      v74 = v61;
      v75 = v62;
      v76 = v63;
      v77 = v64;
      v17(&v74, v14);
      v7 = MEMORY[0x1E69805D0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
      sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
      v32 = sub_1E5A2A654();
      v34 = v33;
      v35 = swift_allocObject();
      *(v35 + 16) = a2;
      *(v35 + 24) = a3;
      v36 = a1[1];
      *(v35 + 32) = *a1;
      *(v35 + 48) = v36;
      *(v35 + 64) = a1[2];
      *&v98 = v32;
      *(&v98 + 1) = v34;
      *&v99 = sub_1E598BFDC;
      *(&v99 + 1) = v35;
      v100 = 0uLL;
      v37 = type metadata accessor for PageContentSection();
      (*(*(v37 - 8) + 16))(v92, a1, v37);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF98, &qword_1E5A3C558);
      type metadata accessor for TrainerPreferenceView();
      sub_1E5A2A6C4();
      v38 = sub_1E5A2AA84();
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEFA0, &qword_1E5A3C560);
      v40 = sub_1E598BCF4();
      v90 = swift_getWitnessTable();
      v91 = v7;
      v88 = v40;
      v89 = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1E598BDD4();
      sub_1E595ECB8(&v98, v38, v39);
      v41 = v99;
      v42 = v100;

      sub_1E598C000(v41);
      sub_1E598C000(v42);
    }
  }

  else
  {
    v21 = *(a1 + 3);
    *&v69[0] = *(a1 + 2);
    sub_1E598C034(v69, &v98);
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
    sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
    v23 = sub_1E5A2A654();
    v25 = v24;
    v26 = *&v69[0];
    v27 = swift_allocObject();
    *(v27 + 16) = a2;
    *(v27 + 24) = a3;
    v28 = a1[1];
    *(v27 + 32) = *a1;
    *(v27 + 48) = v28;
    *(v27 + 64) = a1[2];
    *&v70 = v23;
    *(&v70 + 1) = v25;
    *&v71 = v22;
    *(&v71 + 1) = v26;
    *&v72 = sub_1E598C090;
    *(&v72 + 1) = v27;
    v73 = 0uLL;
    *v92 = v70;
    *&v92[16] = v71;
    v93 = v72;
    v94 = 0uLL;
    sub_1E58BABA0(&v70, &v98, &qword_1ECFFEF98, &qword_1E5A3C558);
    sub_1E58BABA0(&v70, &v98, &qword_1ECFFEF98, &qword_1E5A3C558);
    v29 = type metadata accessor for PageContentSection();
    (*(*(v29 - 8) + 16))(&v98, a1, v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF98, &qword_1E5A3C558);
    type metadata accessor for TrainerPreferenceView();
    sub_1E5A2A6C4();
    sub_1E598BCF4();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1E595EBC0(v92, v30);
    v74 = *v92;
    v75 = *&v92[16];
    v76 = v93;
    v77 = v94;
    sub_1E58BAD14(&v74, &qword_1ECFFEF98, &qword_1E5A3C558);
    v52 = v100;
    v53 = v101;
    v54 = v102;
    v50 = v98;
    v51 = v99;
    v31 = sub_1E5A2AA84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEFA0, &qword_1E5A3C560);
    swift_getWitnessTable();
    sub_1E598BDD4();
    sub_1E595EBC0(&v50, v31);
    sub_1E58BAD14(&v70, &qword_1ECFFEF98, &qword_1E5A3C558);
    sub_1E58BAD14(&v70, &qword_1ECFFEF98, &qword_1E5A3C558);
    v85 = v52;
    v86 = v53;
    LOBYTE(v87) = v54;
    *v84 = v50;
    *&v84[16] = v51;
    (*(*(v31 - 8) + 8))(v84, v31);
  }

  v100 = v93;
  v101 = v94;
  v102 = v95;
  v98 = *v92;
  v99 = *&v92[16];
  v85 = v93;
  v86 = v94;
  v87 = v95;
  *v84 = *v92;
  *&v84[16] = *&v92[16];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF98, &qword_1E5A3C558);
  type metadata accessor for TrainerPreferenceView();
  sub_1E5A2A6C4();
  sub_1E5A2AA84();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEFA0, &qword_1E5A3C560);
  v43 = sub_1E5A2AA84();
  v44 = sub_1E598BCF4();
  v82 = swift_getWitnessTable();
  v83 = v7;
  v45 = swift_getWitnessTable();
  v80 = v44;
  v81 = v45;
  v46 = swift_getWitnessTable();
  v47 = sub_1E598BDD4();
  v78 = v46;
  v79 = v47;
  v48 = swift_getWitnessTable();
  sub_1E58B41DC(v84, v43, v48);
  v93 = v85;
  v94 = v86;
  v95 = v87;
  *v92 = *v84;
  *&v92[16] = *&v84[16];
  return (*(*(v43 - 8) + 8))(v92, v43);
}

uint64_t sub_1E5985CF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for WorkoutPlanCreationAction();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 8);
  *v9 = a4;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E598BC20(v9, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5985DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a3;
  v46 = a4;
  v44 = a2;
  v43 = a1;
  v50 = a7;
  v9 = sub_1E5A2AA04();
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEEF8, &qword_1E5A3C398);
  v12 = a5;
  sub_1E5A2AA84();
  v13 = sub_1E5A2B494();
  v42 = *(v13 - 8);
  v14 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v35 - v15;
  v16 = sub_1E5A2A6C4();
  v41 = *(v16 - 8);
  v17 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v35 - v18;
  v62 = sub_1E58CD164(&qword_1ECFFEF00, &qword_1ECFFEEF8, &qword_1E5A3C398);
  v63 = a6;
  v19 = a6;
  WitnessTable = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v59 = v36;
  v60 = MEMORY[0x1E697E5D8];
  v37 = swift_getWitnessTable();
  v57 = v16;
  v58 = v37;
  v38 = MEMORY[0x1E697D198];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = *(OpaqueTypeMetadata2 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v35 - v26;
  v51 = v12;
  v52 = v19;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v56 = v46;
  v28 = v39;
  sub_1E5A2B484();
  swift_getKeyPath();
  sub_1E5A2B944();

  v29 = v40;
  sub_1E5A2B324();
  (*(v42 + 8))(v28, v13);
  v30 = v47;
  sub_1E5A2A9F4();
  v31 = v37;
  sub_1E5A2B1F4();
  (*(v48 + 8))(v30, v49);
  (*(v41 + 8))(v29, v16);
  v57 = v16;
  v58 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E58B41DC(v24, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v33 = *(v21 + 8);
  v33(v24, OpaqueTypeMetadata2);
  sub_1E58B41DC(v27, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v33)(v27, OpaqueTypeMetadata2);
}

uint64_t sub_1E59862E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a7;
  v35 = a6;
  v31 = a3;
  v32 = a4;
  v30 = a1;
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEEF8, &qword_1E5A3C398);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  v20 = sub_1E5A2AA84();
  v33 = *(v20 - 8);
  v21 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v29 - v22;
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v38 == 1)
  {
    sub_1E598669C(v30, a2, v31, v32, a5, v35, v19);
    sub_1E58CD164(&qword_1ECFFEF00, &qword_1ECFFEEF8, &qword_1E5A3C398);
    sub_1E595EBC0(v19, v16);
    sub_1E58BAD14(v19, &qword_1ECFFEEF8, &qword_1E5A3C398);
  }

  else
  {
    v31(v24);
    v25 = v35;
    sub_1E58B41DC(v12, a5, v35);
    v26 = *(v9 + 8);
    v26(v12, a5);
    sub_1E58B41DC(v15, a5, v25);
    sub_1E58CD164(&qword_1ECFFEF00, &qword_1ECFFEEF8, &qword_1E5A3C398);
    sub_1E595ECB8(v12, v16, a5);
    v26(v12, a5);
    v26(v15, a5);
  }

  v36 = sub_1E58CD164(&qword_1ECFFEF00, &qword_1ECFFEEF8, &qword_1E5A3C398);
  v37 = v35;
  WitnessTable = swift_getWitnessTable();
  sub_1E58B41DC(v23, v20, WitnessTable);
  return (*(v33 + 8))(v23, v20);
}

uint64_t sub_1E598669C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = sub_1E5A2AA24();
  *(a7 + 8) = 0;
  *(a7 + 16) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF08, &unk_1E5A3C3E0);
  return sub_1E5986734(a1, a2, a3, a4, a5, a6, a7 + *(v14 + 44));
}

uint64_t sub_1E5986734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v119 = a7;
  v13 = sub_1E5A29EB4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v111 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5A2BB14();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v110 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1E5A2ACA4();
  v101 = *(v100 - 8);
  v19 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE930, &qword_1E5A3B268);
  v99 = *(v98 - 8);
  v22 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v24 = &v96 - v23;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF10, &unk_1E5A3C3F0);
  v103 = *(v104 - 8);
  v25 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v97 = &v96 - v26;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE910, &unk_1E5A3B250);
  v27 = *(*(v102 - 1) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v105 = &v96 - v28;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF18, &qword_1E5A3C400);
  v29 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v96 - v30;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF20, &qword_1E5A3C408);
  v109 = *(v120 - 8);
  v31 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v108 = &v96 - v32;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF28, &unk_1E5A3C410);
  v112 = *(v113 - 8);
  v33 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v121 = &v96 - v34;
  v35 = swift_allocObject();
  v35[2] = a5;
  v35[3] = a6;
  v35[4] = a1;
  v35[5] = a2;
  v35[6] = a3;
  v35[7] = a4;
  v115 = a5;
  v122 = a5;
  v123 = a6;
  v116 = a6;
  v114 = a1;
  v124 = a1;
  v125 = a2;
  v117 = a3;
  v126 = a3;
  v127 = a4;

  v118 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA28, &unk_1E5A3B3C0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA30, &unk_1E5A3C420);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEA40, &unk_1E5A3C430);
  v39 = sub_1E598C25C(&qword_1ECFFEA48, &qword_1ECFFEA30, &unk_1E5A3C420, sub_1E596F604);
  v40 = sub_1E596F688();
  v41 = sub_1E596F740();
  v129 = v36;
  v130 = MEMORY[0x1E6981CD8];
  v131 = v37;
  v132 = v38;
  v133 = v39;
  v134 = MEMORY[0x1E6981CD0];
  v135 = v40;
  v136 = v41;
  v42 = v97;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B574();
  sub_1E5A2AC94();
  sub_1E58CD164(&qword_1ECFFE938, &qword_1ECFFE930, &qword_1E5A3B268);
  sub_1E598932C(&qword_1ECFFE940, MEMORY[0x1E697CB70]);
  v43 = v98;
  v44 = v100;
  sub_1E5A2B0B4();
  (*(v101 + 8))(v21, v44);
  (*(v99 + 8))(v24, v43);
  swift_getKeyPath();
  v45 = a2;
  sub_1E5A2B934();

  if (v129 && (v46 = WorkoutPlanSchedule.isEmpty.getter(), , (v46 & 1) == 0))
  {
    v47 = v120;
    v48 = v105;
    if (qword_1ECFFB478 != -1)
    {
      swift_once();
    }

    v49 = &qword_1ED026498;
  }

  else
  {
    v47 = v120;
    v48 = v105;
    if (qword_1ECFFB488 != -1)
    {
      swift_once();
    }

    v49 = &qword_1ED0264A8;
  }

  v50 = *v49;

  KeyPath = swift_getKeyPath();
  v129 = v50;
  v52 = sub_1E5A2A5C4();
  (*(v103 + 32))(v48, v42, v104);
  v53 = (v48 + *(v102 + 9));
  *v53 = KeyPath;
  v53[1] = v52;
  swift_getKeyPath();
  sub_1E5A2B934();

  v54 = v129;
  if (v129)
  {
    v55 = WorkoutPlanSchedule.isEmpty.getter();

    v54 = v55 ^ 1;
  }

  v56 = v106;
  sub_1E58F0054(v48, v106, &qword_1ECFFE910, &unk_1E5A3B250);
  v57 = v107;
  *(v56 + *(v107 + 36)) = v54 & 1;
  v58 = sub_1E598B7DC();
  v59 = v108;
  sub_1E5A2B004();
  sub_1E58BAD14(v56, &qword_1ECFFEF18, &qword_1E5A3C400);
  sub_1E5A2B7A4();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF38, &qword_1E5A3C4A8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF40, &qword_1E5A3C4B0);
  v129 = v57;
  v130 = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = sub_1E598B868();
  v104 = sub_1E598B95C();
  v94 = v104;
  v105 = v63;
  v93 = v63;
  v92 = MEMORY[0x1E6981CD0];
  v106 = OpaqueTypeConformance2;
  v91 = OpaqueTypeConformance2;
  v107 = v61;
  v90 = v61;
  v110 = v60;
  sub_1E5A2B3A4();
  (*(v109 + 8))(v59, v47);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v64 = qword_1EE2D33E0;
  swift_getKeyPath();
  v65 = v64;
  sub_1E5A2B944();

  v111 = sub_1E5A2AF64();
  v109 = v66;
  LODWORD(v103) = v67;
  v108 = v68;
  sub_1E5A2BC84();

  v69 = v118;

  v70 = sub_1E5A2BC74();
  v71 = swift_allocObject();
  v72 = MEMORY[0x1E69E85E0];
  v71[2] = v70;
  v71[3] = v72;
  v73 = v115;
  v74 = v45;
  v75 = v116;
  v71[4] = v115;
  v71[5] = v75;
  v76 = v114;
  v71[6] = v114;
  v71[7] = v45;
  v77 = v117;
  v71[8] = v117;
  v71[9] = v69;

  v78 = sub_1E5A2BC74();
  v79 = swift_allocObject();
  v79[2] = v78;
  v79[3] = v72;
  v79[4] = v73;
  v79[5] = v75;
  v79[6] = v76;
  v79[7] = v74;
  v79[8] = v77;
  v79[9] = v69;
  v80 = sub_1E5A2B684();
  v102 = &v96;
  LODWORD(v101) = v128;
  MEMORY[0x1EEE9AC00](v80);
  MEMORY[0x1EEE9AC00](v81);
  v95 = v69;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF58, &qword_1E5A3C4D8);
  v129 = v120;
  v130 = MEMORY[0x1E6981CD8];
  v131 = v110;
  v132 = v107;
  v133 = v106;
  v134 = MEMORY[0x1E6981CD0];
  v135 = v105;
  v136 = v104;
  v83 = swift_getOpaqueTypeConformance2();
  v93 = sub_1E58CD164(&qword_1ECFFEF60, &qword_1ECFFEF58, &qword_1E5A3C4D8);
  v94 = MEMORY[0x1E6981138];
  v92 = v83;
  v90 = v82;
  v91 = MEMORY[0x1E6981148];
  v84 = v113;
  v89[0] = v89;
  v89[1] = v113;
  LOBYTE(v74) = v103;
  v85 = v111;
  v86 = v109;
  v87 = v121;
  sub_1E5A2B2C4();

  sub_1E58B3C9C(v85, v86, v74 & 1);

  return (*(v112 + 8))(v87, v84);
}

uint64_t sub_1E5987574()
{
  v0 = type metadata accessor for WorkoutPlanCreationAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF78, &qword_1E5A3FD40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF80, &qword_1E5A3C520);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E597DDD0(v11);
  sub_1E58BAD14(v7, &qword_1ECFFEF78, &qword_1E5A3FD40);
  v12 = type metadata accessor for WorkoutPlan();
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_1E58BAD14(v11, &qword_1ECFFEF80, &qword_1E5A3C520);
  *v3 = v13 != 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E598BC20(v3, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5987784()
{
  v0 = sub_1E5A29EB4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1E5A2BB14();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE2D33E0;
  swift_getKeyPath();
  v5 = v4;
  sub_1E5A2B944();

  v6 = sub_1E5A2AF64();
  v8 = v7;
  v10 = v9;
  swift_getKeyPath();
  sub_1E5A2B934();

  if (*&v41[0] && (v11 = WorkoutPlanSchedule.isEmpty.getter(), , (v11 & 1) == 0))
  {
    v13 = [objc_opt_self() secondarySystemBackgroundColor];
    v12 = sub_1E5A2B474();
  }

  else
  {
    v12 = sub_1E5A2B454();
  }

  *&v41[0] = v12;
  v14 = sub_1E5A2AF84();
  v16 = v15;
  v18 = v17;
  sub_1E58B3C9C(v6, v8, v10 & 1);

  sub_1E5A2AE14();
  sub_1E5A2AE64();
  sub_1E5A2AEA4();

  v19 = sub_1E5A2AFA4();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_1E58B3C9C(v14, v16, v18 & 1);

  v26 = sub_1E5A2ADF4();
  sub_1E5A2A424();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v43 = v23 & 1;
  v42 = 0;
  sub_1E5A2B7E4();
  sub_1E5A2A764();
  *(&v44[6] + 7) = *&v44[21];
  *(&v44[8] + 7) = *&v44[23];
  *(&v44[10] + 7) = *&v44[25];
  *(&v44[12] + 7) = v45;
  *(v44 + 7) = *&v44[15];
  *(&v44[2] + 7) = *&v44[17];
  *(&v44[4] + 7) = *&v44[19];
  *&v36 = v19;
  *(&v36 + 1) = v21;
  LOBYTE(v37) = v23 & 1;
  *(&v37 + 1) = v25;
  LOBYTE(v38) = v26;
  *(&v38 + 1) = v28;
  *&v39 = v30;
  *(&v39 + 1) = v32;
  *v40 = v34;
  v40[8] = 0;
  *&v40[73] = *&v44[8];
  *&v40[89] = *&v44[10];
  *&v40[105] = *&v44[12];
  *&v40[120] = *(&v45 + 1);
  *&v40[9] = *v44;
  *&v40[25] = *&v44[2];
  *&v40[41] = *&v44[4];
  *&v40[57] = *&v44[6];
  sub_1E5A2B7A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA30, &unk_1E5A3C420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA38, &unk_1E5A3B3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA40, &unk_1E5A3C430);
  sub_1E598C25C(&qword_1ECFFEA48, &qword_1ECFFEA30, &unk_1E5A3C420, sub_1E596F604);
  sub_1E596F688();
  sub_1E596F740();
  sub_1E5A2B3A4();
  v41[8] = *&v40[64];
  v41[9] = *&v40[80];
  v41[10] = *&v40[96];
  v41[11] = *&v40[112];
  v41[4] = *v40;
  v41[5] = *&v40[16];
  v41[6] = *&v40[32];
  v41[7] = *&v40[48];
  v41[0] = v36;
  v41[1] = v37;
  v41[2] = v38;
  v41[3] = v39;
  return sub_1E58BAD14(v41, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E5987C88@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A2B6A4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26[-v9];
  v11 = a1[9];
  v35 = a1[8];
  v36 = v11;
  v12 = a1[11];
  v37 = a1[10];
  v38 = v12;
  v13 = a1[5];
  v31 = a1[4];
  v32 = v13;
  v14 = a1[7];
  v33 = a1[6];
  v34 = v14;
  v15 = a1[1];
  v27 = *a1;
  v28 = v15;
  v16 = a1[3];
  v29 = a1[2];
  v30 = v16;
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_1E5A2A9B4();
  (*(*(v18 - 8) + 104))(v10, v17, v18);
  sub_1E598BC80(v10, v7, MEMORY[0x1E6981998]);
  LODWORD(v17) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA38, &unk_1E5A3B3D0) + 36);
  sub_1E598932C(&qword_1ECFFEA98, MEMORY[0x1E6981998]);
  sub_1E5A2AD54();
  sub_1E598BC20(v10, MEMORY[0x1E6981998]);
  v19 = v36;
  a2[8] = v35;
  a2[9] = v19;
  v20 = v38;
  a2[10] = v37;
  a2[11] = v20;
  v21 = v32;
  a2[4] = v31;
  a2[5] = v21;
  v22 = v34;
  a2[6] = v33;
  a2[7] = v22;
  v23 = v28;
  *a2 = v27;
  a2[1] = v23;
  v24 = v30;
  a2[2] = v29;
  a2[3] = v24;
  return sub_1E58BABA0(&v27, v26, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E5987E9C@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1E5A2A754();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33[-v9];
  v11 = a1[9];
  v42 = a1[8];
  v43 = v11;
  v12 = a1[11];
  v44 = a1[10];
  v45 = v12;
  v13 = a1[5];
  v38 = a1[4];
  v39 = v13;
  v14 = a1[7];
  v40 = a1[6];
  v41 = v14;
  v15 = a1[3];
  v36 = a1[2];
  v37 = v15;
  v16 = a1[1];
  v34 = *a1;
  v35 = v16;
  v18 = *(v17 + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1E5A2A9B4();
  (*(*(v20 - 8) + 104))(&v10[v18], v19, v20);
  __asm { FMOV            V0.2D, #12.0 }

  *v10 = _Q0;
  sub_1E598BC80(v10, v7, MEMORY[0x1E697EAF0]);
  LODWORD(v19) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEA40, &unk_1E5A3C430) + 36);
  sub_1E598932C(&qword_1ECFFEA90, MEMORY[0x1E697EAF0]);
  sub_1E5A2AD54();
  sub_1E598BC20(v10, MEMORY[0x1E697EAF0]);
  v26 = v43;
  a2[8] = v42;
  a2[9] = v26;
  v27 = v45;
  a2[10] = v44;
  a2[11] = v27;
  v28 = v39;
  a2[4] = v38;
  a2[5] = v28;
  v29 = v41;
  a2[6] = v40;
  a2[7] = v29;
  v30 = v35;
  *a2 = v34;
  a2[1] = v30;
  v31 = v37;
  a2[2] = v36;
  a2[3] = v31;
  return sub_1E58BABA0(&v34, v33, &qword_1ECFFEA30, &unk_1E5A3C420);
}

uint64_t sub_1E59880BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF38, &qword_1E5A3C4A8) + 36);
  v5 = *MEMORY[0x1E697F468];
  v6 = sub_1E5A2A9B4();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC788, &qword_1E5A319E0) + 36)) = 256;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF20, &qword_1E5A3C408);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a1, v7);
}

uint64_t sub_1E59881C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF40, &qword_1E5A3C4B0) + 36));
  v5 = *(sub_1E5A2A754() + 20);
  v6 = *MEMORY[0x1E697F468];
  v7 = sub_1E5A2A9B4();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECFFE0F0, &qword_1E5A39170) + 36)] = 256;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF20, &qword_1E5A3C408);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t sub_1E59882E0(_BYTE *a1)
{
  v2 = type metadata accessor for WorkoutPlanCreationAction();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = *a1;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E598BC20(v5, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5988394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v48 = a7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF68, &unk_1E5A3C4E0);
  v45 = *(v47 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v42 - v16;
  v17 = sub_1E5A2A414();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE9F8, &qword_1E5A3B348);
  v50 = *(v44 - 8);
  v21 = v50[8];
  MEMORY[0x1EEE9AC00](v44);
  v49 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v42 - v24;
  sub_1E5A2A3F4();
  v26 = swift_allocObject();
  v26[2] = a5;
  v26[3] = a6;
  v26[4] = a1;
  v26[5] = a2;
  v26[6] = a3;
  v26[7] = a4;

  v43 = v25;
  MEMORY[0x1E69321A0](v20, sub_1E598BB6C, v26);
  v27 = swift_allocObject();
  v27[2] = a5;
  v27[3] = a6;
  v27[4] = a1;
  v27[5] = a2;
  v27[6] = a3;
  v27[7] = a4;
  v52 = a5;
  v53 = a6;
  v54 = a1;
  v55 = a2;
  v56 = a3;
  v57 = a4;

  v28 = v51;
  sub_1E5A2B574();
  v29 = v49;
  v30 = v50[2];
  v31 = v44;
  v30(v49, v25, v44);
  v33 = v45;
  v32 = v46;
  v34 = *(v45 + 16);
  v35 = v28;
  v36 = v47;
  v34(v46, v35, v47);
  v37 = v48;
  v30(v48, v29, v31);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFEF70, &qword_1E5A3C4F0);
  v34(&v37[*(v38 + 48)], v32, v36);
  v39 = *(v33 + 8);
  v39(v51, v36);
  v40 = v50[1];
  v40(v43, v31);
  v39(v32, v36);
  return (v40)(v49, v31);
}

uint64_t sub_1E5988770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = type metadata accessor for WorkoutPlanCreationAction();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = a7;
  swift_storeEnumTagMultiPayload();
  sub_1E5A2B954();
  return sub_1E598BC20(v11, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E5988828@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5A2BB14();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2D33E0;
  swift_getKeyPath();
  v7 = v6;
  sub_1E5A2B944();

  result = sub_1E5A2AF64();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_1E5988998@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5A29EB4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5A2BB14();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2D33E0;
  swift_getKeyPath();
  v7 = v6;
  sub_1E5A2B944();

  result = sub_1E5A2AF64();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_1E5988B20()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF200, &qword_1E5A3C8C8);
  sub_1E5A2B544();
  return v2;
}

id sub_1E5988B7C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v5 = *(v1 + 32);
  swift_getKeyPath();

  sub_1E5A2B944();

  *(a1 + *(type metadata accessor for WorkoutPlanDateHelper(0) + 20)) = v5;

  return v5;
}

uint64_t WorkoutPlanScheduleReviewView.init(store:dateComponentsFormatter:artworkViewBuilder:marketingButtonViewBuilder:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1E5A2B514();
  *(a7 + 16) = v17;
  *(a7 + 24) = v18;
  v14 = *a1;
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
  result = sub_1E5A2A654();
  *a7 = result;
  *(a7 + 8) = v16;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  *(a7 + 56) = a5;
  *(a7 + 64) = a6;
  return result;
}

uint64_t WorkoutPlanScheduleReviewView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  type metadata accessor for ScheduleConfigurationSection(255);
  v26 = a1[2];
  v27 = a1[4];
  type metadata accessor for PageContentSection();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2A494();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  sub_1E5A2AC14();
  v3 = sub_1E5A2A6C4();
  WitnessTable = swift_getWitnessTable();
  v41 = sub_1E598932C(&qword_1EE2CFAE8, MEMORY[0x1E6980270]);
  *&v42 = v3;
  *(&v42 + 1) = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v24 = a1[3];
  v25 = a1[5];
  type metadata accessor for BottomActionSection();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ScheduledDayReviewView();
  swift_getOpaqueTypeConformance2();
  sub_1E598932C(&qword_1ECFFED38, type metadata accessor for ScheduledDayReviewView);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
  *&v42 = OpaqueTypeMetadata2;
  *(&v42 + 1) = v5;
  *&v43 = OpaqueTypeConformance2;
  *(&v43 + 1) = v7;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFED40, &qword_1E5A3C098);
  sub_1E5A2AA84();
  v8 = sub_1E5A2B494();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = v28[3];
  v44 = v28[2];
  v45 = v16;
  v46 = *(v28 + 8);
  v17 = v28[1];
  v42 = *v28;
  v43 = v17;
  *&v17 = v26;
  *(&v17 + 1) = v24;
  *&v16 = v27;
  *(&v16 + 1) = v25;
  v31 = v16;
  v30 = v17;
  v32 = &v42;
  v36 = OpaqueTypeMetadata2;
  v37 = v5;
  v38 = OpaqueTypeConformance2;
  v39 = v7;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098);
  v34 = v18;
  v35 = v19;
  v20 = swift_getWitnessTable();
  sub_1E5A2B484();
  v33 = v20;
  v21 = swift_getWitnessTable();
  sub_1E58B41DC(v12, v8, v21);
  v22 = *(v9 + 8);
  v22(v12, v8);
  sub_1E58B41DC(v15, v8, v21);
  return (v22)(v15, v8);
}

uint64_t sub_1E598932C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5989374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v167 = a5;
  v166 = a4;
  v163 = a1;
  v162 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFCE80, &qword_1E5A35BC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v156 = &v121 - v10;
  v153 = sub_1E5A2AC64();
  v151 = *(v153 - 1);
  v11 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v147 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScheduleConfigurationSection(255);
  type metadata accessor for PageContentSection();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v13 = sub_1E5A2A494();
  WitnessTable = swift_getWitnessTable();
  v134 = v13;
  v132 = WitnessTable;
  v15 = sub_1E5A2A4B4();
  v135 = *(v15 - 8);
  v16 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v121 - v17;
  sub_1E5A2AC14();
  v18 = sub_1E5A2A6C4();
  v145 = *(v18 - 8);
  v19 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v137 = &v121 - v20;
  v136 = v15;
  v21 = swift_getWitnessTable();
  v22 = sub_1E598932C(&qword_1EE2CFAE8, MEMORY[0x1E6980270]);
  v130 = v21;
  v175 = v21;
  v176 = v22;
  v23 = swift_getWitnessTable();
  v169 = v18;
  v170 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v143 = *(OpaqueTypeMetadata2 - 8);
  v25 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v142 = &v121 - v26;
  v27 = type metadata accessor for BottomActionSection();
  v146 = v18;
  v169 = v18;
  v170 = v23;
  v141 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = swift_getWitnessTable();
  v169 = OpaqueTypeMetadata2;
  v170 = v27;
  v171 = OpaqueTypeConformance2;
  v172 = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v154 = *(v30 - 8);
  v31 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v164 = &v121 - v32;
  v33 = type metadata accessor for ScheduledDayReviewView();
  v144 = OpaqueTypeMetadata2;
  v169 = OpaqueTypeMetadata2;
  v170 = v27;
  v140 = v27;
  v139 = OpaqueTypeConformance2;
  v171 = OpaqueTypeConformance2;
  v172 = v29;
  v138 = v29;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_1E598932C(&qword_1ECFFED38, type metadata accessor for ScheduledDayReviewView);
  v169 = v30;
  v170 = v33;
  v171 = v34;
  v172 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v128 = *(v36 - 8);
  v37 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v152 = &v121 - v38;
  v155 = v30;
  v169 = v30;
  v170 = v33;
  v150 = v33;
  v149 = v34;
  v171 = v34;
  v172 = v35;
  v148 = v35;
  v39 = swift_getOpaqueTypeConformance2();
  v40 = a2;
  v41 = sub_1E58CD164(&qword_1ECFFCEC8, &qword_1ECFFCE80, &qword_1E5A35BC0);
  v161 = v36;
  v169 = v36;
  v170 = v8;
  v165 = v8;
  v160 = v39;
  v171 = v39;
  v172 = v41;
  v159 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v129 = *(v42 - 8);
  v43 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v127 = &v121 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v125 = &v121 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v126 = &v121 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFED40, &qword_1E5A3C098);
  v124 = *(v49 - 8);
  v50 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v121 - v51;
  v158 = sub_1E5A2AA84();
  v157 = *(v158 - 8);
  v53 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v158);
  v55 = &v121 - v54;
  v56 = v163;
  v57 = *(v163 + 8);
  v168 = v40;
  v169 = v40;
  v170 = a3;
  v58 = a3;
  v59 = v166;
  v171 = v166;
  v60 = v167;
  v172 = v167;
  v131 = type metadata accessor for WorkoutPlanScheduleReviewView();
  swift_getKeyPath();

  sub_1E5A2B934();

  v61 = v169;
  if (!v169)
  {
    sub_1E5A2A534();
    v103 = v161;
    v112 = v165;
    v169 = v161;
    v170 = v165;
    v105 = v160;
    v106 = v159;
    v171 = v160;
    v172 = v159;
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098);
    sub_1E595ECB8(v52, v42, v49);
    (*(v124 + 8))(v52, v49);
    goto LABEL_9;
  }

  v121 = v49;
  v122 = v55;
  v123 = v42;
  v62 = sub_1E5A2AD84();
  MEMORY[0x1EEE9AC00](v62);
  *(&v121 - 6) = v168;
  *(&v121 - 5) = v58;
  v124 = v58;
  v117 = v59;
  v118 = v60;
  v119 = v56;
  v120 = v61;
  v63 = v133;
  sub_1E594320C();

  v64 = sub_1E5A2AD94();
  v65 = v137;
  v66 = v136;
  sub_1E5943224(v64, 0, 1, v136, v130);
  (*(v135 + 8))(v63, v66);
  v67 = v147;
  sub_1E5A2AAB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD770, &qword_1E5A35D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C930;
  v69 = sub_1E5A2AD84();
  *(inited + 32) = v69;
  v70 = sub_1E5A2AD64();
  *(inited + 33) = v70;
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v69)
  {
    sub_1E5A2AD74();
  }

  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v70)
  {
    sub_1E5A2AD74();
  }

  v71 = v167;
  v72 = v166;
  v73 = v142;
  v74 = v146;
  sub_1E5A2B1B4();
  (*(v151 + 8))(v67, v153);
  v75 = (*(v145 + 8))(v65, v74);
  MEMORY[0x1EEE9AC00](v75);
  v76 = v124;
  *(&v121 - 6) = v168;
  *(&v121 - 5) = v76;
  v117 = v72;
  v118 = v71;
  sub_1E5A2AA24();
  swift_checkMetadataState();
  v120 = v138;
  v119 = v139;
  v77 = v144;
  sub_1E5A2B0E4();
  (*(v143 + 8))(v73, v77);
  sub_1E5A2BC84();
  v78 = v131;
  v79 = *(*(v131 - 8) + 16);
  v80 = *(v131 - 8) + 16;
  v79(&v169, v56, v131);
  v151 = v80;
  v153 = v79;
  v81 = sub_1E5A2BC74();
  v82 = swift_allocObject();
  v83 = MEMORY[0x1E69E85E0];
  *(v82 + 16) = v81;
  *(v82 + 24) = v83;
  v84 = v168;
  *(v82 + 32) = v168;
  *(v82 + 40) = v76;
  *(v82 + 48) = v72;
  *(v82 + 56) = v71;
  v85 = *(v56 + 48);
  *(v82 + 96) = *(v56 + 32);
  *(v82 + 112) = v85;
  *(v82 + 128) = *(v56 + 64);
  v86 = *(v56 + 16);
  *(v82 + 64) = *v56;
  *(v82 + 80) = v86;
  v79(&v169, v56, v78);
  v87 = sub_1E5A2BC74();
  v88 = swift_allocObject();
  *(v88 + 16) = v87;
  *(v88 + 24) = MEMORY[0x1E69E85E0];
  *(v88 + 32) = v84;
  *(v88 + 40) = v76;
  *(v88 + 48) = v72;
  *(v88 + 56) = v71;
  v89 = *(v56 + 48);
  *(v88 + 96) = *(v56 + 32);
  *(v88 + 112) = v89;
  *(v88 + 128) = *(v56 + 64);
  v90 = *(v56 + 16);
  *(v88 + 64) = *v56;
  *(v88 + 80) = v90;
  sub_1E5A2B684();
  v91 = swift_allocObject();
  *(v91 + 16) = v84;
  *(v91 + 24) = v76;
  *(v91 + 32) = v72;
  *(v91 + 40) = v71;
  v92 = *(v56 + 48);
  *(v91 + 80) = *(v56 + 32);
  *(v91 + 96) = v92;
  *(v91 + 112) = *(v56 + 64);
  v93 = *(v56 + 16);
  *(v91 + 48) = *v56;
  *(v91 + 64) = v93;
  v153(&v169, v56, v78);
  v94 = swift_checkMetadataState();
  v119 = v148;
  v117 = v94;
  v118 = v149;
  v95 = v152;
  v96 = v155;
  v97 = v164;
  sub_1E5A2B2F4();

  (*(v154 + 8))(v97, v96);
  v98 = *MEMORY[0x1E697E728];
  v99 = sub_1E5A2A684();
  v100 = v156;
  (*(*(v99 - 8) + 104))(v156, v98, v99);
  sub_1E598932C(&qword_1ECFFBF40, MEMORY[0x1E697E730]);
  result = sub_1E5A2BA74();
  if (result)
  {
    v102 = v125;
    v103 = v161;
    v104 = v165;
    v105 = v160;
    v106 = v159;
    sub_1E5A2B164();
    sub_1E58BAD14(v100, &qword_1ECFFCE80, &qword_1E5A35BC0);
    (*(v128 + 8))(v95, v103);
    v169 = v103;
    v170 = v104;
    v171 = v105;
    v172 = v106;
    v107 = swift_getOpaqueTypeConformance2();
    v108 = v126;
    v109 = v123;
    sub_1E58B41DC(v102, v123, v107);
    v110 = *(v129 + 8);
    v110(v102, v109);
    v111 = v127;
    sub_1E58B41DC(v108, v109, v107);
    sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098);
    v55 = v122;
    sub_1E595EBC0(v111, v109);
    v110(v111, v109);
    v110(v108, v109);
    v112 = v165;
LABEL_9:
    v169 = v103;
    v170 = v112;
    v171 = v105;
    v172 = v106;
    v113 = swift_getOpaqueTypeConformance2();
    v114 = sub_1E58CD164(qword_1ECFFED48, &qword_1ECFFED40, &qword_1E5A3C098);
    v173 = v113;
    v174 = v114;
    v115 = v158;
    v116 = swift_getWitnessTable();
    sub_1E58B41DC(v55, v115, v116);
    return (*(v157 + 8))(v55, v115);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E598A65C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E598A6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a2;
  v28 = a6;
  v25 = a4;
  v26 = a1;
  v29 = a7;
  v9 = sub_1E5A2AB24();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  type metadata accessor for ScheduleConfigurationSection(255);
  type metadata accessor for PageContentSection();
  swift_getTupleTypeMetadata2();
  v11 = sub_1E5A2B864();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1E5A2A494();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  sub_1E5A2AA34();
  v30 = a3;
  v31 = v25;
  v32 = a5;
  v33 = v28;
  v34 = v26;
  v35 = v27;
  sub_1E59C9940(v11, WitnessTable);
  sub_1E5A2A484();
  v21 = swift_getWitnessTable();
  sub_1E58B41DC(v17, v13, v21);
  v22 = *(v14 + 8);
  v22(v17, v13);
  sub_1E58B41DC(v20, v13, v21);
  return (v22)(v20, v13);
}

uint64_t sub_1E598A91C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v43 = a5;
  *&v44 = a3;
  v47 = a7;
  v13 = type metadata accessor for ScheduleConfigurationSection(0);
  v45 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = *(a1 + 1);
  *&v56 = a3;
  *(&v56 + 1) = a4;
  *v57 = a5;
  *&v57[8] = a6;
  type metadata accessor for WorkoutPlanScheduleReviewView();
  v20 = a1[3];
  *&v57[16] = a1[2];
  v58 = v20;
  v59 = *(a1 + 8);
  v21 = a1[1];
  v56 = *a1;
  *v57 = v21;

  v22 = sub_1E5988B20();
  v24 = v23;
  v26 = v25;
  v27 = a1[3];
  *&v53[16] = a1[2];
  v54 = v27;
  v55 = *(a1 + 8);
  v28 = a1[1];
  v52 = *a1;
  *v53 = v28;
  sub_1E5988B7C(&v18[*(v13 + 24)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
  *v18 = sub_1E5A2A654();
  *(v18 + 1) = v29;
  *(v18 + 2) = v22;
  *(v18 + 3) = v24;
  v18[32] = v26 & 1;
  v30 = *(a1 + 6);
  v31 = **(a1 + 1);

  v42 = a1[2];
  v32 = v42;

  *&v52 = sub_1E5A2A654();
  *(&v52 + 1) = v33;
  *v53 = a2;
  *&v53[8] = v42;
  *&v53[24] = v30;
  v34 = type metadata accessor for PageContentSection();
  WitnessTable = swift_getWitnessTable();
  sub_1E58B41DC(&v52, v34, WitnessTable);
  v36 = *&v53[8];

  v37 = v46;
  sub_1E598BC80(v18, v46, type metadata accessor for ScheduleConfigurationSection);
  v52 = v56;
  *v53 = *v57;
  v44 = *&v57[8];
  *&v53[8] = *&v57[8];
  *&v53[24] = *&v57[24];
  v51[0] = v37;
  v51[1] = &v52;

  v38 = v44;

  v50[0] = v45;
  v50[1] = v34;
  v48 = sub_1E598932C(&qword_1ECFFF1F8, type metadata accessor for ScheduleConfigurationSection);
  v49 = WitnessTable;
  sub_1E597DC00(v51, 2uLL, v50);
  v39 = *&v57[8];

  sub_1E598BC20(v18, type metadata accessor for ScheduleConfigurationSection);
  v40 = *&v53[8];

  return sub_1E598BC20(v37, type metadata accessor for ScheduleConfigurationSection);
}

uint64_t sub_1E598AD58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[1];
  v17 = a2;
  *&v18 = a3;
  *(&v18 + 1) = a4;
  v19 = a5;
  type metadata accessor for WorkoutPlanScheduleReviewView();
  v8 = a1[7];
  v7 = a1[8];
  v9 = *v6;
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);

  v14 = sub_1E5A2A654();
  *&v15 = v10;
  *(&v15 + 1) = v8;
  v16 = v7;
  v11 = type metadata accessor for BottomActionSection();
  WitnessTable = swift_getWitnessTable();
  sub_1E58B41DC(&v14, v11, WitnessTable);

  v14 = v17;
  v15 = v18;
  v16 = v19;
  sub_1E58B41DC(&v14, v11, WitnessTable);
}

uint64_t sub_1E598AEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  type metadata accessor for WorkoutPlanScheduleReviewView();
  swift_getKeyPath();

  sub_1E5A2B934();
}

uint64_t sub_1E598AF6C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = type metadata accessor for WorkoutPlanCreationAction();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  v18 = *(a4 + 8);
  v20[0] = a5;
  v20[1] = a6;
  v20[2] = a7;
  v20[3] = a8;
  type metadata accessor for WorkoutPlanScheduleReviewView();
  *v17 = a1;
  swift_storeEnumTagMultiPayload();

  sub_1E5A2B954();

  return sub_1E598BC20(v17, type metadata accessor for WorkoutPlanCreationAction);
}

uint64_t sub_1E598B074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a1 + 8);
  type metadata accessor for WorkoutPlanScheduleReviewView();
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA0, &unk_1E5A2FBB0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for ScheduledDayReviewView();
  v7 = (a4 + *(v6 + 24));

  sub_1E5A2B514();
  *v7 = a2;
  v7[1] = a3;
  v8 = (a4 + *(v6 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFBFA8, &qword_1E5A2FBC0);
  sub_1E58CD164(&qword_1ECFFBFB0, &qword_1ECFFBFA8, &qword_1E5A2FBC0);
  result = sub_1E5A2A654();
  *v8 = result;
  v8[1] = v10;
  return result;
}

uint64_t sub_1E598B1A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E598B1E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1E598B228(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1E598B290()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E598B2CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E598B308(uint64_t a1, int a2)
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

uint64_t sub_1E598B350(uint64_t result, int a2, int a3)
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

uint64_t sub_1E598B3D0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E598B41C()
{
  sub_1E596EF68();
  if (v0 <= 0x3F)
  {
    sub_1E598B4B8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WorkoutPlanDateHelper(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E598B4B8()
{
  if (!qword_1ECFFEEE0)
  {
    v0 = sub_1E5A2B694();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECFFEEE0);
    }
  }
}

unint64_t sub_1E598B530()
{
  result = sub_1E5A29EB4();
  if (v1 <= 0x3F)
  {
    result = sub_1E59581C4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E598B670()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  return sub_1E5987574();
}

uint64_t sub_1E598B6BC(uint64_t a1)
{
  v2 = sub_1E5A2B4D4();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1E5A2A7A4();
}

uint64_t sub_1E598B784@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E6931450]();
  *a1 = result;
  return result;
}

uint64_t sub_1E598B7B0(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x1E6931460](v2);
}

unint64_t sub_1E598B7DC()
{
  result = qword_1ECFFEF30;
  if (!qword_1ECFFEF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF18, &qword_1E5A3C400);
    sub_1E596EA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEF30);
  }

  return result;
}

unint64_t sub_1E598B868()
{
  result = qword_1ECFFEF48;
  if (!qword_1ECFFEF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF38, &qword_1E5A3C4A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF18, &qword_1E5A3C400);
    sub_1E598B7DC();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1ECFFE960, &qword_1ECFFC788, &qword_1E5A319E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEF48);
  }

  return result;
}

unint64_t sub_1E598B95C()
{
  result = qword_1ECFFEF50;
  if (!qword_1ECFFEF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF40, &qword_1E5A3C4B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF18, &qword_1E5A3C400);
    sub_1E598B7DC();
    swift_getOpaqueTypeConformance2();
    sub_1E58CD164(&qword_1EE2CFB28, qword_1ECFFE0F0, &qword_1E5A39170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEF50);
  }

  return result;
}

uint64_t sub_1E598BA50()
{
  v1 = *(v0 + 56);
  swift_getKeyPath();
  sub_1E5A2B934();
}

uint64_t objectdestroy_44Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_1E598BAF0(_BYTE *a1)
{
  v2 = v1[4];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v10 = v1[5];
  return sub_1E59882E0(a1);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1E598BC20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E598BC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E598BCE8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1E59842A4(*(v1 + 32), a1);
}

unint64_t sub_1E598BCF4()
{
  result = qword_1ECFFEFA8;
  if (!qword_1ECFFEFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF98, &qword_1E5A3C558);
    sub_1E598BD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEFA8);
  }

  return result;
}

unint64_t sub_1E598BD80()
{
  result = qword_1ECFFEFB0;
  if (!qword_1ECFFEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEFB0);
  }

  return result;
}

unint64_t sub_1E598BDD4()
{
  result = qword_1ECFFEFB8;
  if (!qword_1ECFFEFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEFA0, &qword_1E5A3C560);
    sub_1E598BE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEFB8);
  }

  return result;
}

unint64_t sub_1E598BE60()
{
  result = qword_1ECFFEFC0;
  if (!qword_1ECFFEFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEFC0);
  }

  return result;
}

unint64_t sub_1E598BEB4()
{
  result = qword_1ECFFEFC8;
  if (!qword_1ECFFEFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEF90, &qword_1E5A3C550);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFEFD0, &qword_1E5A3C568);
    sub_1E5A2AAE4();
    sub_1E58CD164(&qword_1ECFFEFD8, &qword_1ECFFEFD0, &qword_1E5A3C568);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEFC8);
  }

  return result;
}

uint64_t sub_1E598C000(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E598C0B4()
{
  v1 = *(v0 + 56);
  swift_getKeyPath();
  sub_1E5A2B934();
}

uint64_t objectdestroy_72Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_1E598C164(_BYTE *a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_1E5984D90(a1, v1[2], v1[3], (v1 + 6));
}

unint64_t sub_1E598C180()
{
  result = qword_1ECFFEFF0;
  if (!qword_1ECFFEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFEFF0);
  }

  return result;
}

uint64_t objectdestroy_63Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1E598C224@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1E5984FB0(a1, v2 + 32, a2);
}

double sub_1E598C238@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_1E5980938(a1).n128_u64[0];
  return result;
}

uint64_t sub_1E598C25C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1E598C2E0()
{
  result = qword_1ECFFF030;
  if (!qword_1ECFFF030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF038, &qword_1E5A3C608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF040, &qword_1E5A3C610);
    sub_1E5A2A714();
    sub_1E58CD164(&qword_1ECFFF048, &qword_1ECFFF040, &qword_1E5A3C610);
    sub_1E598932C(&qword_1ECFFC220, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF030);
  }

  return result;
}

unint64_t sub_1E598C42C()
{
  result = qword_1ECFFF050;
  if (!qword_1ECFFF050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF020, &qword_1E5A3C600);
    sub_1E58CD164(&qword_1ECFFF058, &qword_1ECFFF060, &qword_1E5A3C618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF050);
  }

  return result;
}

uint64_t sub_1E598C4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E598C54C()
{
  v1 = *(type metadata accessor for ScheduleConfigurationSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1E59813BC(v2);
}

unint64_t sub_1E598C5B4()
{
  result = qword_1ECFFF090;
  if (!qword_1ECFFF090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF088, &qword_1E5A3C648);
    sub_1E58CD164(&qword_1ECFFF098, &qword_1ECFFF0A0, &unk_1E5A3C650);
    sub_1E58CD164(&qword_1ECFFE7A8, &qword_1ECFFE7A0, &unk_1E5A3ACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF090);
  }

  return result;
}

uint64_t sub_1E598C698(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E594C9E8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E598C6DC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E58B3C9C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1E598C730()
{
  result = qword_1ECFFF148;
  if (!qword_1ECFFF148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF138, &qword_1E5A3C798);
    sub_1E596F604();
    sub_1E58CD164(&qword_1ECFFF150, &qword_1ECFFD798, &qword_1E5A37DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF148);
  }

  return result;
}

uint64_t sub_1E598C7E8()
{
  v1 = *(type metadata accessor for ScheduleConfigurationSection(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1E5983844(v2, v3, v4);
}

uint64_t objectdestroy_101Tm()
{
  v1 = (type metadata accessor for ScheduleConfigurationSection(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + v2 + 8);

  v6 = *(v0 + v2 + 16);

  v7 = *(v0 + v2 + 24);

  v8 = v0 + v2 + v1[8];
  v9 = sub_1E5A29EB4();
  (*(*(v9 - 8) + 8))(v8, v9);

  return swift_deallocObject();
}

uint64_t sub_1E598C974(uint64_t *a1)
{
  v3 = *(type metadata accessor for ScheduleConfigurationSection(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1E598389C(a1, v4, v5, v6);
}

uint64_t objectdestroy_86Tm()
{
  v1 = (type metadata accessor for ScheduleConfigurationSection(0) - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = v3[1];

  v5 = v3[2];

  v6 = v3[3];

  v7 = v3 + v1[8];
  v8 = sub_1E5A29EB4();
  (*(*(v8 - 8) + 8))(v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1E598CB00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ScheduleConfigurationSection(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E5983B40(a1, v6, a2);
}

unint64_t sub_1E598CB90()
{
  result = qword_1ECFFF1A0;
  if (!qword_1ECFFF1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF190, &qword_1E5A3C810);
    sub_1E598C730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF1A0);
  }

  return result;
}

uint64_t sub_1E598CC14@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ScheduleConfigurationSection(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1E5982104(v6, a1);
}

uint64_t sub_1E598CC88(uint64_t a1)
{
  v3 = *(type metadata accessor for ScheduleConfigurationSection(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1E59825D8(a1, v4, v5, v6);
}

unint64_t sub_1E598CD04()
{
  result = qword_1ECFFF1D8;
  if (!qword_1ECFFF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF1D8);
  }

  return result;
}

unint64_t sub_1E598CD58()
{
  result = qword_1ECFFF1E0;
  if (!qword_1ECFFF1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF1D0, &unk_1E5A3C838);
    sub_1E598CE08(&qword_1ECFFC020, &qword_1ECFFC000, &qword_1E5A2FCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF1E0);
  }

  return result;
}

uint64_t sub_1E598CE08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E598CE68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(type metadata accessor for ScheduleConfigurationSection(0) - 8) + 80);

  return sub_1E5982BF0(a1, a2);
}

uint64_t sub_1E598CF10()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  return sub_1E598AEE4(v0[2], v0[3], (v0 + 8));
}

uint64_t objectdestroy_125Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  v4 = *(v0 + 112);

  v5 = *(v0 + 128);

  return swift_deallocObject();
}

uint64_t sub_1E598CF98@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_1E598B074((v1 + 6), v1[2], v1[3], a1);
}

unint64_t sub_1E598CFD8()
{
  result = qword_1ECFFF208;
  if (!qword_1ECFFF208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF080, &qword_1E5A3C640);
    sub_1E598D090();
    sub_1E58CD164(&qword_1ECFFC6B8, &qword_1ECFFC6C0, &qword_1E5A31900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF208);
  }

  return result;
}

unint64_t sub_1E598D090()
{
  result = qword_1ECFFF210;
  if (!qword_1ECFFF210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF070, &unk_1E5A3C628);
    sub_1E598D148();
    sub_1E58CD164(&qword_1ECFFF230, &qword_1ECFFF078, &qword_1E5A3C638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF210);
  }

  return result;
}

unint64_t sub_1E598D148()
{
  result = qword_1ECFFF218;
  if (!qword_1ECFFF218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF068, &qword_1E5A3C620);
    sub_1E58CD164(&qword_1ECFFF220, &qword_1ECFFF228, &unk_1E5A3C8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF218);
  }

  return result;
}

uint64_t sub_1E598D20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5A2BD84();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t TVPersonalizedWorkoutPlansView.init(store:buildYourOwnActionButtonViewBuilder:buildPersonalizedActionButtonViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a7 = sub_1E58D2CB8;
  *(a7 + 8) = result;
  *(a7 + 16) = 0;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  return result;
}

uint64_t sub_1E598D300()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE258, &unk_1E5A39330);
  sub_1E58CD164(&qword_1EE2CFA98, &qword_1ECFFE258, &unk_1E5A39330);

  return sub_1E5A2A4F4();
}

uint64_t sub_1E598D3A0()
{
  v1 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  v13 = type metadata accessor for PersonalizedWorkoutPlanCandidates();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v15) = *(v0 + 16);
  v30 = *v0;
  v31 = v15;
  v32 = *(v0 + 24);
  v33 = *(v0 + 40);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE278, &unk_1E5A3CAA0) + 48);
      sub_1E594D3DC(v12, v16);
      v19 = sub_1E5A29E34();
      (*(*(v19 - 8) + 8))(&v12[v18], v19);
      goto LABEL_6;
    }

    sub_1E58BAD14(v12, &qword_1ECFFE260, &qword_1E5A39370);
    return 0;
  }

  sub_1E594D3DC(v12, v16);
LABEL_6:
  v20 = *&v16[*(v13 + 20)];
  v21 = *(v20 + 16);
  if (!v21)
  {
    v29 = 0;
LABEL_14:
    sub_1E599AFF0(v16, type metadata accessor for PersonalizedWorkoutPlanCandidates);
    return v29;
  }

  v22 = 0;
  v23 = v20 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v24 = *(v2 + 72);
  while (1)
  {
    sub_1E599AF88(v23, v8, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    sub_1E599AF88(v8, v5, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v25 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
    v26 = (*(*(v25 - 8) + 48))(v5, 1, v25) == 1;
    sub_1E599AFF0(v5, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    result = sub_1E599AFF0(v8, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v28 = __OFADD__(v22, v26);
    v22 += v26;
    if (v28)
    {
      break;
    }

    v23 += v24;
    if (!--v21)
    {
      v29 = v22 > 0;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E598D728()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC100, &qword_1E5A2FE90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = *(v0 + 16);
  v14 = *v0;
  v15 = v8;
  v16 = *(v0 + 24);
  v17 = *(v0 + 40);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E58D5C24(v7, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return *v4;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC108, &unk_1E5A37F50) + 48);
      v11 = *v4;
      v12 = sub_1E5A29E34();
      (*(*(v12 - 8) + 8))(&v4[v10], v12);
      return v11;
    }

    sub_1E58BAD14(v4, &qword_1ECFFC100, &qword_1E5A2FE90);
  }

  return 0;
}

uint64_t sub_1E598D8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v5 = sub_1E5A29E74();
  v6 = *(a1 + 24);
  v112 = a1;
  v7 = *(a1 + 40);
  v110 = v6;
  v111 = v7;
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v142 = v4;
  *(&v142 + 1) = v5;
  v107 = v5;
  v106 = swift_getOpaqueTypeMetadata2();
  *&v143 = v106;
  *(&v143 + 1) = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  *&v144 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  v8 = sub_1E5A2B6F4();
  v108 = *(v8 - 8);
  v9 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v93 - v12;
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v13 = sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  v141 = WitnessTable;
  v14 = swift_getWitnessTable();
  *&v142 = v13;
  *(&v142 + 1) = v14;
  v15 = swift_getOpaqueTypeMetadata2();
  *&v142 = v13;
  *(&v142 + 1) = v14;
  v102 = v14;
  v16 = swift_getOpaqueTypeConformance2();
  *&v142 = v15;
  *(&v142 + 1) = v16;
  v123 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v119 = v8;
  v18 = sub_1E5A2AA84();
  v115 = *(v18 - 8);
  v19 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v93 - v20;
  v100 = sub_1E5A2A734();
  v99 = *(v100 - 8);
  v21 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = swift_checkMetadataState();
  v95 = *(v97 - 8);
  v23 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v25 = &v93 - v24;
  v118 = swift_checkMetadataState();
  v96 = *(v118 - 8);
  v26 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v28 = &v93 - v27;
  v114 = v17;
  v103 = *(v17 - 8);
  v29 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v109 = &v93 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v93 - v37;
  v39 = type metadata accessor for PersonalizedWorkoutPlanCandidates();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = &v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1E5A2AA84();
  v116 = *(v117 - 8);
  v43 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v120 = &v93 - v44;
  v45 = v2[1];
  v142 = *v2;
  v143 = v45;
  v144 = v2[2];
  v145 = *(v2 + 6);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1E58BAD14(v38, &qword_1ECFFE260, &qword_1E5A39370);
      v47 = v18;
      v48 = v123;
      v49 = v120;
    }

    else
    {
      v47 = v18;
      v48 = v123;
      v49 = v120;
      if (EnumCaseMultiPayload != 3)
      {
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        v50 = v112;
        v51 = v110;
        *(&v93 - 6) = *(v112 + 16);
        *(&v93 - 5) = v51;
        v52 = v111;
        *(&v93 - 4) = *(v50 + 32);
        *(&v93 - 3) = v52;
        v92 = &v142;
        swift_checkMetadataState();
        sub_1E5A2B484();
        sub_1E5A2AD64();
        sub_1E5A2B7E4();
        v53 = v97;
        sub_1E5A2B274();
        (*(v95 + 8))(v25, v53);
        v54 = v98;
        sub_1E5A2A724();
        v55 = v118;
        sub_1E5A2B394();
        (*(v99 + 8))(v54, v100);
        (*(v96 + 8))(v28, v55);
        v131 = v55;
        v132 = v123;
        v56 = swift_getOpaqueTypeConformance2();
        v57 = v109;
        v58 = v114;
        sub_1E58B41DC(v32, v114, v56);
        v112 = *(v103 + 8);
        (v112)(v32, v58);
        sub_1E58B41DC(v57, v58, v56);
        v59 = OpaqueTypeMetadata2;
        v131 = OpaqueTypeMetadata2;
        v132 = OpaqueTypeConformance2;
        v127 = swift_getOpaqueTypeConformance2();
        v60 = swift_getWitnessTable();
        v61 = v113;
        sub_1E595EBC0(v32, v58);
        v125 = v56;
        v49 = v120;
        v126 = v60;
        swift_getWitnessTable();
        sub_1E595EBC0(v61, v47);
        (*(v115 + 8))(v61, v47);
        v62 = v112;
        (v112)(v32, v58);
        v63 = OpaqueTypeConformance2;
        v62(v109, v58);
        v48 = v123;
        goto LABEL_11;
      }
    }

    v55 = v118;
    v131 = v118;
    v132 = v48;
    v66 = swift_getOpaqueTypeConformance2();
    v59 = OpaqueTypeMetadata2;
    v131 = OpaqueTypeMetadata2;
    v63 = OpaqueTypeConformance2;
    v132 = OpaqueTypeConformance2;
    v140 = swift_getOpaqueTypeConformance2();
    v67 = swift_getWitnessTable();
    v138 = v66;
    v139 = v67;
    v68 = swift_getWitnessTable();
    sub_1E595ECB8(v68, v47, MEMORY[0x1E6981E70]);
    goto LABEL_11;
  }

  v64 = v104;
  v65 = v105;
  v94 = v18;
  if (EnumCaseMultiPayload)
  {
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE278, &unk_1E5A3CAA0) + 48);
    sub_1E594D3DC(v38, v42);
    v70 = sub_1E5A29E34();
    (*(*(v70 - 8) + 8))(&v38[v69], v70);
  }

  else
  {
    sub_1E594D3DC(v38, v42);
  }

  v71 = OpaqueTypeMetadata2;
  v72 = OpaqueTypeConformance2;
  sub_1E590B0C8();
  sub_1E599AFF0(v42, type metadata accessor for PersonalizedWorkoutPlanCandidates);
  v73 = swift_allocObject();
  v74 = v112;
  v75 = v110;
  *(v73 + 16) = *(v112 + 16);
  *(v73 + 24) = v75;
  v76 = v111;
  *(v73 + 32) = *(v74 + 32);
  *(v73 + 40) = v76;
  v77 = v143;
  *(v73 + 48) = v142;
  *(v73 + 64) = v77;
  *(v73 + 80) = v144;
  *(v73 + 96) = v145;
  (*(*(v74 - 8) + 16))(&v131, &v142);
  type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v131 = v71;
  v132 = v72;
  v78 = swift_getOpaqueTypeConformance2();
  sub_1E599AF40(&qword_1ECFFF270, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  v92 = sub_1E599AF40(&qword_1ECFFF278, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  sub_1E5A2B6D4();
  v130 = v78;
  v79 = v119;
  v80 = swift_getWitnessTable();
  sub_1E58B41DC(v65, v79, v80);
  v81 = v64;
  v82 = *(v108 + 8);
  v82(v65, v79);
  sub_1E58B41DC(v64, v79, v80);
  v55 = v118;
  v131 = v118;
  v48 = v123;
  v132 = v123;
  v83 = swift_getOpaqueTypeConformance2();
  v84 = v113;
  sub_1E595ECB8(v65, v114, v79);
  v128 = v83;
  v129 = v80;
  v85 = v94;
  swift_getWitnessTable();
  v49 = v120;
  sub_1E595EBC0(v84, v85);
  (*(v115 + 8))(v84, v85);
  v59 = OpaqueTypeMetadata2;
  v82(v65, v79);
  v82(v81, v79);
  v63 = OpaqueTypeConformance2;
LABEL_11:
  v86 = MEMORY[0x1E6981E60];
  v131 = v55;
  v132 = v48;
  v87 = swift_getOpaqueTypeConformance2();
  v131 = v59;
  v132 = v63;
  v137 = swift_getOpaqueTypeConformance2();
  v88 = swift_getWitnessTable();
  v135 = v87;
  v136 = v88;
  v133 = swift_getWitnessTable();
  v134 = v86;
  v89 = v117;
  v90 = swift_getWitnessTable();
  sub_1E58B41DC(v49, v89, v90);
  return (*(v116 + 8))(v49, v89);
}

uint64_t sub_1E598EA38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v49 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v46 = v40 - v13;
  v14 = a5;
  v15 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  v51 = *(v15 - 8);
  v16 = v51[8];
  MEMORY[0x1EEE9AC00](v15);
  v48 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v47 = (v40 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (v40 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v50 = v40 - v24;
  v55 = a2;
  v56 = a3;
  v42 = v14;
  v43 = a3;
  v57 = a4;
  v58 = v14;
  type metadata accessor for TVPersonalizedWorkoutPlansView();
  v25 = sub_1E598D300();
  v26 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  v27 = *(v26 - 8);
  v44 = *(v27 + 56);
  v45 = v27 + 56;
  v28 = v46;
  v44(v46, 1, 1, v26);
  v29 = a1;
  v40[1] = a1;
  v30 = *(a1 + 40);
  v41 = v30;
  v31 = *(v29 + 48);
  swift_retain_n();
  TVPersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)(v25, v28, 0, v30, v31, v22);
  WitnessTable = swift_getWitnessTable();
  sub_1E58B41DC(v22, v15, WitnessTable);
  v33 = v51[1];
  v33(v22, v15);
  v34 = sub_1E598D300();
  v44(v28, 1, 1, v26);
  v35 = v47;
  TVPersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)(v34, v28, 1, v41, v31, v47);
  sub_1E58B41DC(v35, v15, WitnessTable);
  v33(v35, v15);
  v36 = v50;
  v37 = v51[2];
  v37(v35, v50, v15);
  v55 = v35;
  v38 = v48;
  v37(v48, v22, v15);
  v56 = v38;
  v54[0] = v15;
  v54[1] = v15;
  v52 = WitnessTable;
  v53 = WitnessTable;
  sub_1E597DC00(&v55, 2uLL, v54);
  v33(v22, v15);
  v33(v36, v15);
  v33(v38, v15);
  return (v33)(v35, v15);
}

uint64_t sub_1E598EE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v96 = a4;
  v94 = a2;
  v113 = a1;
  v111 = a8;
  v12 = sub_1E5A2BA14();
  v109 = *(v12 - 8);
  v110 = v12;
  v13 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5A2B994();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v107 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E5A29E74();
  v88 = *(v18 - 8);
  v89 = v18;
  v19 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v99 = &v87 - v23;
  v24 = sub_1E5A2B9C4();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v97 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v106 = &v87 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFC120, &qword_1E5A2FF10);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v87 - v32;
  v34 = a5;
  v90 = a5;
  v35 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  v95 = *(v35 - 8);
  v36 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v93 = (&v87 - v37);
  WitnessTable = swift_getWitnessTable();
  v114 = v35;
  v115 = WitnessTable;
  v91 = v35;
  v92 = WitnessTable;
  v39 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v104 = *(OpaqueTypeMetadata2 - 8);
  v41 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v112 = &v87 - v42;
  v114 = v35;
  v115 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = OpaqueTypeMetadata2;
  v114 = OpaqueTypeMetadata2;
  v115 = OpaqueTypeConformance2;
  v101 = OpaqueTypeConformance2;
  v44 = swift_getOpaqueTypeMetadata2();
  v102 = *(v44 - 8);
  v103 = v44;
  v45 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v98 = &v87 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v100 = &v87 - v48;
  v114 = v96;
  v115 = v34;
  v116 = a6;
  v117 = a7;
  type metadata accessor for TVPersonalizedWorkoutPlansView();
  v49 = a3;
  v50 = sub_1E598D300();
  v51 = v94;
  v52 = v33;
  sub_1E599AF88(v94, v33, type metadata accessor for PersonalizedWorkoutPlanCandidate);
  v53 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  (*(*(v53 - 1) + 56))(v33, 0, 1, v53);
  v54 = *(v49 + 40);
  v55 = *(v49 + 48);

  v56 = v93;
  TVPersonalizedWorkoutPlanCandidateView.init(store:candidate:index:actionButtonViewBuilder:)(v50, v52, v113, v54, v55, v93);
  sub_1E5A2AD64();
  sub_1E5A2B7E4();
  v57 = v91;
  sub_1E5A2B274();
  (*(v95 + 8))(v56, v57);
  *(v51 + v53[11]);
  sub_1E5A2B9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A3C8E0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v59 = (v51 + v53[5]);
  v60 = MEMORY[0x1E69E6158];
  v61 = v59[1];
  *(inited + 48) = *v59;
  *(inited + 56) = v61;
  *(inited + 72) = v60;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x70756B636F6CLL;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v60;
  *(inited + 128) = 0x6973736572706D69;
  v62 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v113;
  *(inited + 168) = v62;
  *(inited + 176) = 0x64496F636572;
  *(inited + 184) = 0xE600000000000000;
  v63 = v99;
  sub_1E58BABA0(v51 + v53[9], v99, &qword_1ECFFD900, &qword_1E5A39BB0);
  v64 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  if ((*(*(v64 - 8) + 48))(v63, 1, v64) == 1)
  {

    sub_1E58BAD14(v63, &qword_1ECFFD900, &qword_1E5A39BB0);
    v65 = (inited + 192);
    *(inited + 216) = v60;
LABEL_5:
    *v65 = 0;
    v73 = 0xE000000000000000;
    goto LABEL_6;
  }

  v67 = v87;
  v66 = v88;
  v68 = v63 + *(v64 + 20);
  v69 = v63;
  v70 = v89;
  (*(v88 + 16))(v87, v68, v89);

  sub_1E599AFF0(v69, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  v71 = sub_1E5A29E44();
  v73 = v72;
  (*(v66 + 8))(v67, v70);
  v65 = (inited + 192);
  *(inited + 216) = v60;
  if (!v73)
  {
    goto LABEL_5;
  }

  *v65 = v71;
LABEL_6:
  *(inited + 200) = v73;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v74 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v74);
  v75 = v106;
  sub_1E5A2B9D4();
  v76 = sub_1E5A2B9E4();
  (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
  v77 = v108;
  sub_1E5A2B9F4();
  v78 = v98;
  v79 = v105;
  v80 = v101;
  v81 = v112;
  sub_1E5A2B014();
  (*(v109 + 8))(v77, v110);
  sub_1E58BAD14(v75, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v104 + 8))(v81, v79);
  v114 = v79;
  v115 = v80;
  v82 = swift_getOpaqueTypeConformance2();
  v83 = v100;
  v84 = v103;
  sub_1E58B41DC(v78, v103, v82);
  v85 = *(v102 + 8);
  v85(v78, v84);
  sub_1E58B41DC(v83, v84, v82);
  return (v85)(v83, v84);
}

uint64_t sub_1E598F880@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v126 = a1;
  v147 = a3;
  v5 = *(a2 + 16);
  v127 = a2;
  v6 = *(a2 + 32);
  v140 = v5;
  v141 = v6;
  v7 = type metadata accessor for TVCustomPlanView();
  WitnessTable = swift_getWitnessTable();
  *&v177 = v7;
  *(&v177 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v130 = *(OpaqueTypeMetadata2 - 8);
  v10 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v139 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v138 = &v117 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  *&v177 = v7;
  *(&v177 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v177 = OpaqueTypeMetadata2;
  *(&v177 + 1) = OpaqueTypeConformance2;
  v151 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v16 = sub_1E5A2AA84();
  v17 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908);
  *&v177 = v14;
  *(&v177 + 1) = MEMORY[0x1E69E6158];
  v150 = v16;
  *&v178 = v16;
  *(&v178 + 1) = v17;
  *v179 = MEMORY[0x1E69E6168];
  v18 = sub_1E5A2B6F4();
  v125 = *(v18 - 8);
  v19 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v128 = &v117 - v22;
  *&v177 = v7;
  *(&v177 + 1) = WitnessTable;
  v23 = swift_getOpaqueTypeMetadata2();
  v133 = v7;
  v134 = WitnessTable;
  *&v177 = v7;
  *(&v177 + 1) = WitnessTable;
  v24 = swift_getOpaqueTypeConformance2();
  *&v177 = v23;
  *(&v177 + 1) = v24;
  *(&v149 + 1) = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v146 = v18;
  v26 = sub_1E5A2AA84();
  v137 = *(v26 - 8);
  v27 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v135 = &v117 - v28;
  v29 = sub_1E5A2A734();
  v119 = *(v29 - 8);
  v120 = v29;
  v30 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v118 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v149 = swift_checkMetadataState();
  v122 = *(v149 - 8);
  v32 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v121 = &v117 - v33;
  v136 = v25;
  v124 = *(v25 - 8);
  v34 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v123 = &v117 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v132 = &v117 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE260, &qword_1E5A39370);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v117 - v41;
  v43 = type metadata accessor for PersonalizedWorkoutPlanCandidates();
  v131 = *(v43 - 8);
  v44 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v117 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v117 - v47;
  v145 = v26;
  v148 = OpaqueTypeMetadata2;
  v49 = sub_1E5A2AA84();
  v143 = *(v49 - 8);
  v50 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v142 = &v117 - v51;
  v52 = v3[1];
  v180 = *v3;
  v181 = v52;
  v182 = v3[2];
  v183 = *(v3 + 6);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v144 = v49;
  if (EnumCaseMultiPayload <= 1)
  {
    v71 = v126;
    v72 = v127;
    if (EnumCaseMultiPayload)
    {
      v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE278, &unk_1E5A3CAA0) + 48);
      sub_1E594D3DC(v42, v48);
      v92 = sub_1E5A29E34();
      (*(*(v92 - 8) + 8))(&v42[v91], v92);
    }

    else
    {
      sub_1E594D3DC(v42, v48);
    }

    v93 = v131;
    v94 = *&v48[*(v43 + 20)];
    sub_1E594D3DC(v48, v45);
    v95 = (*(v93 + 80) + 105) & ~*(v93 + 80);
    v96 = swift_allocObject();
    v97 = *(v72 + 24);
    v98 = v141;
    *(v96 + 16) = v140;
    *(v96 + 24) = v97;
    v99 = *(v72 + 40);
    *(v96 + 32) = v98;
    *(v96 + 40) = v99;
    v100 = v181;
    *(v96 + 48) = v180;
    *(v96 + 64) = v100;
    *(v96 + 80) = v182;
    *(v96 + 96) = v183;
    *(v96 + 104) = v71;
    sub_1E594D3DC(v45, v96 + v95);

    (*(*(v72 - 8) + 16))(&v177, &v180, v72);
    type metadata accessor for PersonalizedWorkoutPlanCandidateType();
    v101 = v148;
    *&v177 = v148;
    *(&v177 + 1) = v151;
    v160 = swift_getOpaqueTypeConformance2();
    v161 = MEMORY[0x1E6981E60];
    v141 = MEMORY[0x1E697F968];
    v102 = swift_getWitnessTable();
    sub_1E599AF40(&qword_1ECFFF280, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v69 = v101;
    sub_1E599AF40(&qword_1ECFFF288, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v103 = v129;
    sub_1E5A2B6D4();
    v159 = v102;
    v104 = v146;
    v105 = swift_getWitnessTable();
    v106 = v128;
    sub_1E58B41DC(v103, v104, v105);
    v107 = *(v125 + 8);
    v107(v103, v104);
    sub_1E58B41DC(v106, v104, v105);
    v177 = v149;
    v108 = swift_getOpaqueTypeConformance2();
    v109 = v135;
    sub_1E595ECB8(v103, v136, v104);
    v157 = v108;
    v158 = v105;
    v110 = v145;
    swift_getWitnessTable();
    v68 = v142;
    sub_1E595EBC0(v109, v110);
    (*(v137 + 8))(v109, v110);
    v107(v103, v104);
    v107(v106, v104);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1E58BAD14(v42, &qword_1ECFFE260, &qword_1E5A39370);
  }

  else if (EnumCaseMultiPayload != 3)
  {
    v177 = v180;
    v178 = v181;
    *v179 = v182;
    *&v179[16] = v183;
    v54 = sub_1E598D300();
    v55 = *(&v181 + 1);
    v56 = v182;

    TVCustomPlanView.init(store:index:actionButtonViewBuilder:)(v54, 0, v55, v56, &v174);
    v57 = v118;
    sub_1E5A2A724();
    v58 = swift_checkMetadataState();
    v59 = v121;
    sub_1E5A2B394();
    (*(v119 + 8))(v57, v120);
    v177 = v174;
    v178 = v175;
    *v179 = v176[0];
    *&v179[9] = *(v176 + 9);
    (*(*(v58 - 8) + 8))(&v177, v58);
    sub_1E5A2AD64();
    sub_1E5A2B7E4();
    v60 = v123;
    v61 = v149;
    sub_1E5A2B274();
    (*(v122 + 8))(v59, v61);
    v174 = v61;
    v62 = swift_getOpaqueTypeConformance2();
    v63 = v132;
    v64 = v136;
    sub_1E58B41DC(v60, v136, v62);
    v141 = *(v124 + 8);
    v141(v60, v64);
    sub_1E58B41DC(v63, v64, v62);
    *&v174 = v148;
    *(&v174 + 1) = v151;
    v155 = swift_getOpaqueTypeConformance2();
    v156 = MEMORY[0x1E6981E60];
    v154 = swift_getWitnessTable();
    v65 = swift_getWitnessTable();
    v66 = v135;
    sub_1E595EBC0(v60, v64);
    v152 = v62;
    v153 = v65;
    v67 = v145;
    swift_getWitnessTable();
    v68 = v142;
    v69 = v148;
    sub_1E595EBC0(v66, v67);
    (*(v137 + 8))(v66, v67);
    v70 = v141;
    v141(v60, v64);
    v70(v132, v64);
LABEL_11:
    v87 = v68;
    v82 = *(&v149 + 1);
    v83 = v149;
    goto LABEL_12;
  }

  v177 = v180;
  v178 = v181;
  *v179 = v182;
  *&v179[16] = v183;
  v73 = sub_1E598D300();
  v74 = *(&v181 + 1);
  v75 = v182;

  TVCustomPlanView.init(store:index:actionButtonViewBuilder:)(v73, 0, v74, v75, &v174);
  sub_1E5A2AD64();
  sub_1E5A2B7E4();
  v76 = swift_checkMetadataState();
  v77 = v139;
  sub_1E5A2B274();
  v177 = v174;
  v178 = v175;
  *v179 = v176[0];
  *&v179[9] = *(v176 + 9);
  (*(*(v76 - 8) + 8))(&v177, v76);
  v78 = v138;
  v79 = v77;
  v80 = v77;
  v69 = v148;
  v81 = v151;
  sub_1E58B41DC(v80, v148, v151);
  v141 = *(v130 + 8);
  v141(v79, v69);
  sub_1E58B41DC(v78, v69, v81);
  v82 = *(&v149 + 1);
  v83 = v149;
  v174 = v149;
  v84 = swift_getOpaqueTypeConformance2();
  *&v174 = v69;
  *(&v174 + 1) = v81;
  v172 = swift_getOpaqueTypeConformance2();
  v173 = MEMORY[0x1E6981E60];
  v171 = swift_getWitnessTable();
  v85 = swift_getWitnessTable();
  v169 = v84;
  v170 = v85;
  v86 = v145;
  swift_getWitnessTable();
  v87 = v142;
  v88 = v139;
  sub_1E595ECB8(v139, v86, v69);
  v89 = v88;
  v90 = v141;
  v141(v89, v69);
  v90(v138, v69);
LABEL_12:
  *&v177 = v83;
  *(&v177 + 1) = v82;
  v111 = swift_getOpaqueTypeConformance2();
  *&v177 = v69;
  v112 = v151;
  *(&v177 + 1) = v151;
  v167 = swift_getOpaqueTypeConformance2();
  v168 = MEMORY[0x1E6981E60];
  v166 = swift_getWitnessTable();
  v113 = swift_getWitnessTable();
  v164 = v111;
  v165 = v113;
  v162 = swift_getWitnessTable();
  v163 = v112;
  v114 = v144;
  v115 = swift_getWitnessTable();
  sub_1E58B41DC(v87, v114, v115);
  return (*(v143 + 8))(v87, v114);
}

uint64_t sub_1E5990994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v86 = a7;
  v99 = a5;
  v97 = a4;
  v104 = a3;
  v102 = a2;
  v108 = a1;
  v109 = a9;
  v12 = sub_1E5A2BA14();
  v101 = *(v12 - 8);
  v13 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5A2B994();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v98 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E5A29EB4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v90 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E5A2BB14();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v103 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E5A2B9C4();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v88 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v96 = &v83 - v29;
  v87 = a6;
  v89 = a8;
  v30 = type metadata accessor for TVCustomPlanView();
  WitnessTable = swift_getWitnessTable();
  *&v112 = v30;
  *(&v112 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v94 = *(OpaqueTypeMetadata2 - 8);
  v33 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v105 = &v83 - v34;
  *&v112 = v30;
  *(&v112 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v112 = OpaqueTypeMetadata2;
  *(&v112 + 1) = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeMetadata2();
  v95 = *(v36 - 8);
  v37 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v93 = &v83 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v91 = &v83 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v92 = &v83 - v42;
  v43 = type metadata accessor for PersonalizedWorkoutPlanCandidateType();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v46 = &v83 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E5A2AA84();
  v106 = *(v47 - 8);
  v107 = v47;
  v48 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v83 - v49;
  sub_1E599AF88(v102, v46, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
  v51 = type metadata accessor for PersonalizedWorkoutPlanCandidate();
  if ((*(*(v51 - 8) + 48))(v46, 1, v51) == 1)
  {
    v83 = v36;
    v84 = v50;
    v85 = OpaqueTypeConformance2;
    v102 = v12;
    *&v112 = v87;
    *(&v112 + 1) = v86;
    *&v113 = v89;
    *(&v113 + 1) = a10;
    type metadata accessor for TVPersonalizedWorkoutPlansView();
    v52 = v104;
    v53 = sub_1E598D300();
    v54 = *(v52 + 24);
    v55 = *(v52 + 32);

    TVCustomPlanView.init(store:index:actionButtonViewBuilder:)(v53, v108, v54, v55, v110);
    sub_1E5A2AD64();
    sub_1E5A2B7E4();
    v56 = swift_checkMetadataState();
    sub_1E5A2B274();
    v112 = v110[0];
    v113 = v110[1];
    v114[0] = v111[0];
    *(v114 + 9) = *(v111 + 9);
    (*(*(v56 - 8) + 8))(&v112, v56);
    sub_1E5A2B9B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
    inited = swift_initStackObject();
    *(inited + 32) = 1701667182;
    *(inited + 16) = xmmword_1E5A3C8E0;
    *(inited + 40) = 0xE400000000000000;
    sub_1E5A2BA84();
    if (qword_1EE2CFA28 != -1)
    {
      swift_once();
    }

    v58 = qword_1EE2D33E0;
    sub_1E598D300();
    swift_getKeyPath();
    sub_1E5A2B944();

    v59 = sub_1E5A2BB64();
    v60 = MEMORY[0x1E69E6158];
    *(inited + 48) = v59;
    *(inited + 56) = v61;
    *(inited + 72) = v60;
    strcpy((inited + 80), "impressionType");
    *(inited + 95) = -18;
    *(inited + 96) = 0x70756B636F6CLL;
    *(inited + 104) = 0xE600000000000000;
    *(inited + 120) = v60;
    *(inited + 128) = 0x6973736572706D69;
    v62 = v108;
    if (v97 != 1)
    {
      v62 = 0;
    }

    v63 = MEMORY[0x1E69E6530];
    *(inited + 136) = 0xEF7865646E496E6FLL;
    *(inited + 144) = v62;
    *(inited + 168) = v63;
    *(inited + 176) = 0x64496F636572;
    *(inited + 184) = 0xE600000000000000;
    v64 = v99 + *(type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics() + 20);
    v65 = sub_1E5A29E44();
    *(inited + 216) = v60;
    *(inited + 192) = v65;
    *(inited + 200) = v66;
    sub_1E590DF48(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
    swift_arrayDestroy();
    sub_1E5A2B984();
    v67 = MEMORY[0x1E69E7CC0];
    sub_1E590DF48(MEMORY[0x1E69E7CC0]);
    sub_1E590DF48(v67);
    v68 = v96;
    sub_1E5A2B9D4();
    v69 = sub_1E5A2B9E4();
    (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    v70 = v100;
    sub_1E5A2B9F4();
    v71 = v91;
    v72 = OpaqueTypeMetadata2;
    OpaqueTypeConformance2 = v85;
    v73 = v105;
    sub_1E5A2B014();
    (*(v101 + 8))(v70, v102);
    sub_1E58BAD14(v68, &qword_1ECFFB550, &qword_1E5A304B0);
    (*(v94 + 8))(v73, OpaqueTypeMetadata2);
    *&v110[0] = OpaqueTypeMetadata2;
    *(&v110[0] + 1) = OpaqueTypeConformance2;
    v74 = swift_getOpaqueTypeConformance2();
    v75 = v92;
    v76 = v83;
    sub_1E58B41DC(v71, v83, v74);
    v77 = *(v95 + 8);
    v77(v71, v76);
    v78 = v93;
    sub_1E58B41DC(v75, v76, v74);
    v50 = v84;
    sub_1E595EBC0(v78, v76);
    v77(v78, v76);
    v77(v75, v76);
  }

  else
  {
    *&v112 = OpaqueTypeMetadata2;
    *(&v112 + 1) = OpaqueTypeConformance2;
    v79 = swift_getOpaqueTypeConformance2();
    sub_1E595ECB8(v79, v36, MEMORY[0x1E6981E70]);
    sub_1E599AFF0(v46, type metadata accessor for PersonalizedWorkoutPlanCandidateType);
    v72 = OpaqueTypeMetadata2;
  }

  *&v112 = v72;
  *(&v112 + 1) = OpaqueTypeConformance2;
  v115 = swift_getOpaqueTypeConformance2();
  v116 = MEMORY[0x1E6981E60];
  v80 = v107;
  v81 = swift_getWitnessTable();
  sub_1E58B41DC(v50, v80, v81);
  return (*(v106 + 8))(v50, v80);
}

uint64_t TVPersonalizedWorkoutPlansView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  *(&v91 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
  v92 = a1;
  v3 = *(a1 + 40);
  v77 = *(a1 + 24);
  *&v78 = v3;
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2B494();
  v87 = MEMORY[0x1E6981F48];
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v4 = MEMORY[0x1E697D318];
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v79 = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E5A29E74();
  swift_getWitnessTable();
  v82 = v4;
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v85 = MEMORY[0x1E69E6338];
  *&v131 = OpaqueTypeMetadata2;
  *(&v131 + 1) = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  *&v132 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v6 = sub_1E5A2AA84();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v128 = swift_getOpaqueTypeConformance2();
  v84 = MEMORY[0x1E69819D0];
  v126 = OpaqueTypeConformance2;
  v127 = swift_getWitnessTable();
  v90 = MEMORY[0x1E697F968];
  v124 = swift_getWitnessTable();
  v125 = MEMORY[0x1E6981E60];
  v8 = MEMORY[0x1E6981E60];
  v86 = v6;
  swift_getWitnessTable();
  sub_1E5A2A474();
  sub_1E5A2A6C4();
  v83 = MEMORY[0x1E697DA78];
  v122 = swift_getWitnessTable();
  v123 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  v9 = sub_1E5A2B734();
  v10 = sub_1E59926B8();
  v81 = MEMORY[0x1E697BE60];
  v119 = v10;
  v120 = swift_getWitnessTable();
  v121 = v8;
  *(&v91 + 1) = MEMORY[0x1E697D6F0];
  v11 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  *&v130 = v9;
  *(&v130 + 1) = v11;
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B604();
  v80 = sub_1E5A2BD84();
  *&v91 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF250, &qword_1E5A3C900);
  v12 = *(v92 + 32);
  v75 = *(v92 + 16);
  v76 = v12;
  type metadata accessor for TVCustomPlanView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  swift_getOpaqueTypeMetadata2();
  v13 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908);
  *&v132 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v79 = sub_1E5A2AA84();
  v14 = swift_getOpaqueTypeConformance2();
  v117 = swift_getOpaqueTypeConformance2();
  v15 = MEMORY[0x1E6981E60];
  v118 = MEMORY[0x1E6981E60];
  v116 = swift_getWitnessTable();
  v114 = v14;
  v115 = swift_getWitnessTable();
  v112 = swift_getWitnessTable();
  v113 = v13;
  swift_getWitnessTable();
  sub_1E5A2A474();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  sub_1E5A2B734();
  v85 = MEMORY[0x1E6981870];
  v84 = sub_1E58CD164(&qword_1EE2CFAB8, &qword_1ECFFF250, &qword_1E5A3C900);
  v109 = v84;
  v110 = swift_getWitnessTable();
  v111 = v15;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2B604();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2A474();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  v16 = swift_getOpaqueTypeMetadata2();
  v17 = sub_1E5A2AD04();
  v18 = swift_getOpaqueTypeConformance2();
  v19 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2B734();
  *&v130 = v16;
  *(&v130 + 1) = v17;
  *&v131 = v18;
  *(&v131 + 1) = v19;
  v106 = v84;
  v107 = swift_getOpaqueTypeConformance2();
  v20 = MEMORY[0x1E6981E60];
  v108 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E5A2B604();
  sub_1E5A2AA84();
  v21 = sub_1E5A2AA84();
  v104 = swift_getWitnessTable();
  v105 = swift_getWitnessTable();
  v102 = swift_getWitnessTable();
  v103 = v20;
  v84 = v21;
  v81 = swift_getWitnessTable();
  v22 = sub_1E5A2B604();
  v82 = *(v22 - 8);
  v23 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v72 - v24;
  v26 = swift_getWitnessTable();
  *&v130 = v22;
  *(&v130 + 1) = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v73 = *(v27 - 8);
  v28 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v72 - v29;
  *&v130 = v22;
  *(&v130 + 1) = v26;
  v31 = swift_getOpaqueTypeConformance2();
  *&v91 = v27;
  *(&v91 + 1) = v31;
  *&v130 = v27;
  *(&v130 + 1) = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v83 = *(v32 - 8);
  v33 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v72 - v34;
  v79 = v36;
  v37 = sub_1E5A2A6C4();
  v86 = *(v37 - 8);
  v38 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v74 = &v72 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v80 = &v72 - v41;
  v42 = sub_1E5A2BD84();
  v90 = *(v42 - 8);
  v43 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v85 = &v72 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v87 = &v72 - v46;
  v47 = *(v88 + 16);
  v130 = *v88;
  v131 = v47;
  v49 = *v88;
  v48 = *(v88 + 16);
  v132 = *(v88 + 32);
  v133 = *(v88 + 48);
  v100[0] = v49;
  v100[1] = v48;
  v100[2] = *(v88 + 32);
  v101 = *(v88 + 48);
  if (sub_1E598D728())
  {
    v50 = sub_1E5A2AA34();
    MEMORY[0x1EEE9AC00](v50);
    *&v51 = v75;
    *&v52 = v76;
    *(&v51 + 1) = v77;
    v88 = v51;
    *(&v52 + 1) = v78;
    v78 = v52;
    *(&v72 - 3) = v51;
    *(&v72 - 2) = v52;
    *(&v72 - 2) = v53;
    sub_1E5A2B5F4();
    sub_1E5A2B1E4();
    (*(v82 + 8))(v25, v22);
    v54 = *(&v91 + 1);
    v55 = v91;
    sub_1E5A2AFF4();
    (*(v73 + 8))(v30, v55);
    v56 = swift_allocObject();
    v57 = v78;
    *(v56 + 16) = v88;
    *(v56 + 32) = v57;
    v58 = v131;
    *(v56 + 48) = v130;
    *(v56 + 64) = v58;
    *(v56 + 80) = v132;
    *(v56 + 96) = v133;
    (*(*(v92 - 8) + 16))(v100, &v130);
    v100[0] = __PAIR128__(v54, v55);
    v59 = swift_getOpaqueTypeConformance2();
    v60 = v74;
    v61 = v79;
    sub_1E5A2B364();

    (*(v83 + 8))(v35, v61);
    v93 = v59;
    v94 = MEMORY[0x1E69805D0];
    v62 = swift_getWitnessTable();
    v63 = v80;
    sub_1E58B41DC(v60, v37, v62);
    v64 = v86;
    v65 = *(v86 + 8);
    v65(v60, v37);
    sub_1E58B41DC(v63, v37, v62);
    v65(v63, v37);
    v66 = v85;
    (*(v64 + 32))(v85, v60, v37);
    (*(v64 + 56))(v66, 0, 1, v37);
  }

  else
  {
    v66 = v85;
    (*(v86 + 56))(v85, 1, 1, v37);
    v55 = v91;
    v100[0] = v91;
    v98 = swift_getOpaqueTypeConformance2();
    v99 = MEMORY[0x1E69805D0];
    swift_getWitnessTable();
  }

  v67 = v90;
  v68 = v87;
  (*(v90 + 16))(v87, v66, v42);
  v69 = *(v67 + 8);
  v69(v66, v42);
  *&v100[0] = v55;
  *(&v100[0] + 1) = *(&v91 + 1);
  v96 = swift_getOpaqueTypeConformance2();
  v97 = MEMORY[0x1E69805D0];
  v95 = swift_getWitnessTable();
  v70 = swift_getWitnessTable();
  sub_1E58B41DC(v68, v42, v70);
  return (v69)(v68, v42);
}

unint64_t sub_1E59926B8()
{
  result = qword_1EE2CFB08;
  if (!qword_1EE2CFB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
    sub_1E58CD164(&qword_1EE2CFAB8, &qword_1ECFFF250, &qword_1E5A3C900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2CFB08);
  }

  return result;
}

uint64_t sub_1E5992770@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v152 = a5;
  v153 = a6;
  v158 = a2;
  v159 = a4;
  v154 = a3;
  v157 = a1;
  v156 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF250, &qword_1E5A3C900);
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v6 = MEMORY[0x1E697D318];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E5A29E74();
  swift_getWitnessTable();
  v141 = swift_getOpaqueTypeMetadata2();
  v140 = swift_getOpaqueTypeConformance2();
  v131 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  v137 = sub_1E5A2B6F4();
  v139 = sub_1E5A2AA84();
  v130 = sub_1E5A2AA84();
  type metadata accessor for TVCustomPlanView();
  swift_getWitnessTable();
  v135 = v7;
  v151 = swift_getOpaqueTypeMetadata2();
  v149 = swift_getOpaqueTypeConformance2();
  v147 = v6;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v8 = swift_getOpaqueTypeMetadata2();
  v146 = swift_getOpaqueTypeConformance2();
  v138 = v8;
  swift_getOpaqueTypeMetadata2();
  v143 = sub_1E5A2AA84();
  sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908);
  *&v181 = MEMORY[0x1E69E6168];
  v142 = sub_1E5A2B6F4();
  v144 = sub_1E5A2AA84();
  v145 = sub_1E5A2AA84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2A474();
  v133 = MEMORY[0x1E697DA78];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A4B4();
  v134 = MEMORY[0x1E697BE60];
  swift_getWitnessTable();
  v9 = swift_getOpaqueTypeMetadata2();
  v10 = sub_1E5A2AD04();
  v11 = swift_getOpaqueTypeConformance2();
  v12 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeMetadata2();
  v13 = sub_1E5A2B734();
  v136 = sub_1E58CD164(&qword_1EE2CFAB8, &qword_1ECFFF250, &qword_1E5A3C900);
  *&v179 = v9;
  *(&v179 + 1) = v10;
  *&v180 = v11;
  *(&v180 + 1) = v12;
  v203 = v136;
  v204 = swift_getOpaqueTypeConformance2();
  v14 = MEMORY[0x1E6981E60];
  v205 = MEMORY[0x1E6981E60];
  v132 = MEMORY[0x1E697D6F0];
  v126[2] = swift_getWitnessTable();
  v126[3] = v13;
  v155 = sub_1E5A2B604();
  v128 = *(v155 - 8);
  v15 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v127 = v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v129 = v126 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
  *&v179 = OpaqueTypeMetadata2;
  *(&v179 + 1) = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  *&v179 = v141;
  *(&v179 + 1) = v140;
  v202 = swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = MEMORY[0x1E69819D0];
  v20 = swift_getWitnessTable();
  v200 = v19;
  v201 = v20;
  v198 = swift_getWitnessTable();
  v199 = v14;
  swift_getWitnessTable();
  sub_1E5A2A474();
  sub_1E5A2A6C4();
  v196 = swift_getWitnessTable();
  v197 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  v21 = sub_1E5A2B734();
  v22 = sub_1E59926B8();
  v23 = swift_getWitnessTable();
  v193 = v22;
  v194 = v23;
  v195 = v14;
  v24 = swift_getWitnessTable();
  *&v179 = v21;
  *(&v179 + 1) = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  *&v179 = v21;
  *(&v179 + 1) = v24;
  v26 = swift_getOpaqueTypeConformance2();
  v130 = v25;
  v126[1] = v26;
  v27 = sub_1E5A2B604();
  v28 = sub_1E5A2BD84();
  *&v179 = v151;
  *(&v179 + 1) = v149;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v146;
  *&v179 = v138;
  *(&v179 + 1) = v146;
  v191 = swift_getOpaqueTypeConformance2();
  v192 = v14;
  v190 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v188 = v29;
  v189 = v31;
  v186 = swift_getWitnessTable();
  v187 = v30;
  swift_getWitnessTable();
  sub_1E5A2A474();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  v32 = sub_1E5A2B734();
  v33 = swift_getWitnessTable();
  v183 = v136;
  v184 = v33;
  v185 = v14;
  v34 = swift_getWitnessTable();
  *&v179 = v32;
  *(&v179 + 1) = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  *&v179 = v32;
  *(&v179 + 1) = v34;
  v36 = v152;
  v37 = swift_getOpaqueTypeConformance2();
  v138 = v35;
  v136 = v37;
  v38 = sub_1E5A2B604();
  swift_getTupleTypeMetadata2();
  v39 = sub_1E5A2B864();
  v40 = sub_1E5A2AA84();
  v145 = *(v40 - 8);
  v41 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v144 = v126 - v42;
  v151 = v39;
  v140 = *(v39 - 8);
  v43 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v139 = v126 - v45;
  v142 = v38;
  v135 = *(v38 - 8);
  v46 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v137 = v126 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v143 = v126 - v50;
  v141 = v27;
  v133 = *(v27 - 8);
  v51 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v54 = v126 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v57 = v126 - v56;
  OpaqueTypeMetadata2 = v28;
  v134 = *(v28 - 8);
  v58 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v61 = v126 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v146 = v126 - v63;
  v156 = v64;
  v65 = sub_1E5A2AA84();
  OpaqueTypeConformance2 = *(v65 - 8);
  v149 = v65;
  v66 = *(OpaqueTypeConformance2 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v147 = v126 - v67;
  v68 = v157[1];
  v179 = *v157;
  v180 = v68;
  v181 = v157[2];
  v182 = *(v157 + 6);
  v69 = v158;
  *&v166 = v158;
  v70 = v154;
  *(&v166 + 1) = v154;
  v71 = v159;
  *&v167 = v159;
  *(&v167 + 1) = v36;
  type metadata accessor for TVPersonalizedWorkoutPlansView();
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  if (v178)
  {
    if (v178 == 1)
    {
      MEMORY[0x1EEE9AC00](v72);
      v126[-6] = v69;
      v126[-5] = v70;
      v126[-4] = v71;
      v126[-3] = v73;
      v126[-2] = v157;
      sub_1E5A2AA24();
      v74 = v127;
      sub_1E5A2B5F4();
      v75 = v155;
      v76 = swift_getWitnessTable();
      v77 = v129;
      sub_1E58B41DC(v74, v75, v76);
      v78 = *(v128 + 8);
      v78(v74, v75);
      sub_1E58B41DC(v77, v75, v76);
      v79 = v151;
      v80 = swift_getWitnessTable();
      v81 = v144;
      sub_1E595ECB8(v74, v79, v75);
      v170 = v80;
      v171 = v76;
      v82 = v156;
      swift_getWitnessTable();
      v83 = v147;
      sub_1E595EBC0(v81, v82);
      (*(v145 + 8))(v81, v82);
      v78(v74, v75);
      v78(v129, v75);
    }

    else
    {
      v88 = v157;
      v89 = v157[1];
      v166 = *v157;
      v167 = v89;
      v168 = v157[2];
      v169 = *(v157 + 6);
      v90 = sub_1E598D3A0();
      if (v90)
      {
        MEMORY[0x1EEE9AC00](v90);
        v126[-6] = v69;
        v126[-5] = v70;
        v126[-4] = v71;
        v126[-3] = v36;
        v126[-2] = v157;
        sub_1E5A2AA24();
        sub_1E5A2B5F4();
        v91 = v141;
        v92 = swift_getWitnessTable();
        sub_1E58B41DC(v54, v91, v92);
        v93 = v133;
        v94 = v36;
        v95 = *(v133 + 8);
        v95(v54, v91);
        v96 = v92;
        v97 = v91;
        sub_1E58B41DC(v57, v91, v96);
        v98 = v57;
        v99 = v94;
        v95(v98, v91);
        v69 = v158;
        v71 = v159;
        v88 = v157;
        (*(v93 + 32))(v61, v54, v97);
        (*(v93 + 56))(v61, 0, 1, v97);
        v70 = v154;
      }

      else
      {
        (*(v133 + 56))(v61, 1, 1, v141);
        swift_getWitnessTable();
        v99 = v36;
      }

      v100 = sub_1E5A2BD84();
      (*(*(v100 - 8) + 16))(v146, v61, v100);
      v101 = v134;
      v102 = *(v134 + 8);
      v133 = v134 + 8;
      v157 = v102;
      v103 = (v102)(v61, OpaqueTypeMetadata2);
      MEMORY[0x1EEE9AC00](v103);
      v126[-6] = v69;
      v126[-5] = v70;
      v126[-4] = v71;
      v126[-3] = v99;
      v126[-2] = v88;
      sub_1E5A2AA24();
      v104 = v137;
      sub_1E5A2B5F4();
      v159 = MEMORY[0x1E6981870];
      v105 = v142;
      v152 = swift_getWitnessTable();
      v106 = v61;
      v107 = v143;
      sub_1E58B41DC(v104, v105, v152);
      v108 = v135;
      v110 = v135 + 8;
      v109 = *(v135 + 8);
      v109(v104, v105);
      v158 = v110;
      v154 = v109;
      v111 = OpaqueTypeMetadata2;
      (*(v101 + 16))(v106, v146, OpaqueTypeMetadata2);
      *&v166 = v106;
      (*(v108 + 16))(v104, v107, v105);
      *(&v166 + 1) = v104;
      v165[0] = v111;
      v165[1] = v105;
      v112 = v105;
      v162 = swift_getWitnessTable();
      v163 = swift_getWitnessTable();
      v164 = v152;
      v113 = v139;
      sub_1E597DC00(&v166, 2uLL, v165);
      v109(v104, v105);
      (v157)(v106, v111);
      v114 = v151;
      v115 = swift_getWitnessTable();
      v116 = swift_getWitnessTable();
      v117 = v144;
      sub_1E595EBC0(v113, v114);
      v160 = v115;
      v161 = v116;
      v118 = v156;
      swift_getWitnessTable();
      v83 = v147;
      sub_1E595EBC0(v117, v118);
      (*(v145 + 8))(v117, v118);
      (*(v140 + 8))(v113, v114);
      v154(v143, v112);
      (v157)(v146, OpaqueTypeMetadata2);
    }
  }

  else
  {
    v84 = swift_getWitnessTable();
    v85 = swift_getWitnessTable();
    v176 = v84;
    v177 = v85;
    v86 = v156;
    v87 = swift_getWitnessTable();
    v83 = v147;
    sub_1E595ECB8(v87, v86, MEMORY[0x1E6981E70]);
  }

  v119 = MEMORY[0x1E6981E60];
  v121 = OpaqueTypeConformance2;
  v120 = v149;
  v122 = swift_getWitnessTable();
  v123 = swift_getWitnessTable();
  v174 = v122;
  v175 = v123;
  v172 = swift_getWitnessTable();
  v173 = v119;
  v124 = swift_getWitnessTable();
  sub_1E58B41DC(v83, v120, v124);
  return (*(v121 + 8))(v83, v120);
}

uint64_t sub_1E5993DBC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v80 = a5;
  v91 = a3;
  v92 = a4;
  v93 = a2;
  v82 = a1;
  v90 = a6;
  v6 = sub_1E5A2BA14();
  v88 = *(v6 - 8);
  v89 = v6;
  v7 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A2B994();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v86 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5A29EB4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v84 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5A2BB14();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v83 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E5A2B9C4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v94 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v85 = &v73 - v23;
  v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF238, &unk_1E5A3C8F0);
  v24 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v25 = sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  *&v97 = v25;
  *(&v97 + 1) = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v81 = OpaqueTypeMetadata2;
  *&v97 = v25;
  *(&v97 + 1) = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v97 = OpaqueTypeMetadata2;
  *(&v97 + 1) = OpaqueTypeConformance2;
  v78 = swift_getOpaqueTypeMetadata2();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v30 = sub_1E5A29E74();
  v31 = swift_getWitnessTable();
  *&v97 = v24;
  *(&v97 + 1) = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  *&v97 = v24;
  *(&v97 + 1) = v31;
  v33 = swift_getOpaqueTypeConformance2();
  *&v97 = v32;
  *(&v97 + 1) = v33;
  v79 = MEMORY[0x1E69E3B40];
  v34 = swift_getOpaqueTypeMetadata2();
  v35 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  v36 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  *&v97 = v29;
  *(&v97 + 1) = v30;
  *&v98 = v34;
  *(&v98 + 1) = v35;
  *&v99 = v36;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  *&v97 = v81;
  *(&v97 + 1) = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  *&v97 = v32;
  *(&v97 + 1) = v33;
  v110 = swift_getOpaqueTypeConformance2();
  v38 = v82;
  v39 = swift_getWitnessTable();
  v108 = v37;
  v109 = v39;
  v40 = swift_getWitnessTable();
  v41 = MEMORY[0x1E6981E60];
  v106 = v40;
  v107 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E5A2A474();
  sub_1E5A2A6C4();
  v104 = swift_getWitnessTable();
  v105 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  v42 = v77;
  v43 = sub_1E5A2B734();
  v81 = *(v43 - 8);
  v44 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v73 - v45;
  v47 = sub_1E59926B8();
  v48 = swift_getWitnessTable();
  v101 = v47;
  v102 = v48;
  v103 = v41;
  v49 = v80;
  v50 = swift_getWitnessTable();
  *&v97 = v43;
  *(&v97 + 1) = v50;
  v76 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v78 = *(v51 - 8);
  v52 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v74 = &v73 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v75 = &v73 - v55;
  v96[2] = v93;
  v96[3] = v91;
  v96[4] = v92;
  v96[5] = v49;
  v96[6] = v38;
  v95[2] = v93;
  v95[3] = v91;
  v95[4] = v92;
  v95[5] = v49;
  v95[6] = v38;
  v79 = v46;
  sub_1E59B66BC(sub_1E599AD60, v96, sub_1E599AD78, v95, v42);
  sub_1E5A2B9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C930;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v57 = v38[1];
  v97 = *v38;
  v98 = v57;
  v99 = v38[2];
  v100 = *(v38 + 6);
  v58 = qword_1EE2D33E0;
  v96[8] = v93;
  v96[9] = v91;
  v96[10] = v92;
  v96[11] = v49;
  type metadata accessor for TVPersonalizedWorkoutPlansView();
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  v59 = sub_1E5A2BB64();
  v60 = MEMORY[0x1E69E6158];
  *(inited + 48) = v59;
  *(inited + 56) = v61;
  *(inited + 72) = v60;
  strcpy((inited + 80), "impressionType");
  *(inited + 120) = v60;
  *(inited + 95) = -18;
  *(inited + 96) = 0x666C656873;
  *(inited + 104) = 0xE500000000000000;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v62 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v62);
  v63 = v85;
  sub_1E5A2B9D4();
  v64 = sub_1E5A2B9E4();
  (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
  v65 = v87;
  sub_1E5A2BA04();
  v66 = v74;
  v67 = v76;
  v68 = v79;
  sub_1E5A2B014();
  (*(v88 + 8))(v65, v89);
  sub_1E58BAD14(v63, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v81 + 8))(v68, v43);
  *&v97 = v43;
  *(&v97 + 1) = v67;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = v75;
  sub_1E58B41DC(v66, v51, v69);
  v71 = *(v78 + 8);
  v71(v66, v51);
  sub_1E58B41DC(v70, v51, v69);
  return (v71)(v70, v51);
}

uint64_t sub_1E5994924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a5;
  v25 = a4;
  v21 = a3;
  v23 = a2;
  v24 = a1;
  v26 = a6;
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v20[1] = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E5A29E74();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = swift_getOpaqueTypeMetadata2();
  v42 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  v43 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v8 = swift_getOpaqueTypeConformance2();
  v39 = OpaqueTypeMetadata2;
  v40 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v36 = v8;
  v37 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v35 = MEMORY[0x1E6981E60];
  swift_getWitnessTable();
  sub_1E5A2A474();
  sub_1E5A2A6C4();
  v32 = swift_getWitnessTable();
  v33 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  v9 = sub_1E5A2A4B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  sub_1E5A2AD64();
  v27 = v23;
  v28 = v21;
  v29 = v25;
  v30 = v22;
  v31 = v24;
  sub_1E594320C();
  v17 = swift_getWitnessTable();
  sub_1E58B41DC(v13, v9, v17);
  v18 = *(v10 + 8);
  v18(v13, v9);
  sub_1E58B41DC(v16, v9, v17);
  return (v18)(v16, v9);
}

uint64_t sub_1E5994E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v48 = a4;
  v43 = a3;
  v46 = a2;
  v47 = a1;
  v49 = a6;
  v6 = sub_1E5A2AB24();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v10 = sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v62 = v10;
  v63 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v62 = v10;
  v63 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = OpaqueTypeMetadata2;
  v63 = OpaqueTypeConformance2;
  v42 = swift_getOpaqueTypeMetadata2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v15 = sub_1E5A29E74();
  v16 = swift_getWitnessTable();
  v62 = v9;
  v63 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v62 = v9;
  v63 = v16;
  v18 = swift_getOpaqueTypeConformance2();
  v62 = v17;
  v63 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v20 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  v21 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  v62 = v14;
  v63 = v15;
  v64 = v19;
  v65 = v20;
  v66 = v21;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v22 = sub_1E5A2AA84();
  v62 = OpaqueTypeMetadata2;
  v63 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v62 = v17;
  v63 = v18;
  v61 = swift_getOpaqueTypeConformance2();
  v24 = swift_getWitnessTable();
  v59 = v23;
  v60 = v24;
  v57 = swift_getWitnessTable();
  v58 = MEMORY[0x1E6981E60];
  v25 = swift_getWitnessTable();
  v26 = sub_1E5A2A474();
  v42 = *(v26 - 8);
  v27 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v30 = sub_1E5A2A6C4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v42 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v42 - v36;
  v50 = v46;
  v51 = v43;
  v52 = v48;
  v53 = v44;
  v54 = v47;
  sub_1E5A2A934();
  sub_1E59C9940(v22, v25);
  sub_1E5A2A464();
  sub_1E5A2B7E4();
  v41 = swift_getWitnessTable();
  sub_1E5A2B2E4();
  (*(v42 + 8))(v29, v26);
  v55 = v41;
  v56 = MEMORY[0x1E697EBF8];
  v38 = swift_getWitnessTable();
  sub_1E58B41DC(v34, v30, v38);
  v39 = *(v31 + 8);
  v39(v34, v30);
  sub_1E58B41DC(v37, v30, v38);
  return (v39)(v37, v30);
}

uint64_t sub_1E599551C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a5;
  v31 = a4;
  v28 = a3;
  v30 = a2;
  v32 = a6;
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25[1] = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v8 = sub_1E5A29E74();
  swift_getWitnessTable();
  v25[0] = swift_getOpaqueTypeMetadata2();
  v9 = swift_getOpaqueTypeConformance2();
  *&v42 = v7;
  *(&v42 + 1) = v8;
  *&v43 = swift_getOpaqueTypeMetadata2();
  *(&v43 + 1) = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  *&v44 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v10 = sub_1E5A2AA84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - v16;
  v18 = a1[1];
  v42 = *a1;
  v43 = v18;
  v44 = a1[2];
  v45 = *(a1 + 6);
  v38 = v30;
  v39 = v28;
  v40 = v31;
  v41 = v29;
  v19 = type metadata accessor for TVPersonalizedWorkoutPlansView();
  sub_1E598D8D4(v19, v14);
  *&v42 = OpaqueTypeMetadata2;
  *(&v42 + 1) = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  *&v42 = v25[0];
  *(&v42 + 1) = v9;
  v37 = swift_getOpaqueTypeConformance2();
  v21 = swift_getWitnessTable();
  v35 = v20;
  v36 = v21;
  v33 = swift_getWitnessTable();
  v34 = MEMORY[0x1E6981E60];
  v22 = swift_getWitnessTable();
  sub_1E58B41DC(v14, v10, v22);
  v23 = *(v11 + 8);
  v23(v14, v10);
  sub_1E58B41DC(v17, v10, v22);
  return (v23)(v17, v10);
}

__n128 sub_1E59959DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E5A2AA34();
  v19 = 0;
  sub_1E5995B48(a1, a2, a3, a4, a5, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v21, __src, sizeof(v21));
  sub_1E58BABA0(__dst, v16, &qword_1ECFFF268, &unk_1E5A3EBC0);
  sub_1E58BAD14(v21, &qword_1ECFFF268, &unk_1E5A3EBC0);
  memcpy(&v18[7], __dst, 0x120uLL);
  LOBYTE(a5) = v19;
  sub_1E5A2B7F4();
  sub_1E5A2A764();
  *a6 = v12;
  *(a6 + 8) = 0x4014000000000000;
  *(a6 + 16) = a5;
  memcpy((a6 + 17), v18, 0x127uLL);
  v13 = __src[5];
  *(a6 + 376) = __src[4];
  *(a6 + 392) = v13;
  *(a6 + 408) = __src[6];
  v14 = __src[1];
  *(a6 + 312) = __src[0];
  *(a6 + 328) = v14;
  result = __src[3];
  *(a6 + 344) = __src[2];
  *(a6 + 360) = result;
  return result;
}

id sub_1E5995B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v63 = a6;
  v11 = sub_1E5A29EB4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5A2BB14();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v19 = qword_1EE2D33E0;
  v102 = a2;
  v103 = a3;
  v104 = a4;
  v105 = a5;
  type metadata accessor for TVPersonalizedWorkoutPlansView();
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  v20 = sub_1E5A2AF64();
  v22 = v21;
  v24 = v23;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  v61 = v18;
  v62 = v14;
  v60 = a1;
  if (result)
  {
    sub_1E5A2AF34();
    v26 = sub_1E5A2AFA4();
    v28 = v27;
    v30 = v29;

    sub_1E58B3C9C(v20, v22, v24 & 1);

    LODWORD(v102) = sub_1E5A2ABA4();
    v31 = sub_1E5A2AF84();
    v57 = v32;
    v58 = v31;
    v34 = v33;
    v59 = v35;
    sub_1E58B3C9C(v26, v28, v30 & 1);

    sub_1E5A2B7F4();
    sub_1E5A2A764();
    v64 = v34 & 1;
    v123 = v34 & 1;
    sub_1E5A2BA84();
    v36 = qword_1EE2D33E0;
    sub_1E598D300();
    swift_getKeyPath();
    sub_1E5A2B944();

    v37 = sub_1E5A2AF64();
    v39 = v38;
    LOBYTE(v28) = v40;
    sub_1E5A2AEC4();
    v41 = sub_1E5A2AFA4();
    v43 = v42;
    v45 = v44;

    sub_1E58B3C9C(v37, v39, v28 & 1);

    LODWORD(v102) = sub_1E5A2ABA4();
    v46 = sub_1E5A2AF84();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    sub_1E58B3C9C(v41, v43, v45 & 1);

    sub_1E5A2B7F4();
    sub_1E5A2A764();
    v53 = v50 & 1;
    v114 = v50 & 1;
    v55 = v57;
    v54 = v58;
    *&v73 = v58;
    *(&v73 + 1) = v57;
    LOBYTE(v74) = v64;
    *(&v74 + 1) = *v122;
    DWORD1(v74) = *&v122[3];
    v56 = v59;
    *(&v74 + 1) = v59;
    v79 = v119;
    v80 = v120;
    v81 = v121;
    v75 = v115;
    v76 = v116;
    v77 = v117;
    v78 = v118;
    v65[6] = v119;
    v65[7] = v120;
    v65[2] = v115;
    v65[3] = v116;
    v65[4] = v117;
    v65[5] = v118;
    v65[0] = v73;
    v65[1] = v74;
    *&v82 = v46;
    *(&v82 + 1) = v48;
    LOBYTE(v83) = v53;
    *(&v83 + 1) = *v113;
    DWORD1(v83) = *&v113[3];
    *(&v83 + 1) = v52;
    v88 = v70;
    v89 = v71;
    v90 = v72;
    v84 = v66;
    v85 = v67;
    v86 = v68;
    v87 = v69;
    v65[12] = v67;
    v65[13] = v68;
    v65[10] = v83;
    v65[11] = v66;
    v65[14] = v69;
    v65[15] = v70;
    v65[16] = v71;
    v65[17] = v72;
    v65[8] = v121;
    v65[9] = v82;
    memcpy(v63, v65, 0x120uLL);
    v91[0] = v46;
    v91[1] = v48;
    v92 = v53;
    *v93 = *v113;
    *&v93[3] = *&v113[3];
    v94 = v52;
    v99 = v70;
    v100 = v71;
    v101 = v72;
    v95 = v66;
    v96 = v67;
    v97 = v68;
    v98 = v69;
    sub_1E58BABA0(&v73, &v102, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BABA0(&v82, &v102, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BAD14(v91, &qword_1ECFFB4F8, &unk_1E5A2C940);
    v102 = v54;
    v103 = v55;
    LOBYTE(v104) = v64;
    *(&v104 + 1) = *v122;
    HIDWORD(v104) = *&v122[3];
    v105 = v56;
    v110 = v119;
    v111 = v120;
    v112 = v121;
    v106 = v115;
    v107 = v116;
    v108 = v117;
    v109 = v118;
    return sub_1E58BAD14(&v102, &qword_1ECFFB4F8, &unk_1E5A2C940);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E59961AC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v85 = a3;
  v86 = a5;
  v73 = a4;
  v87 = a2;
  v77 = a1;
  v84 = a6;
  v6 = sub_1E5A2BA14();
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5A2B994();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v80 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5A29EB4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v78 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5A2BB14();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v76 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E5A2B9C4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v88 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB550, &qword_1E5A304B0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v79 = &v67 - v23;
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF250, &qword_1E5A3C900);
  v24 = type metadata accessor for TVCustomPlanView();
  WitnessTable = swift_getWitnessTable();
  *&v91 = v24;
  *(&v91 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = OpaqueTypeMetadata2;
  *&v91 = v24;
  *(&v91 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v91 = OpaqueTypeMetadata2;
  *(&v91 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  *&v91 = v24;
  *(&v91 + 1) = WitnessTable;
  v29 = swift_getOpaqueTypeMetadata2();
  *&v91 = v24;
  *(&v91 + 1) = WitnessTable;
  v30 = swift_getOpaqueTypeConformance2();
  *&v91 = v29;
  *(&v91 + 1) = v30;
  v74 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v31 = sub_1E5A2AA84();
  v32 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908);
  *&v91 = v28;
  *(&v91 + 1) = MEMORY[0x1E69E6158];
  *&v92 = v31;
  *(&v92 + 1) = v32;
  *&v93 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  *&v91 = v75;
  *(&v91 + 1) = OpaqueTypeConformance2;
  v33 = swift_getOpaqueTypeConformance2();
  *&v91 = v29;
  *(&v91 + 1) = v30;
  v103 = swift_getOpaqueTypeConformance2();
  v104 = MEMORY[0x1E6981E60];
  v102 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v100 = v33;
  v101 = v34;
  v35 = v86;
  v98 = swift_getWitnessTable();
  v99 = v30;
  swift_getWitnessTable();
  sub_1E5A2A474();
  swift_getWitnessTable();
  sub_1E5A2A4B4();
  v36 = v68;
  v37 = sub_1E5A2B734();
  v75 = *(v37 - 8);
  v38 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v67 - v39;
  v41 = sub_1E58CD164(&qword_1EE2CFAB8, &qword_1ECFFF250, &qword_1E5A3C900);
  v42 = swift_getWitnessTable();
  v95 = v41;
  v96 = v42;
  v97 = MEMORY[0x1E6981E60];
  v43 = swift_getWitnessTable();
  *&v91 = v37;
  *(&v91 + 1) = v43;
  v71 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v72 = *(v44 - 8);
  v45 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v69 = &v67 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v70 = &v67 - v48;
  v90[2] = v87;
  v90[3] = v85;
  v90[4] = v73;
  v90[5] = v35;
  v90[6] = v77;
  v89[2] = v87;
  v89[3] = v85;
  v49 = v73;
  v89[4] = v73;
  v89[5] = v35;
  v50 = v77;
  v89[6] = v77;
  v74 = v40;
  sub_1E59B66BC(sub_1E599AE2C, v90, sub_1E599AE44, v89, v36);
  sub_1E5A2B9B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB558, &qword_1E5A2CA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5A2C930;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v52 = v50[1];
  v91 = *v50;
  v92 = v52;
  v93 = v50[2];
  v94 = *(v50 + 6);
  v53 = qword_1EE2D33E0;
  v90[8] = v87;
  v90[9] = v85;
  v90[10] = v49;
  v90[11] = v86;
  type metadata accessor for TVPersonalizedWorkoutPlansView();
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  *(inited + 48) = sub_1E5A2BB64();
  *(inited + 56) = v54;
  v55 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  strcpy((inited + 80), "impressionType");
  *(inited + 120) = v55;
  *(inited + 95) = -18;
  *(inited + 96) = 0x666C656873;
  *(inited + 104) = 0xE500000000000000;
  sub_1E590DF48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB560, &unk_1E5A30500);
  swift_arrayDestroy();
  sub_1E5A2B984();
  v56 = MEMORY[0x1E69E7CC0];
  sub_1E590DF48(MEMORY[0x1E69E7CC0]);
  sub_1E590DF48(v56);
  v57 = v79;
  sub_1E5A2B9D4();
  v58 = sub_1E5A2B9E4();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  v59 = v81;
  sub_1E5A2BA04();
  v60 = v69;
  v61 = v71;
  v62 = v74;
  sub_1E5A2B014();
  (*(v82 + 8))(v59, v83);
  sub_1E58BAD14(v57, &qword_1ECFFB550, &qword_1E5A304B0);
  (*(v75 + 8))(v62, v37);
  *&v91 = v37;
  *(&v91 + 1) = v61;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v70;
  sub_1E58B41DC(v60, v44, v63);
  v65 = *(v72 + 8);
  v65(v60, v44);
  sub_1E58B41DC(v64, v44, v63);
  return (v65)(v64, v44);
}

uint64_t sub_1E5996C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a5;
  v21 = a4;
  v22 = a3;
  v20 = a2;
  v23 = a1;
  v25 = a6;
  type metadata accessor for TVCustomPlanView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v40 = sub_1E5A2AA84();
  v41 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908);
  v42 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  v8 = swift_getOpaqueTypeConformance2();
  v38 = OpaqueTypeMetadata2;
  v39 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = MEMORY[0x1E6981E60];
  WitnessTable = swift_getWitnessTable();
  v33 = v8;
  v34 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v32 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  sub_1E5A2A474();
  swift_getWitnessTable();
  v9 = sub_1E5A2A4B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1E5A2AD64();
  v26 = v20;
  v27 = v22;
  v28 = v21;
  v29 = v24;
  v30 = v23;
  sub_1E594320C();
  v17 = swift_getWitnessTable();
  sub_1E58B41DC(v13, v9, v17);
  v18 = *(v10 + 8);
  v18(v13, v9);
  sub_1E58B41DC(v16, v9, v17);
  return (v18)(v16, v9);
}

uint64_t sub_1E59970F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a5;
  v35 = a4;
  v37 = a3;
  v34 = a2;
  v38 = a1;
  v40 = a6;
  v6 = sub_1E5A2AB24();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TVCustomPlanView();
  WitnessTable = swift_getWitnessTable();
  v53 = v9;
  v54 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = v9;
  v54 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = OpaqueTypeMetadata2;
  v54 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v53 = v9;
  v54 = WitnessTable;
  v14 = swift_getOpaqueTypeMetadata2();
  v53 = v9;
  v54 = WitnessTable;
  v15 = swift_getOpaqueTypeConformance2();
  v53 = v14;
  v54 = v15;
  swift_getOpaqueTypeMetadata2();
  v16 = sub_1E5A2AA84();
  v17 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908);
  v53 = v13;
  v54 = MEMORY[0x1E69E6158];
  v55 = v16;
  v56 = v17;
  v57 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v18 = sub_1E5A2AA84();
  v53 = OpaqueTypeMetadata2;
  v54 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeConformance2();
  v53 = v14;
  v54 = v15;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = MEMORY[0x1E6981E60];
  v50 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v48 = v19;
  v49 = v20;
  v46 = swift_getWitnessTable();
  v47 = v15;
  v21 = swift_getWitnessTable();
  v22 = sub_1E5A2A474();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v33 - v28;
  v41 = v34;
  v42 = v37;
  v43 = v35;
  v44 = v39;
  v45 = v38;
  sub_1E5A2A934();
  sub_1E59C9940(v18, v21);
  sub_1E5A2A464();
  v30 = swift_getWitnessTable();
  sub_1E58B41DC(v26, v22, v30);
  v31 = *(v23 + 8);
  v31(v26, v22);
  sub_1E58B41DC(v29, v22, v30);
  return (v31)(v29, v22);
}

uint64_t sub_1E59975B8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a5;
  v32 = a4;
  v35 = a3;
  v37 = a6;
  type metadata accessor for TVCustomPlanView();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v9 = swift_getOpaqueTypeMetadata2();
  v31 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v28 = sub_1E5A2AA84();
  v10 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908);
  *&v49 = v8;
  *(&v49 + 1) = MEMORY[0x1E69E6158];
  *&v50 = v28;
  *(&v50 + 1) = v10;
  *&v51 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  v29 = sub_1E5A2AA84();
  v11 = sub_1E5A2AA84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = a1[1];
  v49 = *a1;
  v50 = v19;
  v51 = a1[2];
  v52 = *(a1 + 6);
  v45 = a2;
  v46 = v35;
  v47 = v32;
  v48 = v36;
  v20 = type metadata accessor for TVPersonalizedWorkoutPlansView();
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  sub_1E598F880(v45, v20, v15);
  *&v49 = OpaqueTypeMetadata2;
  *(&v49 + 1) = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  *&v49 = v9;
  v22 = v31;
  *(&v49 + 1) = v31;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = MEMORY[0x1E6981E60];
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v40 = v21;
  v41 = v23;
  v38 = swift_getWitnessTable();
  v39 = v22;
  v24 = swift_getWitnessTable();
  sub_1E58B41DC(v15, v11, v24);
  v25 = *(v12 + 8);
  v25(v15, v11);
  sub_1E58B41DC(v18, v11, v24);
  return (v25)(v18, v11);
}

id sub_1E5997A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v63 = a6;
  v11 = sub_1E5A29EB4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5A2BB14();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v19 = qword_1EE2D33E0;
  v102 = a2;
  v103 = a3;
  v104 = a4;
  v105 = a5;
  type metadata accessor for TVPersonalizedWorkoutPlansView();
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  v20 = sub_1E5A2AF64();
  v22 = v21;
  v24 = v23;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  v61 = v18;
  v62 = v14;
  v60 = a1;
  if (result)
  {
    sub_1E5A2AF34();
    v26 = sub_1E5A2AFA4();
    v28 = v27;
    v30 = v29;

    sub_1E58B3C9C(v20, v22, v24 & 1);

    LODWORD(v102) = sub_1E5A2ABA4();
    v31 = sub_1E5A2AF84();
    v57 = v32;
    v58 = v31;
    v34 = v33;
    v59 = v35;
    sub_1E58B3C9C(v26, v28, v30 & 1);

    sub_1E5A2B7F4();
    sub_1E5A2A764();
    v64 = v34 & 1;
    v123 = v34 & 1;
    sub_1E5A2BA84();
    v36 = qword_1EE2D33E0;
    sub_1E598D300();
    swift_getKeyPath();
    sub_1E5A2B944();

    v37 = sub_1E5A2AF64();
    v39 = v38;
    LOBYTE(v28) = v40;
    sub_1E5A2AEC4();
    v41 = sub_1E5A2AFA4();
    v43 = v42;
    v45 = v44;

    sub_1E58B3C9C(v37, v39, v28 & 1);

    LODWORD(v102) = sub_1E5A2ABA4();
    v46 = sub_1E5A2AF84();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    sub_1E58B3C9C(v41, v43, v45 & 1);

    sub_1E5A2B7F4();
    sub_1E5A2A764();
    v53 = v50 & 1;
    v114 = v50 & 1;
    v55 = v57;
    v54 = v58;
    *&v73 = v58;
    *(&v73 + 1) = v57;
    LOBYTE(v74) = v64;
    *(&v74 + 1) = *v122;
    DWORD1(v74) = *&v122[3];
    v56 = v59;
    *(&v74 + 1) = v59;
    v79 = v119;
    v80 = v120;
    v81 = v121;
    v75 = v115;
    v76 = v116;
    v77 = v117;
    v78 = v118;
    v65[6] = v119;
    v65[7] = v120;
    v65[2] = v115;
    v65[3] = v116;
    v65[4] = v117;
    v65[5] = v118;
    v65[0] = v73;
    v65[1] = v74;
    *&v82 = v46;
    *(&v82 + 1) = v48;
    LOBYTE(v83) = v53;
    *(&v83 + 1) = *v113;
    DWORD1(v83) = *&v113[3];
    *(&v83 + 1) = v52;
    v88 = v70;
    v89 = v71;
    v90 = v72;
    v84 = v66;
    v85 = v67;
    v86 = v68;
    v87 = v69;
    v65[12] = v67;
    v65[13] = v68;
    v65[10] = v83;
    v65[11] = v66;
    v65[14] = v69;
    v65[15] = v70;
    v65[16] = v71;
    v65[17] = v72;
    v65[8] = v121;
    v65[9] = v82;
    memcpy(v63, v65, 0x120uLL);
    v91[0] = v46;
    v91[1] = v48;
    v92 = v53;
    *v93 = *v113;
    *&v93[3] = *&v113[3];
    v94 = v52;
    v99 = v70;
    v100 = v71;
    v101 = v72;
    v95 = v66;
    v96 = v67;
    v97 = v68;
    v98 = v69;
    sub_1E58BABA0(&v73, &v102, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BABA0(&v82, &v102, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BAD14(v91, &qword_1ECFFB4F8, &unk_1E5A2C940);
    v102 = v54;
    v103 = v55;
    LOBYTE(v104) = v64;
    *(&v104 + 1) = *v122;
    HIDWORD(v104) = *&v122[3];
    v105 = v56;
    v110 = v119;
    v111 = v120;
    v112 = v121;
    v106 = v115;
    v107 = v116;
    v108 = v117;
    v109 = v118;
    return sub_1E58BAD14(&v102, &qword_1ECFFB4F8, &unk_1E5A2C940);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5998090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a5;
  v28 = a4;
  v23 = a3;
  v27 = a2;
  v25 = a1;
  v26 = a6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF250, &qword_1E5A3C900);
  type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  sub_1E5A2B494();
  v22[2] = MEMORY[0x1E6981F48];
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E5A29E74();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v22[1] = sub_1E5A2AA84();
  type metadata accessor for TVCustomPlanView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E5A2AA84();
  sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908);
  v49 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  sub_1E5A2A474();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1E5A2A4B4();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = sub_1E5A2AD04();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = OpaqueTypeMetadata2;
  v46 = v7;
  v47 = OpaqueTypeConformance2;
  v48 = MEMORY[0x1E697CC08];
  swift_getOpaqueTypeMetadata2();
  v9 = sub_1E5A2B734();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  v37 = v27;
  v38 = v23;
  v39 = v28;
  v40 = v24;
  v41 = v25;
  v31 = v27;
  v32 = v23;
  v33 = v28;
  v34 = v24;
  v35 = v25;
  v17 = sub_1E58CD164(&qword_1EE2CFAB8, &qword_1ECFFF250, &qword_1E5A3C900);
  v45 = OpaqueTypeMetadata2;
  v46 = v7;
  v47 = OpaqueTypeConformance2;
  v48 = MEMORY[0x1E697CC08];
  v18 = swift_getOpaqueTypeConformance2();
  sub_1E59B66BC(sub_1E599B050, v36, sub_1E599B068, v30, v29);
  v42 = v17;
  v43 = v18;
  v44 = MEMORY[0x1E6981E60];
  v19 = swift_getWitnessTable();
  sub_1E58B41DC(v13, v9, v19);
  v20 = *(v10 + 8);
  v20(v13, v9);
  sub_1E58B41DC(v16, v9, v19);
  return (v20)(v16, v9);
}

uint64_t sub_1E5998894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  v79 = a4;
  v68 = a3;
  v78 = a2;
  v71 = a1;
  v77 = a6;
  v6 = sub_1E5A2ACE4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1E5A2AD04();
  v76 = *(v80 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v74 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1E5A2AAC4();
  v72 = *(v73 - 8);
  v11 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v70 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v14 = sub_1E5A2B494();
  v67 = MEMORY[0x1E6981F48];
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v86 = v14;
  v87 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v86 = v14;
  v87 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = OpaqueTypeMetadata2;
  v87 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v19 = sub_1E5A29E74();
  v20 = swift_getWitnessTable();
  v86 = v13;
  v87 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v86 = v13;
  v87 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v86 = v21;
  v87 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  v25 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  v86 = v18;
  v87 = v19;
  v88 = v23;
  v89 = v24;
  v90 = v25;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v66 = sub_1E5A2AA84();
  v26 = type metadata accessor for TVCustomPlanView();
  v27 = swift_getWitnessTable();
  v86 = v26;
  v87 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v86 = v26;
  v87 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v86 = v28;
  v87 = v29;
  swift_getOpaqueTypeMetadata2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v86 = v26;
  v87 = v27;
  v31 = swift_getOpaqueTypeMetadata2();
  v86 = v26;
  v87 = v27;
  v32 = swift_getOpaqueTypeConformance2();
  v86 = v31;
  v87 = v32;
  swift_getOpaqueTypeMetadata2();
  v33 = sub_1E5A2AA84();
  v34 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908);
  v86 = v30;
  v87 = MEMORY[0x1E69E6158];
  v88 = v33;
  v89 = v34;
  v90 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  swift_getWitnessTable();
  v35 = sub_1E5A2A474();
  v36 = swift_getWitnessTable();
  v86 = v35;
  v87 = v36;
  v63[1] = swift_getOpaqueTypeMetadata2();
  v86 = v35;
  v87 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = sub_1E5A2A4B4();
  v67 = *(v37 - 8);
  v38 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = v63 - v39;
  v41 = swift_getWitnessTable();
  v86 = v37;
  v87 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v66 = *(v42 - 8);
  v43 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = v63 - v44;
  v86 = v37;
  v87 = v41;
  v63[2] = v41;
  v46 = swift_getOpaqueTypeConformance2();
  v86 = v42;
  v87 = v80;
  v64 = v46;
  v88 = v46;
  v89 = MEMORY[0x1E697CC08];
  v47 = swift_getOpaqueTypeMetadata2();
  v65 = *(v47 - 8);
  v48 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = v63 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = v63 - v52;
  sub_1E5A2AD64();
  v81 = v78;
  v82 = v68;
  v83 = v79;
  v84 = v69;
  v85 = v71;
  v54 = v40;
  sub_1E594320C();
  v55 = v70;
  sub_1E5A2AAB4();
  LOBYTE(v35) = sub_1E5A2AD84();
  sub_1E5A2AD74();
  sub_1E5A2AD74();
  if (sub_1E5A2AD74() != v35)
  {
    sub_1E5A2AD74();
  }

  sub_1E5A2B234();
  (*(v72 + 8))(v55, v73);
  (*(v67 + 8))(v54, v37);
  sub_1E5A2ACD4();
  v56 = v74;
  sub_1E5A2ACF4();
  v57 = v80;
  v58 = v64;
  v59 = MEMORY[0x1E697CC08];
  sub_1E5A2B244();
  (*(v76 + 8))(v56, v57);
  (*(v66 + 8))(v45, v42);
  v86 = v42;
  v87 = v57;
  v88 = v58;
  v89 = v59;
  v60 = swift_getOpaqueTypeConformance2();
  sub_1E58B41DC(v50, v47, v60);
  v61 = *(v65 + 8);
  v61(v50, v47);
  sub_1E58B41DC(v53, v47, v60);
  return (v61)(v53, v47);
}

uint64_t sub_1E5999314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a3;
  v53 = a5;
  v57 = a2;
  v58 = a4;
  v55 = a1;
  v56 = a6;
  v6 = sub_1E5A2AB24();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v10 = sub_1E5A2B494();
  v51 = MEMORY[0x1E6981F48];
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v64 = v10;
  v65 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v64 = v10;
  v65 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = OpaqueTypeMetadata2;
  v65 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v15 = sub_1E5A29E74();
  v16 = swift_getWitnessTable();
  v64 = v9;
  v65 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v64 = v9;
  v65 = v16;
  v18 = swift_getOpaqueTypeConformance2();
  v64 = v17;
  v65 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v20 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  v21 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  v64 = v14;
  v65 = v15;
  v66 = v19;
  v67 = v20;
  v68 = v21;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v50 = sub_1E5A2AA84();
  v22 = type metadata accessor for TVCustomPlanView();
  v23 = swift_getWitnessTable();
  v64 = v22;
  v65 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v64 = v22;
  v65 = v23;
  v25 = swift_getOpaqueTypeConformance2();
  v64 = v24;
  v65 = v25;
  swift_getOpaqueTypeMetadata2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v64 = v22;
  v65 = v23;
  v27 = swift_getOpaqueTypeMetadata2();
  v64 = v22;
  v65 = v23;
  v28 = swift_getOpaqueTypeConformance2();
  v64 = v27;
  v65 = v28;
  swift_getOpaqueTypeMetadata2();
  v29 = sub_1E5A2AA84();
  v30 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908);
  v64 = v26;
  v65 = MEMORY[0x1E69E6158];
  v66 = v29;
  v67 = v30;
  v68 = MEMORY[0x1E69E6168];
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  sub_1E5A2AA84();
  swift_getTupleTypeMetadata2();
  v31 = sub_1E5A2B864();
  v32 = swift_getWitnessTable();
  v33 = sub_1E5A2A474();
  v51 = *(v33 - 8);
  v34 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v49 - v35;
  v49 = swift_getWitnessTable();
  v64 = v33;
  v65 = v49;
  v50 = MEMORY[0x1E697D1A0];
  v37 = swift_getOpaqueTypeMetadata2();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v49 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v49 - v43;
  v59 = v57;
  v60 = v52;
  v61 = v58;
  v62 = v53;
  v63 = v55;
  sub_1E5A2A934();
  sub_1E59C9940(v31, v32);
  sub_1E5A2A464();
  v45 = v49;
  sub_1E5A2B204();
  (*(v51 + 8))(v36, v33);
  v64 = v33;
  v65 = v45;
  v46 = swift_getOpaqueTypeConformance2();
  sub_1E58B41DC(v41, v37, v46);
  v47 = *(v38 + 8);
  v47(v41, v37);
  sub_1E58B41DC(v44, v37, v46);
  return (v47)(v44, v37);
}

uint64_t sub_1E5999A28@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a5;
  v65 = a4;
  v80 = a3;
  v64 = a2;
  v78 = a1;
  v76 = a6;
  type metadata accessor for TVCustomPlanView();
  swift_getWitnessTable();
  v79 = MEMORY[0x1E6981458];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v6 = MEMORY[0x1E697D318];
  swift_getOpaqueTypeMetadata2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF258, &qword_1E5A3C908);
  v8 = swift_getOpaqueTypeMetadata2();
  v73 = swift_getOpaqueTypeConformance2();
  v66 = v8;
  v77 = MEMORY[0x1E69E3B40];
  swift_getOpaqueTypeMetadata2();
  v69 = sub_1E5A2AA84();
  v9 = sub_1E58CD164(&qword_1ECFFF260, &qword_1ECFFF258, &qword_1E5A3C908);
  *&v99 = v7;
  *(&v99 + 1) = MEMORY[0x1E69E6158];
  *&v100 = v69;
  *(&v100 + 1) = v9;
  *&v101 = MEMORY[0x1E69E6168];
  v68 = sub_1E5A2B6F4();
  v70 = sub_1E5A2AA84();
  v71 = sub_1E5A2AA84();
  v72 = *(v71 - 8);
  v10 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = &v55 - v13;
  v14 = type metadata accessor for TVPersonalizedWorkoutPlanCandidateView();
  swift_getTupleTypeMetadata2();
  sub_1E5A2B864();
  v15 = sub_1E5A2B494();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  *&v99 = v15;
  *(&v99 + 1) = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v60 = v17;
  *&v99 = v15;
  *(&v99 + 1) = v16;
  v59 = swift_getOpaqueTypeConformance2();
  *&v99 = v17;
  *(&v99 + 1) = v59;
  swift_getOpaqueTypeMetadata2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF240, &unk_1E5A3EA70);
  v19 = sub_1E5A29E74();
  v20 = swift_getWitnessTable();
  *&v99 = v14;
  *(&v99 + 1) = v20;
  v62 = v6;
  v21 = swift_getOpaqueTypeMetadata2();
  v56 = v21;
  *&v99 = v14;
  *(&v99 + 1) = v20;
  v22 = swift_getOpaqueTypeConformance2();
  *&v99 = v21;
  *(&v99 + 1) = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = sub_1E58CD164(&qword_1ECFFF248, &qword_1ECFFF240, &unk_1E5A3EA70);
  v25 = sub_1E599AF40(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  *&v99 = v18;
  *(&v99 + 1) = v19;
  *&v100 = v23;
  *(&v100 + 1) = v24;
  *&v101 = v25;
  sub_1E5A2B6F4();
  sub_1E5A2AA84();
  v26 = sub_1E5A2AA84();
  v58 = *(v26 - 8);
  v27 = v58;
  v28 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v55 - v32;
  v34 = v78[1];
  v99 = *v78;
  v100 = v34;
  v101 = v78[2];
  v102 = *(v78 + 6);
  v95 = v64;
  v96 = v80;
  v97 = v65;
  v98 = v61;
  v35 = type metadata accessor for TVPersonalizedWorkoutPlansView();
  sub_1E598D8D4(v35, v30);
  *&v99 = v60;
  *(&v99 + 1) = v59;
  v36 = swift_getOpaqueTypeConformance2();
  *&v99 = v56;
  *(&v99 + 1) = v22;
  v94 = swift_getOpaqueTypeConformance2();
  v64 = MEMORY[0x1E69819D0];
  v37 = swift_getWitnessTable();
  v92 = v36;
  v93 = v37;
  v90 = swift_getWitnessTable();
  v91 = MEMORY[0x1E6981E60];
  v65 = swift_getWitnessTable();
  v38 = v33;
  v57 = v26;
  sub_1E58B41DC(v30, v26, v65);
  v79 = *(v27 + 8);
  v80 = v27 + 8;
  v79(v30, v26);
  v39 = v78[1];
  v99 = *v78;
  v100 = v39;
  v101 = v78[2];
  v102 = *(v78 + 6);
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  v40 = v63;
  sub_1E598F880(v95, v35, v63);
  *&v99 = OpaqueTypeMetadata2;
  *(&v99 + 1) = OpaqueTypeConformance2;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v73;
  *&v99 = v66;
  *(&v99 + 1) = v73;
  v88 = swift_getOpaqueTypeConformance2();
  v89 = MEMORY[0x1E6981E60];
  v87 = swift_getWitnessTable();
  v43 = swift_getWitnessTable();
  v85 = v41;
  v86 = v43;
  v83 = swift_getWitnessTable();
  v84 = v42;
  v44 = v71;
  v45 = swift_getWitnessTable();
  v46 = v67;
  v47 = v40;
  sub_1E58B41DC(v40, v44, v45);
  v48 = v72;
  v49 = *(v72 + 8);
  v49(v47, v44);
  v50 = v38;
  v51 = v38;
  v52 = v57;
  (*(v58 + 16))(v30, v51, v57);
  *&v99 = v30;
  (*(v48 + 16))(v47, v46, v44);
  *(&v99 + 1) = v47;
  v95 = v52;
  v96 = v44;
  v81 = v65;
  v82 = v45;
  sub_1E597DC00(&v99, 2uLL, &v95);
  v49(v46, v44);
  v53 = v79;
  v79(v50, v52);
  v49(v47, v44);
  return v53(v30, v52);
}

void *sub_1E599A3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1E5A2AA24();
  v20 = 0;
  a6(__src, a1, a2, a3, a4, a5);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v22, __src, sizeof(v22));
  sub_1E58BABA0(__dst, &v17, &qword_1ECFFF268, &unk_1E5A3EBC0);
  sub_1E58BAD14(v22, &qword_1ECFFF268, &unk_1E5A3EBC0);
  memcpy(&v19[7], __dst, 0x120uLL);
  v15 = v20;
  *a7 = v14;
  *(a7 + 8) = 0x4014000000000000;
  *(a7 + 16) = v15;
  return memcpy((a7 + 17), v19, 0x127uLL);
}

id sub_1E599A50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v63 = a6;
  v11 = sub_1E5A29EB4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E5A2BB14();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5A2BA84();
  if (qword_1EE2CFA28 != -1)
  {
    swift_once();
  }

  v19 = qword_1EE2D33E0;
  v102 = a2;
  v103 = a3;
  v104 = a4;
  v105 = a5;
  type metadata accessor for TVPersonalizedWorkoutPlansView();
  sub_1E598D300();
  swift_getKeyPath();
  sub_1E5A2B944();

  v20 = sub_1E5A2AF64();
  v22 = v21;
  v24 = v23;
  result = [objc_opt_self() _preferredFontForTextStyle_variant_];
  v61 = v18;
  v62 = v14;
  v60 = a1;
  if (result)
  {
    sub_1E5A2AF34();
    v26 = sub_1E5A2AFA4();
    v28 = v27;
    v30 = v29;

    sub_1E58B3C9C(v20, v22, v24 & 1);

    LODWORD(v102) = sub_1E5A2ABA4();
    v31 = sub_1E5A2AF84();
    v57 = v32;
    v58 = v31;
    v34 = v33;
    v59 = v35;
    sub_1E58B3C9C(v26, v28, v30 & 1);

    sub_1E5A2B7F4();
    sub_1E5A2A764();
    v64 = v34 & 1;
    v123 = v34 & 1;
    sub_1E5A2BA84();
    v36 = qword_1EE2D33E0;
    sub_1E598D300();
    swift_getKeyPath();
    sub_1E5A2B944();

    v37 = sub_1E5A2AF64();
    v39 = v38;
    LOBYTE(v28) = v40;
    sub_1E5A2AEC4();
    v41 = sub_1E5A2AFA4();
    v43 = v42;
    v45 = v44;

    sub_1E58B3C9C(v37, v39, v28 & 1);

    LODWORD(v102) = sub_1E5A2ABA4();
    v46 = sub_1E5A2AF84();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    sub_1E58B3C9C(v41, v43, v45 & 1);

    sub_1E5A2B7F4();
    sub_1E5A2A764();
    v53 = v50 & 1;
    v114 = v50 & 1;
    v55 = v57;
    v54 = v58;
    *&v73 = v58;
    *(&v73 + 1) = v57;
    LOBYTE(v74) = v64;
    *(&v74 + 1) = *v122;
    DWORD1(v74) = *&v122[3];
    v56 = v59;
    *(&v74 + 1) = v59;
    v79 = v119;
    v80 = v120;
    v81 = v121;
    v75 = v115;
    v76 = v116;
    v77 = v117;
    v78 = v118;
    v65[6] = v119;
    v65[7] = v120;
    v65[2] = v115;
    v65[3] = v116;
    v65[4] = v117;
    v65[5] = v118;
    v65[0] = v73;
    v65[1] = v74;
    *&v82 = v46;
    *(&v82 + 1) = v48;
    LOBYTE(v83) = v53;
    *(&v83 + 1) = *v113;
    DWORD1(v83) = *&v113[3];
    *(&v83 + 1) = v52;
    v88 = v70;
    v89 = v71;
    v90 = v72;
    v84 = v66;
    v85 = v67;
    v86 = v68;
    v87 = v69;
    v65[12] = v67;
    v65[13] = v68;
    v65[10] = v83;
    v65[11] = v66;
    v65[14] = v69;
    v65[15] = v70;
    v65[16] = v71;
    v65[17] = v72;
    v65[8] = v121;
    v65[9] = v82;
    memcpy(v63, v65, 0x120uLL);
    v91[0] = v46;
    v91[1] = v48;
    v92 = v53;
    *v93 = *v113;
    *&v93[3] = *&v113[3];
    v94 = v52;
    v99 = v70;
    v100 = v71;
    v101 = v72;
    v95 = v66;
    v96 = v67;
    v97 = v68;
    v98 = v69;
    sub_1E58BABA0(&v73, &v102, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BABA0(&v82, &v102, &qword_1ECFFB4F8, &unk_1E5A2C940);
    sub_1E58BAD14(v91, &qword_1ECFFB4F8, &unk_1E5A2C940);
    v102 = v54;
    v103 = v55;
    LOBYTE(v104) = v64;
    *(&v104 + 1) = *v122;
    HIDWORD(v104) = *&v122[3];
    v105 = v56;
    v110 = v119;
    v111 = v120;
    v112 = v121;
    v106 = v115;
    v107 = v116;
    v108 = v117;
    v109 = v118;
    return sub_1E58BAD14(&v102, &qword_1ECFFB4F8, &unk_1E5A2C940);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E599AB70()
{
  type metadata accessor for TVPersonalizedWorkoutPlansView();
  sub_1E598D300();
  sub_1E5A2B954();
}

uint64_t sub_1E599ABCC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_1E599AB70();
}

uint64_t sub_1E599ABDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E599AC24()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E599AC6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E599ACB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1E58B369C();
  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return swift_deallocObject();
}

uint64_t sub_1E599AE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  v11 = *(type metadata accessor for PersonalizedWorkoutPlanCandidates() - 8);
  return sub_1E5990994(a1, a2, v3 + 48, *(v3 + 104), v3 + ((*(v11 + 80) + 105) & ~*(v11 + 80)), v7, v8, v9, a3, v10);
}

uint64_t sub_1E599AF40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E599AF88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E599AFF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E599B100()
{
  v1 = 0x726F727265;
  v2 = 0x676E696863746566;
  if (*v0 != 2)
  {
    v2 = 0x64656863746566;
  }

  if (*v0)
  {
    v1 = 1701602409;
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

uint64_t sub_1E599B170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E599BAA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E599B198(uint64_t a1)
{
  v2 = sub_1E599B89C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599B1D4(uint64_t a1)
{
  v2 = sub_1E599B89C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E599B210(uint64_t a1)
{
  v2 = sub_1E599B9EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599B24C(uint64_t a1)
{
  v2 = sub_1E599B9EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E599B288(uint64_t a1)
{
  v2 = sub_1E599B8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599B2C4(uint64_t a1)
{
  v2 = sub_1E599B8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E599B300(uint64_t a1)
{
  v2 = sub_1E599B944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599B33C(uint64_t a1)
{
  v2 = sub_1E599B944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E599B378(uint64_t a1)
{
  v2 = sub_1E599B998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599B3B4(uint64_t a1)
{
  v2 = sub_1E599B998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LoadState.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5A2C1B4();
  MEMORY[0x1E6932DE0](a1);
  return sub_1E5A2C204();
}

uint64_t LoadState.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF290, &qword_1E5A3CAD0);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF298, &qword_1E5A3CAD8);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF2A0, &qword_1E5A3CAE0);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF2A8, &qword_1E5A3CAE8);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF2B0, &qword_1E5A3CAF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E599B89C();
  sub_1E5A2C224();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_1E599B944();
      v12 = v29;
      sub_1E5A2C024();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_1E599B8F0();
      v12 = v32;
      sub_1E5A2C024();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_1E599B998();
    sub_1E5A2C024();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_1E599B9EC();
  sub_1E5A2C024();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_1E599B89C()
{
  result = qword_1ECFFF2B8;
  if (!qword_1ECFFF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2B8);
  }

  return result;
}

unint64_t sub_1E599B8F0()
{
  result = qword_1ECFFF2C0;
  if (!qword_1ECFFF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2C0);
  }

  return result;
}

unint64_t sub_1E599B944()
{
  result = qword_1ECFFF2C8;
  if (!qword_1ECFFF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2C8);
  }

  return result;
}

unint64_t sub_1E599B998()
{
  result = qword_1ECFFF2D0;
  if (!qword_1ECFFF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2D0);
  }

  return result;
}

unint64_t sub_1E599B9EC()
{
  result = qword_1ECFFF2D8;
  if (!qword_1ECFFF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2D8);
  }

  return result;
}

void *sub_1E599BA58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E599BC00(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E599BAA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701602409 && a2 == 0xE400000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

void *sub_1E599BC00(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF340, &qword_1E5A3CFC0);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF348, &qword_1E5A3CFC8);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF350, &qword_1E5A3CFD0);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF358, &qword_1E5A3CFD8);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF360, &unk_1E5A3CFE0);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E599B89C();
  v21 = v50;
  sub_1E5A2C214();
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
  v26 = sub_1E5A2C004();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_1E58BC5B8();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_1E599B998();
        v36 = v40;
        sub_1E5A2BF44();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_1E599B9EC();
        v29 = v40;
        sub_1E5A2BF44();
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
      sub_1E599B944();
      v35 = v40;
      sub_1E5A2BF44();
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
      sub_1E599B8F0();
      v37 = v40;
      sub_1E5A2BF44();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_1E5A2BE84();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
  *v15 = &type metadata for LoadState;
  sub_1E5A2BF54();
  sub_1E5A2BE74();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v15;
}

unint64_t sub_1E599C244()
{
  result = qword_1ECFFF2E0;
  if (!qword_1ECFFF2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2E0);
  }

  return result;
}

unint64_t sub_1E599C2EC()
{
  result = qword_1ECFFF2E8;
  if (!qword_1ECFFF2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2E8);
  }

  return result;
}

unint64_t sub_1E599C344()
{
  result = qword_1ECFFF2F0;
  if (!qword_1ECFFF2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2F0);
  }

  return result;
}

unint64_t sub_1E599C39C()
{
  result = qword_1ECFFF2F8;
  if (!qword_1ECFFF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF2F8);
  }

  return result;
}

unint64_t sub_1E599C3F4()
{
  result = qword_1ECFFF300;
  if (!qword_1ECFFF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF300);
  }

  return result;
}

unint64_t sub_1E599C44C()
{
  result = qword_1ECFFF308;
  if (!qword_1ECFFF308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF308);
  }

  return result;
}

unint64_t sub_1E599C4A4()
{
  result = qword_1ECFFF310;
  if (!qword_1ECFFF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF310);
  }

  return result;
}

unint64_t sub_1E599C4FC()
{
  result = qword_1ECFFF318;
  if (!qword_1ECFFF318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF318);
  }

  return result;
}

unint64_t sub_1E599C554()
{
  result = qword_1ECFFF320;
  if (!qword_1ECFFF320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF320);
  }

  return result;
}

unint64_t sub_1E599C5AC()
{
  result = qword_1ECFFF328;
  if (!qword_1ECFFF328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF328);
  }

  return result;
}

unint64_t sub_1E599C604()
{
  result = qword_1ECFFF330;
  if (!qword_1ECFFF330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF330);
  }

  return result;
}

unint64_t sub_1E599C65C()
{
  result = qword_1ECFFF338;
  if (!qword_1ECFFF338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF338);
  }

  return result;
}

uint64_t sub_1E599C6C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanScheduledItem();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v44 - v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v12 = 0;
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v45 = v17;
  v46 = a1;
  v48 = a2;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v47 = (v16 - 1) & v16;
LABEL_15:
    v21 = v18 | (v12 << 6);
    v22 = *(a1 + 56);
    v23 = (*(a1 + 48) + 32 * v21);
    v24 = *v23;
    v25 = v23[1];
    v27 = v23[2];
    v26 = v23[3];
    v28 = *(v22 + 8 * v21);

    if (!v28)
    {
      return 1;
    }

    v29 = sub_1E58EF458(v24, v25, v27, v26);
    if ((v30 & 1) == 0 || (v31 = *(*(v48 + 56) + 8 * v29), v32 = *(v31 + 16), v32 != *(v28 + 16)))
    {
LABEL_37:

      return 0;
    }

    if (v32 && v31 != v28)
    {
      v33 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v49 = v31 + v33;
      v34 = v28 + v33;

      v35 = 0;
      while (v35 < *(v31 + 16))
      {
        v36 = *(v50 + 72) * v35;
        result = sub_1E58F2504(v49 + v36, v11);
        if (v35 >= *(v28 + 16))
        {
          goto LABEL_42;
        }

        sub_1E58F2504(v34 + v36, v8);
        if (*v11 != *v8 || (sub_1E58B4B48(v11[1], v8[1]) & 1) == 0 || (v37 = *(v51 + 24), (sub_1E5A29E54() & 1) == 0))
        {
          sub_1E58F2568(v8);
          sub_1E58F2568(v11);
LABEL_36:

          goto LABEL_37;
        }

        v38 = *(v51 + 28);
        v39 = *(v11 + v38);
        v40 = *(v11 + v38 + 8);
        v41 = (v8 + v38);
        if (v39 == *v41 && v40 == v41[1])
        {
          sub_1E58F2568(v8);
          result = sub_1E58F2568(v11);
        }

        else
        {
          v43 = sub_1E5A2C114();
          sub_1E58F2568(v8);
          result = sub_1E58F2568(v11);
          if ((v43 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        if (v32 == ++v35)
        {

          goto LABEL_7;
        }
      }

      goto LABEL_41;
    }

LABEL_7:

    v17 = v45;
    a1 = v46;
    v16 = v47;
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      return 1;
    }

    v20 = *(v13 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v47 = (v20 - 1) & v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1E599CA08(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1E58EF508(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1E5A2C114();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E599CBAC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v3 + 56) + (v12 << 6));
    v17 = v16[2];
    v18 = v16[3];
    v19 = v16[1];
    v39 = *v16;
    v40 = v19;
    v41 = v17;
    v42 = v18;
    v32 = v18;
    v33 = v19;
    v30 = v17;
    v31 = v39;

    sub_1E58BD154(&v39, &v35);
    if (!v14)
    {
      return 1;
    }

    v39 = v31;
    v40 = v33;
    v41 = v30;
    v42 = v32;
    v20 = sub_1E58EF508(v15, v14);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      goto LABEL_26;
    }

    v23 = (*(a2 + 56) + (v20 << 6));
    v24 = v23[3];
    v26 = *v23;
    v25 = v23[1];
    v37 = v23[2];
    v38 = v24;
    v35 = v26;
    v36 = v25;
    v27 = v26;
    v28 = v39;
    sub_1E58BD154(&v35, v34);
    if ((sub_1E58B61B8(v27, v28) & 1) == 0 || (sub_1E58B61B8(*(&v35 + 1), *(&v39 + 1)) & 1) == 0 || (sub_1E58B61B8(v36, v40) & 1) == 0 || (sub_1E58B61B8(*(&v36 + 1), *(&v40 + 1)) & 1) == 0 || (sub_1E58B61B8(v37, v41) & 1) == 0 || (sub_1E58B61B8(*(&v37 + 1), *(&v41 + 1)) & 1) == 0 || (sub_1E58B61B8(v38, v42) & 1) == 0)
    {
      sub_1E58BD18C(&v35);
LABEL_26:
      sub_1E58BD18C(&v39);
      return 0;
    }

    v29 = sub_1E58B61B8(*(&v38 + 1), *(&v42 + 1));
    sub_1E58BD18C(&v35);
    result = sub_1E58BD18C(&v39);
    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E599CDF4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v30 = (v6 + 63) >> 6;
  v31 = result;
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v32 = (v8 - 1) & v8;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v3 + 56) + 32 * v12);
    v18 = *v16;
    v17 = v16[1];
    v19 = v16[2];
    v20 = v16[3];

    if (!v14)
    {
      return 1;
    }

    v21 = sub_1E58EF508(v15, v14);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_27;
    }

    v24 = (*(a2 + 56) + 32 * v21);
    v25 = v24[2];
    v26 = v24[3];
    if (*v24 != v18 || v17 != v24[1])
    {
      v28 = v24[1];
      if ((sub_1E5A2C114() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if ((sub_1E58B61B8(v25, v19) & 1) == 0)
    {

LABEL_27:

      return 0;
    }

    v29 = sub_1E58B61B8(v26, v20);

    v3 = v31;
    v8 = v32;
    result = v14 == 0;
    if ((v29 & 1) == 0)
    {
      return result;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v30)
    {
      return 1;
    }

    v11 = *(v5 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v32 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E599D054(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v26 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v3 << 6);
    v13 = (*(result + 48) + 32 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = v13[3];
    v18 = *(*(result + 56) + 8 * v12);

    if (!v18)
    {
      return 1;
    }

    result = sub_1E58EF458(v14, v15, v16, v17);
    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * result), v21 = *(v20 + 16), v21 != *(v18 + 16)))
    {
LABEL_29:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v18;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v20 + 40);
      v24 = (v18 + 40);
      while (v21)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_1E5A2C114();
          if ((result & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_6:

    result = v26;
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t WorkoutPlanSchedule.isEmpty.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v6 = *(v2 + 64);
  v5 = v2 + 64;
  v7 = v4 & v6;
  v8 = (v3 + 63) >> 6;
  while (v7)
  {
    v9 = v1;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    if (*(*(*(*v0 + 56) + ((v9 << 9) | (8 * v10))) + 16))
    {
      return 0;
    }
  }

  while (1)
  {
    v9 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return 1;
    }

    v7 = *(v5 + 8 * v9);
    ++v1;
    if (v7)
    {
      v1 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E599D2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4F7942736D657469 && a2 == 0xED00007465736666)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5A2C114();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E599D35C(uint64_t a1)
{
  v2 = sub_1E599D548();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599D398(uint64_t a1)
{
  v2 = sub_1E599D548();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanSchedule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF368, &qword_1E5A3CFF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E599D548();

  sub_1E5A2C224();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF378, &qword_1E5A3CFF8);
  sub_1E599D59C();
  sub_1E5A2C0B4();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E599D548()
{
  result = qword_1ECFFF370;
  if (!qword_1ECFFF370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF370);
  }

  return result;
}

unint64_t sub_1E599D59C()
{
  result = qword_1ECFFF380;
  if (!qword_1ECFFF380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF378, &qword_1E5A3CFF8);
    sub_1E58F8EA0();
    sub_1E599D8A4(&qword_1ECFFF388, &qword_1ECFFB910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF380);
  }

  return result;
}

uint64_t WorkoutPlanSchedule.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF398, &qword_1E5A3D008);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E599D548();
  sub_1E5A2C214();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF378, &qword_1E5A3CFF8);
    sub_1E599D7E0();
    sub_1E5A2BFE4();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E599D7E0()
{
  result = qword_1ECFFF3A0;
  if (!qword_1ECFFF3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF378, &qword_1E5A3CFF8);
    sub_1E58F9778();
    sub_1E599D8A4(&qword_1ECFFF3A8, &qword_1ECFFBB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3A0);
  }

  return result;
}

uint64_t sub_1E599D8A4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF390, &qword_1E5A3D000);
    sub_1E58C79BC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WorkoutPlanSchedule.hashValue.getter()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  sub_1E58F9DDC(v3, v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E599D9B8()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  sub_1E58F9DDC(v3, v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E599DA08()
{
  v1 = *v0;
  sub_1E5A2C1B4();
  sub_1E58F9DDC(v3, v1);
  return sub_1E5A2C204();
}

unint64_t sub_1E599DA5C()
{
  result = qword_1ECFFF3B0;
  if (!qword_1ECFFF3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3B0);
  }

  return result;
}

uint64_t sub_1E599DABC(uint64_t *a1, int a2)
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

uint64_t sub_1E599DB04(uint64_t result, int a2, int a3)
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

unint64_t sub_1E599DB54()
{
  result = qword_1ECFFF3B8;
  if (!qword_1ECFFF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3B8);
  }

  return result;
}

unint64_t sub_1E599DBAC()
{
  result = qword_1ECFFF3C0;
  if (!qword_1ECFFF3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3C0);
  }

  return result;
}

unint64_t sub_1E599DC04()
{
  result = qword_1ECFFF3C8;
  if (!qword_1ECFFF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3C8);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutPlanArtwork()
{
  result = qword_1ECFFF408;
  if (!qword_1ECFFF408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutPlanArtwork.init(backgroundColor:templateURL:variant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1E58F0054(a1, a4, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v7 = type metadata accessor for WorkoutPlanArtwork();
  result = sub_1E58F0054(a2, a4 + *(v7 + 24), &qword_1ECFFB5E0, &qword_1E5A3AC70);
  *(a4 + *(v7 + 20)) = a3;
  return result;
}

uint64_t sub_1E599DDBC()
{
  v1 = 0x746E6169726176;
  if (*v0 != 1)
  {
    v1 = 0x6574616C706D6574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_1E599DE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E599FC4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E599DE54(uint64_t a1)
{
  v2 = sub_1E599E178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599DE90(uint64_t a1)
{
  v2 = sub_1E599E178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanArtwork.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF3D0, &qword_1E5A3D220);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E599E178();
  sub_1E5A2C224();
  v14[15] = 0;
  sub_1E5A2A064();
  sub_1E599FD70(&qword_1ECFFD938, MEMORY[0x1E699DB98]);
  sub_1E5A2C054();
  if (!v2)
  {
    v11 = type metadata accessor for WorkoutPlanArtwork();
    v14[14] = *(v3 + *(v11 + 20));
    v14[13] = 1;
    sub_1E599E1CC();
    sub_1E5A2C0B4();
    v12 = *(v11 + 24);
    v14[12] = 2;
    sub_1E5A29D44();
    sub_1E599FD70(&qword_1ECFFD940, MEMORY[0x1E6968FB0]);
    sub_1E5A2C054();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E599E178()
{
  result = qword_1ECFFF3D8;
  if (!qword_1ECFFF3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3D8);
  }

  return result;
}

unint64_t sub_1E599E1CC()
{
  result = qword_1ECFFF3E0;
  if (!qword_1ECFFF3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3E0);
  }

  return result;
}

uint64_t WorkoutPlanArtwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v28 - v10;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF3E8, &qword_1E5A3D228);
  v31 = *(v33 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v13 = &v28 - v12;
  v14 = type metadata accessor for WorkoutPlanArtwork();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E599E178();
  sub_1E5A2C214();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v31;
  v20 = v17;
  v29 = v7;
  sub_1E5A2A064();
  v37 = 0;
  sub_1E599FD70(&qword_1ECFFD950, MEMORY[0x1E699DB98]);
  v22 = v32;
  v21 = v33;
  sub_1E5A2BF84();
  v23 = v22;
  v24 = v20;
  sub_1E58F0054(v23, v20, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v35 = 1;
  sub_1E599E63C();
  sub_1E5A2BFE4();
  v25 = v14;
  *(v24 + *(v14 + 20)) = v36;
  sub_1E5A29D44();
  v34 = 2;
  sub_1E599FD70(&qword_1ECFFD958, MEMORY[0x1E6968FB0]);
  v26 = v29;
  sub_1E5A2BF84();
  (*(v19 + 8))(v13, v21);
  sub_1E58F0054(v26, v24 + *(v25 + 24), &qword_1ECFFB5E0, &qword_1E5A3AC70);
  sub_1E58BAAD8(v24, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E58BAC08(v24);
}

unint64_t sub_1E599E63C()
{
  result = qword_1ECFFF3F0;
  if (!qword_1ECFFF3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF3F0);
  }

  return result;
}

uint64_t WorkoutPlanArtwork.hash(into:)()
{
  v1 = v0;
  v2 = sub_1E5A29D44();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_1E5A2A064();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v22 - v16;
  sub_1E58BABA0(v1, &v22 - v16, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_1E5A2C1D4();
    sub_1E599FD70(&qword_1ECFFB5F0, MEMORY[0x1E699DB98]);
    sub_1E5A2BA44();
    (*(v10 + 8))(v13, v9);
  }

  v18 = type metadata accessor for WorkoutPlanArtwork();
  WorkoutPlanArtworkVariant.rawValue.getter(*(v1 + *(v18 + 20)));
  sub_1E5A2BB74();

  sub_1E58BABA0(v1 + *(v18 + 24), v8, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  v19 = v23;
  if ((*(v23 + 48))(v8, 1, v2) == 1)
  {
    return sub_1E5A2C1D4();
  }

  v21 = v22;
  (*(v19 + 32))(v22, v8, v2);
  sub_1E5A2C1D4();
  sub_1E599FD70(&qword_1ECFFB5F8, MEMORY[0x1E6968FB0]);
  sub_1E5A2BA44();
  return (*(v19 + 8))(v21, v2);
}

uint64_t WorkoutPlanArtwork.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1E5A29D44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v22 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v22 - v8;
  v10 = sub_1E5A2A064();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v22 - v17;
  sub_1E5A2C1B4();
  sub_1E58BABA0(v1, v18, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_1E5A2C1D4();
    sub_1E599FD70(&qword_1ECFFB5F0, MEMORY[0x1E699DB98]);
    sub_1E5A2BA44();
    (*(v11 + 8))(v14, v10);
  }

  v19 = type metadata accessor for WorkoutPlanArtwork();
  WorkoutPlanArtworkVariant.rawValue.getter(*(v1 + *(v19 + 20)));
  sub_1E5A2BB74();

  sub_1E58BABA0(v1 + *(v19 + 24), v9, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    v20 = v22;
    (*(v3 + 32))(v22, v9, v2);
    sub_1E5A2C1D4();
    sub_1E599FD70(&qword_1ECFFB5F8, MEMORY[0x1E6968FB0]);
    sub_1E5A2BA44();
    (*(v3 + 8))(v20, v2);
  }

  return sub_1E5A2C204();
}

uint64_t sub_1E599EE90(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_1E5A29D44();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_1E5A2A064();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v23 - v17;
  sub_1E5A2C1B4();
  sub_1E58BABA0(v2, v18, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_1E5A2C1D4();
    sub_1E599FD70(&qword_1ECFFB5F0, MEMORY[0x1E699DB98]);
    sub_1E5A2BA44();
    (*(v11 + 8))(v14, v10);
  }

  v19 = v24;
  WorkoutPlanArtworkVariant.rawValue.getter(*(v2 + *(v24 + 20)));
  sub_1E5A2BB74();

  sub_1E58BABA0(v2 + *(v19 + 24), v9, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  v20 = v25;
  if ((*(v25 + 48))(v9, 1, v3) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    v21 = v23;
    (*(v20 + 32))(v23, v9, v3);
    sub_1E5A2C1D4();
    sub_1E599FD70(&qword_1ECFFB5F8, MEMORY[0x1E6968FB0]);
    sub_1E5A2BA44();
    (*(v20 + 8))(v21, v3);
  }

  return sub_1E5A2C204();
}

BOOL _s18FitnessWorkoutPlan0bC7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5A29D44();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E0, &qword_1E5A3AC70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v55 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB600, &unk_1E5A36750);
  v10 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v55 - v11;
  v12 = sub_1E5A2A064();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB608, &qword_1E5A2CDC0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v55 - v23;
  v26 = *(v25 + 56);
  v62 = a1;
  sub_1E58BABA0(a1, &v55 - v23, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v27 = a2;
  sub_1E58BABA0(a2, &v24[v26], &qword_1ECFFB5E8, &unk_1E5A2CDB0);
  v28 = *(v13 + 48);
  if (v28(v24, 1, v12) != 1)
  {
    sub_1E58BABA0(v24, v20, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
    if (v28(&v24[v26], 1, v12) != 1)
    {
      (*(v13 + 32))(v16, &v24[v26], v12);
      sub_1E599FD70(&qword_1ECFFB618, MEMORY[0x1E699DB98]);
      v32 = sub_1E5A2BA74();
      v33 = *(v13 + 8);
      v33(v16, v12);
      v33(v20, v12);
      sub_1E58BAD14(v24, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
      if ((v32 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v13 + 8))(v20, v12);
LABEL_6:
    v29 = &qword_1ECFFB608;
    v30 = &qword_1E5A2CDC0;
    v31 = v24;
LABEL_18:
    sub_1E58BAD14(v31, v29, v30);
    return 0;
  }

  if (v28(&v24[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_1E58BAD14(v24, &qword_1ECFFB5E8, &unk_1E5A2CDB0);
LABEL_8:
  v34 = type metadata accessor for WorkoutPlanArtwork();
  v35 = *(v34 + 20);
  v36 = v62;
  v37 = *(a2 + v35);
  v38 = WorkoutPlanArtworkVariant.rawValue.getter(*(v62 + v35));
  v40 = v39;
  if (v38 == WorkoutPlanArtworkVariant.rawValue.getter(v37) && v40 == v41)
  {
  }

  else
  {
    v42 = sub_1E5A2C114();

    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

  v43 = *(v34 + 24);
  v44 = v59;
  v45 = *(v58 + 48);
  sub_1E58BABA0(v36 + v43, v59, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  sub_1E58BABA0(v27 + v43, v44 + v45, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  v47 = v60;
  v46 = v61;
  v48 = *(v60 + 48);
  if (v48(v44, 1, v61) == 1)
  {
    if (v48(v44 + v45, 1, v46) == 1)
    {
      sub_1E58BAD14(v44, &qword_1ECFFB5E0, &qword_1E5A3AC70);
      return 1;
    }

    goto LABEL_17;
  }

  v49 = v57;
  sub_1E58BABA0(v44, v57, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  if (v48(v44 + v45, 1, v46) == 1)
  {
    (*(v47 + 8))(v49, v46);
LABEL_17:
    v29 = &qword_1ECFFB600;
    v30 = &unk_1E5A36750;
    v31 = v44;
    goto LABEL_18;
  }

  v51 = v44 + v45;
  v52 = v56;
  (*(v47 + 32))(v56, v51, v46);
  sub_1E599FD70(&qword_1ECFFB610, MEMORY[0x1E6968FB0]);
  v53 = sub_1E5A2BA74();
  v54 = *(v47 + 8);
  v54(v52, v46);
  v54(v49, v46);
  sub_1E58BAD14(v44, &qword_1ECFFB5E0, &qword_1E5A3AC70);
  return (v53 & 1) != 0;
}

void sub_1E599FA70()
{
  sub_1E5934538(319, &qword_1ECFFD978, MEMORY[0x1E699DB98]);
  if (v0 <= 0x3F)
  {
    sub_1E5934538(319, &qword_1ECFFD980, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E599FB48()
{
  result = qword_1ECFFF418;
  if (!qword_1ECFFF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF418);
  }

  return result;
}

unint64_t sub_1E599FBA0()
{
  result = qword_1ECFFF420;
  if (!qword_1ECFFF420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF420);
  }

  return result;
}

unint64_t sub_1E599FBF8()
{
  result = qword_1ECFFF428;
  if (!qword_1ECFFF428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF428);
  }

  return result;
}

uint64_t sub_1E599FC4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v4 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E599FD70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E599FDBC()
{
  v1 = 0x676E696863746566;
  if (*v0 != 1)
  {
    v1 = 0x64656863746566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_1E599FE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E59A1CE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E599FE38(uint64_t a1)
{
  v2 = sub_1E59A157C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599FE74(uint64_t a1)
{
  v2 = sub_1E59A157C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E599FEB0(uint64_t a1)
{
  v2 = sub_1E59A16A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599FEEC(uint64_t a1)
{
  v2 = sub_1E59A16A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E599FF28(uint64_t a1)
{
  v2 = sub_1E59A16F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599FF64(uint64_t a1)
{
  v2 = sub_1E59A16F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E599FFA0(uint64_t a1)
{
  v2 = sub_1E59A174C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E599FFDC(uint64_t a1)
{
  v2 = sub_1E59A174C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviousPlanLockupLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF430, &unk_1E5A3D480);
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF440, &qword_1E5A3D490);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF448, &qword_1E5A3D498);
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  State = type metadata accessor for PreviousPlanLockupLoadState();
  v17 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State - 8);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF450, &qword_1E5A3D4A0);
  v20 = *(v44 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v23 = &v34 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59A157C();
  sub_1E5A2C224();
  sub_1E59A15D0(v43, v19);
  v25 = (*(v6 + 48))(v19, 2, v5);
  if (v25)
  {
    if (v25 == 1)
    {
      v45 = 0;
      sub_1E59A174C();
      v26 = v44;
      sub_1E5A2C024();
      v28 = v34;
      v27 = v35;
    }

    else
    {
      v46 = 1;
      sub_1E59A16F8();
      v15 = v36;
      v26 = v44;
      sub_1E5A2C024();
      v28 = v37;
      v27 = v38;
    }

    (*(v28 + 8))(v15, v27);
    return (*(v20 + 8))(v23, v26);
  }

  else
  {
    v29 = v39;
    sub_1E59A1634(v19, v39);
    v47 = 2;
    sub_1E59A16A4();
    v30 = v40;
    v31 = v44;
    sub_1E5A2C024();
    type metadata accessor for PreviousPlanDetail();
    sub_1E59A18C0(&qword_1ECFFF468, type metadata accessor for PreviousPlanDetail);
    v32 = v42;
    sub_1E5A2C054();
    (*(v41 + 8))(v30, v32);
    sub_1E58BAD14(v29, &qword_1ECFFF438, &qword_1E5A3EDB0);
    return (*(v20 + 8))(v23, v31);
  }
}

uint64_t PreviousPlanLockupLoadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF480, &qword_1E5A3D4A8);
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v52 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF488, &qword_1E5A3D4B0);
  v62 = *(v55 - 8);
  v7 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v61 = &v52 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF490, &qword_1E5A3D4B8);
  v60 = *(v54 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF498, &unk_1E5A3D4C0);
  v63 = *(v12 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v52 - v14;
  State = type metadata accessor for PreviousPlanLockupLoadState();
  v17 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1E59A157C();
  v25 = v64;
  sub_1E5A2C214();
  if (!v25)
  {
    v27 = v60;
    v26 = v61;
    v52 = v19;
    v53 = v22;
    v28 = v62;
    v64 = 0;
    v29 = sub_1E5A2C004();
    v30 = (2 * *(v29 + 16)) | 1;
    v66 = v29;
    v67 = v29 + 32;
    v68 = 0;
    v69 = v30;
    v31 = sub_1E58BC5A8();
    v32 = v15;
    if (v31 == 3 || v68 != v69 >> 1)
    {
      v38 = sub_1E5A2BE84();
      swift_allocError();
      v40 = v39;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFB690, &qword_1E5A2CFB0) + 48);
      *v40 = State;
      sub_1E5A2BF54();
      sub_1E5A2BE74();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
      swift_willThrow();
      (*(v63 + 8))(v32, v12);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v65);
    }

    if (v31)
    {
      v33 = v63;
      if (v31 == 1)
      {
        v70 = 1;
        sub_1E59A16F8();
        v34 = v64;
        sub_1E5A2BF44();
        if (!v34)
        {
          (*(v28 + 8))(v26, v55);
          (*(v33 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
          v36 = v53;
          (*(*(v35 - 8) + 56))(v53, 2, 2, v35);
          v37 = v59;
LABEL_17:
          sub_1E59A1810(v36, v37, type metadata accessor for PreviousPlanLockupLoadState);
          return __swift_destroy_boxed_opaque_existential_1(v65);
        }
      }

      else
      {
        v70 = 2;
        sub_1E59A16A4();
        v45 = v64;
        sub_1E5A2BF44();
        if (!v45)
        {
          v46 = v59;
          type metadata accessor for PreviousPlanDetail();
          sub_1E59A18C0(&qword_1ECFFF4A0, type metadata accessor for PreviousPlanDetail);
          v47 = v52;
          v48 = v56;
          v49 = v58;
          sub_1E5A2BF84();
          (*(v57 + 8))(v49, v48);
          (*(v33 + 8))(v32, v12);
          swift_unknownObjectRelease();
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
          (*(*(v51 - 8) + 56))(v47, 0, 2, v51);
          v36 = v53;
          sub_1E59A1810(v47, v53, type metadata accessor for PreviousPlanLockupLoadState);
          v37 = v46;
          goto LABEL_17;
        }
      }

      (*(v33 + 8))(v15, v12);
      goto LABEL_9;
    }

    v70 = 0;
    sub_1E59A174C();
    v43 = v64;
    sub_1E5A2BF44();
    v44 = v63;
    if (!v43)
    {
      (*(v27 + 8))(v11, v54);
      (*(v44 + 8))(v15, v12);
      swift_unknownObjectRelease();
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
      v36 = v53;
      (*(*(v50 - 8) + 56))(v53, 1, 2, v50);
      v37 = v59;
      goto LABEL_17;
    }

    (*(v63 + 8))(v15, v12);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t PreviousPlanLockupLoadState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PreviousPlanDetail();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  State = type metadata accessor for PreviousPlanLockupLoadState();
  v18 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State - 8);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E59A15D0(v2, v20);
  v21 = (*(v10 + 48))(v20, 2, v9);
  if (v21)
  {
    if (v21 == 1)
    {
      return MEMORY[0x1E6932DE0](0);
    }

    else
    {
      return MEMORY[0x1E6932DE0](1);
    }
  }

  else
  {
    sub_1E59A1634(v20, v16);
    MEMORY[0x1E6932DE0](2);
    sub_1E59A17A0(v16, v13);
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      sub_1E5A2C1D4();
    }

    else
    {
      sub_1E59A1810(v13, v8, type metadata accessor for PreviousPlanDetail);
      sub_1E5A2C1D4();
      PreviousPlanDetail.hash(into:)(a1);
      sub_1E59A1DF8(v8, type metadata accessor for PreviousPlanDetail);
    }

    return sub_1E58BAD14(v16, &qword_1ECFFF438, &qword_1E5A3EDB0);
  }
}

uint64_t PreviousPlanLockupLoadState.hashValue.getter()
{
  sub_1E5A2C1B4();
  PreviousPlanLockupLoadState.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E59A1038()
{
  sub_1E5A2C1B4();
  PreviousPlanLockupLoadState.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E59A107C()
{
  sub_1E5A2C1B4();
  PreviousPlanLockupLoadState.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t _s18FitnessWorkoutPlan08PreviousC15LockupLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for PreviousPlanDetail();
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF500, &qword_1E5A3D968);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - v14;
  State = type metadata accessor for PreviousPlanLockupLoadState();
  v17 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State - 8);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF508, &qword_1E5A3D970);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v38 - v22;
  v25 = *(v24 + 56);
  sub_1E59A15D0(a1, &v38 - v22);
  sub_1E59A15D0(v41, &v23[v25]);
  v26 = *(v8 + 48);
  v27 = v26(v23, 2, v7);
  if (!v27)
  {
    v41 = v11;
    v28 = v40;
    sub_1E59A15D0(v23, v19);
    if (v26(&v23[v25], 2, v7))
    {
      sub_1E58BAD14(v19, &qword_1ECFFF438, &qword_1E5A3EDB0);
      goto LABEL_9;
    }

    v30 = *(v12 + 48);
    v31 = v15;
    sub_1E59A1634(v19, v15);
    sub_1E59A1634(&v23[v25], &v15[v30]);
    v32 = *(v39 + 48);
    if (v32(v15, 1, v28) == 1)
    {
      if (v32(&v15[v30], 1, v28) == 1)
      {
        sub_1E58BAD14(v15, &qword_1ECFFF438, &qword_1E5A3EDB0);
        goto LABEL_8;
      }
    }

    else
    {
      v33 = v15;
      v34 = v41;
      sub_1E59A17A0(v33, v41);
      if (v32((v31 + v30), 1, v28) != 1)
      {
        v35 = v31 + v30;
        v36 = v6;
        sub_1E59A1810(v35, v6, type metadata accessor for PreviousPlanDetail);
        v37 = _s18FitnessWorkoutPlan08PreviousC6DetailV2eeoiySbAC_ACtFZ_0(v34, v6);
        sub_1E59A1DF8(v36, type metadata accessor for PreviousPlanDetail);
        sub_1E59A1DF8(v34, type metadata accessor for PreviousPlanDetail);
        sub_1E58BAD14(v31, &qword_1ECFFF438, &qword_1E5A3EDB0);
        if (v37)
        {
          goto LABEL_8;
        }

LABEL_17:
        sub_1E59A1DF8(v23, type metadata accessor for PreviousPlanLockupLoadState);
        return 0;
      }

      sub_1E59A1DF8(v34, type metadata accessor for PreviousPlanDetail);
    }

    sub_1E58BAD14(v31, &qword_1ECFFF500, &qword_1E5A3D968);
    goto LABEL_17;
  }

  if (v27 == 1)
  {
    if (v26(&v23[v25], 2, v7) != 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_1E59A1DF8(v23, type metadata accessor for PreviousPlanLockupLoadState);
    return 1;
  }

  if (v26(&v23[v25], 2, v7) == 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_1E58BAD14(v23, &qword_1ECFFF508, &qword_1E5A3D970);
  return 0;
}

unint64_t sub_1E59A157C()
{
  result = qword_1ECFFF458;
  if (!qword_1ECFFF458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF458);
  }

  return result;
}

uint64_t sub_1E59A15D0(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for PreviousPlanLockupLoadState();
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

uint64_t sub_1E59A1634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E59A16A4()
{
  result = qword_1ECFFF460;
  if (!qword_1ECFFF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF460);
  }

  return result;
}

unint64_t sub_1E59A16F8()
{
  result = qword_1ECFFF470;
  if (!qword_1ECFFF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF470);
  }

  return result;
}

unint64_t sub_1E59A174C()
{
  result = qword_1ECFFF478;
  if (!qword_1ECFFF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF478);
  }

  return result;
}

uint64_t sub_1E59A17A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF438, &qword_1E5A3EDB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E59A1810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E59A18C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E59A1974()
{
  result = qword_1ECFFF4B0;
  if (!qword_1ECFFF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4B0);
  }

  return result;
}

unint64_t sub_1E59A19CC()
{
  result = qword_1ECFFF4B8;
  if (!qword_1ECFFF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4B8);
  }

  return result;
}

unint64_t sub_1E59A1A24()
{
  result = qword_1ECFFF4C0;
  if (!qword_1ECFFF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4C0);
  }

  return result;
}

unint64_t sub_1E59A1A7C()
{
  result = qword_1ECFFF4C8;
  if (!qword_1ECFFF4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4C8);
  }

  return result;
}

unint64_t sub_1E59A1AD4()
{
  result = qword_1ECFFF4D0;
  if (!qword_1ECFFF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4D0);
  }

  return result;
}

unint64_t sub_1E59A1B2C()
{
  result = qword_1ECFFF4D8;
  if (!qword_1ECFFF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4D8);
  }

  return result;
}

unint64_t sub_1E59A1B84()
{
  result = qword_1ECFFF4E0;
  if (!qword_1ECFFF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4E0);
  }

  return result;
}

unint64_t sub_1E59A1BDC()
{
  result = qword_1ECFFF4E8;
  if (!qword_1ECFFF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4E8);
  }

  return result;
}

unint64_t sub_1E59A1C34()
{
  result = qword_1ECFFF4F0;
  if (!qword_1ECFFF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4F0);
  }

  return result;
}

unint64_t sub_1E59A1C8C()
{
  result = qword_1ECFFF4F8;
  if (!qword_1ECFFF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF4F8);
  }

  return result;
}

uint64_t sub_1E59A1CE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5A2C114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_1E5A2C114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5A2C114();

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

uint64_t sub_1E59A1DF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 WorkoutPlanCreationRequest.init(modalityPreferences:name:planIdentifier:recommendationMetrics:schedule:startDate:variation:workoutPlanLength:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, __n128 *a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10)
{
  v14 = *a6;
  v21 = *a7;
  v15 = a7[1].n128_u64[0];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v16 = type metadata accessor for WorkoutPlanCreationRequest();
  v17 = v16[6];
  v18 = sub_1E5A29E74();
  (*(*(v18 - 8) + 32))(&a9[v17], a4, v18);
  sub_1E595418C(a5, &a9[v16[7]]);
  *&a9[v16[8]] = v14;
  v19 = &a9[v16[9]];
  result = v21;
  *v19 = v21;
  v19[1].n128_u64[0] = v15;
  a9[v16[10]] = a8;
  *&a9[v16[11]] = a10;
  return result;
}

uint64_t type metadata accessor for WorkoutPlanCreationRequest()
{
  result = qword_1ECFFF558;
  if (!qword_1ECFFF558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutPlanCreationRequest.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t WorkoutPlanCreationRequest.planIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlanCreationRequest() + 24);
  v4 = sub_1E5A29E74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutPlanCreationRequest.recommendationMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutPlanCreationRequest() + 28);

  return sub_1E59541FC(v3, a1);
}

uint64_t WorkoutPlanCreationRequest.schedule.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for WorkoutPlanCreationRequest() + 32));
}

__n128 WorkoutPlanCreationRequest.startDate.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WorkoutPlanCreationRequest() + 36));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  return result;
}

unint64_t sub_1E59A2160()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6F69746169726176;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x656C756465686373;
  if (v1 != 4)
  {
    v4 = 0x7461447472617473;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E6564496E616C70;
  if (v1 != 2)
  {
    v5 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_1E59A2270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E59A3AE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E59A2298(uint64_t a1)
{
  v2 = sub_1E59A26DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E59A22D4(uint64_t a1)
{
  v2 = sub_1E59A26DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutPlanCreationRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF510, &qword_1E5A3D978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E59A26DC();
  sub_1E5A2C224();
  *&v20 = *v3;
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF520, &qword_1E5A3D980);
  sub_1E59A2E64(&qword_1ECFFF528, sub_1E59A2730);
  sub_1E5A2C0B4();
  if (!v2)
  {
    v11 = v3[1];
    v12 = v3[2];
    LOBYTE(v20) = 1;
    sub_1E5A2C064();
    v13 = type metadata accessor for WorkoutPlanCreationRequest();
    v14 = v13[6];
    LOBYTE(v20) = 2;
    sub_1E5A29E74();
    sub_1E59A382C(&qword_1ECFFC7F8, MEMORY[0x1E69695A8]);
    sub_1E5A2C0B4();
    v15 = v13[7];
    LOBYTE(v20) = 3;
    type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
    sub_1E59A382C(&qword_1ECFFE450, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
    sub_1E5A2C054();
    *&v20 = *(v3 + v13[8]);
    v22 = 4;
    sub_1E58C2B90();

    sub_1E5A2C0B4();

    v16 = v3 + v13[9];
    v17 = *(v16 + 2);
    v20 = *v16;
    v21 = v17;
    v22 = 5;
    sub_1E58C2AE8();
    sub_1E5A2C0B4();
    LOBYTE(v20) = *(v3 + v13[10]);
    v22 = 6;
    sub_1E58F8F9C();
    sub_1E5A2C0B4();
    v18 = *(v3 + v13[11]);
    LOBYTE(v20) = 7;
    sub_1E5A2C094();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E59A26DC()
{
  result = qword_1ECFFF518;
  if (!qword_1ECFFF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF518);
  }

  return result;
}

unint64_t sub_1E59A2730()
{
  result = qword_1ECFFF530;
  if (!qword_1ECFFF530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF530);
  }

  return result;
}

uint64_t WorkoutPlanCreationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v35 - v5;
  v7 = sub_1E5A29E74();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF538, &qword_1E5A3D988);
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v35 - v13;
  v15 = type metadata accessor for WorkoutPlanCreationRequest();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[3];
  v19 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E59A26DC();
  v40 = v14;
  v21 = v41;
  sub_1E5A2C214();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v22 = v10;
  v41 = v6;
  v23 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFF520, &qword_1E5A3D980);
  v45 = 0;
  sub_1E59A2E64(&qword_1ECFFF540, sub_1E59A2EDC);
  v24 = v39;
  sub_1E5A2BFE4();
  v25 = v18;
  *v18 = v43;
  LOBYTE(v43) = 1;
  v18[1] = sub_1E5A2BF94();
  v18[2] = v26;
  LOBYTE(v43) = 2;
  sub_1E59A382C(&qword_1ECFFC818, MEMORY[0x1E69695A8]);
  v35[2] = 0;
  sub_1E5A2BFE4();
  v27 = *(v37 + 32);
  v28 = v18 + v15[6];
  v35[1] = v7;
  v27(v28, v22, v7);
  type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  LOBYTE(v43) = 3;
  sub_1E59A382C(&qword_1ECFFE480, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  v29 = v41;
  sub_1E5A2BF84();
  sub_1E595418C(v29, v25 + v15[7]);
  v45 = 4;
  sub_1E58C7620();
  sub_1E5A2BFE4();
  *(v25 + v15[8]) = v43;
  v45 = 5;
  sub_1E58C75CC();
  sub_1E5A2BFE4();
  v30 = v44;
  v31 = v25 + v15[9];
  *v31 = v43;
  *(v31 + 16) = v30;
  v45 = 6;
  sub_1E58F98EC();
  sub_1E5A2BFE4();
  *(v25 + v15[10]) = v43;
  LOBYTE(v43) = 7;
  v32 = v40;
  v33 = sub_1E5A2BFC4();
  (*(v23 + 8))(v32, v24);
  *(v25 + v15[11]) = v33;
  sub_1E59A2F30(v25, v36);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return sub_1E59A3784(v25, type metadata accessor for WorkoutPlanCreationRequest);
}

uint64_t sub_1E59A2E64(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFFF520, &qword_1E5A3D980);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E59A2EDC()
{
  result = qword_1ECFFF548;
  if (!qword_1ECFFF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFFF548);
  }

  return result;
}

uint64_t sub_1E59A2F30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanCreationRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutPlanCreationRequest.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - v11;
  sub_1E58B9868(a1, *v1);
  v13 = v1[1];
  v14 = v1[2];
  sub_1E5A2BB74();
  v15 = type metadata accessor for WorkoutPlanCreationRequest();
  v16 = v15[6];
  sub_1E5A29E74();
  sub_1E59A382C(&qword_1ECFFC820, MEMORY[0x1E69695A8]);
  sub_1E5A2BA44();
  sub_1E59541FC(v2 + v15[7], v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1E5A2C1D4();
  }

  else
  {
    sub_1E59A3720(v12, v8);
    sub_1E5A2C1D4();
    MEMORY[0x1E6932DE0](*v8);
    v17 = v8 + *(v4 + 20);
    sub_1E5A2BA44();
    sub_1E5953800(a1, *(v8 + *(v4 + 24)));
    sub_1E59A3784(v8, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
  }

  sub_1E58F9DDC(a1, *(v2 + v15[8]));
  v18 = (v2 + v15[9]);
  v19 = v18[1];
  v20 = v18[2];
  MEMORY[0x1E6932DE0](*v18);
  MEMORY[0x1E6932DE0](v19);
  MEMORY[0x1E6932DE0](v20);
  MEMORY[0x1E6932DE0](*(v2 + v15[10]));
  return MEMORY[0x1E6932DE0](*(v2 + v15[11]));
}

uint64_t WorkoutPlanCreationRequest.hashValue.getter()
{
  sub_1E5A2C1B4();
  WorkoutPlanCreationRequest.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E59A328C()
{
  sub_1E5A2C1B4();
  WorkoutPlanCreationRequest.hash(into:)(v1);
  return sub_1E5A2C204();
}

uint64_t sub_1E59A32D0()
{
  sub_1E5A2C1B4();
  WorkoutPlanCreationRequest.hash(into:)(v1);
  return sub_1E5A2C204();
}

BOOL _s18FitnessWorkoutPlan0bC15CreationRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFD900, &qword_1E5A39BB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v35 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFFE4D0, &unk_1E5A3DBC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  if ((sub_1E58B6370(*a1, *a2) & 1) == 0 || (a1[1] != a2[1] || a1[2] != a2[2]) && (sub_1E5A2C114() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for WorkoutPlanCreationRequest();
  v18 = v17[6];
  if ((sub_1E5A29E54() & 1) == 0)
  {
    return 0;
  }

  v19 = v17[7];
  v20 = *(v13 + 48);
  sub_1E59541FC(a1 + v19, v16);
  sub_1E59541FC(a2 + v19, &v16[v20]);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    sub_1E59541FC(v16, v12);
    if (v21(&v16[v20], 1, v4) != 1)
    {
      sub_1E59A3720(&v16[v20], v8);
      if (*v12 == *v8)
      {
        v33 = *(v4 + 20);
        if (sub_1E5A29E54())
        {
          v34 = sub_1E595AC4C(*(v12 + *(v4 + 24)), *(v8 + *(v4 + 24)));
          sub_1E59A3784(v8, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
          sub_1E59A3784(v12, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
          sub_1E58BAD14(v16, &qword_1ECFFD900, &qword_1E5A39BB0);
          if (v34)
          {
            goto LABEL_9;
          }

          return 0;
        }
      }

      sub_1E59A3784(v8, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
      sub_1E59A3784(v12, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
      v31 = &qword_1ECFFD900;
      v32 = &qword_1E5A39BB0;
LABEL_23:
      sub_1E58BAD14(v16, v31, v32);
      return 0;
    }

    sub_1E59A3784(v12, type metadata accessor for PersonalizedWorkoutPlanCandidateMetrics);
LABEL_17:
    v31 = &qword_1ECFFE4D0;
    v32 = &unk_1E5A3DBC0;
    goto LABEL_23;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
    goto LABEL_17;
  }

  sub_1E58BAD14(v16, &qword_1ECFFD900, &qword_1E5A39BB0);
LABEL_9:
  v22 = v17[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);

  v25 = sub_1E599C6C0(v23, v24);

  result = 0;
  if (v25)
  {
    v27 = v17[9];
    v28 = a1 + v27;
    v29 = *(a1 + v27);
    v30 = (a2 + v27);
    if (v29 == *v30 && *(v28 + 1) == v30[1] && *(v28 + 2) == v30[2])
    {
      if (*(a1 + v17[10]) == *(a2 + v17[10]))
      {
        return *(a1 + v17[11]) == *(a2 + v17[11]);
      }

      return 0;
    }
  }

  return result;
}