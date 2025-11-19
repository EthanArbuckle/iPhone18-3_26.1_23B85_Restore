unint64_t sub_1D27356D8()
{
  result = qword_1ED8A2FE0;
  if (!qword_1ED8A2FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A2FE0);
  }

  return result;
}

unint64_t sub_1D2735730()
{
  result = qword_1ED8A2FE8;
  if (!qword_1ED8A2FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A2FE8);
  }

  return result;
}

unint64_t sub_1D27357E0()
{
  result = qword_1ED89DAE8;
  if (!qword_1ED89DAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E11D0);
    sub_1D2735898();
    sub_1D22BB9D8(&qword_1ED89D2C0, &qword_1EC6D9CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DAE8);
  }

  return result;
}

unint64_t sub_1D2735898()
{
  result = qword_1ED89DD78;
  if (!qword_1ED89DD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E11E0);
    sub_1D22BB9D8(&qword_1ED89D410, &qword_1EC6E11D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD78);
  }

  return result;
}

unint64_t sub_1D27359C0()
{
  result = qword_1ED89FC70;
  if (!qword_1ED89FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89FC70);
  }

  return result;
}

uint64_t sub_1D2735A2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1D2735A7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D2735AD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for DescriptionFieldWithSuggestions()
{
  result = qword_1EC6E11F8;
  if (!qword_1EC6E11F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2735B98()
{
  type metadata accessor for DescriptionFieldWithSuggestionsViewModel();
  if (v0 <= 0x3F)
  {
    sub_1D24AF338();
    if (v1 <= 0x3F)
    {
      sub_1D247E504();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D2735C50@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1230);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v68 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1238);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v81 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v68 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v74);
  v10 = &v68 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9C10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v85 = &v68 - v12;
  v73 = type metadata accessor for PromptView();
  MEMORY[0x1EEE9AC00](v73);
  v87 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1240);
  v77 = *(v14 - 8);
  v78 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v68 - v17;
  v70 = type metadata accessor for DescriptionFieldWithSuggestions();
  v69 = *(v70 - 8);
  v18 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1248);
  v83 = *(v19 - 8);
  v84 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1250);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v75 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68 - v25;
  v27 = a1;
  v86 = *a1;
  sub_1D27406D4();
  v28 = off_1F4DD8108[0];
  v71 = type metadata accessor for MagicViewModel();
  v72 = v28;
  v29 = v28();
  swift_unknownObjectRelease();
  if (v29)
  {
    sub_1D2737A64(a1, &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v31 = swift_allocObject();
    sub_1D2737AC8(&v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E12D8);
    sub_1D2737B8C();
    sub_1D2877368();
    v32 = sub_1D28763D8();
    KeyPath = swift_getKeyPath();
    v34 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E12E0) + 36)];
    *v34 = KeyPath;
    v34[1] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
    sub_1D2874768();
    sub_1D2874768();
    sub_1D2877848();
    sub_1D28748C8();
    v35 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E12E8) + 36)];
    v36 = v92;
    *v35 = v91;
    *(v35 + 1) = v36;
    *(v35 + 2) = v93;
    v37 = sub_1D2877078();
    *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E12F0) + 36)] = v37;
    v38 = v84;
    v39 = &v21[*(v84 + 36)];
    *v39 = 257;
    v39[2] = 1;
    *(v39 + 1) = swift_getKeyPath();
    v39[16] = 0;
    *(v39 + 3) = swift_getKeyPath();
    v39[32] = 0;
    *(v39 + 5) = swift_getKeyPath();
    v39[48] = 0;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E12C8) + 60);
    *&v39[v40] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
    swift_storeEnumTagMultiPayload();
    sub_1D229A124(v21, v26);
    (*(v83 + 56))(v26, 0, 1, v38);
  }

  else
  {
    (*(v83 + 56))(v26, 1, 1, v84);
  }

  v41 = v26;
  v42 = v86;
  sub_1D2740188();
  v43 = sub_1D2874E88();
  v44 = *(v43 - 8);
  v45 = v85;
  (*(v44 + 56))(v85, 1, 1, v43);
  v46 = v87;
  sub_1D27B597C(v45, v87);
  (*(v44 + 104))(v10, *MEMORY[0x1E697E728], v43);
  sub_1D2737CD8(&qword_1ED89DE70, MEMORY[0x1E697E730]);
  result = sub_1D2877F98();
  v48 = v89;
  if (result)
  {
    sub_1D2737CD8(&qword_1EC6E1258, type metadata accessor for PromptView);
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    sub_1D28769B8();
    sub_1D27375C8(v10);
    sub_1D2737630(v46);
    sub_1D27406D4();
    v49 = (v72)(v71);
    swift_unknownObjectRelease();
    if ((v49 & 1) != 0 || (swift_getKeyPath(), v90 = v42, sub_1D2737CD8(&qword_1EC6E1260, type metadata accessor for DescriptionFieldWithSuggestionsViewModel), sub_1D28719E8(), v50 = , *(v42 + 136) != 1))
    {
      v56 = 1;
      v54 = v79;
      v55 = v80;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v50);
      *(&v68 - 2) = v27;
      MEMORY[0x1EEE9AC00](v51);
      *(&v68 - 2) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1270);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1278);
      sub_1D273769C();
      sub_1D27379B4();
      v52 = v68;
      sub_1D2876528();
      v54 = v79;
      v53 = v80;
      (*(v79 + 32))(v48, v52, v80);
      v55 = v53;
      v56 = 0;
    }

    (*(v54 + 56))(v48, v56, 1, v55);
    v57 = v75;
    sub_1D22BD1D0(v41, v75, &qword_1EC6E1250);
    v59 = v76;
    v58 = v77;
    v60 = *(v77 + 16);
    v61 = v88;
    v62 = v78;
    v60(v76, v88, v78);
    v63 = v48;
    v64 = v81;
    sub_1D22BD1D0(v63, v81, &qword_1EC6E1238);
    v87 = v41;
    v65 = v82;
    sub_1D22BD1D0(v57, v82, &qword_1EC6E1250);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1268);
    v60((v65 + *(v66 + 48)), v59, v62);
    sub_1D22BD1D0(v64, v65 + *(v66 + 64), &qword_1EC6E1238);
    sub_1D22BD238(v89, &qword_1EC6E1238);
    v67 = *(v58 + 8);
    v67(v61, v62);
    sub_1D22BD238(v87, &qword_1EC6E1250);
    sub_1D22BD238(v64, &qword_1EC6E1238);
    v67(v59, v62);
    return sub_1D22BD238(v57, &qword_1EC6E1250);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D273689C()
{
  sub_1D27406D4();
  sub_1D2801504();
  v0 = sub_1D2740188();

  swift_getKeyPath();
  sub_1D2737CD8(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
    sub_1D2870F78();
    v1(0);

    swift_unknownObjectRelease();
    return sub_1D22D7900(v1, v2);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1D27369B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2875718();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = sub_1D2875798();
  v12 = v11;
  v14 = v13;
  if (qword_1ED89E0E8 != -1)
  {
    v31 = v10;
    swift_once();
    v10 = v31;
  }

  MEMORY[0x1EEE9AC00](v10);
  *(&v30 - 8) = v15;
  *(&v30 - 7) = v12;
  *(&v30 - 48) = v16 & 1;
  *(&v30 - 5) = v14;
  *(&v30 - 4) = 0;
  *(&v30 - 3) = 0;
  *(&v30 - 2) = v17;
  MEMORY[0x1EEE9AC00](v15);
  *(&v30 - 2) = 0xD000000000000010;
  *(&v30 - 1) = v18;
  sub_1D2877248();

  sub_1D2875708();
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  sub_1D2737CD8(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
  sub_1D2876768();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v19 = sub_1D2876338();
  sub_1D2874298();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E12D8);
  v29 = a1 + *(result + 36);
  *v29 = v19;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_1D2736D4C(uint64_t *a1)
{
  v2 = type metadata accessor for DescriptionFieldWithSuggestions();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = *a1;
  swift_getKeyPath();
  v9[1] = v5;
  sub_1D2737CD8(&qword_1EC6E1260, type metadata accessor for DescriptionFieldWithSuggestionsViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  v9[0] = *(v5 + 112);
  swift_getKeyPath();
  sub_1D2737A64(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1D2737AC8(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1D2870F68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998);
  sub_1D22BB9D8(&qword_1EC6DBAE8, &qword_1EC6DA358);
  sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998);
  return sub_1D2877578();
}

uint64_t sub_1D2736FC0(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for DescriptionFieldWithSuggestions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = *a1;
  v7 = a1[1];
  sub_1D2737A64(a2, &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_1D2737AC8(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  v11 = (v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v8;
  v11[1] = v7;
  v17[0] = v8;
  v17[1] = v7;
  v14 = v17;
  v15 = 0x7269632E73756C70;
  v16 = 0xEB00000000656C63;
  sub_1D2870F68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8);
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
  return sub_1D2877368();
}

uint64_t sub_1D2737188@<X0>(uint64_t a1@<X8>)
{
  sub_1D28763D8();
  *&v16 = 1937075312;
  *(&v16 + 1) = 0xE400000000000000;
  *&v17 = 0;
  *(&v17 + 1) = CGRectMake;
  *&v18 = 0;
  *(&v18 + 1) = swift_getKeyPath();
  sub_1D2876408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E12A8);
  sub_1D27378A8();
  sub_1D2876758();

  type metadata accessor for DescriptionFieldWithSuggestions();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
  sub_1D2874768();
  sub_1D2874768();
  sub_1D2877848();
  sub_1D28748C8();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E12A0) + 36));
  *v2 = v16;
  v2[1] = v17;
  v2[2] = v18;
  v3 = sub_1D2876338();
  sub_1D2874298();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1290) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1270) + 36);
  *v13 = 1;
  *(v13 + 2) = 1;
  *(v13 + 8) = swift_getKeyPath();
  *(v13 + 16) = 0;
  *(v13 + 24) = swift_getKeyPath();
  *(v13 + 32) = 0;
  *(v13 + 40) = swift_getKeyPath();
  *(v13 + 48) = 0;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E12C8) + 60);
  *(v13 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D2737408@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1D2875918();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1208) + 44);
  *v3 = sub_1D28756A8();
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1210);
  sub_1D2735C50(v1, v3 + *(v4 + 44));
  v5 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1218) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FF0) + 28);
  sub_1D2875978();
  v7 = sub_1D2875998();
  (*(*(v7 - 8) + 56))(v5 + v6, 0, 1, v7);
  *v5 = swift_getKeyPath();
  v8 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1220) + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FE8) + 28);
  v10 = *MEMORY[0x1E69816E0];
  v11 = sub_1D2877218();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = swift_getKeyPath();
  v12 = sub_1D2877078();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1228);
  *(v3 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_1D27375C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2737630(uint64_t a1)
{
  v2 = type metadata accessor for PromptView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D273769C()
{
  result = qword_1EC6E1280;
  if (!qword_1EC6E1280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1270);
    sub_1D2737754();
    sub_1D22BB9D8(&qword_1EC6E12C0, &qword_1EC6E12C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1280);
  }

  return result;
}

unint64_t sub_1D2737754()
{
  result = qword_1EC6E1288;
  if (!qword_1EC6E1288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1290);
    sub_1D27377E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1288);
  }

  return result;
}

unint64_t sub_1D27377E0()
{
  result = qword_1EC6E1298;
  if (!qword_1EC6E1298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E12A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E12A8);
    sub_1D27378A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1298);
  }

  return result;
}

unint64_t sub_1D27378A8()
{
  result = qword_1EC6E12B0;
  if (!qword_1EC6E12B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E12A8);
    sub_1D2737960();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E12B0);
  }

  return result;
}

unint64_t sub_1D2737960()
{
  result = qword_1EC6E12B8;
  if (!qword_1EC6E12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E12B8);
  }

  return result;
}

unint64_t sub_1D27379B4()
{
  result = qword_1EC6E12D0;
  if (!qword_1EC6E12D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1278);
    sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E12D0);
  }

  return result;
}

uint64_t sub_1D2737A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DescriptionFieldWithSuggestions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2737AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DescriptionFieldWithSuggestions();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2737B2C()
{
  type metadata accessor for DescriptionFieldWithSuggestions();

  return sub_1D273689C();
}

unint64_t sub_1D2737B8C()
{
  result = qword_1EC6D7D28;
  if (!qword_1EC6D7D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E12D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D99E8);
    sub_1D2875718();
    sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8);
    sub_1D2737CD8(&qword_1ED89D6B0, MEMORY[0x1E697C4E8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D28);
  }

  return result;
}

uint64_t sub_1D2737CD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_32()
{
  v1 = type metadata accessor for DescriptionFieldWithSuggestions();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1C40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2874438();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 24);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DBFE0);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1D2737E90(uint64_t *a1)
{
  v3 = *(type metadata accessor for DescriptionFieldWithSuggestions() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D2736FC0(a1, v4);
}

uint64_t sub_1D2737F10()
{
  v1 = *(type metadata accessor for DescriptionFieldWithSuggestions() - 8);
  v2 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1D2740340(*v2, v2[1]);
}

uint64_t sub_1D2737F9C()
{
  sub_1D22BD06C();
  sub_1D2870F68();
  sub_1D2870F68();
  return sub_1D2877278();
}

uint64_t type metadata accessor for MagicPaperCoachingTextEffect()
{
  result = qword_1EC6E1308;
  if (!qword_1EC6E1308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D273809C()
{
  sub_1D22EAE8C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D2738134()
{
  v0 = sub_1D2875E18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0DB0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  type metadata accessor for MagicPaperCoachingTextEffect();
  sub_1D24CC0C4(v15);
  (*(v1 + 104))(v12, *MEMORY[0x1E697FF40], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1D24B17B0(v15, v6);
  sub_1D24B17B0(v12, &v6[v16]);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_1D24B17B0(v6, v9);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = v23;
      (*(v1 + 32))(v23, &v6[v16], v0);
      sub_1D24B1820(&qword_1ED89D3D0, MEMORY[0x1E697FF50]);
      v20 = sub_1D2877F98();
      v21 = *(v1 + 8);
      v21(v19, v0);
      sub_1D22BD238(v12, &qword_1EC6D99B8);
      sub_1D22BD238(v15, &qword_1EC6D99B8);
      v21(v9, v0);
      sub_1D22BD238(v6, &qword_1EC6D99B8);
      if (v20)
      {
        return sub_1D2876478();
      }

      return sub_1D28763D8();
    }

    sub_1D22BD238(v12, &qword_1EC6D99B8);
    sub_1D22BD238(v15, &qword_1EC6D99B8);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_1D22BD238(v6, &qword_1EC6E0DB0);
    return sub_1D28763D8();
  }

  sub_1D22BD238(v12, &qword_1EC6D99B8);
  sub_1D22BD238(v15, &qword_1EC6D99B8);
  if (v17(&v6[v16], 1, v0) != 1)
  {
    goto LABEL_6;
  }

  sub_1D22BD238(v6, &qword_1EC6D99B8);
  return sub_1D2876478();
}

uint64_t sub_1D2738564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1318);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v37 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860);
  MEMORY[0x1EEE9AC00](v38);
  v7 = v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1320);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1328);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1330);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v37 - v15;
  if (*v2 == 1)
  {
    v37[1] = v3;
    sub_1D2739754(1, 1, v41);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1338);
    (*(*(v17 - 8) + 16))(v10, v40, v17);
    v18 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1370) + 36)];
    v19 = v41[1];
    *v18 = v41[0];
    *(v18 + 1) = v19;
    *(v18 + 2) = v41[2];
    *(v18 + 6) = v42;
    v20 = sub_1D2738134();
    KeyPath = swift_getKeyPath();
    v22 = &v10[*(v8 + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    sub_1D2876438();
    sub_1D2738E10();
    sub_1D2876758();
    sub_1D22BD238(v10, &qword_1EC6E1320);
    v23 = swift_getKeyPath();
    v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1358) + 36)];
    *v24 = v23;
    v24[1] = 0x3FE6666666666666;
    v25 = swift_getKeyPath();
    v26 = &v13[*(v11 + 36)];
    *v26 = v25;
    v26[8] = 1;
    v27 = *MEMORY[0x1E697E6C0];
    v28 = sub_1D2874E88();
    (*(*(v28 - 8) + 104))(v7, v27, v28);
    sub_1D24B1820(&qword_1ED89DE70, MEMORY[0x1E697E730]);
    result = sub_1D2877F98();
    if (result)
    {
      sub_1D2738C64();
      sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
      sub_1D28769B8();
      sub_1D22BD238(v7, &unk_1EC6DE860);
      sub_1D22BD238(v13, &qword_1EC6E1328);
      v30 = sub_1D2876338();
      sub_1D2874298();
      v31 = &v16[*(v14 + 36)];
      *v31 = v30;
      *(v31 + 1) = v32;
      *(v31 + 2) = v33;
      *(v31 + 3) = v34;
      *(v31 + 4) = v35;
      v31[40] = 0;
      sub_1D229A4F4(v16, v5);
      swift_storeEnumTagMultiPayload();
      sub_1D2738B3C();
      sub_1D22BB9D8(&qword_1EC6E1378, &qword_1EC6E1338);
      sub_1D2875AF8();
      return sub_1D22BD238(v16, &qword_1EC6E1330);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1338);
    (*(*(v36 - 8) + 16))(v5, v40, v36);
    swift_storeEnumTagMultiPayload();
    sub_1D2738B3C();
    sub_1D22BB9D8(&qword_1EC6E1378, &qword_1EC6E1338);
    return sub_1D2875AF8();
  }

  return result;
}

unint64_t sub_1D2738B3C()
{
  result = qword_1EC6E1340;
  if (!qword_1EC6E1340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1328);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE860);
    sub_1D2738C64();
    sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1340);
  }

  return result;
}

unint64_t sub_1D2738C64()
{
  result = qword_1EC6E1348;
  if (!qword_1EC6E1348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1328);
    sub_1D2738D1C();
    sub_1D22BB9D8(&qword_1ED89D310, &qword_1EC6DA0F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1348);
  }

  return result;
}

unint64_t sub_1D2738D1C()
{
  result = qword_1EC6E1350;
  if (!qword_1EC6E1350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1358);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1320);
    sub_1D2738E10();
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1ED89D358, &qword_1EC6DC9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1350);
  }

  return result;
}

unint64_t sub_1D2738E10()
{
  result = qword_1EC6E1360;
  if (!qword_1EC6E1360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1320);
    sub_1D2738EC8();
    sub_1D22BB9D8(&qword_1ED89D2E8, &unk_1EC6E1030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1360);
  }

  return result;
}

unint64_t sub_1D2738EC8()
{
  result = qword_1EC6E1368;
  if (!qword_1EC6E1368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1370);
    sub_1D22BB9D8(&qword_1EC6E1378, &qword_1EC6E1338);
    sub_1D22F5CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1368);
  }

  return result;
}

unint64_t sub_1D2738F80()
{
  result = qword_1EC6E1380;
  if (!qword_1EC6E1380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1388);
    sub_1D2738B3C();
    sub_1D22BB9D8(&qword_1EC6E1378, &qword_1EC6E1338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1380);
  }

  return result;
}

uint64_t sub_1D2739038()
{
  v1 = sub_1D28776A8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E13B8);
  sub_1D2877308();
  v5 = *(v8[1] + 16);
  if (v5)
  {
    *&v9 = MEMORY[0x1E69E7CC0];
    sub_1D2879258();
    v6 = 32;
    do
    {
      sub_1D2870F78();
      sub_1D28770A8();
      sub_1D2877688();
      sub_1D2877048();

      (*(v2 + 8))(v4, v1);
      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
      v6 += 8;
      --v5;
    }

    while (v5);

    return v9;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D2739204()
{
  if (*(v0 + 1) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E13B8);
    sub_1D2877308();
    MEMORY[0x1D38A0150]();
    sub_1D2877A98();
    sub_1D2874D28();
  }

  else
  {
    v1 = sub_1D2739038();
    MEMORY[0x1D38A0150](v1);
    sub_1D2877A98();
    sub_1D2877AC8();
    sub_1D2874C88();
  }

  return sub_1D28748D8();
}

uint64_t sub_1D27392F4(uint64_t a1)
{
  sub_1D28778E8();
  sub_1D28778C8();

  sub_1D2877878();

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v11 = v3;
  v12 = v2;
  v9 = v2;
  v10 = v3;
  sub_1D250D77C(&v12, &v7);
  sub_1D22BD1D0(&v11, &v7, &qword_1EC6E11E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E11F0);
  sub_1D2877308();
  sub_1D2874608();
  v7 = v2;
  v8 = v3;
  sub_1D2877318();
  v4 = ~*a1;
  v9 = v2;
  v10 = v3;
  sub_1D2877308();
  sub_1D28745D8();
  v7 = v2;
  v8 = v3;
  sub_1D2877318();
  v9 = v2;
  v10 = v3;
  sub_1D2877308();
  MEMORY[0x1D389D070](0x3FA1111111111111, 0);
  v7 = v2;
  v8 = v3;
  sub_1D2877318();
  sub_1D2735950(&v12);
  result = sub_1D22BD238(&v11, &qword_1EC6E11E8);
  if ((v4 & 1) == 0)
  {
    v9 = v2;
    v10 = v3;
    v6 = sub_1D2877308();
    MEMORY[0x1EEE9AC00](v6);
    sub_1D2875048();
  }

  return result;
}

uint64_t sub_1D273951C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v6 = v1;
  v5 = v2;
  v4[2] = v1;
  v4[3] = v2;
  sub_1D22BD1D0(&v6, v4, &qword_1EC6E1390);
  sub_1D22BD1D0(&v5, v4, &qword_1EC6E13B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E13B8);
  sub_1D2877308();
  sub_1D286FBA0();
  v4[0] = v1;
  v4[1] = v2;
  sub_1D2877318();
  sub_1D22BD238(&v6, &qword_1EC6E1390);
  return sub_1D22BD238(&v5, &qword_1EC6E13B0);
}

uint64_t sub_1D2739628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v13 = *v2;
  v14 = v5;
  v15 = v2[2];
  v16 = *(v2 + 6);
  v6 = sub_1D2739204();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1398);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E13A0) + 36)) = v6;
  v8 = swift_allocObject();
  v9 = v14;
  *(v8 + 16) = v13;
  *(v8 + 32) = v9;
  *(v8 + 48) = v15;
  *(v8 + 64) = v16;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E13A8) + 36));
  *v10 = sub_1D2739A70;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return sub_1D2739A78(&v13, v12);
}

double sub_1D2739754@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1D2877028();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9F80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D2888690;
  v11 = *MEMORY[0x1E69814D8];
  v12 = *(v7 + 104);
  v12(v9, v11, v6);
  *(v10 + 32) = sub_1D28770F8();
  v12(v9, v11, v6);
  *(v10 + 40) = sub_1D28770F8();
  v12(v9, v11, v6);
  *(v10 + 48) = sub_1D28770F8();
  v12(v9, v11, v6);
  *(v10 + 56) = sub_1D28770F8();
  v12(v9, v11, v6);
  *(v10 + 64) = sub_1D28770F8();
  v12(v9, v11, v6);
  *(v10 + 72) = sub_1D28770F8();
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1390);
  sub_1D28772F8();
  v13 = v18;
  v17 = 0;
  sub_1D28772F8();
  v14 = v18;
  *a3 = a1;
  *(a3 + 1) = a2 & 1;
  *(a3 + 2) = v18;
  *(a3 + 6) = WORD2(v18);
  *(a3 + 8) = v13;
  *(a3 + 24) = v14;
  result = 20.0;
  *(a3 + 40) = xmmword_1D28A2400;
  return result;
}

unint64_t sub_1D2739ADC()
{
  result = qword_1ED89DAE0;
  if (!qword_1ED89DAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E13A8);
    sub_1D2739B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DAE0);
  }

  return result;
}

unint64_t sub_1D2739B68()
{
  result = qword_1ED89DD70;
  if (!qword_1ED89DD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E13A0);
    sub_1D22BB9D8(&qword_1ED89D408, &qword_1EC6E1398);
    sub_1D22BB9D8(&qword_1ED89D380, &qword_1EC6E13C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD70);
  }

  return result;
}

unint64_t sub_1D2739C50()
{
  result = qword_1EC6E13C8;
  if (!qword_1EC6E13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E13C8);
  }

  return result;
}

uint64_t sub_1D2739CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 160) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  v7 = sub_1D2873CB8();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  *(v6 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  *(v6 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = sub_1D2878568();
  *(v6 + 112) = sub_1D2878558();
  v9 = sub_1D28784F8();
  *(v6 + 120) = v9;
  *(v6 + 128) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D2739E48, v9, v8);
}

uint64_t sub_1D2739E48()
{
  v1 = v0[11];
  sub_1D22BD1D0(v0[5], v1, &qword_1EC6D9490);
  v2 = type metadata accessor for ImageGeneration.PreviewImage(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[11];

    v4 = &qword_1EC6D9490;
LABEL_8:
    sub_1D22BD238(v3, v4);
    sub_1D28726D8();
    v12 = sub_1D2873CA8();
    v13 = sub_1D2878A18();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[7];
    if (v14)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D226E000, v12, v13, "Could not encode previewed image to submit feedback", v18, 2u);
      MEMORY[0x1D38A3520](v18, -1, -1);
    }

    (*(v16 + 8))(v15, v17);

    v19 = v0[1];

    return v19();
  }

  v5 = v0[11];
  v6 = *(v5 + *(v2 + 28));
  v7 = *(v6 + 16);
  v8 = type metadata accessor for PlaygroundImage();
  v9 = *(v8 - 8);
  if (v7)
  {
    sub_1D239A330(v6 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)), v0[12]);
    v10 = 0;
    v5 = v0[11];
  }

  else
  {
    v10 = 1;
  }

  v11 = v0[12];
  (*(v9 + 56))(v11, v10, 1, v8);
  sub_1D259DDC8(v5, type metadata accessor for ImageGeneration.PreviewImage);
  if ((*(v9 + 48))(v11, 1, v8) == 1)
  {
    v3 = v0[12];

    v4 = &unk_1EC6DE5A0;
    goto LABEL_8;
  }

  v21 = v0[10];
  v22 = sub_1D2873AA8();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = sub_1D2878558();
  v0[17] = v23;
  v24 = swift_task_alloc();
  v0[18] = v24;
  *v24 = v0;
  v24[1] = sub_1D273A1C8;
  v25 = v0[10];
  v26 = MEMORY[0x1E69E85E0];

  return PlaygroundImage.imageDataWithBackgroundEncoding(_:isolatedOn:)(v25, v23, v26);
}

uint64_t sub_1D273A1C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[12];
  v6 = v3[10];
  v4[19] = a2;

  sub_1D22BD238(v6, &qword_1EC6DAE70);
  sub_1D259DDC8(v5, type metadata accessor for PlaygroundImage);
  v7 = v3[16];
  v8 = v3[15];

  return MEMORY[0x1EEE6DFA0](sub_1D273A378, v8, v7);
}

uint64_t sub_1D273A378()
{
  v1 = *(v0 + 152);

  if (v1 >> 60 == 15)
  {
    sub_1D28726D8();
    v2 = sub_1D2873CA8();
    v3 = sub_1D2878A18();
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 56);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D226E000, v2, v3, "Could not encode previewed image to submit feedback", v8, 2u);
      MEMORY[0x1D38A3520](v8, -1, -1);
    }

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v9 = *(v0 + 152);
    v10 = *(v0 + 24);
    sub_1D28001C4(*(v0 + 40), v10, v9, *(v0 + 160));
    sub_1D22D6D4C(v10, v9);
  }

  v11 = *(v0 + 8);

  return v11();
}

void sub_1D273A4E0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29[-1] - v5;
  swift_getKeyPath();
  v29[0] = a1;
  sub_1D273B208(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel);
  sub_1D28719E8();

  v7 = a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError;
  v8 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError + 16);
  if (v8 <= 0xFB)
  {
    v12 = *v7;
    v11 = *(v7 + 8);
    sub_1D233E72C(*v7, v11, v8);
    sub_1D2801504();
    v13 = sub_1D2740188();

    swift_getKeyPath();
    v29[0] = v13;
    sub_1D273B208(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719E8();

    v14 = *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
    if (v14)
    {
      v15 = *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
      sub_1D2870F78();
      v14(0);

      sub_1D22D7900(v14, v15);
    }

    else
    {
    }

    v29[0] = v12;
    v29[1] = v11;
    v30 = v8;
    sub_1D233E72C(v12, v11, v8);
    sub_1D23C7044();
    v16 = sub_1D27ED8C8();

    v17 = sub_1D23DB1E4(v29, v16 & 1, 0, 0);
    v19 = v18;
    v21 = v20;
    if (sub_1D23DA32C(v17, v18, v20, 9, 0, 6))
    {
      v22 = *(v2 + 72);
      v23 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
      swift_beginAccess();
      sub_1D22BD1D0(v22 + v23, v6, &qword_1EC6DA2C8);
      v24 = type metadata accessor for SceneConditioningImage();
      if ((*(*(v24 - 8) + 48))(v6, 1, v24) != 1)
      {
        sub_1D22FD92C(v17, v19, v21);
        v19 = 0;
        v21 = 6;
        v17 = 10;
      }

      sub_1D22BD238(v6, &qword_1EC6DA2C8);
    }

    v25 = sub_1D27FE818();
    *(v25 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError) = 1;
    v26 = swift_allocObject();
    swift_weakInit();
    sub_1D2870F78();
    sub_1D2758420(v25, sub_1D245E894, v26);

    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel_lastRepresentationsDidContainAPerson))
    {
      sub_1D22FD92C(v17, v19, v21);
    }

    else
    {
      v27 = sub_1D23DA32C(v17, v19, v21, 9, 0, 6);
      sub_1D22FD92C(v17, v19, v21);
      if (v27)
      {
        sub_1D2801344(1);
      }
    }

    sub_1D2415B64(v12, v11, v8);
  }

  else
  {
    v9 = sub_1D27FE818();
    *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError) = 1;
    v10 = swift_allocObject();
    swift_weakInit();
    sub_1D2870F78();
    sub_1D2758420(v9, sub_1D245E894, v10);
  }
}

uint64_t sub_1D273A990()
{
  v0 = sub_1D27FE818();
  *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError) = 0;
  v1 = swift_allocObject();
  swift_weakInit();
  sub_1D2870F78();
  sub_1D2758420(v0, sub_1D23410CC, v1);
}

uint64_t sub_1D273AA24(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1D28785F8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1D22BD1D0(a1, v10, &qword_1EC6D9490);
  sub_1D2878568();
  sub_1D2870F78();
  v15 = sub_1D2878558();
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  sub_1D273AC30(v10, v18 + v16);
  v20 = v18 + v17;
  *v20 = v3;
  *(v20 + 8) = a2;
  sub_1D22AE01C(0, 0, v13, &unk_1D28A25A0, v18);
}

uint64_t sub_1D273AC30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D273ACA0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D22BC8FC;

  return sub_1D2739CA4(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_1D273ADE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlaygroundImage();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(type metadata accessor for ImageGeneration.PreviewImage(0) + 28));
  if (*(v12 + 16))
  {
    sub_1D239A330(v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v11);
    v13 = sub_1D27FE818();
    *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel_isShowingError) = 0;
    v14 = swift_allocObject();
    swift_weakInit();
    sub_1D2870F78();
    sub_1D2758420(v13, sub_1D245E894, v14);

    v15 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation);
    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel__currentHittedLimitation + 16) == 255)
    {
      *v15 = 0;
      v15[1] = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v25[-3] = 0;
      v25[-2] = 0;
      v25[-4] = v2;
      LOBYTE(v25[-1]) = -1;
      v25[1] = v2;
      sub_1D273B208(&qword_1EC6DCC48, type metadata accessor for MagicViewModel);
      sub_1D28719D8();
    }

    v21 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal14MagicViewModel____lazy_storage___animatedEffectsViewModel);
    v22 = sub_1D2870F78();
    sub_1D2756990(v22);
    *(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal20MagicEffectViewModel_isInRectangle) = 1;

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v2 + 64);
      ObjectType = swift_getObjectType();
      (*(v23 + 32))(v2, v11, 1, ObjectType, v23);
      swift_unknownObjectRelease();
    }

    return sub_1D259DDC8(v11, type metadata accessor for PlaygroundImage);
  }

  else
  {
    sub_1D2872658();
    v17 = sub_1D2873CA8();
    v18 = sub_1D2878A18();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D226E000, v17, v18, "Trying to forward preview generation with no image", v19, 2u);
      MEMORY[0x1D38A3520](v19, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1D273B208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ComposingCreateButton()
{
  result = qword_1EC6D8470;
  if (!qword_1EC6D8470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D273B2C4()
{
  type metadata accessor for ComposingViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1D25CAB08(319, &qword_1ED89D190, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1D273B3D8();
      if (v2 <= 0x3F)
      {
        sub_1D25CAB08(319, &qword_1ED89E040, &type metadata for CreationViewStyle, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1D2874288();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D273B3D8()
{
  if (!qword_1ED89D1C0)
  {
    type metadata accessor for KeyboardEventListener();
    v0 = sub_1D2877338();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89D1C0);
    }
  }
}

uint64_t sub_1D273B44C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_1D2876118();
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D28759B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E13D0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E13D8);
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v33 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E13E0);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &v33 - v16;
  sub_1D273B9A8(v2, v12);
  sub_1D28759A8();
  v18 = sub_1D273EA98();
  v19 = sub_1D2740044(&qword_1ED89D668, MEMORY[0x1E697C5D0]);
  sub_1D2876768();
  (*(v7 + 8))(v9, v6);
  sub_1D22BD238(v12, &qword_1EC6E13D0);
  v20 = v35;
  sub_1D2876108();
  v40 = v10;
  v41 = v6;
  v42 = v18;
  v43 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1D2740044(&qword_1EC6D77B0, MEMORY[0x1E697CB70]);
  v21 = v34;
  v22 = v37;
  sub_1D28767A8();
  (*(v38 + 8))(v20, v22);
  (*(v13 + 8))(v15, v21);
  LOBYTE(v20) = sub_1D2302BA4();
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = (v20 & 1) == 0;
  v25 = &v17[*(v36 + 36)];
  *v25 = KeyPath;
  v25[1] = sub_1D22C03D8;
  v25[2] = v24;
  sub_1D273EF48();
  v26 = v39;
  sub_1D2876CC8();
  sub_1D22BD238(v17, &qword_1EC6E13E0);
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1420) + 36);
  *v27 = 1;
  *(v27 + 8) = 0xD000000000000028;
  *(v27 + 16) = 0x80000001D28AFF80;
  LOBYTE(v10) = sub_1D2302BA4();
  v28 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1428) + 36));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D90B0);
  v30 = *(v29 + 36);
  v31 = sub_1D2874518();
  result = (*(*(v31 - 8) + 56))(&v28[v30], 1, 1, v31);
  *&v28[*(v29 + 40)] = 0;
  *v28 = v10 & 1;
  return result;
}

uint64_t sub_1D273B9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1408);
  MEMORY[0x1EEE9AC00](v70);
  v4 = &v56 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1430);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v56 - v5;
  Button = type metadata accessor for ComposingCreateButton();
  v7 = *(Button - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](Button);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v56 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E13F8);
  v63 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v72 = &v56 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1438);
  v65 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v64 = &v56 - v13;
  v14 = *a1;
  swift_getKeyPath();
  v75 = v14;
  sub_1D2740044(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v14 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__editingAsset))
  {
    v15 = *(Button + 40);
    v16 = sub_1D2874288();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v11, a1 + v15, v16);
    (*(v17 + 56))(v11, 0, 1, v16);
    sub_1D273F118(a1, &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v19 = swift_allocObject();
    v20 = sub_1D273F17C(&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    MEMORY[0x1EEE9AC00](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1490);
    sub_1D273F9A8();
    sub_1D2877358();
    sub_1D2875798();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v21 = qword_1ED8B0058;
    v22 = sub_1D2876668();
    v62 = v23;
    v25 = v24;
    v61 = v26;
    v27 = *(a1 + 24);
    v73 = *(a1 + 16);
    v74 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
    v28 = sub_1D2877328();
    v60 = &v56;
    v59 = v77;
    MEMORY[0x1EEE9AC00](v28);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1400);
    v58 = sub_1D22BB9D8(&qword_1EC6D76F0, &qword_1EC6E13F8);
    v55 = sub_1D22BB9D8(&qword_1EC6D75D8, &qword_1EC6E1400);
    v29 = v66;
    v30 = v25;
    v31 = v64;
    v32 = v22;
    v33 = v62;
    v34 = v72;
    sub_1D2876E08();

    sub_1D22ED6E0(v32, v33, v30 & 1);

    (*(v63 + 8))(v34, v29);
    v35 = v65;
    v36 = v68;
    (*(v65 + 16))(v69, v31, v68);
    swift_storeEnumTagMultiPayload();
    v75 = v29;
    v76 = v57;
    v77 = MEMORY[0x1E6981148];
    v78 = v58;
    v79 = v55;
    v80 = MEMORY[0x1E6981138];
    swift_getOpaqueTypeConformance2();
    sub_1D273ED10();
    v37 = v71;
    sub_1D2875AF8();
    (*(v35 + 8))(v31, v36);
  }

  else
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      v52 = 1;
      v37 = v71;
      goto LABEL_8;
    }

    v38 = *(Button + 40);
    v39 = sub_1D2874288();
    v40 = *(v39 - 8);
    (*(v40 + 16))(v11, a1 + v38, v39);
    (*(v40 + 56))(v11, 0, 1, v39);
    sub_1D273F118(a1, &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v41 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v42 = swift_allocObject();
    v43 = sub_1D273F17C(&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41);
    v72 = &v56;
    MEMORY[0x1EEE9AC00](v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1440);
    sub_1D273F1E8();
    sub_1D2877358();
    sub_1D273F118(a1, &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v44 = swift_allocObject();
    sub_1D273F17C(&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v44 + v41);
    v45 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1410) + 36)];
    *v45 = sub_1D273F854;
    v45[1] = v44;
    v45[2] = 0;
    v45[3] = 0;
    sub_1D273F118(a1, &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v46 = swift_allocObject();
    sub_1D273F17C(&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v46 + v41);
    v47 = v69;
    v48 = &v4[*(v70 + 36)];
    *v48 = 0;
    *(v48 + 1) = 0;
    *(v48 + 2) = sub_1D273F8B0;
    *(v48 + 3) = v46;
    sub_1D22BD1D0(v4, v47, &qword_1EC6E1408);
    swift_storeEnumTagMultiPayload();
    v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1400);
    v50 = sub_1D22BB9D8(&qword_1EC6D76F0, &qword_1EC6E13F8);
    v51 = sub_1D22BB9D8(&qword_1EC6D75D8, &qword_1EC6E1400);
    v75 = v66;
    v76 = v49;
    v77 = MEMORY[0x1E6981148];
    v78 = v50;
    v79 = v51;
    v80 = MEMORY[0x1E6981138];
    swift_getOpaqueTypeConformance2();
    sub_1D273ED10();
    v37 = v71;
    sub_1D2875AF8();
    sub_1D22BD238(v4, &qword_1EC6E1408);
  }

  v52 = 0;
LABEL_8:
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E13F0);
  return (*(*(v53 - 8) + 56))(v37, v52, 1, v53);
}

uint64_t sub_1D273C554@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2873998();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED8B0058;
  v7 = sub_1D2876668();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (sub_1D2302BA4())
  {
    if (qword_1EC6D8B60 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v2, qword_1EC6E3BC0);
    (*(v3 + 16))(v5, v14, v2);
    result = sub_1D2877108();
    v16 = result;
  }

  else
  {
    if (qword_1EC6D8B60 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v2, qword_1EC6E3BC0);
    (*(v3 + 16))(v5, v17, v2);
    sub_1D2877108();
    v16 = sub_1D28770C8();
  }

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = 0;
  *(a1 + 40) = v16;
  return result;
}

uint64_t sub_1D273C7C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = sub_1D28750A8();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC628);
  v53 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v41 - v8;
  Button = type metadata accessor for ComposingCreateButton();
  v10 = *(Button - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](Button - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0);
  v13 = *(v12 - 8);
  v42 = v12;
  v43 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v50 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v41 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v51 = &v41 - v20;
  v41 = a1;
  sub_1D273F118(a1, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_1D273F17C(&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  sub_1D2877368();
  sub_1D273F118(a1, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  sub_1D273F17C(&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21);
  v24 = v49;
  sub_1D2877368();
  sub_1D2875098();
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0);
  v25 = v42;
  sub_1D2876A28();
  (*(v45 + 8))(v5, v46);
  v26 = v43;
  v46 = *(v43 + 8);
  v46(v24, v25);
  sub_1D273F118(v41, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = swift_allocObject();
  sub_1D273F17C(&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v21);
  sub_1D2877368();
  v28 = *(v26 + 16);
  v29 = v50;
  v30 = v25;
  v28(v50, v51, v25);
  v31 = v52;
  v45 = *(v53 + 16);
  v32 = v47;
  (v45)(v52, v54, v47);
  v33 = v44;
  v28(v44, v24, v30);
  v34 = v48;
  v28(v48, v29, v30);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E14A0);
  (v45)(&v34[*(v35 + 48)], v31, v32);
  v36 = &v34[*(v35 + 64)];
  v37 = v33;
  v28(v36, v33, v30);
  v38 = v46;
  v46(v49, v30);
  v39 = *(v53 + 8);
  v39(v54, v32);
  v38(v51, v30);
  v38(v37, v30);
  v39(v52, v32);
  return (v38)(v50, v30);
}

uint64_t sub_1D273CDF4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-v4];
  v6 = v1[5];
  LOBYTE(v16) = *(v1 + 32);
  v17 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890);
  sub_1D2877308();
  v7 = *v1;
  if (v15[15] == 1)
  {
    sub_1D22F7DF4();
    v8 = sub_1D22C3068();

    swift_getKeyPath();
    v16 = v8;
    sub_1D2740044(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719E8();

    v9 = *(v8 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
    if (v9)
    {
      sub_1D2870F78();
      v9(0);

      sub_1D22A576C(v9);
    }

    else
    {
    }
  }

  v10 = sub_1D28785F8();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_1D2878568();
  sub_1D2870F78();
  v11 = sub_1D2878558();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = v7;
  *(v12 + 40) = a1 & 1;
  sub_1D22AE01C(0, 0, v5, &unk_1D289E6C0, v12);
}

uint64_t sub_1D273D060@<X0>(uint64_t a1@<X8>)
{
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  result = sub_1D2876668();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1D273D168@<X0>(uint64_t a1@<X8>)
{
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  result = sub_1D2876668();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1D273D250@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1440);
  MEMORY[0x1EEE9AC00](v28);
  v27 = v24 - v3;
  v4 = sub_1D2873998();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1450);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v24 - v9;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1448);
  MEMORY[0x1EEE9AC00](v25);
  v12 = v24 - v11;
  v26 = a1;
  sub_1D273D5A4(a1, v10);
  if (qword_1EC6D8B60 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_1EC6E3BC0);
  v14 = *(v5 + 16);
  v24[1] = v5 + 16;
  v14(v7, v13, v4);
  v15 = sub_1D2877108();
  KeyPath = swift_getKeyPath();
  v30 = v15;
  v17 = sub_1D28748D8();
  sub_1D22BD1D0(v10, v12, &qword_1EC6E1450);
  v18 = &v12[*(v25 + 36)];
  *v18 = KeyPath;
  v18[1] = v17;
  sub_1D22BD238(v10, &qword_1EC6E1450);
  LOBYTE(v17) = sub_1D2302BA4();
  v14(v7, v13, v4);
  v19 = sub_1D2877108();
  if ((v17 & 1) == 0)
  {
    v20 = sub_1D28770C8();

    v19 = v20;
  }

  v21 = v27;
  sub_1D22BD1D0(v12, v27, &qword_1EC6E1448);
  v22 = v29;
  *(v21 + *(v28 + 36)) = v19;
  sub_1D273FD0C(v21, v22);
  return sub_1D22BD238(v12, &qword_1EC6E1448);
}

uint64_t sub_1D273D5A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E14A8);
  MEMORY[0x1EEE9AC00](v88);
  v89 = (&v76 - v3);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1480);
  MEMORY[0x1EEE9AC00](v81);
  v5 = &v76 - v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E14B0);
  MEMORY[0x1EEE9AC00](v83);
  v86 = (&v76 - v6);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E14B8);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v76 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1468);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v76 - v8;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD188);
  MEMORY[0x1EEE9AC00](v77);
  v10 = (&v76 - v9);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E14C0);
  MEMORY[0x1EEE9AC00](v76);
  v12 = &v76 - v11;
  v13 = sub_1D2875628();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1470);
  MEMORY[0x1EEE9AC00](v78);
  v18 = &v76 - v17;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1460);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v76 - v19;
  v20 = *a1;
  if (!sub_1D230BE78())
  {
    v23 = a1[8];
    if (*(a1 + 72) == 1)
    {
      v24 = a1[8];
      if (v24 == 5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v33 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v23, 0);
      (*(v14 + 8))(v16, v13);
      v24 = v97;
      if (v97 == 5)
      {
        goto LABEL_12;
      }
    }

    if (v24 != 6)
    {
      sub_1D2875798();
      if (qword_1ED89E0E8 != -1)
      {
        swift_once();
      }

      v45 = qword_1ED8B0058;
      v91 = sub_1D2876668();
      v92 = v46;
      v93 = v47 & 1;
      v94 = v48;
      v95 = 0;
      v96 = 1;
      goto LABEL_26;
    }

LABEL_12:
    sub_1D2875798();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v34 = qword_1ED8B0058;
    v91 = sub_1D2876668();
    v92 = v35;
    v93 = v36 & 1;
    v94 = v37;
    v95 = 0;
    v96 = 0;
LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1478);
    sub_1D273F60C();
    sub_1D2875AF8();
    v49 = v98;
    v50 = v99;
    v51 = v100;
    v52 = v89;
    *v89 = v97;
    v52[1] = v49;
    *(v52 + 4) = v50;
    *(v52 + 40) = v51;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1488);
    sub_1D273F468();
    sub_1D273F7D0();
    return sub_1D2875AF8();
  }

  if (sub_1D2302E00())
  {
    v21 = a1[8];
    if (*(a1 + 72) == 1)
    {
      v22 = a1[8];
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v38 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D22EE66C(v21, 0);
      (*(v14 + 8))(v16, v13);
      v22 = v97;
    }

    v31 = v84;
    if (v22 == 5 || v22 == 6)
    {
      sub_1D2875798();
      if (qword_1ED89E0E8 != -1)
      {
        swift_once();
      }

      v39 = qword_1ED8B0058;
      *v12 = sub_1D2876668();
      *(v12 + 1) = v40;
      v12[16] = v41 & 1;
      *(v12 + 3) = v42;
      *(v12 + 4) = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1478);
      sub_1D273F60C();
      sub_1D2519488();
      sub_1D2875AF8();
    }

    else
    {
      v54 = sub_1D2877198();
      v55 = (v10 + *(v77 + 36));
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9FE8) + 28);
      v57 = *MEMORY[0x1E69816E0];
      v58 = sub_1D2877218();
      (*(*(v58 - 8) + 104))(v55 + v56, v57, v58);
      *v55 = swift_getKeyPath();
      *v10 = v54;
      sub_1D22BD1D0(v10, v12, &qword_1EC6DD188);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1478);
      sub_1D273F60C();
      sub_1D2519488();
      sub_1D2875AF8();
      sub_1D22BD238(v10, &qword_1EC6DD188);
    }

    v29 = &qword_1EC6E1470;
    sub_1D22BD1D0(v18, v80, &qword_1EC6E1470);
    swift_storeEnumTagMultiPayload();
    sub_1D273F580();
    sub_1D273F6EC();
    v59 = v82;
    sub_1D2875AF8();
    sub_1D22BD1D0(v59, v86, &qword_1EC6E1468);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1488);
    sub_1D273F4F4();
    sub_1D273F7D0();
    sub_1D2875AF8();
    sub_1D22BD238(v59, &qword_1EC6E1468);
    v32 = v18;
  }

  else
  {
    swift_getKeyPath();
    *&v97 = v20;
    sub_1D2740044(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    if (*(v20 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground) != 1)
    {
      v43 = a1[8];
      if (*(a1 + 72) == 1)
      {
        v44 = a1[8];
      }

      else
      {
        sub_1D2870F78();
        sub_1D2878A28();
        v60 = sub_1D28762E8();
        sub_1D2873BE8();

        sub_1D2875618();
        swift_getAtKeyPath();
        sub_1D22EE66C(v43, 0);
        (*(v14 + 8))(v16, v13);
        v44 = v97;
      }

      v31 = v84;
      if (v44 == 5 || v44 == 6)
      {
        sub_1D2875798();
        if (qword_1ED89E0E8 != -1)
        {
          swift_once();
        }

        v61 = qword_1ED8B0058;
        v62 = sub_1D2876668();
        v64 = v62;
        v65 = v63;
        v91 = v62;
        v92 = v63;
        v67 = v66 & 1;
        v93 = v66 & 1;
        v94 = v68;
        v95 = 0;
        v96 = 0;
      }

      else
      {
        sub_1D2875798();
        if (qword_1ED89E0E8 != -1)
        {
          swift_once();
        }

        v69 = qword_1ED8B0058;
        v62 = sub_1D2876668();
        v64 = v62;
        v65 = v63;
        v91 = v62;
        v92 = v63;
        v67 = v70 & 1;
        v93 = v70 & 1;
        v94 = v71;
        v95 = 0;
        v96 = 1;
      }

      sub_1D22BBFAC(v62, v63, v67);
      sub_1D2870F68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1478);
      sub_1D273F60C();
      sub_1D2875AF8();
      v72 = v99;
      v73 = v100;
      v74 = v98;
      v75 = v86;
      *v86 = v97;
      v75[1] = v74;
      *(v75 + 4) = v72;
      *(v75 + 40) = v73;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1488);
      sub_1D273F4F4();
      sub_1D273F7D0();
      sub_1D2875AF8();
      sub_1D22ED6E0(v64, v65, v67);

      goto LABEL_40;
    }

    sub_1D2874738();
    v25 = &v5[*(v81 + 36)];
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D38) + 28);
    v27 = *MEMORY[0x1E697DC28];
    v28 = sub_1D2874448();
    (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
    *v25 = swift_getKeyPath();
    v29 = &qword_1EC6E1480;
    sub_1D22BD1D0(v5, v80, &qword_1EC6E1480);
    swift_storeEnumTagMultiPayload();
    sub_1D273F580();
    sub_1D273F6EC();
    v30 = v82;
    sub_1D2875AF8();
    sub_1D22BD1D0(v30, v86, &qword_1EC6E1468);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1488);
    sub_1D273F4F4();
    sub_1D273F7D0();
    v31 = v84;
    sub_1D2875AF8();
    sub_1D22BD238(v30, &qword_1EC6E1468);
    v32 = v5;
  }

  sub_1D22BD238(v32, v29);
LABEL_40:
  sub_1D22BD1D0(v31, v89, &qword_1EC6E1460);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1488);
  sub_1D273F468();
  sub_1D273F7D0();
  sub_1D2875AF8();
  return sub_1D22BD238(v31, &qword_1EC6E1460);
}

void sub_1D273E634()
{
  v1 = v0;
  Button = type metadata accessor for ComposingCreateButton();
  v3 = *(Button - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](Button - 8);
  v6 = *(v0 + 56);
  v27 = *(v0 + 48);
  v5 = v27;
  v28 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BB8);
  sub_1D2877308();
  v7 = v26;
  sub_1D273F118(v0, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1D273F17C(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = &v7[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  v11 = *&v7[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  *v10 = sub_1D273FAF8;
  v10[1] = v9;
  sub_1D22A576C(v11);

  v27 = v5;
  v28 = v6;
  sub_1D2877308();
  v12 = v26;
  sub_1D273F118(v1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_1D273F17C(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v8);
  v14 = &v12[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  v15 = *&v12[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  *v14 = sub_1D273FB68;
  v14[1] = v13;
  sub_1D22A576C(v15);

  v27 = v5;
  v28 = v6;
  sub_1D2877308();
  v16 = v26;
  sub_1D273F118(v1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  sub_1D273F17C(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v8);
  v18 = &v16[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  v19 = *&v16[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  *v18 = sub_1D273FB84;
  v18[1] = v17;
  sub_1D22A576C(v19);

  v27 = v5;
  v28 = v6;
  sub_1D2877308();
  v20 = v26;
  sub_1D273F118(v1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = swift_allocObject();
  sub_1D273F17C(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v8);
  v22 = &v20[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  v23 = *&v20[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  *v22 = sub_1D2740124;
  v22[1] = v21;
  sub_1D22A576C(v23);

  v27 = v5;
  v28 = v6;
  sub_1D2877308();
  v24 = v26;
  sub_1D2744D50();
}

void sub_1D273E910()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BB8);
  sub_1D2877308();
  sub_1D2744EE8();
  v0 = &v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  v1 = *&v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  *v0 = 0;
  *(v0 + 1) = 0;
  sub_1D22A576C(v1);
  v2 = &v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  v3 = *&v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  *v2 = 0;
  *(v2 + 1) = 0;
  sub_1D22A576C(v3);
  v4 = &v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  v5 = *&v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  *v4 = 0;
  *(v4 + 1) = 0;
  sub_1D22A576C(v5);
  v6 = &v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  v7 = *&v8[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_1D22A576C(v7);
}

unint64_t sub_1D273EA98()
{
  result = qword_1EC6D7768;
  if (!qword_1EC6D7768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E13D0);
    sub_1D273EB1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7768);
  }

  return result;
}

unint64_t sub_1D273EB1C()
{
  result = qword_1EC6D7860;
  if (!qword_1EC6D7860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E13E8);
    sub_1D273EBA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7860);
  }

  return result;
}

unint64_t sub_1D273EBA0()
{
  result = qword_1EC6D7868;
  if (!qword_1EC6D7868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E13F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E13F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1400);
    sub_1D22BB9D8(&qword_1EC6D76F0, &qword_1EC6E13F8);
    sub_1D22BB9D8(&qword_1EC6D75D8, &qword_1EC6E1400);
    swift_getOpaqueTypeConformance2();
    sub_1D273ED10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7868);
  }

  return result;
}

unint64_t sub_1D273ED10()
{
  result = qword_1EC6D7B18;
  if (!qword_1EC6D7B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1408);
    sub_1D273ED9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B18);
  }

  return result;
}

unint64_t sub_1D273ED9C()
{
  result = qword_1EC6D7C48;
  if (!qword_1EC6D7C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1410);
    sub_1D22BB9D8(&qword_1EC6D76E8, &qword_1EC6E1418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C48);
  }

  return result;
}

uint64_t sub_1D273EE54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E14D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DFEC0);
  sub_1D22BB9D8(&qword_1EC6D77E0, &qword_1EC6E14D0);
  sub_1D26CE310();
  return sub_1D2877248();
}

unint64_t sub_1D273EF48()
{
  result = qword_1EC6D7D10;
  if (!qword_1EC6D7D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E13E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E13D8);
    sub_1D2876118();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E13D0);
    sub_1D28759B8();
    sub_1D273EA98();
    sub_1D2740044(&qword_1ED89D668, MEMORY[0x1E697C5D0]);
    swift_getOpaqueTypeConformance2();
    sub_1D2740044(&qword_1EC6D77B0, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&unk_1ED89D2A0, &qword_1EC6DEB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D10);
  }

  return result;
}

uint64_t sub_1D273F118(uint64_t a1, uint64_t a2)
{
  Button = type metadata accessor for ComposingCreateButton();
  (*(*(Button - 8) + 16))(a2, a1, Button);
  return a2;
}

uint64_t sub_1D273F17C(uint64_t a1, uint64_t a2)
{
  Button = type metadata accessor for ComposingCreateButton();
  (*(*(Button - 8) + 32))(a2, a1, Button);
  return a2;
}

unint64_t sub_1D273F1E8()
{
  result = qword_1EC6D7B40;
  if (!qword_1EC6D7B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1440);
    sub_1D273F2A0();
    sub_1D22BB9D8(&qword_1ED89D370, &unk_1EC6E0FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B40);
  }

  return result;
}

unint64_t sub_1D273F2A0()
{
  result = qword_1EC6D7C78;
  if (!qword_1EC6D7C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1448);
    sub_1D273F358();
    sub_1D22BB9D8(&qword_1EC6D7798, &qword_1EC6DE148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C78);
  }

  return result;
}

unint64_t sub_1D273F358()
{
  result = qword_1EC6D7760;
  if (!qword_1EC6D7760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1450);
    sub_1D273F3DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7760);
  }

  return result;
}

unint64_t sub_1D273F3DC()
{
  result = qword_1EC6D7838;
  if (!qword_1EC6D7838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1458);
    sub_1D273F468();
    sub_1D273F7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7838);
  }

  return result;
}

unint64_t sub_1D273F468()
{
  result = qword_1EC6D7848;
  if (!qword_1EC6D7848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1460);
    sub_1D273F4F4();
    sub_1D273F7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7848);
  }

  return result;
}

unint64_t sub_1D273F4F4()
{
  result = qword_1EC6D7858;
  if (!qword_1EC6D7858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1468);
    sub_1D273F580();
    sub_1D273F6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7858);
  }

  return result;
}

unint64_t sub_1D273F580()
{
  result = qword_1EC6D7898;
  if (!qword_1EC6D7898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1470);
    sub_1D273F60C();
    sub_1D2519488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7898);
  }

  return result;
}

unint64_t sub_1D273F60C()
{
  result = qword_1EC6D7D48;
  if (!qword_1EC6D7D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1478);
    sub_1D273F698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D48);
  }

  return result;
}

unint64_t sub_1D273F698()
{
  result = qword_1EC6D80C0;
  if (!qword_1EC6D80C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D80C0);
  }

  return result;
}

unint64_t sub_1D273F6EC()
{
  result = qword_1EC6D7D90;
  if (!qword_1EC6D7D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1480);
    sub_1D22BB9D8(&qword_1EC6D7E88, &qword_1EC6DE5B8);
    sub_1D22BB9D8(&unk_1ED89D320, &qword_1EC6D9D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D90);
  }

  return result;
}

unint64_t sub_1D273F7D0()
{
  result = qword_1EC6D7890;
  if (!qword_1EC6D7890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1488);
    sub_1D273F60C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7890);
  }

  return result;
}

void sub_1D273F8B0()
{
  type metadata accessor for ComposingCreateButton();

  sub_1D273E910();
}

unint64_t sub_1D273F9A8()
{
  result = qword_1EC6E1498;
  if (!qword_1EC6E1498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1490);
    sub_1D273F60C();
    sub_1D22BB9D8(&qword_1ED89D370, &unk_1EC6E0FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1498);
  }

  return result;
}

uint64_t sub_1D273FAF8()
{
  type metadata accessor for ComposingCreateButton();

  return sub_1D273E9D8();
}

uint64_t objectdestroy_10Tm_0()
{
  v1 = (type metadata accessor for ComposingCreateButton() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_1D22EE66C(*(v2 + 64), *(v2 + 72));
  v3 = v1[12];
  v4 = sub_1D2874288();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1D273FCB4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1D389DFD0]();
  *a1 = result;
  return result;
}

uint64_t sub_1D273FD0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D273FD88(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D273FDE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

unint64_t sub_1D273FE44()
{
  result = qword_1EC6D7A18;
  if (!qword_1EC6D7A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1428);
    sub_1D273FEFC();
    sub_1D22BB9D8(&qword_1ED8A4300, &qword_1EC6D90B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7A18);
  }

  return result;
}

unint64_t sub_1D273FEFC()
{
  result = qword_1EC6D7AA8;
  if (!qword_1EC6D7AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1420);
    sub_1D273FF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7AA8);
  }

  return result;
}

unint64_t sub_1D273FF88()
{
  result = qword_1EC6D7B78;
  if (!qword_1EC6D7B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E14C8);
    sub_1D273EF48();
    sub_1D2740044(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7B78);
  }

  return result;
}

uint64_t sub_1D2740044(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D27400A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E14D0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_1D2740128(uint64_t a1, uint64_t a2)
{
  sub_1D2801504();
  sub_1D2740188();

  sub_1D27A0A48(a2);
}

uint64_t sub_1D2740188()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v1 = sub_1D274130C(v0);
    *(v0 + 128) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D27401E8()
{
  swift_getKeyPath();
  sub_1D27418E4(&qword_1EC6E1260, type metadata accessor for DescriptionFieldWithSuggestionsViewModel);
  sub_1D28719E8();

  return *(v0 + 136);
}

uint64_t sub_1D2740288()
{
  swift_getKeyPath();
  sub_1D27418E4(&qword_1EC6E1260, type metadata accessor for DescriptionFieldWithSuggestionsViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D2870F68();
}

uint64_t sub_1D2740340(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - v7;
  v9 = sub_1D27406D4();
  v10 = sub_1D28785F8();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_1D2878568();
  sub_1D2870F68();
  swift_unknownObjectRetain();
  v11 = sub_1D2878558();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = v9;
  sub_1D22AE01C(0, 0, v8, &unk_1D28A2BD8, v12);

  swift_unknownObjectRelease();
  swift_getKeyPath();
  v20[3] = v3;
  sub_1D27418E4(&qword_1EC6E1260, type metadata accessor for DescriptionFieldWithSuggestionsViewModel);
  sub_1D28719E8();

  result = swift_beginAccess();
  v15 = *(v3 + 112);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    for (i = (v15 + 40); *(i - 1) != a1 || *i != a2; i += 2)
    {
      result = sub_1D2879618();
      if (result)
      {
        break;
      }

      if (v16 == ++v17)
      {
        return result;
      }
    }

    swift_getKeyPath();
    v20[0] = v3;
    sub_1D28719E8();

    v20[0] = v3;
    swift_getKeyPath();
    sub_1D2871A08();

    swift_beginAccess();
    sub_1D23BBD30(v17);
    swift_endAccess();

    v20[0] = v3;
    swift_getKeyPath();
    sub_1D28719F8();
  }

  return result;
}

uint64_t sub_1D274062C()
{
  swift_getKeyPath();
  sub_1D27418E4(&qword_1EC6E1260, type metadata accessor for DescriptionFieldWithSuggestionsViewModel);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D27406D4()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v10 = v0;
  sub_1D27418E4(&qword_1EC6E1260, type metadata accessor for DescriptionFieldWithSuggestionsViewModel);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    sub_1D28724E8();
    v6 = sub_1D2873CA8();
    v7 = sub_1D2878A18();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D226E000, v6, v7, "DescriptionFieldWithSuggestionsViewModelDelegate is nil", v8, 2u);
      MEMORY[0x1D38A3520](v8, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    result = sub_1D2879398();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D27408E4(uint64_t a1)
{
  swift_beginAccess();
  if (sub_1D2339170(*(v1 + 112), a1))
  {
    *(v1 + 112) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27418E4(&qword_1EC6E1260, type metadata accessor for DescriptionFieldWithSuggestionsViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2740A1C(uint64_t result)
{
  if (*(v1 + 136) == (result & 1))
  {
    *(v1 + 136) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D27418E4(&qword_1EC6E1260, type metadata accessor for DescriptionFieldWithSuggestionsViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2740B2C()
{
  v1 = type metadata accessor for CuratedPrompt();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Prompt(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v0;
  v9 = *(v0 + 104);
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v59 = v9;
    v60 = v2;
    v65[0] = MEMORY[0x1E69E7CC0];
    sub_1D2870F68();
    sub_1D23D81B8(0, v12, 0);
    v13 = v65[0];
    v14 = *(v6 + 80);
    v58 = v11;
    v15 = v11 + ((v14 + 32) & ~v14);
    v61 = *(v6 + 72);
    do
    {
      sub_1D27417F0(v15, v8, type metadata accessor for Prompt);
      v16 = *(v8 + 1);
      v17 = *(v8 + 2);
      sub_1D2870F68();
      sub_1D2741858(v8, type metadata accessor for Prompt);
      v65[0] = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D23D81B8((v18 > 1), v19 + 1, 1);
        v13 = v65[0];
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v15 += v61;
      --v12;
    }

    while (v12);

    v9 = v59;
    v2 = v60;
  }

  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v22 = *(v9 + v21);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v65[0] = MEMORY[0x1E69E7CC0];
    sub_1D2870F68();
    sub_1D23D81B8(0, v23, 0);
    v24 = v65[0];
    v25 = v22 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v26 = *(v2 + 72);
    v60 = v22;
    v61 = v26;
    do
    {
      sub_1D27417F0(v25, v4, type metadata accessor for CuratedPrompt);
      v28 = *(v4 + 2);
      v27 = *(v4 + 3);
      sub_1D2870F68();
      sub_1D2741858(v4, type metadata accessor for CuratedPrompt);
      v65[0] = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D23D81B8((v29 > 1), v30 + 1, 1);
        v24 = v65[0];
      }

      *(v24 + 16) = v30 + 1;
      v31 = v24 + 16 * v30;
      *(v31 + 32) = v28;
      *(v31 + 40) = v27;
      v25 += v61;
      --v23;
    }

    while (v23);
  }

  v65[0] = v13;
  sub_1D274DC9C(v24);
  v32 = v65[0];
  v33 = type metadata accessor for ImageConditioningSuggestionsFetcher();
  v65[3] = v33;
  v65[4] = &off_1F4DC65D0;
  v65[0] = sub_1D23C7CE0();
  v34 = *(*__swift_project_boxed_opaque_existential_1(v65, v33) + 32);
  sub_1D2870F68();
  result = __swift_destroy_boxed_opaque_existential_0(v65);
  v61 = *(v34 + 16);
  if (v61)
  {
    v36 = 0;
    v56 = 0;
    v59 = (v32 + 40);
    v60 = v34 + 32;
    v37 = MEMORY[0x1E69E7CC0];
    v58 = v34;
    while (v36 < *(v34 + 16))
    {
      v41 = (v60 + 16 * v36);
      v42 = *v41;
      v43 = v41[1];
      ++v36;
      v44 = *(v32 + 16);
      result = sub_1D2870F68();
      v45 = -v44;
      v46 = -1;
      v47 = v59;
      while (v45 + v46 != -1)
      {
        if (++v46 >= *(v32 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v48 = v47 + 2;
        v49 = *v47;
        v65[0] = *(v47 - 1);
        v65[1] = v49;
        v62 = v42;
        v63 = v43;
        sub_1D22BD06C();
        result = sub_1D2878FB8();
        v47 = v48;
        if (!result)
        {

          goto LABEL_18;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v64 = v37;
      if ((result & 1) == 0)
      {
        result = sub_1D23D81B8(0, *(v37 + 16) + 1, 1);
        v37 = v64;
      }

      v39 = *(v37 + 16);
      v38 = *(v37 + 24);
      if (v39 >= v38 >> 1)
      {
        result = sub_1D23D81B8((v38 > 1), v39 + 1, 1);
        v37 = v64;
      }

      *(v37 + 16) = v39 + 1;
      v40 = v37 + 16 * v39;
      *(v40 + 32) = v42;
      *(v40 + 40) = v43;
LABEL_18:
      v34 = v58;
      if (v36 == v61)
      {
        goto LABEL_28;
      }
    }

LABEL_34:
    __break(1u);
  }

  else
  {
    v56 = 0;
    v37 = MEMORY[0x1E69E7CC0];
LABEL_28:

    if (*(v37 + 16) >= 7uLL)
    {
      sub_1D268E4E4(v37, v37 + 32, 0, 0xDuLL);
      v51 = v50;

      v37 = v51;
    }

    v52 = v57;
    sub_1D27408E4(v37);
    swift_getKeyPath();
    v65[0] = v52;
    sub_1D27418E4(&qword_1EC6E1260, type metadata accessor for DescriptionFieldWithSuggestionsViewModel);
    sub_1D28719E8();

    result = swift_beginAccess();
    v53 = *(*(v52 + 112) + 16);
    if ((*(v52 + 136) ^ (v53 != 0)))
    {
      v54 = v53 != 0;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v56 - 2) = v52;
      *(&v56 - 8) = v54;
      v62 = v52;
      sub_1D28719D8();
    }

    else
    {
      *(v52 + 136) = v53 != 0;
    }
  }

  return result;
}

uint64_t sub_1D27411B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27418E4(&qword_1EC6E1260, type metadata accessor for DescriptionFieldWithSuggestionsViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  *a2 = *(v3 + 112);
  return sub_1D2870F68();
}

uint64_t sub_1D27412A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 112) = a2;
  sub_1D2870F68();
}

uint64_t sub_1D274130C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10[-v3];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  LOBYTE(v14) = *(a1 + 40);
  v7 = sub_1D2872008();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  type metadata accessor for PromptViewModel(0);
  swift_allocObject();
  sub_1D2870F78();
  sub_1D2870F78();
  v8 = sub_1D27B0E18(v5, v6, &v14, v4, 0);

  swift_getKeyPath();
  v11 = v8;
  v12 = a1;
  v13 = &off_1F4DD23B0;
  v14 = v8;
  sub_1D27418E4(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719D8();

  return v8;
}

uint64_t sub_1D27414E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D27418E4(&qword_1EC6E1260, type metadata accessor for DescriptionFieldWithSuggestionsViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 136);
  return result;
}

uint64_t sub_1D27415B0()
{
  sub_1D22729C0(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0(v0 + 64);

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal40DescriptionFieldWithSuggestionsViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1D2741650()
{
  sub_1D27415B0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DescriptionFieldWithSuggestionsViewModel()
{
  result = qword_1EC6E14E8;
  if (!qword_1EC6E14E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D27416FC()
{
  result = sub_1D2871A28();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1D27417F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2741858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D27418E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D274192C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BC8FC;

  return sub_1D2818268(a1, v4, v5, v6, v7, v8);
}

void sub_1D2741A0C(void *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_1D28726B8();
    v7 = a1;
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1D226E000, v8, v9, "Cannot select representation with error: %@", v10, 0xCu);
      sub_1D22BD238(v11, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v11, -1, -1);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D25428EC(a1);
  }
}

uint64_t sub_1D2741C18(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D50);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v35 - v8;
  v10 = type metadata accessor for AddImageConditioningRepresentationOperation();
  sub_1D22D7044(a1, &v36);
  v11 = *(v2 + 48);
  v12 = *(&v37 + 1);
  v13 = v38;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v15);
  sub_1D2870F78();
  v19 = sub_1D27FDCE0(v17, v11, 0, v10, v12, v13);
  __swift_destroy_boxed_opaque_existential_0(&v36);
  v20 = *(v2 + 56);
  sub_1D2870F78();
  sub_1D27FDB14();
  sub_1D27DF058(v19, v20);
  v35[1] = v19;

  v21 = sub_1D2740188();
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v22 = v7[7];
  v23 = sub_1D2871318();
  (*(*(v23 - 8) + 56))(&v9[v22], 1, 1, v23);
  v24 = MEMORY[0x1E69E7CC0];
  *&v9[v7[8]] = MEMORY[0x1E69E7CC0];
  v25 = &v9[v7[9]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v25[16] = 1;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v35[-2] = v21;
  v35[-1] = v9;
  *&v36 = v21;
  sub_1D27424E0();
  sub_1D28719D8();

  sub_1D22BD238(v9, &qword_1EC6E1D50);
  sub_1D27A2444(v24);
  v27 = sub_1D2871798();
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  sub_1D27A25E0(v6);
  if (*(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingGeneratorOnboardingSheet))
  {
    v28 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v28);
    v35[-2] = v21;
    LOBYTE(v35[-1]) = 0;
    *&v36 = v21;
    sub_1D28719D8();
  }

  else
  {
    *(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingGeneratorOnboardingSheet) = 0;
  }

  if (*(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingConfirmed))
  {
    v29 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v29);
    v35[-2] = v21;
    LOBYTE(v35[-1]) = 0;
    *&v36 = v21;
    sub_1D28719D8();
  }

  else
  {
    *(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingConfirmed) = 0;
  }

  if (*(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation))
  {
    v30 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v30);
    v35[-2] = v21;
    LOBYTE(v35[-1]) = 0;
    *&v36 = v21;
    sub_1D28719D8();
  }

  else
  {
    *(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__isPresentingPhotoSharingConfirmation) = 0;
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v31 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v31);
  v35[-2] = v21;
  v35[-1] = &v36;
  v35[2] = v21;
  sub_1D28719D8();

  sub_1D22BD238(&v36, &unk_1EC6E1D30);
  v32 = (v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName);
  if (*(v21 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__photoSharingPersonName + 8))
  {
    v33 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v33);
    v35[-3] = 0;
    v35[-2] = 0;
    v35[-4] = v21;
    *&v36 = v21;
    sub_1D28719D8();
  }

  else
  {
    *v32 = 0;
    v32[1] = 0;
  }
}

uint64_t sub_1D27422D4(char a1)
{
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 64), *(v1 + 88));
  if ((a1 & 1) == 0)
  {
    v6 = *v3;
    v7 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
    swift_beginAccess();
    sub_1D2742470(v6 + v7, &v13);
    if (v14)
    {
      sub_1D22D79FC(&v13, v15);
    }

    else
    {
      sub_1D22BD238(&v13, &qword_1EC6D9A08);
      result = sub_1D23B7984();
      if (!*(result + 16))
      {
        goto LABEL_14;
      }

      sub_1D22D7044(result + 32, v15);
    }

    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v12 + 152))(v11, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  v4 = *v3;
  v5 = OBJC_IVAR____TtCV23ImagePlaygroundInternal15ImageGeneration7Manager__selectedGenerator;
  swift_beginAccess();
  sub_1D2742470(v4 + v5, &v13);
  if (v14)
  {
    sub_1D22D79FC(&v13, v15);
LABEL_8:
    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v10 + 144))(v9, v10);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  sub_1D22BD238(&v13, &qword_1EC6D9A08);
  result = sub_1D23B7984();
  if (*(result + 16))
  {
    sub_1D22D7044(result + 32, v15);
    goto LABEL_8;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1D2742470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D27424E0()
{
  result = qword_1ED8A38E0;
  if (!qword_1ED8A38E0)
  {
    type metadata accessor for PromptViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A38E0);
  }

  return result;
}

uint64_t sub_1D2742538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1600);
  v5[5] = swift_task_alloc();
  v6 = sub_1D2873CB8();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = type metadata accessor for PlaygroundImage();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  sub_1D2878568();
  v5[16] = sub_1D2878558();
  v9 = sub_1D28784F8();
  v5[17] = v9;
  v5[18] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D2742720, v9, v8);
}

uint64_t sub_1D2742720()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[2];
  v4 = (v1 + v2[9]);
  *v4 = 0u;
  v4[1] = 0u;
  *(v1 + v2[10]) = xmmword_1D28809A0;
  v5 = v2[11];
  v6 = sub_1D2873AA8();
  v0[19] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[20] = v8;
  v0[21] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v1 + v5, 1, 1, v6);
  *v1 = v3;
  *(v1 + 8) = 2;
  [v3 imageOrientation];
  *(v1 + 24) = sub_1D2878C88();
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + v2[12]) = 0;
  sub_1D2871808();
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_1D2742880;
  v10 = v0[11];

  return sub_1D262CB9C(v10);
}

uint64_t sub_1D2742880()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  sub_1D23D4DFC(v2);
  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D27429C4, v4, v3);
}

uint64_t sub_1D27429C4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D22BD238(v0[11], &unk_1EC6DE5A0);
    sub_1D2872518();
    v4 = sub_1D2873CA8();
    v5 = sub_1D2878A18();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D226E000, v4, v5, "Cannot resize camera image", v6, 2u);
      MEMORY[0x1D38A3520](v6, -1, -1);
    }

    v25 = v0[20];
    v7 = v0[19];
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[10];
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[6];
    v27 = v0[5];
    v28 = v0[9];
    v26 = v0[3];
    v14 = v0[2];

    (*(v11 + 8))(v12, v13);
    v15 = (v10 + v9[9]);
    *v15 = 0u;
    v15[1] = 0u;
    *(v10 + v9[10]) = xmmword_1D28809A0;
    v25(v10 + v9[11], 1, 1, v7);
    *v10 = v14;
    *(v10 + 8) = 2;
    [v14 imageOrientation];
    *(v10 + 24) = sub_1D2878C88();
    *(v10 + 16) = 0;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0;
    *(v10 + v9[12]) = 0;
    sub_1D2871808();
    (*(v8 + 56))(v10, 0, 1, v9);
    sub_1D22BD1D0(v26 + OBJC_IVAR____TtC23ImagePlaygroundInternal23CameraPickerCoordinator__selectedImage, v27, &unk_1EC6E1600);
    sub_1D22BD1D0(v10, v28, &unk_1EC6DE5A0);
    sub_1D28774F8();
    sub_1D22BD238(v27, &unk_1EC6E1600);
    sub_1D22BD238(v10, &unk_1EC6DE5A0);
  }

  else
  {
    v16 = v0[15];
    v17 = v0[12];
    v18 = v0[13];
    v19 = v0[10];
    v20 = v0[9];
    v21 = v0[5];
    v22 = v0[3];
    sub_1D23EEBD4(v0[11], v16);
    sub_1D239A330(v16, v19);
    (*(v18 + 56))(v19, 0, 1, v17);
    sub_1D22BD1D0(v22 + OBJC_IVAR____TtC23ImagePlaygroundInternal23CameraPickerCoordinator__selectedImage, v21, &unk_1EC6E1600);
    sub_1D22BD1D0(v19, v20, &unk_1EC6DE5A0);
    sub_1D28774F8();
    sub_1D22BD238(v21, &unk_1EC6E1600);
    sub_1D22BD238(v19, &unk_1EC6DE5A0);
    sub_1D23D4DFC(v16);
  }

  v23 = v0[1];

  return v23();
}

uint64_t type metadata accessor for CameraPickerCoordinator()
{
  result = qword_1EC6E15D8;
  if (!qword_1EC6E15D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D274303C()
{
  sub_1D2743108();
  if (v0 <= 0x3F)
  {
    sub_1D274316C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D2743108()
{
  if (!qword_1ED89D088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE5A0);
    v0 = sub_1D2877538();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89D088);
    }
  }
}

void sub_1D274316C()
{
  if (!qword_1EC6E15E8)
  {
    sub_1D2875138();
    v0 = sub_1D2877538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6E15E8);
    }
  }
}

unint64_t sub_1D27431C4()
{
  result = qword_1EC6D9690;
  if (!qword_1EC6D9690)
  {
    type metadata accessor for InfoKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D9690);
  }

  return result;
}

uint64_t sub_1D274321C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2875138();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E15F0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  if (*(a1 + 16))
  {
    v11 = sub_1D25DB1C0(*MEMORY[0x1E69DDE10]);
    if (v12)
    {
      sub_1D23C3EE4(*(a1 + 56) + 32 * v11, v22);
      sub_1D27434BC();
      if (swift_dynamicCast())
      {
        v13 = v21[1];
        v14 = sub_1D28785F8();
        (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
        sub_1D2878568();
        v15 = v13;
        v16 = v2;
        v17 = sub_1D2878558();
        v18 = swift_allocObject();
        v19 = MEMORY[0x1E69E85E0];
        v18[2] = v17;
        v18[3] = v19;
        v18[4] = v15;
        v18[5] = v16;
        sub_1D22AE01C(0, 0, v10, &unk_1D28A2D18, v18);
      }
    }
  }

  sub_1D22BD1D0(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal23CameraPickerCoordinator__presentationMode, v7, &unk_1EC6E15F0);
  MEMORY[0x1D389FF60](v5);
  sub_1D2875128();
  sub_1D28774F8();
  return sub_1D22BD238(v7, &unk_1EC6E15F0);
}

unint64_t sub_1D27434BC()
{
  result = qword_1ED89CC78;
  if (!qword_1ED89CC78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED89CC78);
  }

  return result;
}

uint64_t sub_1D2743508(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BC8FC;

  return sub_1D2742538(a1, v4, v5, v7, v6);
}

void sub_1D27435C8()
{
  sub_1D27436FC(319, &qword_1ED8A6CD8, MEMORY[0x1E6968848]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PromptAmbiguity();
    sub_1D28784C8();
    if (v1 <= 0x3F)
    {
      sub_1D27436FC(319, &qword_1ED89CC08, type metadata accessor for _NSRange);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D27436FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D2743750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  v14 = type metadata accessor for PromptText();
  result = sub_1D27437DC(a3, a8 + v14[7]);
  *(a8 + v14[8]) = a4;
  v16 = a8 + v14[9];
  *v16 = a5;
  *(v16 + 1) = a6;
  v16[16] = a7 & 1;
  return result;
}

uint64_t sub_1D27437DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ComposingViewActions.__allocating_init(_:)()
{
  v0 = swift_allocObject();
  swift_weakInit();
  sub_1D2871A18();
  swift_getKeyPath();
  sub_1D2744BF0(&qword_1ED8A19A8, type metadata accessor for ComposingViewActions);
  sub_1D28719D8();

  return v0;
}

uint64_t sub_1D2743950@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2744BF0(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover);
  return result;
}

uint64_t sub_1D2743A28()
{
  swift_getKeyPath();
  sub_1D2744BF0(&qword_1ED8A19A8, type metadata accessor for ComposingViewActions);
  sub_1D28719E8();

  return swift_weakLoadStrong();
}

uint64_t sub_1D2743ACC@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D2744BF0(&qword_1ED8A19A8, type metadata accessor for ComposingViewActions);
  sub_1D28719E8();

  result = swift_weakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1D2743B78()
{
  swift_getKeyPath();
  sub_1D2744BF0(&qword_1ED8A19A8, type metadata accessor for ComposingViewActions);
  sub_1D28719D8();
}

uint64_t ComposingViewActions.init(_:)()
{
  swift_weakInit();
  sub_1D2871A18();
  swift_getKeyPath();
  sub_1D2744BF0(&qword_1ED8A19A8, type metadata accessor for ComposingViewActions);
  sub_1D28719D8();

  return v0;
}

uint64_t type metadata accessor for ComposingViewActions()
{
  result = qword_1ED8A1998;
  if (!qword_1ED8A1998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*ComposingViewActions.share.getter())()
{
  swift_getKeyPath();
  sub_1D2744BF0(&qword_1ED8A19A8, type metadata accessor for ComposingViewActions);
  sub_1D28719E8();

  result = swift_weakLoadStrong();
  if (result)
  {
    if (sub_1D245E898())
    {
      return sub_1D2743EA0;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall ComposingViewActions.focusPrompt()()
{
  swift_getKeyPath();
  sub_1D2744BF0(&qword_1ED8A19A8, type metadata accessor for ComposingViewActions);
  sub_1D28719E8();

  if (swift_weakLoadStrong())
  {
    sub_1D22F7DF4();
    v0 = sub_1D22C3068();

    swift_getKeyPath();
    sub_1D2744BF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
    sub_1D28719E8();

    v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
    if (v1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
      sub_1D2870F78();
      v1(1);

      sub_1D22D7900(v1, v2);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall ComposingViewActions.resetPlayground()()
{
  swift_getKeyPath();
  sub_1D2744BF0(&qword_1ED8A19A8, type metadata accessor for ComposingViewActions);
  sub_1D28719E8();

  if (swift_weakLoadStrong())
  {
    sub_1D232233C();
  }
}

uint64_t (*ComposingViewActions.choosePhoto.getter())()
{
  swift_getKeyPath();
  sub_1D2744BF0(&qword_1ED8A19A8, type metadata accessor for ComposingViewActions);
  sub_1D28719E8();

  result = swift_weakLoadStrong();
  v1 = result;
  if (result)
  {
    swift_getKeyPath();
    sub_1D2744BF0(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    if (*(v1 + 40) - 5 > 1)
    {
      return sub_1D2744BD0;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t (*ComposingViewActions.takePhoto.getter())()
{
  swift_getKeyPath();
  sub_1D2744BF0(&qword_1ED8A19A8, type metadata accessor for ComposingViewActions);
  sub_1D28719E8();

  result = swift_weakLoadStrong();
  v1 = result;
  if (result)
  {
    swift_getKeyPath();
    sub_1D2744BF0(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    if (*(v1 + 40) - 5 > 1)
    {
      return sub_1D2744BD8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t (*ComposingViewActions.chooseFile.getter())()
{
  swift_getKeyPath();
  sub_1D2744BF0(&qword_1ED8A19A8, type metadata accessor for ComposingViewActions);
  sub_1D28719E8();

  result = swift_weakLoadStrong();
  v1 = result;
  if (result)
  {
    swift_getKeyPath();
    sub_1D2744BF0(&qword_1ED8A2520, type metadata accessor for ComposingViewModel);
    sub_1D28719E8();

    if (*(v1 + 40) - 5 > 1)
    {
      return sub_1D2744BE0;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t (*ComposingViewActions.saveImage.getter())()
{
  swift_getKeyPath();
  sub_1D2744BF0(&qword_1ED8A19A8, type metadata accessor for ComposingViewActions);
  sub_1D28719E8();

  result = swift_weakLoadStrong();
  if (result)
  {
    if ((sub_1D2302BA4() & 1) != 0 && (sub_1D2302E00() & 1) == 0)
    {
      return sub_1D2744BE8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall ComposingViewActions.choosePerson()()
{
  swift_getKeyPath();
  sub_1D2744BF0(&qword_1ED8A19A8, type metadata accessor for ComposingViewActions);
  sub_1D28719E8();

  if (swift_weakLoadStrong())
  {
    sub_1D22F7DF4();

    sub_1D22CB294(1, 0, 0);
  }
}

Swift::Void __swiftcall ComposingViewActions.chooseStyle()()
{
  swift_getKeyPath();
  sub_1D2744BF0(&qword_1ED8A19A8, type metadata accessor for ComposingViewActions);
  sub_1D28719E8();

  if (swift_weakLoadStrong())
  {
    v0 = sub_1D22FECC4();

    if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) == 1)
    {
      *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__shouldShowStylesPopover) = 1;
      sub_1D264698C(1);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D2744BF0(qword_1EC6D8488, type metadata accessor for StylePickerViewModel);
      sub_1D28719D8();
    }
  }
}

uint64_t ComposingViewActions.deinit()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal20ComposingViewActions___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ComposingViewActions.__deallocating_deinit()
{
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal20ComposingViewActions___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D274497C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2744BF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState);
  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15PromptViewModel__setFocusState + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D2744D30;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D22A58B8(v4);
}

uint64_t sub_1D2744A74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1D2744D28;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D22A58B8(v1);
  sub_1D2744BF0(&qword_1ED8A38E0, type metadata accessor for PromptViewModel);
  sub_1D28719D8();
  sub_1D22D7900(v4, v3);
}

uint64_t sub_1D2744BF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D2744C40()
{
  result = sub_1D2871A28();
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

void sub_1D2744D50()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:sel__keyboardWillShowWithNotification_ name:*MEMORY[0x1E69DE080] object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:sel__keyboardWillHideWithNotification_ name:*MEMORY[0x1E69DE078] object:0];

  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:sel__keyboardDidShowWithNotification_ name:*MEMORY[0x1E69DDF78] object:0];

  v5 = [v1 defaultCenter];
  [v5 addObserver:v0 selector:sel__keyboardDidHideWithNotification_ name:*MEMORY[0x1E69DDF70] object:0];
}

uint64_t sub_1D2744EA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1D2745654(a1);

  *a2 = v3;
  return result;
}

void sub_1D2744EE8()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x1E69DE078] object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:*MEMORY[0x1E69DE080] object:0];

  v4 = [v1 defaultCenter];
  [v4 removeObserver:v0 name:*MEMORY[0x1E69DDF70] object:0];

  v5 = [v1 defaultCenter];
  [v5 removeObserver:v0 name:*MEMORY[0x1E69DDF78] object:0];
}

uint64_t sub_1D2745020(uint64_t a1, char a2)
{
  if ((~a2 & 3) == 0)
  {
    return 1;
  }

  result = sub_1D28711A8();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v8 = sub_1D28780A8();
  sub_1D28790D8();
  if (!*(v4 + 16) || (v5 = sub_1D25D0A38(v9), (v6 & 1) == 0))
  {

    sub_1D23ED134(v9);
LABEL_11:
    result = 0;
    if ((a2 & 2) == 0)
    {
      return result;
    }

    return result ^ 1;
  }

  sub_1D23C3EE4(*(v4 + 56) + 32 * v5, v10);
  sub_1D23ED134(v9);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  result = v8;
  if ((a2 & 1) == 0)
  {
    if ((a2 & 2) == 0)
    {
      return 0;
    }

    return result ^ 1;
  }

  if ((a2 & 2) != 0)
  {
    v7 = v8;
  }

  else
  {
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
    return 1;
  }

  return result;
}

void sub_1D27452BC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1D28711B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2871188();
  v10 = a1;
  if (sub_1D2745020(v9, 1))
  {
    v11 = *&v10[*a4];
    if (!v11)
    {
      (*(v7 + 8))(v9, v6);

      return;
    }

    v12 = sub_1D2870F78();
    v11(v12);
    sub_1D22A576C(v11);
  }

  (*(v7 + 8))(v9, v6);
}

unint64_t sub_1D27454F4()
{
  result = qword_1EC6E1638;
  if (!qword_1EC6E1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1638);
  }

  return result;
}

unint64_t sub_1D274554C()
{
  result = qword_1EC6E1640;
  if (!qword_1EC6E1640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1640);
  }

  return result;
}

unint64_t sub_1D27455A4()
{
  result = qword_1EC6E1648;
  if (!qword_1EC6E1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1648);
  }

  return result;
}

unint64_t sub_1D27455FC()
{
  result = qword_1EC6E1650;
  if (!qword_1EC6E1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1650);
  }

  return result;
}

uint64_t sub_1D2745654(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1D274568C(uint64_t a1@<X8>)
{
  v2 = sub_1D28711A8();
  v3 = 0uLL;
  if (!v2)
  {
    v11 = 1;
    v12 = 0uLL;
    goto LABEL_9;
  }

  v4 = v2;
  v17 = sub_1D28780A8();
  sub_1D28790D8();
  if (!*(v4 + 16) || (v5 = sub_1D25D0A38(v18), (v6 & 1) == 0))
  {

    sub_1D23ED134(v18);
    goto LABEL_7;
  }

  sub_1D23C3EE4(*(v4 + 56) + 32 * v5, v19);
  sub_1D23ED134(v18);

  sub_1D27457C4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v11 = 1;
    v12 = 0uLL;
    v3 = 0uLL;
    goto LABEL_9;
  }

  [v17 CGRectValue];
  v14 = v7;
  v15 = v8;
  v13 = v9;
  v16 = v10;

  *&v12 = v13;
  *&v3 = v14;
  v11 = 0;
  *(&v3 + 1) = v15;
  *(&v12 + 1) = v16;
LABEL_9:
  *a1 = v3;
  *(a1 + 16) = v12;
  *(a1 + 32) = v11;
}

unint64_t sub_1D27457C4()
{
  result = qword_1ED89CC90;
  if (!qword_1ED89CC90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED89CC90);
  }

  return result;
}

uint64_t sub_1D2745810(uint64_t a1)
{
  v2 = sub_1D28711B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1D2871188();
  sub_1D2870F78();
  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D2745904@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__visibleImage;
  swift_beginAccess();
  return sub_1D22BD1D0(v5 + v3, a1, &unk_1EC6DE5A0);
}

uint64_t sub_1D27459DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__visibleImage;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &unk_1EC6DE5A0);
  v7 = sub_1D2748A98(v5, a1);
  sub_1D22BD238(v5, &unk_1EC6DE5A0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D23EFB0C(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &unk_1EC6DE5A0);
}

uint64_t sub_1D2745BC8()
{
  v1 = v0;
  v2 = sub_1D28711B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v57 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  sub_1D2747480(v64);
  v14 = v65;
  if (v65)
  {
    v54 = v3;
    v55 = v2;
    v56 = v5;
    v15 = v64[0];
    v16 = v64[1];
    v17 = v64[2];
    v18 = v64[3];
    v19 = v64[4];
    v20 = v64[5];
    v21 = v64[6];
    v22 = v64[7];
    swift_getKeyPath();
    v60[0] = v0;
    sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
    sub_1D28719E8();

    if (!*(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationObserver))
    {
      v53 = v0[2];
      v23 = sub_1D2878068();
      v24 = [objc_opt_self() mainQueue];
      v25 = swift_allocObject();
      v59 = v6;
      v26 = v25;
      swift_weakInit();
      v60[4] = sub_1D27489BC;
      v60[5] = v26;
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 1107296256;
      v60[2] = sub_1D2745810;
      v60[3] = &block_descriptor_40;
      v27 = _Block_copy(v60);

      v28 = [v53 addObserverForName:v23 object:0 queue:v24 usingBlock:v27];
      _Block_release(v27);

      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v53 - 2) = v1;
      *(&v53 - 1) = v28;
      v60[0] = v1;
      sub_1D28719D8();

      v6 = v59;
      swift_unknownObjectRelease();
    }

    sub_1D2872658();
    v30 = sub_1D2873CA8();
    v31 = sub_1D28789F8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D226E000, v30, v31, "Starting Saving Animation", v32, 2u);
      MEMORY[0x1D38A3520](v32, -1, -1);
    }

    v33 = *(v6 + 8);
    v59 = v6 + 8;
    v34 = v56;
    v53 = v33;
    (v33)(v13, v56);
    sub_1D2878068();
    v63 = &type metadata for StickerSaveAnimation.Information;
    v35 = swift_allocObject();
    v62 = v35;
    v35[2] = v15;
    v35[3] = v16;
    v35[4] = v17;
    v35[5] = v18;
    v35[6] = v19;
    v35[7] = v20;
    v35[8] = v21;
    v35[9] = v22;
    v35[10] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1668);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D28838F0;
    strcpy(v61, "visibleImage");
    BYTE1(v61[3]) = 0;
    HIWORD(v61[3]) = -5120;
    sub_1D22BD1D0(v64, v60, &qword_1EC6E1670);
    sub_1D28790D8();
    type metadata accessor for CGImage(0);
    *(inited + 96) = v37;
    *(inited + 72) = v14;
    strcpy(v61, "imageFrame");
    HIBYTE(v61[2]) = 0;
    v61[3] = -369098752;
    sub_1D22BD1D0(v64, v60, &qword_1EC6E1670);
    sub_1D28790D8();
    type metadata accessor for CGRect(0);
    v39 = v38;
    *(inited + 168) = v38;
    v40 = swift_allocObject();
    *(inited + 144) = v40;
    v40[2] = v19;
    v40[3] = v20;
    v40[4] = v21;
    v40[5] = v22;
    strcpy(v60, "windowsFrame");
    BYTE5(v60[1]) = 0;
    HIWORD(v60[1]) = -5120;
    sub_1D28790D8();
    *(inited + 240) = v39;
    v41 = swift_allocObject();
    *(inited + 216) = v41;
    v41[2] = v15;
    v41[3] = v16;
    v41[4] = v17;
    v41[5] = v18;
    sub_1D25D8DE0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DECB0);
    swift_arrayDestroy();
    v42 = v58;
    sub_1D2871198();
    v43 = v1[2];
    v44 = sub_1D2871178();
    [v43 postNotification_];

    v45 = v57;
    sub_1D2872658();
    v46 = sub_1D2873CA8();
    v47 = sub_1D28789F8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1D226E000, v46, v47, "Saving Animation Notification Posted", v48, 2u);
      MEMORY[0x1D38A3520](v48, -1, -1);
    }

    sub_1D22BD238(v64, &qword_1EC6E1670);
    (v53)(v45, v34);
    return (*(v54 + 8))(v42, v55);
  }

  else
  {
    sub_1D2872658();
    v50 = sub_1D2873CA8();
    v51 = sub_1D2878A18();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1D226E000, v50, v51, "No information provided to start sticker saving animation", v52, 2u);
      MEMORY[0x1D38A3520](v52, -1, -1);
    }

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1D27463FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__visibleImage;
  swift_beginAccess();
  return sub_1D22BD1D0(v3 + v4, a2, &unk_1EC6DE5A0);
}

uint64_t sub_1D27464D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D22BD1D0(a1, &v6 - v3, &unk_1EC6DE5A0);
  return sub_1D27459DC(v4);
}

uint64_t sub_1D2746580(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__visibleImage;
  swift_beginAccess();
  sub_1D23EFB0C(a2, a1 + v4);
  return swift_endAccess();
}

__n128 sub_1D27465EC@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719E8();

  v3 = *(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__imageFrame + 32);
  result = *(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__imageFrame);
  v5 = *(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__imageFrame + 16);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_1D27466A8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__imageFrame + 32);
  result = *(v3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__imageFrame);
  v6 = *(v3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__imageFrame + 16);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_1D2746764(uint64_t result)
{
  v2 = result;
  v3 = v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__imageFrame;
  if ((*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__imageFrame + 32) & 1) == 0)
  {
    if (*(result + 32))
    {
      goto LABEL_7;
    }

    result = CGRectEqualToRect(*v3, *result);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v4 = *(v2 + 16);
    *v3 = *v2;
    *(v3 + 16) = v4;
    *(v3 + 32) = *(v2 + 32);
    return result;
  }

  if (*(result + 32))
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719D8();
}

uint64_t sub_1D27468AC()
{
  swift_getKeyPath();
  sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationDidStop);
  sub_1D22A58B8(v1);
  return v1;
}

uint64_t sub_1D274696C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationDidStop);
  v5 = *(v3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationDidStop + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D23411A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D22A58B8(v4);
}

uint64_t sub_1D2746A64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1D2341198;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D22A58B8(v1);
  sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719D8();
  sub_1D22D7900(v4, v3);
}

uint64_t sub_1D2746BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationDidStop);
  v4 = *(a1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationDidStop);
  v5 = *(a1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationDidStop + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_1D22A58B8(a2);
  return sub_1D22D7900(v4, v5);
}

uint64_t sub_1D2746C18()
{
  swift_getKeyPath();
  sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719E8();

  return swift_unknownObjectRetain();
}

uint64_t sub_1D2746CC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationObserver);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D2746D78()
{
  swift_getKeyPath();
  sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719D8();
}

uint64_t sub_1D2746E44()
{
  swift_getKeyPath();
  sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__isStickersLoaded);
}

uint64_t sub_1D2746EEC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__isStickersLoaded) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__isStickersLoaded) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2747004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_1D2878568();
  v4[10] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v4[11] = v6;
  v4[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D274709C, v6, v5);
}

uint64_t sub_1D274709C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    return MEMORY[0x1EEE6DFA0](sub_1D274727C, 0, 0);
  }

  else
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__isStickersLoaded) == 1)
      {
        *(Strong + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__isStickersLoaded) = 1;
      }

      else
      {
        v2 = Strong;
        swift_getKeyPath();
        v3 = swift_task_alloc();
        *(v3 + 16) = v2;
        *(v3 + 24) = 1;
        *(v0 + 64) = v2;
        sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
        sub_1D28719D8();
      }
    }

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1D274727C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD750]) init];

  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D2747308, v2, v3);
}

uint64_t sub_1D2747308()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__isStickersLoaded) == 1)
    {
      *(Strong + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__isStickersLoaded) = 1;
    }

    else
    {
      v2 = Strong;
      swift_getKeyPath();
      v3 = swift_task_alloc();
      *(v3 + 16) = v2;
      *(v3 + 24) = 1;
      *(v0 + 64) = v2;
      sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
      sub_1D28719D8();
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_1D2747480(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D2873CB8();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlaygroundImage();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - v11;
  swift_getKeyPath();
  v36 = v1;
  sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719E8();

  v13 = (v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__imageFrame);
  if ((*(v1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__imageFrame + 32) & 1) == 0)
  {
    v14 = *v13;
    v31 = v13[1];
    v32 = v14;
    swift_getKeyPath();
    v36 = v1;
    sub_1D28719E8();

    v15 = OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__visibleImage;
    swift_beginAccess();
    sub_1D22BD1D0(v2 + v15, v12, &unk_1EC6DE5A0);
    if ((*(v8 + 48))(v12, 1, v7))
    {
      sub_1D22BD238(v12, &unk_1EC6DE5A0);
    }

    else
    {
      v19 = v33;
      sub_1D239A330(v12, v33);
      sub_1D22BD238(v12, &unk_1EC6DE5A0);
      v20 = sub_1D262B684();
      sub_1D23D4DFC(v19);
      if (v20)
      {
        v21 = [objc_opt_self() mainScreen];
        [v21 bounds];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        *a1 = v23;
        *(a1 + 8) = v25;
        *(a1 + 16) = v27;
        *(a1 + 24) = v29;
        v30 = v31;
        *(a1 + 32) = v32;
        *(a1 + 48) = v30;
        *(a1 + 64) = v20;
        return;
      }
    }
  }

  sub_1D2872658();
  v16 = sub_1D2873CA8();
  v17 = sub_1D2878A18();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D226E000, v16, v17, "Failed to make animation information", v18, 2u);
    MEMORY[0x1D38A3520](v18, -1, -1);
  }

  (*(v34 + 8))(v6, v35);
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

uint64_t StickerSaveAnimation.AnimationNotification.name.getter()
{
  v0 = sub_1D2878068();

  return v0;
}

uint64_t sub_1D27478FC()
{
  v0 = sub_1D2877B48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2877B68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_1D24614C4();
    v15 = sub_1D2878AB8();
    aBlock[4] = sub_1D27489F4;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D23DFBA8;
    aBlock[3] = &block_descriptor_26_0;
    v14 = _Block_copy(aBlock);
    sub_1D2870F78();
    sub_1D2877B58();
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D2748E58(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
    v13 = v4;
    sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80);
    sub_1D2879088();
    v11 = v14;
    v10 = v15;
    MEMORY[0x1D38A1540](0, v7, v3, v14);
    _Block_release(v11);

    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v13);
  }

  return result;
}

uint64_t sub_1D2747BF4(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
  sub_1D28719E8();

  v3 = a1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationDidStop;
  v4 = *(a1 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationDidStop);
  if (v4)
  {
    v5 = *(v3 + 8);
    v6 = sub_1D2870F78();
    v4(v6);
    return sub_1D22D7900(v4, v5);
  }

  return result;
}

uint64_t sub_1D2747CC4()
{
  sub_1D22BD238(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__visibleImage, &unk_1EC6DE5A0);
  sub_1D22D7900(*(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationDidStop), *(v0 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationDidStop + 8));
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t StickerSaveAnimation.AnimationNotification.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F6974616D696E61;
  }

  else
  {
    return 0xD000000000000014;
  }
}

ImagePlaygroundInternal::StickerSaveAnimation::AnimationNotification_optional __swiftcall StickerSaveAnimation.AnimationNotification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2879488();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D2747E7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F6974616D696E61;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = 0x80000001D28AEFA0;
  }

  else
  {
    v4 = 0xEF7265764F73496ELL;
  }

  if (*a2)
  {
    v5 = 0x6F6974616D696E61;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (*a2)
  {
    v6 = 0xEF7265764F73496ELL;
  }

  else
  {
    v6 = 0x80000001D28AEFA0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D2879618();
  }

  return v8 & 1;
}

unint64_t sub_1D2747F38()
{
  result = qword_1EC6E1658;
  if (!qword_1EC6E1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1658);
  }

  return result;
}

uint64_t sub_1D2747F8C()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D2748020()
{
  sub_1D2877F38();
}

uint64_t sub_1D27480A0()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D2748130@<X0>(char *a1@<X8>)
{
  v2 = sub_1D2879488();

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

void sub_1D2748190(unint64_t *a1@<X8>)
{
  v2 = 0x80000001D28AEFA0;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x6F6974616D696E61;
    v2 = 0xEF7265764F73496ELL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t type metadata accessor for StickerSaveAnimation.Coordinator()
{
  result = qword_1ED8A1748;
  if (!qword_1ED8A1748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2748244()
{
  sub_1D22D0510();
  if (v0 <= 0x3F)
  {
    sub_1D2871A28();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D2748344(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D274838C(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t sub_1D2748414(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1D2875C58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[5] = sub_1D2877098();
  sub_1D2875E78();
  sub_1D28749E8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v19[1] = v10;
  v19[2] = v12;
  v19[3] = v14;
  v19[4] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3 & 1;
  type metadata accessor for CGRect(0);
  sub_1D2748E58(&qword_1ED89CCE8, type metadata accessor for CGRect);
  sub_1D2870F78();
  sub_1D2876F48();
}

uint64_t sub_1D2748604(uint64_t a1, double *a2, uint64_t a3, char a4)
{
  v7 = sub_1D2875628();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[2];
  v12 = a2[3];
  if (v12 >= v11)
  {
    v13 = a2[2];
  }

  else
  {
    v13 = a2[3];
  }

  v14 = fmin(v13, 140.0);
  v15 = *a2 + (v11 - v14) * 0.5;
  v16 = a2[1] + (v12 - v14) * 0.5;
  sub_1D2870F78();
  if ((a4 & 1) == 0)
  {
    sub_1D2878A28();
    v17 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    a3 = v24;
  }

  *&v24 = v15;
  *(&v24 + 1) = v16;
  *&v25 = v14;
  *(&v25 + 1) = v14;
  v26 = 0;
  v18 = a3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__imageFrame;
  if ((*(a3 + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__imageFrame + 32) & 1) != 0 || (v27.origin.x = v15, v27.origin.y = v16, v27.size.width = v14, v27.size.height = v14, !CGRectEqualToRect(*v18, v27)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v23[-2] = a3;
    v23[-1] = &v24;
    v23[2] = a3;
    sub_1D2748E58(&qword_1ED8A1758, type metadata accessor for StickerSaveAnimation.Coordinator);
    sub_1D28719D8();
  }

  else
  {
    v19 = v24;
    v20 = v25;
    *(v18 + 32) = v26;
    *v18 = v19;
    *(v18 + 16) = v20;
  }
}

uint64_t sub_1D27488BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = sub_1D2877848();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1678);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1680) + 36));
  *v12 = sub_1D2748E40;
  v12[1] = v10;
  v12[2] = v7;
  v12[3] = v9;

  return sub_1D2870F78();
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D27489FC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationDidStop);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_1D22A58B8(v1);
  return sub_1D22D7900(v4, v5);
}

uint64_t sub_1D2748A54()
{
  *(*(v0 + 16) + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__animationObserver) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D2748A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AA0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1D22BD1D0(a1, &v20 - v12, &unk_1EC6DE5A0);
  sub_1D22BD1D0(a2, &v13[v15], &unk_1EC6DE5A0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D22BD1D0(v13, v10, &unk_1EC6DE5A0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1D23EEBD4(&v13[v15], v7);
      v18 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      sub_1D23D4DFC(v7);
      sub_1D23D4DFC(v10);
      sub_1D22BD238(v13, &unk_1EC6DE5A0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1D23D4DFC(v10);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6D9AA0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v13, &unk_1EC6DE5A0);
  v17 = 0;
  return v17 & 1;
}

__n128 sub_1D2748D58()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtCV23ImagePlaygroundInternal20StickerSaveAnimation11Coordinator__imageFrame;
  v3 = *(v1 + 32);
  result = *(v1 + 16);
  *v2 = *v1;
  *(v2 + 16) = result;
  *(v2 + 32) = v3;
  return result;
}

uint64_t sub_1D2748D88(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D2748DD0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D2748E58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2748EA0()
{
  result = qword_1ED89DD68;
  if (!qword_1ED89DD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E1680);
    sub_1D22BB9D8(&qword_1ED89D3F8, &qword_1EC6E1678);
    sub_1D22BB9D8(&qword_1ED89D730, &qword_1EC6E1688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89DD68);
  }

  return result;
}

void sub_1D2748FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + OBJC_IVAR____TtCV23ImagePlaygroundInternal32PromptLightEffectsBackgroundView11Coordinator_keyboardEventListener);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = (v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow);
  v16 = *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow);
  *v15 = sub_1D274967C;
  v15[1] = v14;
  sub_1D23415B4(a1, a2);
  sub_1D22A576C(v16);
  v17 = (v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide);
  v18 = *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide);
  *v17 = a3;
  v17[1] = a4;
  sub_1D23415B4(a3, a4);
  sub_1D22A576C(v18);
  v19 = (v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide);
  v20 = *(v13 + OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide);
  *v19 = a5;
  v19[1] = a6;
  sub_1D23415B4(a5, a6);
  sub_1D22A576C(v20);
  sub_1D2744D50();
}

id sub_1D27490F0()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtCV23ImagePlaygroundInternal32PromptLightEffectsBackgroundView11Coordinator_keyboardEventListener;
  v3 = type metadata accessor for KeyboardEventListener();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v4[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v4[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v4[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v4[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_targetsOfInterest] = 1;
  v11.receiver = v4;
  v11.super_class = v3;
  *&v0[v2] = objc_msgSendSuper2(&v11, sel_init);
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_1D274926C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PromptLightEffectsBackgroundView.Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_1D27492A8(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x4024000000000000;
  }

  return result;
}

uint64_t sub_1D27492D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D27496AC();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1D2749338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D27496AC();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1D274939C()
{
  sub_1D27496AC();
  sub_1D2875A98();
  __break(1u);
}

unint64_t sub_1D27493C8()
{
  result = qword_1ED89EB00[0];
  if (!qword_1ED89EB00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED89EB00);
  }

  return result;
}

id sub_1D274941C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v0 setAlpha_];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v1 setAlpha_];
  [v0 addSubview_];
  v2 = [v0 keyboardLayoutGuide];
  [v2 useLightEffectsBackgroundBelowView_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1698);
  sub_1D28760B8();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = v1;
  v6 = v0;
  v7 = v1;
  v8 = v6;
  v9 = v7;
  v10 = v8;
  v11 = v9;
  sub_1D2748FD4(sub_1D2749618, v3, sub_1D2749620, v4, sub_1D2749700, v5);

  return v10;
}

id sub_1D2749628(double a1)
{
  v3 = *(v1 + 24);
  [*(v1 + 16) setAlpha_];

  return [v3 setAlpha_];
}

uint64_t sub_1D274967C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1D27496AC()
{
  result = qword_1ED89EAF8;
  if (!qword_1ED89EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED89EAF8);
  }

  return result;
}

void sub_1D2749704(void *a1, uint64_t a2, id *a3)
{
  v5 = [a1 asset];
  if (v5)
  {
    v6 = [v5 name];
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = sub_1D28780A8();
      v9 = v8;

      if (v7 == 0xD000000000000013 && 0x80000001D28C1060 == v9)
      {
      }

      else
      {
        v11 = sub_1D2879618();

        if ((v11 & 1) == 0)
        {
          return;
        }
      }

      v13 = *a3;
      *a3 = a1;
      v12 = a1;
    }
  }
}

void sub_1D2749824(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1D2749880(__int16 a1)
{
  sub_1D2879168();

  strcpy(v6, "objectName: ");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x5772657474696D45;
    }

    else
    {
      v2 = 0x6F6C42656E616C50;
    }

    if (a1 == 1)
    {
      v3 = 0xEB00000000646E61;
    }

    else
    {
      v3 = 0xE900000000000062;
    }
  }

  else
  {
    v3 = 0xED000073676E6964;
    v2 = 0x6E69622065646F6ELL;
  }

  MEMORY[0x1D38A0C50](v2, v3);

  MEMORY[0x1D38A0C50](0x747265706F72702FLL, 0xEF203A656D614E79);
  v4 = sub_1D27499B8(SHIBYTE(a1));
  MEMORY[0x1D38A0C50](v4);

  return v6[0];
}

uint64_t sub_1D27499B8(char a1)
{
  result = 0x63735F656C707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      v3 = 1651469410;
      goto LABEL_11;
    case 3:
      result = 0x6163735F626F6C62;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x646F4D746867696CLL;
      break;
    case 6:
      result = 0x725F6E6565726373;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x496C616974696E69;
      break;
    case 14:
      result = 0x6C43646E61577369;
      break;
    case 15:
      v3 = 1684955511;
LABEL_11:
      result = v3 | 0x736F705F00000000;
      break;
    case 16:
      result = 0x74696857646E6177;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    case 18:
      result = 0x656C636974726170;
      break;
    case 19:
      result = 0x7974696361706FLL;
      break;
    case 20:
      result = 0x737569646172;
      break;
    default:
      return result;
  }

  return result;
}

id sub_1D2749C3C(void *a1, void *a2, void *a3, __n128 a4)
{
  v29 = a4;
  v7 = sub_1D2873CB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872668();
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = sub_1D2873CA8();
  v15 = sub_1D2878A08();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v16 = 136315394;
    [v12 position];
    v30 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E16A0);
    sub_1D274B0A8();
    v18 = sub_1D28796C8();
    v20 = sub_1D23D7C84(v18, v19, &v31);
    v27 = v7;
    v21 = v20;

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v30 = v29;
    v22 = sub_1D28796C8();
    v24 = sub_1D23D7C84(v22, v23, &v31);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_1D226E000, v14, v15, "Setting updateWandPosition from %s to %s", v16, 0x16u);
    v25 = v28;
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v25, -1, -1);
    MEMORY[0x1D38A3520](v16, -1, -1);

    (*(v8 + 8))(v10, v27);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  return [v12 setPosition_];
}

uint64_t sub_1D2749EDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5772657474696D45;
  v4 = 0xEB00000000646E61;
  if (v2 != 1)
  {
    v3 = 0x6F6C42656E616C50;
    v4 = 0xE900000000000062;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E69622065646F6ELL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED000073676E6964;
  }

  v7 = 0x5772657474696D45;
  v8 = 0xEB00000000646E61;
  if (*a2 != 1)
  {
    v7 = 0x6F6C42656E616C50;
    v8 = 0xE900000000000062;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E69622065646F6ELL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED000073676E6964;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2879618();
  }

  return v11 & 1;
}

uint64_t sub_1D274A000()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D274A0BC()
{
  sub_1D2877F38();
}

uint64_t sub_1D274A164()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D274A21C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D274B6DC();
  *a1 = result;
  return result;
}

void sub_1D274A24C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED000073676E6964;
  v4 = 0xEB00000000646E61;
  v5 = 0x5772657474696D45;
  if (v2 != 1)
  {
    v5 = 0x6F6C42656E616C50;
    v4 = 0xE900000000000062;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E69622065646F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D274A2C4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D27499B8(*a1);
  v5 = v4;
  if (v3 == sub_1D27499B8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D2879618();
  }

  return v8 & 1;
}

uint64_t sub_1D274A34C()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D27499B8(v1);
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D274A3B0()
{
  sub_1D27499B8(*v0);
  sub_1D2877F38();
}

uint64_t sub_1D274A404()
{
  v1 = *v0;
  sub_1D28797D8();
  sub_1D27499B8(v1);
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D274A464@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D274B728();
  *a1 = result;
  return result;
}

uint64_t sub_1D274A494@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D27499B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D274A4C0()
{
  v1 = *(v0 + 1);
  sub_1D28797D8();
  sub_1D2877F38();

  sub_1D27499B8(v1);
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D274A5B0()
{
  v1 = *(v0 + 1);
  sub_1D2877F38();

  sub_1D27499B8(v1);
  sub_1D2877F38();
}

uint64_t sub_1D274A690()
{
  v1 = *(v0 + 1);
  sub_1D28797D8();
  sub_1D2877F38();

  sub_1D27499B8(v1);
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D274A790(__int16 a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  v3 = HIBYTE(a1);
  v4 = 0xED000073676E6964;
  v5 = 0x6E69622065646F6ELL;
  v6 = a1;
  if (!a1)
  {
    v7 = 0x6E69622065646F6ELL;
    v8 = 0xED000073676E6964;
    v9 = a2;
    if (!a2)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v7 = 0x5772657474696D45;
  }

  else
  {
    v7 = 0x6F6C42656E616C50;
  }

  if (v6 == 1)
  {
    v8 = 0xEB00000000646E61;
  }

  else
  {
    v8 = 0xE900000000000062;
  }

  v9 = a2;
  if (a2)
  {
LABEL_9:
    if (v9 == 1)
    {
      v5 = 0x5772657474696D45;
    }

    else
    {
      v5 = 0x6F6C42656E616C50;
    }

    if (v9 == 1)
    {
      v4 = 0xEB00000000646E61;
    }

    else
    {
      v4 = 0xE900000000000062;
    }
  }

LABEL_15:
  if (v7 == v5 && v8 == v4)
  {
  }

  else
  {
    v10 = sub_1D2879618();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = sub_1D27499B8(v3);
  v14 = v13;
  if (v12 == sub_1D27499B8(v2) && v14 == v15)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2879618();
  }

  return v11 & 1;
}

uint64_t sub_1D274A940(void *a1)
{
  v36 = sub_1D2873CB8();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &aBlock[-1] - v6;
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &aBlock[-1] - v10;
  v12 = [a1 rootNode];
  v13 = sub_1D2878068();
  v14 = [v12 childNodeWithName_];

  if (!v14)
  {
    sub_1D2872668();
    v26 = sub_1D2873CA8();
    v27 = sub_1D2878A18();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D226E000, v26, v27, "Failed to load emmitter", v28, 2u);
      MEMORY[0x1D38A3520](v28, -1, -1);
    }

    (*(v2 + 8))(v11, v36);
    return 0;
  }

  v15 = [a1 rootNode];
  v16 = sub_1D2878068();
  v17 = [v15 childNodeWithName_];

  if (!v17)
  {
    sub_1D2872668();
    v29 = sub_1D2873CA8();
    v30 = sub_1D2878A18();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D226E000, v29, v30, "Failed to load emitterWandStars", v31, 2u);
      MEMORY[0x1D38A3520](v31, -1, -1);
    }

    (*(v2 + 8))(v7, v36);
    return 0;
  }

  v38 = 0;
  v18 = [a1 assetRegistry];
  v19 = [v18 rootNode];

  v20 = swift_allocObject();
  *(v20 + 16) = &v38;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1D274B10C;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1D274B114;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2749824;
  aBlock[3] = &block_descriptor_41;
  v22 = _Block_copy(aBlock);
  sub_1D2870F78();

  [v19 enumerateHierarchyUsingBlock_];

  _Block_release(v22);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    if (v38)
    {
      v24 = v38;

      v25 = v38;

      return v14;
    }

    sub_1D2872668();
    v32 = sub_1D2873CA8();
    v33 = sub_1D2878A18();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D226E000, v32, v33, "Failed to load assetNode", v34, 2u);
      MEMORY[0x1D38A3520](v34, -1, -1);
    }

    (*(v2 + 8))(v4, v36);
    v35 = v38;

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1D274AE70(void *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v18 - v8;
  v10 = [a1 particleEmitter];
  if (v10)
  {
    v11 = v10;
    sub_1D2872668();
    v12 = sub_1D2873CA8();
    v13 = sub_1D28789F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D226E000, v12, v13, "resetParticleEmitter()", v14, 2u);
      MEMORY[0x1D38A3520](v14, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    [v11 killParticles];
    [v11 restart];
  }

  else
  {
    sub_1D2872668();
    v15 = sub_1D2873CA8();
    v16 = sub_1D2878A18();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v15, v16, "particleEmitter is nil", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

unint64_t sub_1D274B0A8()
{
  result = qword_1EC6E16A8;
  if (!qword_1EC6E16A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6E16A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E16A8);
  }

  return result;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D274B154(uint64_t a1, void *a2)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 asset])
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v9 setCGImage_];

      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_1D2872668();
  v11 = sub_1D2873CA8();
  v12 = sub_1D2878A18();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D226E000, v11, v12, "maskAssetNode.asset is not a VFXClientTextureAsset!", v13, 2u);
    MEMORY[0x1D38A3520](v13, -1, -1);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t getEnumTagSinglePayload for VisualEffectBindingWand(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for VisualEffectBindingWand(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D274B478()
{
  result = qword_1EC6E16B0;
  if (!qword_1EC6E16B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E16B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualEffectBindingWand.PropertyName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualEffectBindingWand.PropertyName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D274B630()
{
  result = qword_1EC6E16B8;
  if (!qword_1EC6E16B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E16B8);
  }

  return result;
}

unint64_t sub_1D274B688()
{
  result = qword_1EC6E16C0;
  if (!qword_1EC6E16C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E16C0);
  }

  return result;
}

uint64_t sub_1D274B6DC()
{
  v0 = sub_1D2879488();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D274B728()
{
  v0 = sub_1D2879698();

  if (v0 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D274B854@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v10 = a3(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v15 = *(a2 + 16);
  if (v15)
  {
    v22 = v12;
    v23 = a5;
    v16 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v11 + 72);
    while (1)
    {
      sub_1D27511B0(v16, v14, a4);
      v18 = a1(v14);
      if (v5)
      {
        return sub_1D2751218(v14, a4);
      }

      if (v18)
      {
        break;
      }

      sub_1D2751218(v14, a4);
      v16 += v17;
      if (!--v15)
      {
        v19 = 1;
        a5 = v23;
        goto LABEL_10;
      }
    }

    a5 = v23;
    sub_1D2751278(v14, v23, a4);
    v19 = 0;
LABEL_10:
    v12 = v22;
  }

  else
  {
    v19 = 1;
  }

  return (*(v11 + 56))(a5, v19, 1, v12);
}

uint64_t sub_1D274BA58@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v8;
    v22 = a4;
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v7);
      v17 = v24(v10);
      if (v4)
      {
        return (*v14)(v10, v7);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v7);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v8 = v21;
        a4 = v22;
        return (*(v8 + 56))(a4, v18, 1, v7);
      }
    }

    v8 = v21;
    a4 = v22;
    (*(v21 + 32))(v22, v10, v7);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v8 + 56))(a4, v18, 1, v7);
}

uint64_t sub_1D274BC2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(_BYTE *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v8 = result;
    v9 = a2 + 32;
    while (1)
    {
      sub_1D22D7044(v9, v11);
      v10 = v8(v11);
      if (v4)
      {
        return __swift_destroy_boxed_opaque_existential_0(v11);
      }

      if (v10)
      {
        return a3(v11, a4);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v11);
      v9 += 40;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D274BD34(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_1D2879368();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1D38A1C30](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);
          sub_1D2870F78();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_1D274BE84()
{
  v1[2] = v0;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1718);
  v1[4] = swift_task_alloc();
  v2 = sub_1D2873CB8();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = sub_1D2873298();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1720);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v4 = sub_1D2872068();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  sub_1D2878568();
  v1[24] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v1[25] = v6;
  v1[26] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D274C110, v6, v5);
}

uint64_t sub_1D274C110()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v2 + 104))(v1, *MEMORY[0x1E696E3A0], v3);
  v4 = sub_1D2872058();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[20];
    v6 = v0[9];
    v7 = v0[10];
    v8 = *(v7 + 56);
    v0[27] = v8;
    v0[28] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v8(v5, 1, 1, v6);
    v9 = swift_task_alloc();
    v0[29] = v9;
    *v9 = v0;
    v9[1] = sub_1D274C324;
    v10 = v0[19];

    return MEMORY[0x1EEE4F790](v10);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1D274C324()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_1D274D80C;
  }

  else
  {
    v5 = sub_1D274C460;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D274C460()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v3 + 48);
  *(v0 + 248) = v4;
  *(v0 + 256) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_1D22BD238(v1, &qword_1EC6E1720);
LABEL_5:
    v9 = swift_task_alloc();
    *(v0 + 264) = v9;
    *v9 = v0;
    v9[1] = sub_1D274CC30;
    v10 = *(v0 + 96);

    return MEMORY[0x1EEE4F788](v10);
  }

  v5 = *(v0 + 104);
  v6 = *(v3 + 32);
  v6(*(v0 + 112), v1, v2);
  (*(v3 + 104))(v5, *MEMORY[0x1E69DFFC0], v2);
  sub_1D2751114(&qword_1ED8A6BB8, 255, MEMORY[0x1E69DFFC8]);
  v7 = sub_1D2877F98();
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v7)
  {
    v8(*(v0 + 112), *(v0 + 72));
    goto LABEL_5;
  }

  v11 = *(v0 + 160);
  v12 = *(v0 + 112);
  v13 = *(v0 + 72);
  sub_1D22BD238(v11, &qword_1EC6E1720);
  v6(v11, v12, v13);
  *(v0 + 280) = v8;
  v14 = *(v0 + 248);
  v15 = *(v0 + 160);
  v16 = *(v0 + 144);
  v17 = *(v0 + 72);
  (*(v0 + 216))(v15, 0, 1, v17);
  sub_1D22BD1D0(v15, v16, &qword_1EC6E1720);
  if (v14(v16, 1, v17) == 1)
  {
    v18 = *(v0 + 144);
    sub_1D22BD238(*(v0 + 160), &qword_1EC6E1720);

LABEL_27:
    sub_1D22BD238(v18, &qword_1EC6E1720);

    v55 = *(v0 + 8);

    return v55();
  }

  v19 = *(v0 + 16);
  v6(*(v0 + 88), *(v0 + 144), *(v0 + 72));
  v57 = v19;
  v61 = v8;
  if (*(v19 + 40))
  {
    sub_1D2870F78();
    sub_1D2873228();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v59 = *(v0 + 248);
  v21 = *(v0 + 216);
  v23 = *(v0 + 128);
  v22 = *(v0 + 136);
  v24 = *(v0 + 80);
  v25 = *(v0 + 88);
  v26 = *(v0 + 72);
  v27 = *(v0 + 24);
  v58 = *(v0 + 32);
  v21(v22, v20, 1, v26);
  (*(v24 + 16))(v23, v25, v26);
  v21(v23, 0, 1, v26);
  v28 = *(v27 + 48);
  sub_1D22BD1D0(v22, v58, &qword_1EC6E1720);
  sub_1D22BD1D0(v23, v58 + v28, &qword_1EC6E1720);
  v29 = v59(v58, 1, v26);
  v30 = *(v0 + 248);
  v31 = *(v0 + 72);
  if (v29 == 1)
  {
    v32 = *(v0 + 136);
    sub_1D22BD238(*(v0 + 128), &qword_1EC6E1720);
    sub_1D22BD238(v32, &qword_1EC6E1720);
    if (v30(v58 + v28, 1, v31) == 1)
    {
      sub_1D22BD238(*(v0 + 32), &qword_1EC6E1720);
LABEL_25:
      v18 = *(v0 + 160);
      v53 = *(v0 + 88);
      v54 = *(v0 + 72);

      v48 = v53;
      v49 = v54;
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  sub_1D22BD1D0(*(v0 + 32), *(v0 + 120), &qword_1EC6E1720);
  v33 = v30(v58 + v28, 1, v31);
  v35 = *(v0 + 128);
  v34 = *(v0 + 136);
  v36 = *(v0 + 120);
  if (v33 == 1)
  {
    v37 = *(v0 + 72);
    sub_1D22BD238(*(v0 + 128), &qword_1EC6E1720);
    sub_1D22BD238(v34, &qword_1EC6E1720);
    v61(v36, v37);
LABEL_18:
    sub_1D22BD238(*(v0 + 32), &qword_1EC6E1718);
    goto LABEL_19;
  }

  v50 = *(v0 + 104);
  v51 = *(v0 + 72);
  v60 = *(v0 + 32);
  v6(v50, v58 + v28, v51);
  v52 = sub_1D2877F98();
  v61(v50, v51);
  sub_1D22BD238(v35, &qword_1EC6E1720);
  sub_1D22BD238(v34, &qword_1EC6E1720);
  v61(v36, v51);
  sub_1D22BD238(v60, &qword_1EC6E1720);
  if (v52)
  {
    goto LABEL_25;
  }

LABEL_19:
  sub_1D2873268();
  v38 = sub_1D2873218();
  *(v0 + 288) = v38;
  if ((sub_1D2873258() & 1) == 0)
  {
    v18 = *(v0 + 160);
    v46 = *(v0 + 88);
    v47 = *(v0 + 72);

    v48 = v46;
    v49 = v47;
LABEL_26:
    v61(v48, v49);
    goto LABEL_27;
  }

  *(v57 + 40) = v38;
  sub_1D2870F78();

  v39 = sub_1D2873248();
  v41 = v40;
  *(v0 + 296) = v40;
  v42 = sub_1D2873238();
  v44 = v43;
  *(v0 + 304) = v43;
  v45 = swift_task_alloc();
  *(v0 + 312) = v45;
  *v45 = v0;
  v45[1] = sub_1D274D534;

  return sub_1D274EAE0(v39, v41, v42, v44);
}

uint64_t sub_1D274CC30()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_1D274DA54;
  }

  else
  {
    v5 = sub_1D274CD6C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D274CD6C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  (*(v3 + 104))(v1, *MEMORY[0x1E69DFFC0], v2);
  sub_1D2751114(&qword_1ED8A6BB8, 255, MEMORY[0x1E69DFFC8]);
  v4 = sub_1D2877F98();
  v5 = *(v3 + 8);
  v5(v1, v2);
  if (v4)
  {

    sub_1D28725B8();
    v6 = sub_1D2873CA8();
    v7 = sub_1D2878A18();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 160);
    v68 = *(v0 + 96);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v13 = *(v0 + 40);
    v12 = *(v0 + 48);
    if (v8)
    {
      v70 = v5;
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D226E000, v6, v7, "No available external generator", v14, 2u);
      MEMORY[0x1D38A3520](v14, -1, -1);

      (*(v12 + 8))(v11, v13);
      v70(v68, v10);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
      v5(v68, v10);
    }

LABEL_24:
    sub_1D22BD238(v9, &qword_1EC6E1720);

    v64 = *(v0 + 8);

    return v64();
  }

  v15 = *(v0 + 160);
  v16 = *(v0 + 96);
  v17 = *(v0 + 72);
  v18 = *(v0 + 80);
  sub_1D22BD238(v15, &qword_1EC6E1720);
  v19 = *(v18 + 32);
  v19(v15, v16, v17);
  v71 = v5;
  *(v0 + 280) = v5;
  v20 = *(v0 + 248);
  v21 = *(v0 + 160);
  v22 = *(v0 + 144);
  v23 = *(v0 + 72);
  (*(v0 + 216))(v21, 0, 1, v23);
  sub_1D22BD1D0(v21, v22, &qword_1EC6E1720);
  if (v20(v22, 1, v23) == 1)
  {
    v9 = *(v0 + 144);
    sub_1D22BD238(*(v0 + 160), &qword_1EC6E1720);

    goto LABEL_24;
  }

  v24 = *(v0 + 16);
  v19(*(v0 + 88), *(v0 + 144), *(v0 + 72));
  v66 = v24;
  v65 = v19;
  if (*(v24 + 40))
  {
    sub_1D2870F78();
    sub_1D2873228();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v67 = *(v0 + 248);
  v26 = *(v0 + 216);
  v28 = *(v0 + 128);
  v27 = *(v0 + 136);
  v30 = *(v0 + 80);
  v29 = *(v0 + 88);
  v31 = *(v0 + 72);
  v32 = *(v0 + 24);
  v33 = *(v0 + 32);
  v26(v27, v25, 1, v31);
  (*(v30 + 16))(v28, v29, v31);
  v26(v28, 0, 1, v31);
  v34 = *(v32 + 48);
  sub_1D22BD1D0(v27, v33, &qword_1EC6E1720);
  sub_1D22BD1D0(v28, v33 + v34, &qword_1EC6E1720);
  v35 = v67(v33, 1, v31);
  v36 = *(v0 + 248);
  v37 = *(v0 + 72);
  if (v35 == 1)
  {
    v38 = *(v0 + 136);
    sub_1D22BD238(*(v0 + 128), &qword_1EC6E1720);
    sub_1D22BD238(v38, &qword_1EC6E1720);
    v39 = v36(v33 + v34, 1, v37);
    v40 = v71;
    if (v39 == 1)
    {
      sub_1D22BD238(*(v0 + 32), &qword_1EC6E1720);
LABEL_22:
      v9 = *(v0 + 160);
      v62 = *(v0 + 88);
      v63 = *(v0 + 72);

      v57 = v62;
      v58 = v63;
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  sub_1D22BD1D0(*(v0 + 32), *(v0 + 120), &qword_1EC6E1720);
  v41 = v36(v33 + v34, 1, v37);
  v43 = *(v0 + 128);
  v42 = *(v0 + 136);
  v44 = *(v0 + 120);
  if (v41 == 1)
  {
    v45 = *(v0 + 72);
    sub_1D22BD238(*(v0 + 128), &qword_1EC6E1720);
    sub_1D22BD238(v42, &qword_1EC6E1720);
    v40 = v71;
    v71(v44, v45);
LABEL_15:
    sub_1D22BD238(*(v0 + 32), &qword_1EC6E1718);
    goto LABEL_16;
  }

  v59 = *(v0 + 104);
  v60 = *(v0 + 72);
  v69 = *(v0 + 32);
  v65(v59, v33 + v34, v60);
  v61 = sub_1D2877F98();
  v71(v59, v60);
  sub_1D22BD238(v43, &qword_1EC6E1720);
  sub_1D22BD238(v42, &qword_1EC6E1720);
  v71(v44, v60);
  v40 = v71;
  sub_1D22BD238(v69, &qword_1EC6E1720);
  if (v61)
  {
    goto LABEL_22;
  }

LABEL_16:
  sub_1D2873268();
  v46 = sub_1D2873218();
  *(v0 + 288) = v46;
  if ((sub_1D2873258() & 1) == 0)
  {
    v9 = *(v0 + 160);
    v55 = *(v0 + 88);
    v56 = *(v0 + 72);

    v57 = v55;
    v58 = v56;
LABEL_23:
    v40(v57, v58);
    goto LABEL_24;
  }

  *(v66 + 40) = v46;
  sub_1D2870F78();

  v47 = sub_1D2873248();
  v49 = v48;
  *(v0 + 296) = v48;
  v50 = sub_1D2873238();
  v52 = v51;
  *(v0 + 304) = v51;
  v53 = swift_task_alloc();
  *(v0 + 312) = v53;
  *v53 = v0;
  v53[1] = sub_1D274D534;

  return sub_1D274EAE0(v47, v49, v50, v52);
}

uint64_t sub_1D274D534(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 320) = a1;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1D274D69C, v4, v3);
}

uint64_t sub_1D274D69C()
{
  v1 = v0[40];
  v2 = v0[35];
  v3 = v0[20];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[2];

  v2(v4, v5);
  sub_1D22BD238(v3, &qword_1EC6E1720);
  *(v6 + 64) = v1;

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D274D80C()
{
  v1 = v0[30];
  v2 = v0[20];

  sub_1D22BD238(v2, &qword_1EC6E1720);
  sub_1D28725B8();
  v3 = v1;
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D226E000, v4, v5, "Failed to load the selected external generator with error: %@", v6, 0xCu);
    sub_1D22BD238(v7, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v7, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D274DA54()
{
  v1 = v0[34];
  v2 = v0[20];

  sub_1D22BD238(v2, &qword_1EC6E1720);
  sub_1D28725B8();
  v3 = v1;
  v4 = sub_1D2873CA8();
  v5 = sub_1D2878A18();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D226E000, v4, v5, "Failed to load the selected external generator with error: %@", v6, 0xCu);
    sub_1D22BD238(v7, qword_1EC6DA930);
    MEMORY[0x1D38A3520](v7, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D274DC9C(uint64_t result)
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

  result = sub_1D27CC674(result, v10, 1, v3);
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

uint64_t sub_1D274DE68(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v52 = a2;
  v9 = type metadata accessor for Bubble(0);
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v50 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4D0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v51 = v44 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v44;
  v19 = v44 - v18;
  v20 = (a4 >> 1);
  v21 = __OFSUB__(a4 >> 1, a3);
  v22 = (a4 >> 1) - a3;
  if (v21)
  {
    __break(1u);
    goto LABEL_21;
  }

  v54 = a1;
  v5 = *v4;
  v23 = *(*v4 + 16);
  v24 = v23 + v22;
  if (__OFADD__(v23, v22))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v17 = (v5[3] >> 1), v17 < v24))
  {
    if (v23 <= v24)
    {
      v26 = v23 + v22;
    }

    else
    {
      v26 = v23;
    }

    v5 = sub_1D27CCBF4(isUniquelyReferenced_nonNull_native, v26, 1, v5);
    v17 = (v5[3] >> 1);
  }

  v27 = v17 - v5[2];
  if (v20 == a3)
  {
    if (v22 <= 0)
    {
      v22 = 0;
      v17 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v27 < v22)
  {
    __break(1u);
    goto LABEL_29;
  }

  result = swift_arrayInitWithCopy();
  if (v22 <= 0)
  {
LABEL_16:
    v17 = v20;
LABEL_17:
    if (v22 != v27)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v5;
      return result;
    }

LABEL_23:
    v49 = v17;
    v22 = v5[2];
    v31 = v53;
    v44[0] = *(v53 + 56);
    v44[1] = v53 + 56;
    (v44[0])(v19, 1, 1, v9);
    v32 = v51;
    sub_1D22BD1D0(v19, v51, &qword_1EC6DC4D0);
    v33 = v31;
    v24 = v32;
    v47 = *(v33 + 48);
    v48 = v33 + 48;
    if (v47(v32, 1, v9) == 1)
    {
LABEL_24:
      sub_1D22BD238(v19, &qword_1EC6DC4D0);
      swift_unknownObjectRelease();
      result = sub_1D22BD238(v24, &qword_1EC6DC4D0);
      goto LABEL_19;
    }

    do
    {
LABEL_29:
      sub_1D22BD238(v24, &qword_1EC6DC4D0);
      v35 = v5[3];
      v36 = v35 >> 1;
      if ((v35 >> 1) < v22 + 1)
      {
        v5 = sub_1D27CCBF4(v35 > 1, v22 + 1, 1, v5);
        v36 = v5[3] >> 1;
      }

      v37 = *(v53 + 80);
      sub_1D22BD1D0(v19, v14, &qword_1EC6DC4D0);
      if (v47(v14, 1, v9) == 1)
      {
LABEL_32:
        sub_1D22BD238(v14, &qword_1EC6DC4D0);
        v34 = v22;
      }

      else
      {
        v45 = v5 + ((v37 + 32) & ~v37);
        if (v22 <= v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = v22;
        }

        v46 = v38;
        v39 = v50;
        while (1)
        {
          sub_1D2751278(v14, v39, type metadata accessor for Bubble);
          if (v46 == v22)
          {
            break;
          }

          sub_1D22BD238(v19, &qword_1EC6DC4D0);
          v41 = *(v53 + 72);
          result = sub_1D2751278(v39, &v45[v41 * v22], type metadata accessor for Bubble);
          if (v49 == v20)
          {
            v40 = 1;
            v49 = v20;
          }

          else
          {
            if (v49 < a3 || v49 >= v20)
            {
              goto LABEL_45;
            }

            v42 = v52 + v41 * v49;
            v43 = v49;
            sub_1D27511B0(v42, v19, type metadata accessor for Bubble);
            v40 = 0;
            v49 = v43 + 1;
          }

          (v44[0])(v19, v40, 1, v9);
          sub_1D22BD1D0(v19, v14, &qword_1EC6DC4D0);
          ++v22;
          if (v47(v14, 1, v9) == 1)
          {
            goto LABEL_32;
          }
        }

        sub_1D2751218(v39, type metadata accessor for Bubble);
        v34 = v46;
        v22 = v46;
      }

      v5[2] = v34;
      v24 = v51;
      sub_1D22BD1D0(v19, v51, &qword_1EC6DC4D0);
    }

    while (v47(v24, 1, v9) != 1);
    goto LABEL_24;
  }

  v29 = v5[2];
  v21 = __OFADD__(v29, v22);
  v30 = v29 + v22;
  if (!v21)
  {
    v5[2] = v30;
    goto LABEL_16;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1D274E49C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D274E608(uint64_t result)
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

  result = sub_1D27CD3A8(result, v10, 1, v3);
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

uint64_t sub_1D274E750(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D274E870(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1D2879368();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1D2879368();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1D278BE70();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1D2750618(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D274E960(uint64_t a1)
{
  v1 = sub_1D2750E24(a1);

  return v1;
}

uint64_t sub_1D274E994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D2878568();
  v6[5] = sub_1D2878558();
  v8 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D274EA30, v8, v7);
}

uint64_t sub_1D274EA30()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  if (v1)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  if (v1)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  sub_1D2870F68();

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4;
  }

  v7 = *(v2 + 56);
  *(v2 + 56) = v6 == 0;
  sub_1D274F9F4(v7);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1D274EAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1D2873CB8();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_1D2872008();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  sub_1D28718F8();
  v5[15] = swift_task_alloc();
  sub_1D2878048();
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D58);
  v5[17] = swift_task_alloc();
  v8 = sub_1D2872128();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v9 = sub_1D2872068();
  v5[22] = v9;
  v5[23] = *(v9 - 8);
  v5[24] = swift_task_alloc();
  sub_1D2878568();
  v5[25] = sub_1D2878558();
  v11 = sub_1D28784F8();
  v5[26] = v11;
  v5[27] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D274EDA4, v11, v10);
}

uint64_t sub_1D274EDA4()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  (*(v2 + 104))(v1, *MEMORY[0x1E696E3A0], v3);
  v4 = sub_1D2872058();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {

LABEL_7:

    v18 = *(v0 + 8);
    v19 = MEMORY[0x1E69E7CC0];

    return v18(v19);
  }

  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  sub_1D2872188();
  sub_1D2872148();
  (*(v8 + 104))(v6, *MEMORY[0x1E696E418], v7);
  sub_1D2751114(&qword_1EC6DA148, 255, MEMORY[0x1E696E420]);
  v9 = sub_1D2877F98();
  v10 = *(v8 + 8);
  v10(v6, v7);
  v10(v5, v7);
  if (v9)
  {

    sub_1D28725D8();
    v11 = sub_1D2873CA8();
    v12 = sub_1D2878A18();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 56);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v11, v12, "External provider unavailable for the current device and/or region.", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    (*(v15 + 8))(v14, v16);
    goto LABEL_7;
  }

  v21 = *(v0 + 136);
  v22 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC80);
  *(v0 + 224) = *(v22 + 72);
  *(v0 + 288) = *(v22 + 80);
  v23 = swift_allocObject();
  *(v0 + 232) = v23;
  *(v23 + 16) = xmmword_1D287F500;
  sub_1D2871EC8();
  sub_1D2877FE8();
  sub_1D28718C8();
  sub_1D28780E8();
  sub_1D2870F68();
  sub_1D2870F68();
  sub_1D2871EE8();
  v24 = sub_1D2871F38();
  *(v0 + 240) = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  *(v0 + 248) = v26;
  *(v0 + 256) = (v25 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v26(v21, 0, 1, v24);
  sub_1D2871FA8();
  *(v0 + 264) = sub_1D274F98C();
  v27 = swift_task_alloc();
  *(v0 + 272) = v27;
  *v27 = v0;
  v27[1] = sub_1D274F250;

  return sub_1D26346A8(0xD000000000000018, 0x80000001D28C1210);
}

uint64_t sub_1D274F250(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1D274F39C, v4, v3);
}

uint64_t sub_1D274F39C()
{
  v1 = *(v0 + 280);

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 88);
    v4 = (v3 + 8);
    v21 = (v3 + 32);
    v22 = (v3 + 16);
    v5 = *(v0 + 232);
    v6 = *(v0 + 280) + 56;
    v23 = (v3 + 8);
    do
    {
      v32 = v2;
      v28 = *(v0 + 248);
      v7 = v4;
      v26 = *(v0 + 136);
      v27 = *(v0 + 240);
      v8 = *(v0 + 104);
      v29 = *(v0 + 96);
      v9 = *(v0 + 80);
      v25 = *(v0 + 112);
      v24 = *(v6 - 24);
      v33 = *(v6 - 16);
      v10 = *(v6 + 48);
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
      v31 = v10;
      sub_1D2871EC8();
      sub_1D2871F98();
      v30 = *v7;
      (*v7)(v8, v9);
      sub_1D2870F68();
      MEMORY[0x1D38A0C50](95, 0xE100000000000000);

      sub_1D2870F68();
      MEMORY[0x1D38A0C50](v24, v33);

      sub_1D2871EA8();
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2871EE8();
      v28(v26, 0, 1, v27);
      sub_1D2871F68();
      (*v22)(v29, v25, v9);
      v12 = *(v5 + 2);
      v11 = *(v5 + 3);
      if (v12 >= v11 >> 1)
      {
        v5 = sub_1D27CC780(v11 > 1, v12 + 1, 1, v5);
      }

      v6 += 80;
      v13 = *(v0 + 288);
      v14 = *(v0 + 224);
      v15 = *(v0 + 112);
      v16 = *(v0 + 96);
      v17 = *(v0 + 80);

      v18 = v15;
      v4 = v23;
      v30(v18, v17);
      *(v5 + 2) = v12 + 1;
      (*v21)(&v5[((v13 + 32) & ~v13) + v14 * v12], v16, v17);
      v2 = v32 - 1;
    }

    while (v32 != 1);
  }

  else
  {

    v5 = *(v0 + 232);
  }

  v19 = *(v0 + 8);

  return v19(v5);
}

uint64_t sub_1D274F788()
{
  v1 = sub_1D2873298();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 40))
  {
    goto LABEL_7;
  }

  sub_1D2870F78();
  sub_1D2873228();
  sub_1D2751114(&qword_1EC6E1708, 255, MEMORY[0x1E69DFFC8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v8[2] != v8[0] || v8[3] != v8[1])
  {
    v5 = sub_1D2879618();
    (*(v2 + 8))(v4, v1);

    if (v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_1D2873268();
    sub_1D2873218();
    goto LABEL_8;
  }

  (*(v2 + 8))(v4, v1);

LABEL_8:
  v6 = sub_1D2873248();

  return v6;
}

void *sub_1D274F98C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_1D23C8160();
    *(v0 + 24) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D274F9F4(char a1)
{
  v2 = a1 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v59 - v7;
  v80 = sub_1D2872008();
  v76 = *(v80 - 8);
  v9 = MEMORY[0x1EEE9AC00](v80);
  v78 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v59 - v12;
  if (*(v1 + 56) != v2)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = *(v1 + 32);
    v62 = v8;
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
      goto LABEL_64;
    }

    v15 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v64 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = sub_1D2870F68();
    if (v15)
    {
      v16 = 0;
      v17 = v64 & 0xC000000000000001;
      v18 = v64 & 0xFFFFFFFFFFFFFF8;
      v19 = v64 + 32;
      v75 = (v76 + 16);
      v73 = (v76 + 8);
      v66 = (v76 + 56);
      v59 = (v76 + 32);
      v71 = v1;
      v61 = v6;
      v60 = v13;
      v70 = v15;
      v69 = v64 & 0xC000000000000001;
      v68 = v64 & 0xFFFFFFFFFFFFFF8;
      v67 = v64 + 32;
      do
      {
        if (v17)
        {
          v81 = MEMORY[0x1D38A1C30](v16, v64);
          v20 = __OFADD__(v16++, 1);
          if (v20)
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (v16 >= *(v18 + 16))
          {
            goto LABEL_60;
          }

          v81 = *(v19 + 8 * v16);
          sub_1D2870F78();
          v20 = __OFADD__(v16++, 1);
          if (v20)
          {
LABEL_54:
            __break(1u);
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          if (*(v1 + 56) == 1)
          {
            swift_getKeyPath();
            v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel___observationRegistrar;
            v22 = Strong;
            v82[0] = Strong;
            v23 = sub_1D2751114(qword_1EC6D8488, 255, type metadata accessor for StylePickerViewModel);
            sub_1D28719E8();

            v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
            swift_beginAccess();
            v25 = v80;
            v74 = *v75;
            v74(v13, v22 + v24, v80);
            v26 = sub_1D2871F78();
            v72 = *v73;
            v72(v13, v25);
            if ((v26 & 1) != 0 && (swift_getKeyPath(), v82[0] = v22, sub_1D28719E8(), , v27 = sub_1D2870F78(), v28 = sub_1D23C6B54(v27), , v29 = *(v28 + 56), , v29 == 1))
            {
              v65 = v23;
              v77 = v21;
              __swift_project_boxed_opaque_existential_1((v22 + 16), *(v22 + 40));
              isUniquelyReferenced_nonNull_native = sub_1D23B7984();
              v30 = *(isUniquelyReferenced_nonNull_native + 16);
              if (v30)
              {
                v31 = isUniquelyReferenced_nonNull_native;
                v85 = MEMORY[0x1E69E7CC0];
                sub_1D2870F68();
                sub_1D23D81F8(0, v30, 0);
                v13 = v85;
                v32 = v31 + 32;
                v33 = v80;
                do
                {
                  sub_1D22D7044(v32, v82);
                  v34 = v83;
                  v35 = v84;
                  __swift_project_boxed_opaque_existential_1(v82, v83);
                  v36 = (*(v35 + 16))(v34, v35);
                  __swift_destroy_boxed_opaque_existential_0(v82);
                  v85 = v13;
                  v38 = *(v13 + 2);
                  v37 = *(v13 + 3);
                  if (v38 >= v37 >> 1)
                  {
                    sub_1D23D81F8((v37 > 1), v38 + 1, 1);
                    v13 = v85;
                  }

                  *(v13 + 2) = v38 + 1;
                  *&v13[8 * v38 + 32] = v36;
                  v32 += 40;
                  --v30;
                }

                while (v30);
              }

              else
              {
                v13 = MEMORY[0x1E69E7CC0];
                v33 = v80;
              }

              v6 = *(v13 + 2);
              v1 = v77;
              if (v6)
              {
                v40 = 0;
                v41 = MEMORY[0x1E69E7CC0];
                while (v40 < *(v13 + 2))
                {
                  v42 = *&v13[8 * v40 + 32];
                  v1 = *(v42 + 16);
                  v43 = v41[2];
                  v44 = v43 + v1;
                  if (__OFADD__(v43, v1))
                  {
                    goto LABEL_58;
                  }

                  sub_1D2870F68();
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if (!isUniquelyReferenced_nonNull_native || v44 > v41[3] >> 1)
                  {
                    if (v43 <= v44)
                    {
                      v45 = v43 + v1;
                    }

                    else
                    {
                      v45 = v43;
                    }

                    isUniquelyReferenced_nonNull_native = sub_1D27CC780(isUniquelyReferenced_nonNull_native, v45, 1, v41);
                    v41 = isUniquelyReferenced_nonNull_native;
                  }

                  v33 = v80;
                  if (*(v42 + 16))
                  {
                    if ((v41[3] >> 1) - v41[2] < v1)
                    {
                      goto LABEL_61;
                    }

                    swift_arrayInitWithCopy();

                    if (v1)
                    {
                      v46 = v41[2];
                      v20 = __OFADD__(v46, v1);
                      v47 = v46 + v1;
                      if (v20)
                      {
                        goto LABEL_62;
                      }

                      v41[2] = v47;
                    }
                  }

                  else
                  {

                    if (v1)
                    {
                      goto LABEL_59;
                    }
                  }

                  ++v40;
                  v1 = v77;
                  if (v6 == v40)
                  {
                    goto LABEL_42;
                  }
                }

                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                v58 = isUniquelyReferenced_nonNull_native;
                v15 = sub_1D2879368();
                isUniquelyReferenced_nonNull_native = v58;
                goto LABEL_4;
              }

              v41 = MEMORY[0x1E69E7CC0];
LABEL_42:

              v6 = v41[2];
              if (v6)
              {
                v48 = 0;
                v63 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__allowedStyles;
                while (v48 < v41[2])
                {
                  v49 = (*(v76 + 80) + 32) & ~*(v76 + 80);
                  v13 = *(v76 + 72);
                  v50 = v48 + 1;
                  v74(v78, v41 + v49 + v13 * v48, v33);
                  swift_getKeyPath();
                  v51 = Strong;
                  v82[0] = Strong;
                  sub_1D28719E8();

                  v52 = *(v51 + v63);
                  v53 = *(v52 + 16);
                  v54 = v52 + v49;
                  sub_1D2870F68();
                  v55 = v53 + 1;
                  while (--v55)
                  {
                    sub_1D2751114(&qword_1ED8A6C08, 255, MEMORY[0x1E696E310]);
                    v54 += v13;
                    if (sub_1D2877F98())
                    {

                      v56 = v62;
                      (*v59)(v62, v78, v33);
                      v57 = 0;
                      goto LABEL_51;
                    }
                  }

                  isUniquelyReferenced_nonNull_native = (v72)(v78, v33);
                  v48 = v50;
                  v1 = v77;
                  if (v50 == v6)
                  {
                    goto LABEL_50;
                  }
                }

                goto LABEL_63;
              }

LABEL_50:

              v57 = 1;
              v56 = v62;
LABEL_51:
              (*v66)(v56, v57, 1, v33);
              sub_1D2644B70(v56);

              swift_unknownObjectRelease();
              isUniquelyReferenced_nonNull_native = sub_1D22BD238(v56, &qword_1EC6D9A30);
              v1 = v71;
              v6 = v61;
              v13 = v60;
              v15 = v70;
              v17 = v69;
              v18 = v68;
              v19 = v67;
            }

            else
            {
              swift_getKeyPath();
              v82[0] = v22;
              sub_1D28719E8();

              v39 = v80;
              v74(v6, v22 + v24, v80);
              (*v66)(v6, 0, 1, v39);
              sub_1D2644B70(v6);

              swift_unknownObjectRelease();
              isUniquelyReferenced_nonNull_native = sub_1D22BD238(v6, &qword_1EC6D9A30);
              v15 = v70;
              v17 = v69;
              v18 = v68;
              v19 = v67;
              v1 = v71;
            }
          }

          else
          {

            isUniquelyReferenced_nonNull_native = swift_unknownObjectRelease();
          }
        }

        else
        {
        }
      }

      while (v16 != v15);
    }
  }

  return result;
}

uint64_t sub_1D2750380()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D2750404@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_allocObject();
  v4 = sub_1D2750E24(a1);

  *a2 = v4;
  return result;
}

uint64_t sub_1D275045C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1D28785F8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1D2878568();
  sub_1D2870F68();
  sub_1D2870F78();
  v10 = sub_1D2878558();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  sub_1D22AE01C(0, 0, v8, &unk_1D28A3998, v11);
}

uint64_t sub_1D2750618(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D2879368();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D2879368();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D275115C(&qword_1EC6E16E0, &qword_1EC6E16D8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E16D8);
            v9 = sub_1D23EC978(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D22BCFD0(0, &unk_1EC6D74F0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D27507B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D2879368();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D2879368();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D275115C(&qword_1EC6E1730, &qword_1EC6E1728);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1728);
            v9 = sub_1D23ECA00(v13, i, a3);
            v11 = *v10;
            sub_1D2870F78();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE550);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2750954(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D2879368();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D2879368();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D275115C(&qword_1EC6E1700, &qword_1EC6E16F8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E16F8);
            v9 = sub_1D23ECB30(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D22BCFD0(0, &qword_1ED89CC40);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}