void *sub_1D55330CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v12 = a1;
  swift_getTupleTypeMetadata2();
  v9 = sub_1D56152D8();
  WitnessTable = swift_getWitnessTable();
  sub_1D552B5BC(&v12, a2, a3, v9, a4, WitnessTable, __src);
  return memcpy(a5, __src, 0x41uLL);
}

uint64_t sub_1D55331E8(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v6 = v1[4];
  v18 = v1[2];
  v16 = v6;
  v17 = v5;
  sub_1D4EA73A4(v3);
  sub_1D5533848(&v18, v14);
  v7 = *(a1 + 16);
  v8 = sub_1D5615D18();
  OUTLINED_FUNCTION_14(v8);
  (*(v9 + 16))(v14, &v17);
  v14[0] = v7;
  v10 = *(a1 + 24);
  v14[1] = *(a1 + 24);
  v15 = v10;
  type metadata accessor for LRUDictionary.Container();
  v11 = sub_1D5615D18();
  OUTLINED_FUNCTION_14(v11);
  (*(v12 + 16))(v14, &v16);
  return sub_1D5533674(v1);
}

uint64_t sub_1D55332D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v53 = v2;
  v54 = v3;
  v55 = v3;
  v56 = v4;
  v5 = type metadata accessor for LRUDictionary.Container();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1D56158D8();
  OUTLINED_FUNCTION_1_0();
  v48 = v8;
  v49 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v45 - v11;
  OUTLINED_FUNCTION_84();
  v13 = swift_getTupleTypeMetadata2();
  v14 = OUTLINED_FUNCTION_14(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  OUTLINED_FUNCTION_1_0();
  v47 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v50 = &v45 - v23;
  OUTLINED_FUNCTION_1_0();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_84();
  sub_1D560C658();
  sub_1D560C648();
  if (__swift_getEnumTagSinglePayload(v12, 1, TupleTypeMetadata2) == 1)
  {
    (*(v48 + 8))(v12, v49);
    OUTLINED_FUNCTION_84();
    v31 = swift_getTupleTypeMetadata2();
    v32 = v51;
    v33 = 1;
  }

  else
  {
    v34 = *(TupleTypeMetadata2 + 48);
    v35 = *(v13 + 48);
    v52 = v3;
    v48 = *(v25 + 32);
    v49 = v34;
    (v48)(v18, v12, v2);
    v46 = v30;
    v36 = *(v47 + 32);
    v36(&v18[v35], &v12[v49], v5);
    v37 = *(v13 + 48);
    v38 = v48;
    (v48)(v30, v18, v2);
    v39 = v50;
    v36(v50, &v18[v37], v5);
    OUTLINED_FUNCTION_84();
    v40 = v52;
    v41 = swift_getTupleTypeMetadata2();
    v42 = *(v41 + 48);
    v43 = v51;
    v38(v51, v46, v2);
    (*(*(v40 - 8) + 32))(v43 + v42, v39, v40);
    v32 = v43;
    v33 = 0;
    v31 = v41;
  }

  return __swift_storeEnumTagSinglePayload(v32, v33, 1, v31);
}

uint64_t sub_1D5533674(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[1];
  sub_1D4EA7420(*a1);
  return v1;
}

uint64_t sub_1D55336C0(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for LRUDictionary.Container();
  return sub_1D5615CE8();
}

uint64_t sub_1D5533714@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = sub_1D55331E8(a1);
  v12 = v11;
  v14 = v13;
  sub_1D4EA7420(v5);
  v22 = v7;
  sub_1D55338B8(&v22);
  v21 = v8;
  v15 = *(a1 + 16);
  v16 = sub_1D5615D18();
  (*(*(v16 - 8) + 8))(&v21, v16);
  v20 = v9;
  v19 = *(a1 + 24);
  type metadata accessor for LRUDictionary.Container();
  v17 = sub_1D5615D18();
  result = (*(*(v17 - 8) + 8))(&v20, v17);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = 0;
  return result;
}

uint64_t sub_1D5533848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7F8250, &qword_1D5671870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D55338B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7F8250, &qword_1D5671870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5533920()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5533974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v61 = a4;
  v60 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v47 - v10;
  v11 = sub_1D56131C8();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v47 - v18;
  v20 = sub_1D5613838();
  v51 = *(v20 - 8);
  v21 = *(v51 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v50 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v57 = &v47 - v24;
  v65 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8368, &qword_1D5671AA0);
  v26 = v25[20];
  v27 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  *(a5 + v26) = v27;
  *a5 = a1;
  v28 = v25[17];
  sub_1D4FB8150();
  *(a5 + v25[18]) = a3;
  *(a5 + v25[19]) = v61;
  v29 = v27;

  v59 = a3;

  v58 = a1;
  v56 = a5;
  sub_1D55366EC(a1, sub_1D555A6A4, &qword_1EC7F8368, &qword_1D5671AA0);
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1D554B9B4(v19, &qword_1EC7EA978);
  }

  else
  {
    v30 = v51;
    v31 = v57;
    (*(v51 + 32))(v57, v19, v20);
    v63 = v20;
    v64 = MEMORY[0x1E6976BE0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v62);
    v33 = *(v30 + 16);
    v33(boxed_opaque_existential_0, v31, v20);
    v34 = __swift_project_boxed_opaque_existential_1(v62, v63);
    v35 = *MEMORY[0x1E6976988];
    v37 = v54;
    v36 = v55;
    v38 = *(v54 + 104);
    v48 = v29;
    v39 = v52;
    v38(v52, v35, v55);
    (*(v37 + 16))(v53, v39, v36);
    v33(v50, v34, v20);
    sub_1D4ECB9C0();
    v41 = v40;
    (*(v37 + 8))(v39, v36);
    v29 = v48;
    [v48 setReferralObject_];

    __swift_destroy_boxed_opaque_existential_1(v62);
    (*(v30 + 8))(v57, v20);
  }

  sub_1D526EBEC();
  v43 = v42;

  if (*(v43 + 16))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC88, &qword_1D5634788);
    sub_1D4E62A60(&qword_1EC7EFC90, &qword_1EC7EFC88, &qword_1D5634788);
    v44 = v49;
    sub_1D5615018();

    v45 = type metadata accessor for TVSeason();
    __swift_getEnumTagSinglePayload(v44, 1, v45);
    sub_1D554B9B4(v44, &qword_1EC7EA878);
  }

  sub_1D5536938(v43, &qword_1EC7F8368, &qword_1D5671AA0);

  [v29 setShouldLibraryAdd_];

  return sub_1D554B9B4(v60, &qword_1EC7EA978);
}

uint64_t sub_1D5533F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v61 = a4;
  v60 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v47 - v10;
  v11 = sub_1D56131C8();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v47 - v18;
  v20 = sub_1D5613838();
  v51 = *(v20 - 8);
  v21 = *(v51 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v50 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v57 = &v47 - v24;
  v65 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8360, &qword_1D5671A80);
  v26 = v25[20];
  v27 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  *(a5 + v26) = v27;
  *a5 = a1;
  v28 = v25[17];
  sub_1D4FB8150();
  *(a5 + v25[18]) = a3;
  *(a5 + v25[19]) = v61;
  v29 = v27;

  v59 = a3;

  v58 = a1;
  v56 = a5;
  sub_1D55366EC(a1, sub_1D555A800, &qword_1EC7F8360, &qword_1D5671A80);
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1D554B9B4(v19, &qword_1EC7EA978);
  }

  else
  {
    v30 = v51;
    v31 = v57;
    (*(v51 + 32))(v57, v19, v20);
    v63 = v20;
    v64 = MEMORY[0x1E6976BE0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v62);
    v33 = *(v30 + 16);
    v33(boxed_opaque_existential_0, v31, v20);
    v34 = __swift_project_boxed_opaque_existential_1(v62, v63);
    v35 = *MEMORY[0x1E6976988];
    v37 = v54;
    v36 = v55;
    v38 = *(v54 + 104);
    v48 = v29;
    v39 = v52;
    v38(v52, v35, v55);
    (*(v37 + 16))(v53, v39, v36);
    v33(v50, v34, v20);
    sub_1D4ECB9C0();
    v41 = v40;
    (*(v37 + 8))(v39, v36);
    v29 = v48;
    [v48 setReferralObject_];

    __swift_destroy_boxed_opaque_existential_1(v62);
    (*(v30 + 8))(v57, v20);
  }

  sub_1D526EBEC();
  v43 = v42;

  if (*(v43 + 16))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EFC80, &unk_1D5634770);
    sub_1D4E62A60(&qword_1EDD527F8, &qword_1EC7EFC80, &unk_1D5634770);
    v44 = v49;
    sub_1D5615018();

    v45 = type metadata accessor for TVEpisode();
    __swift_getEnumTagSinglePayload(v44, 1, v45);
    sub_1D554B9B4(v44, &qword_1EC7EA880);
  }

  sub_1D5536938(v43, &qword_1EC7F8360, &qword_1D5671A80);

  [v29 setShouldLibraryAdd_];

  return sub_1D554B9B4(v60, &qword_1EC7EA978);
}

uint64_t sub_1D55344BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v58 = a4;
  v57 = a2;
  v8 = sub_1D56131C8();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v46 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - v17;
  v19 = sub_1D5613838();
  v48 = *(v19 - 8);
  v20 = *(v48 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v47 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v53 = &v44 - v23;
  v62 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8358, &qword_1D5671A60);
  v25 = v24[20];
  v26 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  *(a5 + v25) = v26;
  *a5 = a1;
  v27 = v24[17];
  sub_1D4FB8150();
  *(a5 + v24[18]) = a3;
  *(a5 + v24[19]) = v58;
  v56 = v26;

  v54 = a3;

  v55 = a1;
  v28 = a1;
  v29 = v19;
  sub_1D55366EC(v28, sub_1D555A95C, &qword_1EC7F8358, &qword_1D5671A60);
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_1D554B9B4(v18, &qword_1EC7EA978);
  }

  else
  {
    v30 = v48;
    v31 = v53;
    (*(v48 + 32))(v53, v18, v19);
    v60 = v19;
    v61 = MEMORY[0x1E6976BE0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v59);
    v45 = *(v30 + 16);
    v45(boxed_opaque_existential_0, v31, v19);
    v44 = __swift_project_boxed_opaque_existential_1(v59, v60);
    v34 = v51;
    v33 = v52;
    v35 = v49;
    (*(v51 + 104))(v49, *MEMORY[0x1E6976988], v52);
    (*(v34 + 16))(v50, v35, v33);
    v45(v47, v44, v29);
    v36 = v56;
    sub_1D4ECB9C0();
    v38 = v37;
    (*(v34 + 8))(v35, v33);
    [v36 setReferralObject_];

    __swift_destroy_boxed_opaque_existential_1(v59);
    (*(v30 + 8))(v53, v29);
  }

  sub_1D526EBEC();
  v40 = v39;

  if (*(v40 + 16))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6EC0, &qword_1D5667838);
    sub_1D4E62A60(&qword_1EC7F71B8, &qword_1EC7F6EC0, &qword_1D5667838);
    v41 = v46;
    sub_1D5615018();

    __swift_getEnumTagSinglePayload(v41, 1, v29);
    sub_1D554B9B4(v41, &qword_1EC7EA978);
  }

  sub_1D5536938(v40, &qword_1EC7F8358, &qword_1D5671A60);

  v42 = v56;
  [v56 setShouldLibraryAdd_];

  return sub_1D554B9B4(v57, &qword_1EC7EA978);
}

uint64_t sub_1D5534A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v87 = a4;
  v86 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v70 = &v65 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v69 = *(v71 - 8);
  v11 = *(v69 + 64);
  v12 = MEMORY[0x1EEE9AC00](v71);
  v67 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v72 = &v65 - v17;
  v73 = sub_1D5614898();
  v85 = *(v73 - 8);
  v18 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v84 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D56131C8();
  v78 = *(v20 - 8);
  v79 = v20;
  v21 = *(v78 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v77 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v76 = &v65 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v65 - v27;
  v29 = sub_1D5613838();
  v75 = *(v29 - 8);
  v30 = *(v75 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v74 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v80 = &v65 - v33;
  v91 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8350, &qword_1D5671A40);
  v35 = v34[20];
  v36 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  *(a5 + v35) = v36;
  *a5 = a1;
  v37 = v34[17];
  sub_1D4FB8150();
  *(a5 + v34[18]) = v86;
  *(a5 + v34[19]) = v87;
  v38 = v36;

  v81 = a1;
  v83 = a5;
  sub_1D55366EC(a1, sub_1D555A97C, &qword_1EC7F8350, &qword_1D5671A40);
  v82 = a2;
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_1D554B9B4(v28, &qword_1EC7EA978);
  }

  else
  {
    v66 = v38;
    v39 = v75;
    v40 = v80;
    (*(v75 + 32))(v80, v28, v29);
    v89 = v29;
    v90 = MEMORY[0x1E6976BE0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v88);
    v42 = *(v39 + 16);
    v42(boxed_opaque_existential_0, v40, v29);
    v43 = __swift_project_boxed_opaque_existential_1(v88, v89);
    v45 = v78;
    v44 = v79;
    v46 = v76;
    (*(v78 + 104))(v76, *MEMORY[0x1E6976988], v79);
    (*(v45 + 16))(v77, v46, v44);
    v42(v74, v43, v29);
    sub_1D4ECB9C0();
    v48 = v47;
    (*(v45 + 8))(v46, v44);
    v49 = v66;
    [v66 setReferralObject_];

    __swift_destroy_boxed_opaque_existential_1(v88);
    (*(v39 + 8))(v80, v29);
    v38 = v49;
  }

  sub_1D526EBEC();
  v51 = v50;

  v52 = v84;
  v53 = v85;
  if (*(v51 + 16))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8300, &qword_1D5671938);
    sub_1D4E62A60(&qword_1EC7F8308, &qword_1EC7F8300, &qword_1D5671938);
    v54 = v72;
    sub_1D5615018();

    v55 = v73;
    if (__swift_getEnumTagSinglePayload(v54, 1, v73) == 1)
    {
      v56 = &unk_1EC7F1990;
      v57 = v54;
    }

    else
    {
      (*(v53 + 32))(v52, v54, v55);
      v58 = v70;
      sub_1D5614858();
      v59 = v71;
      if (__swift_getEnumTagSinglePayload(v58, 1, v71) != 1)
      {

        v60 = v58;
        v61 = v69;
        v62 = v68;
        (*(v69 + 32))(v68, v60, v59);
        (*(v61 + 16))(v67, v62, v59);
        sub_1D4E62A60(&qword_1EDD53B90, &unk_1EC7F6A30, &qword_1D561C4C0);
        sub_1D5614FB8();
        sub_1D526EC0C();
        v51 = v63;

        (*(v61 + 8))(v62, v59);
        (*(v53 + 8))(v52, v55);
        goto LABEL_12;
      }

      (*(v53 + 8))(v52, v55);
      v56 = &qword_1EC7EC450;
      v57 = v58;
    }

    sub_1D554B9B4(v57, v56);
  }

LABEL_12:
  sub_1D5536938(v51, &qword_1EC7F8350, &qword_1D5671A40);

  [v38 setShouldLibraryAdd_];

  return sub_1D554B9B4(v82, &qword_1EC7EA978);
}

uint64_t sub_1D55352EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v61 = a4;
  v60 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v47 - v10;
  v11 = sub_1D56131C8();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v47 - v18;
  v20 = sub_1D5613838();
  v51 = *(v20 - 8);
  v21 = *(v51 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v50 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v57 = &v47 - v24;
  v65 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8348, &qword_1D5671A20);
  v26 = v25[20];
  v27 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  *(a5 + v26) = v27;
  *a5 = a1;
  v28 = v25[17];
  sub_1D4FB8150();
  *(a5 + v25[18]) = a3;
  *(a5 + v25[19]) = v61;
  v29 = v27;

  v59 = a3;

  v58 = a1;
  v56 = a5;
  sub_1D55366EC(a1, sub_1D555A99C, &qword_1EC7F8348, &qword_1D5671A20);
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1D554B9B4(v19, &qword_1EC7EA978);
  }

  else
  {
    v30 = v51;
    v31 = v57;
    (*(v51 + 32))(v57, v19, v20);
    v63 = v20;
    v64 = MEMORY[0x1E6976BE0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v62);
    v33 = *(v30 + 16);
    v33(boxed_opaque_existential_0, v31, v20);
    v34 = __swift_project_boxed_opaque_existential_1(v62, v63);
    v35 = *MEMORY[0x1E6976988];
    v37 = v54;
    v36 = v55;
    v38 = *(v54 + 104);
    v48 = v29;
    v39 = v52;
    v38(v52, v35, v55);
    (*(v37 + 16))(v53, v39, v36);
    v33(v50, v34, v20);
    sub_1D4ECB9C0();
    v41 = v40;
    (*(v37 + 8))(v39, v36);
    v29 = v48;
    [v48 setReferralObject_];

    __swift_destroy_boxed_opaque_existential_1(v62);
    (*(v30 + 8))(v57, v20);
  }

  sub_1D526EBEC();
  v43 = v42;

  if (*(v43 + 16))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8310, &qword_1D5671940);
    sub_1D4E62A60(&qword_1EC7F8318, &qword_1EC7F8310, &qword_1D5671940);
    v44 = v49;
    sub_1D5615018();

    v45 = sub_1D560EEA8();
    __swift_getEnumTagSinglePayload(v44, 1, v45);
    sub_1D554B9B4(v44, &qword_1EC7EA990);
  }

  sub_1D5536938(v43, &qword_1EC7F8348, &qword_1D5671A20);

  [v29 setShouldLibraryAdd_];

  return sub_1D554B9B4(v60, &qword_1EC7EA978);
}

uint64_t sub_1D5535890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v61 = a4;
  v60 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v47 - v10;
  v11 = sub_1D56131C8();
  v54 = *(v11 - 8);
  v55 = v11;
  v12 = *(v54 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v53 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v47 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v47 - v18;
  v20 = sub_1D5613838();
  v51 = *(v20 - 8);
  v21 = *(v51 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v50 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v57 = &v47 - v24;
  v65 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8340, &qword_1D5671A00);
  v26 = v25[20];
  v27 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  *(a5 + v26) = v27;
  *a5 = a1;
  v28 = v25[17];
  sub_1D4FB8150();
  *(a5 + v25[18]) = a3;
  *(a5 + v25[19]) = v61;
  v29 = v27;

  v59 = a3;

  v58 = a1;
  v56 = a5;
  sub_1D55366EC(a1, sub_1D555A9BC, &qword_1EC7F8340, &qword_1D5671A00);
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1D554B9B4(v19, &qword_1EC7EA978);
  }

  else
  {
    v30 = v51;
    v31 = v57;
    (*(v51 + 32))(v57, v19, v20);
    v63 = v20;
    v64 = MEMORY[0x1E6976BE0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v62);
    v33 = *(v30 + 16);
    v33(boxed_opaque_existential_0, v31, v20);
    v34 = __swift_project_boxed_opaque_existential_1(v62, v63);
    v35 = *MEMORY[0x1E6976988];
    v37 = v54;
    v36 = v55;
    v38 = *(v54 + 104);
    v48 = v29;
    v39 = v52;
    v38(v52, v35, v55);
    (*(v37 + 16))(v53, v39, v36);
    v33(v50, v34, v20);
    sub_1D4ECB9C0();
    v41 = v40;
    (*(v37 + 8))(v39, v36);
    v29 = v48;
    [v48 setReferralObject_];

    __swift_destroy_boxed_opaque_existential_1(v62);
    (*(v30 + 8))(v57, v20);
  }

  sub_1D526EBEC();
  v43 = v42;

  if (*(v43 + 16))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4420, &qword_1D5653280);
    sub_1D4E62A60(&qword_1EDD52880, &qword_1EC7F4420, &qword_1D5653280);
    v44 = v49;
    sub_1D5615018();

    v45 = type metadata accessor for MusicMovie();
    __swift_getEnumTagSinglePayload(v44, 1, v45);
    sub_1D554B9B4(v44, &qword_1EC7EA890);
  }

  sub_1D5536938(v43, &qword_1EC7F8340, &qword_1D5671A00);

  [v29 setShouldLibraryAdd_];

  return sub_1D554B9B4(v60, &qword_1EC7EA978);
}

uint64_t sub_1D5535E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v87 = a4;
  v86 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v70 = &v65 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  v69 = *(v71 - 8);
  v11 = *(v69 + 64);
  v12 = MEMORY[0x1EEE9AC00](v71);
  v67 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v72 = &v65 - v17;
  v73 = sub_1D5613AF8();
  v85 = *(v73 - 8);
  v18 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v84 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D56131C8();
  v78 = *(v20 - 8);
  v79 = v20;
  v21 = *(v78 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v77 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v76 = &v65 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v65 - v27;
  v29 = sub_1D5613838();
  v75 = *(v29 - 8);
  v30 = *(v75 + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v74 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v80 = &v65 - v33;
  v91 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8338, &qword_1D56719E0);
  v35 = v34[20];
  v36 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryImportChangeRequest) init];
  *(a5 + v35) = v36;
  *a5 = a1;
  v37 = v34[17];
  sub_1D4FB8150();
  *(a5 + v34[18]) = v86;
  *(a5 + v34[19]) = v87;
  v38 = v36;

  v81 = a1;
  v83 = a5;
  sub_1D55366EC(a1, sub_1D555AB18, &qword_1EC7F8338, &qword_1D56719E0);
  v82 = a2;
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_1D554B9B4(v28, &qword_1EC7EA978);
  }

  else
  {
    v66 = v38;
    v39 = v75;
    v40 = v80;
    (*(v75 + 32))(v80, v28, v29);
    v89 = v29;
    v90 = MEMORY[0x1E6976BE0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v88);
    v42 = *(v39 + 16);
    v42(boxed_opaque_existential_0, v40, v29);
    v43 = __swift_project_boxed_opaque_existential_1(v88, v89);
    v45 = v78;
    v44 = v79;
    v46 = v76;
    (*(v78 + 104))(v76, *MEMORY[0x1E6976988], v79);
    (*(v45 + 16))(v77, v46, v44);
    v42(v74, v43, v29);
    sub_1D4ECB9C0();
    v48 = v47;
    (*(v45 + 8))(v46, v44);
    v49 = v66;
    [v66 setReferralObject_];

    __swift_destroy_boxed_opaque_existential_1(v88);
    (*(v39 + 8))(v80, v29);
    v38 = v49;
  }

  sub_1D526EBEC();
  v51 = v50;

  v52 = v84;
  v53 = v85;
  if (*(v51 + 16))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8328, &qword_1D5671948);
    sub_1D4E62A60(&qword_1EC7F8330, &qword_1EC7F8328, &qword_1D5671948);
    v54 = v72;
    sub_1D5615018();

    v55 = v73;
    if (__swift_getEnumTagSinglePayload(v54, 1, v73) == 1)
    {
      v56 = &qword_1EC7EEC30;
      v57 = v54;
    }

    else
    {
      (*(v53 + 32))(v52, v54, v55);
      v58 = v70;
      sub_1D5613AC8();
      v59 = v71;
      if (__swift_getEnumTagSinglePayload(v58, 1, v71) != 1)
      {

        v60 = v58;
        v61 = v69;
        v62 = v68;
        (*(v69 + 32))(v68, v60, v59);
        (*(v61 + 16))(v67, v62, v59);
        sub_1D4E62A60(&qword_1EC7EC460, &qword_1EC7EA4E8, &unk_1D561C470);
        sub_1D5614FB8();
        sub_1D526EBEC();
        v51 = v63;

        (*(v61 + 8))(v62, v59);
        (*(v53 + 8))(v52, v55);
        goto LABEL_12;
      }

      (*(v53 + 8))(v52, v55);
      v56 = &qword_1EC7EC458;
      v57 = v58;
    }

    sub_1D554B9B4(v57, v56);
  }

LABEL_12:
  sub_1D5536938(v51, &qword_1EC7F8338, &qword_1D56719E0);

  [v38 setShouldLibraryAdd_];

  return sub_1D554B9B4(v82, &qword_1EC7EA978);
}

void sub_1D55366EC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4)
{
  v9 = sub_1D56131C8();
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = a2(a1);
  if (v13)
  {
    v14 = v13;
    v15 = *(v13 + 16);
    if (v15)
    {
      v26 = a3;
      v28 = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v16 = v14 + 32;
      v17 = *MEMORY[0x1E6976988];
      do
      {
        sub_1D4E628D4(v16, v27);
        __swift_project_boxed_opaque_existential_1(v27, v27[3]);
        v18 = OUTLINED_FUNCTION_178_6();
        v19(v18);
        v20 = OUTLINED_FUNCTION_64_35();
        sub_1D5159364(v20, v21, v22);
        v23 = OUTLINED_FUNCTION_192_4();
        v24(v23);
        __swift_destroy_boxed_opaque_existential_1(v27);
        sub_1D5615C88();
        v14 = *(v28 + 16);
        sub_1D5615CC8();
        sub_1D5615CD8();
        sub_1D5615C98();
        v16 += 40;
        --v15;
      }

      while (v15);

      a3 = v26;
    }

    else
    {
    }

    v25 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) + 80));
    sub_1D4F688F0();
    OUTLINED_FUNCTION_69_4();
    sub_1D5615158();
    OUTLINED_FUNCTION_30_44();
    [v25 setModelObjects_];
  }

  else
  {
    sub_1D5615E08();
    __break(1u);
  }
}

void sub_1D5536938(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_1D56131C8();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  sub_1D555A4A8();
  if (v10)
  {
    v11 = v10;
    v12 = v10[2];
    if (v12)
    {
      v24 = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v13 = v11 + 32;
      v14 = *MEMORY[0x1E6976988];
      do
      {
        sub_1D4E628D4(v13, v23);
        __swift_project_boxed_opaque_existential_1(v23, v23[3]);
        v15 = OUTLINED_FUNCTION_178_6();
        v16(v15);
        v17 = OUTLINED_FUNCTION_64_35();
        sub_1D5159364(v17, v18, v19);
        v20 = OUTLINED_FUNCTION_192_4();
        v21(v20);
        __swift_destroy_boxed_opaque_existential_1(v23);
        sub_1D5615C88();
        v11 = *(v24 + 16);
        sub_1D5615CC8();
        sub_1D5615CD8();
        sub_1D5615C98();
        v13 += 40;
        --v12;
      }

      while (v12);
    }

    else
    {
    }

    v22 = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) + 80));
    sub_1D4F688F0();
    OUTLINED_FUNCTION_69_4();
    sub_1D5615158();
    OUTLINED_FUNCTION_30_44();
    [v22 setRelatedModelObjects_];
  }

  else
  {
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t sub_1D5536B7C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8338, &qword_1D56719E0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1D560C368();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5536CB8, 0, 0);
}

uint64_t sub_1D5536E60()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D55370BC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_47();
  sub_1D554B9B4(v2, &qword_1EC7F8338);
  sub_1D554B9B4(v0, &qword_1EC7EA978);

  OUTLINED_FUNCTION_55();
  v4 = *(v1 + 128);

  return v3();
}

uint64_t sub_1D553716C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8340, &qword_1D5671A00) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1D560C368();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D55372A8, 0, 0);
}

uint64_t sub_1D5537450()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D55376AC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_47();
  sub_1D554B9B4(v2, &qword_1EC7F8340);
  sub_1D554B9B4(v0, &qword_1EC7EA978);

  OUTLINED_FUNCTION_55();
  v4 = *(v1 + 128);

  return v3();
}

uint64_t sub_1D553775C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8348, &qword_1D5671A20) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1D560C368();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5537898, 0, 0);
}

uint64_t sub_1D5537A40()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D5537C9C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_47();
  sub_1D554B9B4(v2, &qword_1EC7F8348);
  sub_1D554B9B4(v0, &qword_1EC7EA978);

  OUTLINED_FUNCTION_55();
  v4 = *(v1 + 128);

  return v3();
}

uint64_t sub_1D5537D4C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8350, &qword_1D5671A40) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1D560C368();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5537E88, 0, 0);
}

uint64_t sub_1D5538030()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D553828C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_47();
  sub_1D554B9B4(v2, &qword_1EC7F8350);
  sub_1D554B9B4(v0, &qword_1EC7EA978);

  OUTLINED_FUNCTION_55();
  v4 = *(v1 + 128);

  return v3();
}

uint64_t sub_1D553833C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8358, &qword_1D5671A60) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1D560C368();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5538478, 0, 0);
}

uint64_t sub_1D5538620()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D553887C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_47();
  sub_1D554B9B4(v2, &qword_1EC7F8358);
  sub_1D554B9B4(v0, &qword_1EC7EA978);

  OUTLINED_FUNCTION_55();
  v4 = *(v1 + 128);

  return v3();
}

uint64_t sub_1D553892C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8360, &qword_1D5671A80) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1D560C368();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5538A68, 0, 0);
}

uint64_t sub_1D5538C10()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D5538E6C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_47();
  sub_1D554B9B4(v2, &qword_1EC7F8360);
  sub_1D554B9B4(v0, &qword_1EC7EA978);

  OUTLINED_FUNCTION_55();
  v4 = *(v1 + 128);

  return v3();
}

uint64_t sub_1D5538F1C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8368, &qword_1D5671AA0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1D560C368();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5539058, 0, 0);
}

uint64_t sub_1D5539200()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D553945C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_45_47();
  sub_1D554B9B4(v2, &qword_1EC7F8368);
  sub_1D554B9B4(v0, &qword_1EC7EA978);

  OUTLINED_FUNCTION_55();
  v4 = *(v1 + 128);

  return v3();
}

uint64_t sub_1D553950C(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8368, &qword_1D5671AA0);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D55395E0, 0, 0);
}

uint64_t sub_1D55395E0()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v2 = OUTLINED_FUNCTION_52_39();
  OUTLINED_FUNCTION_134_10(v2);
  OUTLINED_FUNCTION_181_7();
  OUTLINED_FUNCTION_152_10();
  v4 = *(v1 + v3);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_151_9();
  OUTLINED_FUNCTION_132_12();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  OUTLINED_FUNCTION_16_98(v6);
  OUTLINED_FUNCTION_150_12(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_15_96();
  OUTLINED_FUNCTION_133_10(v7, sel_performLibraryImportChangeWithRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1D55396B0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D55397AC()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_131_7();

  OUTLINED_FUNCTION_76_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_86_25();
  OUTLINED_FUNCTION_180_6();
  OUTLINED_FUNCTION_71_27();
  OUTLINED_FUNCTION_179_9();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D5539860(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8360, &qword_1D5671A80);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5539934, 0, 0);
}

uint64_t sub_1D5539934()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v2 = OUTLINED_FUNCTION_52_39();
  OUTLINED_FUNCTION_134_10(v2);
  OUTLINED_FUNCTION_181_7();
  OUTLINED_FUNCTION_152_10();
  v4 = *(v1 + v3);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_151_9();
  OUTLINED_FUNCTION_132_12();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  OUTLINED_FUNCTION_16_98(v6);
  OUTLINED_FUNCTION_150_12(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_15_96();
  OUTLINED_FUNCTION_133_10(v7, sel_performLibraryImportChangeWithRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1D5539A04()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5539B00()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_131_7();

  OUTLINED_FUNCTION_76_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_86_25();
  OUTLINED_FUNCTION_180_6();
  OUTLINED_FUNCTION_71_27();
  OUTLINED_FUNCTION_179_9();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D5539BB4(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8358, &qword_1D5671A60);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5539C88, 0, 0);
}

uint64_t sub_1D5539C88()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v2 = OUTLINED_FUNCTION_52_39();
  OUTLINED_FUNCTION_134_10(v2);
  OUTLINED_FUNCTION_181_7();
  OUTLINED_FUNCTION_152_10();
  v4 = *(v1 + v3);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_151_9();
  OUTLINED_FUNCTION_132_12();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  OUTLINED_FUNCTION_16_98(v6);
  OUTLINED_FUNCTION_150_12(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_15_96();
  OUTLINED_FUNCTION_133_10(v7, sel_performLibraryImportChangeWithRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1D5539D58()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D5539E54()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_131_7();

  OUTLINED_FUNCTION_76_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_86_25();
  OUTLINED_FUNCTION_180_6();
  OUTLINED_FUNCTION_71_27();
  OUTLINED_FUNCTION_179_9();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D5539F08(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8350, &qword_1D5671A40);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5539FDC, 0, 0);
}

uint64_t sub_1D5539FDC()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v2 = OUTLINED_FUNCTION_52_39();
  OUTLINED_FUNCTION_134_10(v2);
  OUTLINED_FUNCTION_181_7();
  OUTLINED_FUNCTION_152_10();
  v4 = *(v1 + v3);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_151_9();
  OUTLINED_FUNCTION_132_12();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  OUTLINED_FUNCTION_16_98(v6);
  OUTLINED_FUNCTION_150_12(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_15_96();
  OUTLINED_FUNCTION_133_10(v7, sel_performLibraryImportChangeWithRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1D553A0AC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D553A1A8()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_131_7();

  OUTLINED_FUNCTION_76_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_86_25();
  OUTLINED_FUNCTION_180_6();
  OUTLINED_FUNCTION_71_27();
  OUTLINED_FUNCTION_179_9();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D553A25C(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8348, &qword_1D5671A20);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553A330, 0, 0);
}

uint64_t sub_1D553A330()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v2 = OUTLINED_FUNCTION_52_39();
  OUTLINED_FUNCTION_134_10(v2);
  OUTLINED_FUNCTION_181_7();
  OUTLINED_FUNCTION_152_10();
  v4 = *(v1 + v3);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_151_9();
  OUTLINED_FUNCTION_132_12();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  OUTLINED_FUNCTION_16_98(v6);
  OUTLINED_FUNCTION_150_12(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_15_96();
  OUTLINED_FUNCTION_133_10(v7, sel_performLibraryImportChangeWithRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1D553A400()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D553A4FC()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_131_7();

  OUTLINED_FUNCTION_76_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_86_25();
  OUTLINED_FUNCTION_180_6();
  OUTLINED_FUNCTION_71_27();
  OUTLINED_FUNCTION_179_9();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D553A5B0()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();

  OUTLINED_FUNCTION_55();
  v5 = v0[26];

  return v4();
}

uint64_t sub_1D553A624(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8340, &qword_1D5671A00);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553A6F8, 0, 0);
}

uint64_t sub_1D553A6F8()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v2 = OUTLINED_FUNCTION_52_39();
  OUTLINED_FUNCTION_134_10(v2);
  OUTLINED_FUNCTION_181_7();
  OUTLINED_FUNCTION_152_10();
  v4 = *(v1 + v3);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_151_9();
  OUTLINED_FUNCTION_132_12();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  OUTLINED_FUNCTION_16_98(v6);
  OUTLINED_FUNCTION_150_12(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_15_96();
  OUTLINED_FUNCTION_133_10(v7, sel_performLibraryImportChangeWithRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1D553A7C8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D553A8C4()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_131_7();

  OUTLINED_FUNCTION_76_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_86_25();
  OUTLINED_FUNCTION_180_6();
  OUTLINED_FUNCTION_71_27();
  OUTLINED_FUNCTION_179_9();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D553A978(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8338, &qword_1D56719E0);
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v2[23] = *(v4 + 64);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553AA4C, 0, 0);
}

uint64_t sub_1D553AA4C()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v2 = OUTLINED_FUNCTION_52_39();
  OUTLINED_FUNCTION_134_10(v2);
  OUTLINED_FUNCTION_181_7();
  OUTLINED_FUNCTION_152_10();
  v4 = *(v1 + v3);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_151_9();
  OUTLINED_FUNCTION_132_12();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4548, &qword_1D5653F60);
  OUTLINED_FUNCTION_16_98(v6);
  OUTLINED_FUNCTION_150_12(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_15_96();
  OUTLINED_FUNCTION_133_10(v7, sel_performLibraryImportChangeWithRequest_completionHandler_);
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DEC8](v8);
}

uint64_t sub_1D553AB1C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D553AC18()
{
  OUTLINED_FUNCTION_377();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_131_7();

  OUTLINED_FUNCTION_76_1();
  sub_1D4FB8150();
  OUTLINED_FUNCTION_86_25();
  OUTLINED_FUNCTION_180_6();
  OUTLINED_FUNCTION_71_27();
  OUTLINED_FUNCTION_179_9();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_376();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D553ACCC(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8338, &qword_1D56719E0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1D560C368();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553AE08, 0, 0);
}

uint64_t sub_1D553AFB0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D553B20C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8340, &qword_1D5671A00) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1D560C368();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553B348, 0, 0);
}

uint64_t sub_1D553B4F0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D553B74C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8348, &qword_1D5671A20) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1D560C368();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553B888, 0, 0);
}

uint64_t sub_1D553BA30()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D553BC8C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8350, &qword_1D5671A40) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1D560C368();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553BDC8, 0, 0);
}

uint64_t sub_1D553BF70()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D553C1CC(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8358, &qword_1D5671A60) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1D560C368();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553C308, 0, 0);
}

uint64_t sub_1D553C4B0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D553C70C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8360, &qword_1D5671A80) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1D560C368();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553C848, 0, 0);
}

uint64_t sub_1D553C9F0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D553CC4C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8368, &qword_1D5671AA0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1D560C368();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D553CD88, 0, 0);
}

uint64_t sub_1D553CF30()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D553D18C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = OUTLINED_FUNCTION_69_4();

    return sub_1D4F23514(v6, v7);
  }

  else
  {
    sub_1D5615168();
    v9 = OUTLINED_FUNCTION_69_4();

    return sub_1D4F23510(v9, v10);
  }
}

uint64_t sub_1D553D21C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D553D23C, 0, 0);
}

uint64_t sub_1D553D23C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_148_10();
  sub_1D526F8A8();
  OUTLINED_FUNCTION_153_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_85_24(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_53_37(v2);

  return sub_1D542C85C();
}

uint64_t sub_1D553D2C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D553D2E8, 0, 0);
}

uint64_t sub_1D553D2E8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_148_10();
  sub_1D526FA14();
  OUTLINED_FUNCTION_153_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_85_24(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_53_37(v2);

  return sub_1D542C85C();
}

uint64_t sub_1D553D374(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D553D394, 0, 0);
}

uint64_t sub_1D553D394()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_148_10();
  sub_1D526FB80();
  OUTLINED_FUNCTION_153_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_85_24(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_53_37(v2);

  return sub_1D542C85C();
}

uint64_t sub_1D553D420(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D553D440, 0, 0);
}

uint64_t sub_1D553D440()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_148_10();
  sub_1D526F59C();
  OUTLINED_FUNCTION_153_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_85_24(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_53_37(v2);

  return sub_1D542C85C();
}

uint64_t sub_1D553D4CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D553D4EC, 0, 0);
}

uint64_t sub_1D553D4EC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_148_10();
  sub_1D526FBA0();
  OUTLINED_FUNCTION_153_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_85_24(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_53_37(v2);

  return sub_1D542C85C();
}

uint64_t sub_1D553D578()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t sub_1D553D674(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D553D694, 0, 0);
}

uint64_t sub_1D553D694()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_148_10();
  sub_1D526FBC0();
  OUTLINED_FUNCTION_153_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_85_24(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_53_37(v2);

  return sub_1D542C85C();
}

uint64_t sub_1D553D720(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D553D740, 0, 0);
}

uint64_t sub_1D553D740()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_148_10();
  sub_1D526FD2C();
  OUTLINED_FUNCTION_153_6(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_85_24(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_53_37(v2);

  return sub_1D542C85C();
}

uint64_t MusicLibrary.add(_:)()
{
  OUTLINED_FUNCTION_60();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_127();
  v7 = type metadata accessor for TVSeason();
  v1[6] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_167();
  v1[9] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_176_5(v14);
  v15 = type metadata accessor for TVEpisode();
  v1[11] = v15;
  OUTLINED_FUNCTION_69(v15);
  v1[12] = v16;
  v18 = *(v17 + 64);
  v1[13] = OUTLINED_FUNCTION_167();
  v1[14] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  v1[15] = OUTLINED_FUNCTION_127();
  v22 = sub_1D5613838();
  v1[16] = v22;
  OUTLINED_FUNCTION_69(v22);
  v1[17] = v23;
  v25 = *(v24 + 64);
  v1[18] = OUTLINED_FUNCTION_167();
  v1[19] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  v1[20] = OUTLINED_FUNCTION_127();
  v29 = sub_1D5614898();
  v1[21] = v29;
  OUTLINED_FUNCTION_69(v29);
  v1[22] = v30;
  v32 = *(v31 + 64);
  v1[23] = OUTLINED_FUNCTION_167();
  v1[24] = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  v1[25] = OUTLINED_FUNCTION_127();
  v36 = sub_1D560EEA8();
  v1[26] = v36;
  OUTLINED_FUNCTION_69(v36);
  v1[27] = v37;
  v39 = *(v38 + 64);
  v1[28] = OUTLINED_FUNCTION_167();
  v1[29] = swift_task_alloc();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  v1[30] = OUTLINED_FUNCTION_127();
  v43 = type metadata accessor for MusicMovie();
  v1[31] = v43;
  OUTLINED_FUNCTION_69(v43);
  v1[32] = v44;
  v46 = *(v45 + 64);
  v1[33] = OUTLINED_FUNCTION_167();
  v1[34] = swift_task_alloc();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v47);
  v49 = *(v48 + 64);
  v1[35] = OUTLINED_FUNCTION_127();
  v50 = sub_1D5613AF8();
  v1[36] = v50;
  OUTLINED_FUNCTION_69(v50);
  v1[37] = v51;
  v53 = *(v52 + 64);
  v1[38] = OUTLINED_FUNCTION_167();
  v1[39] = swift_task_alloc();
  v54 = type metadata accessor for GenericMusicItem();
  v1[40] = v54;
  OUTLINED_FUNCTION_22(v54);
  v56 = *(v55 + 64);
  v1[41] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v57, v58, v59);
}

void sub_1D553DBE8()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  OUTLINED_FUNCTION_5_151();
  OUTLINED_FUNCTION_196_5();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = v0[41];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      v10 = v0[2];
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v11, v12);
      OUTLINED_FUNCTION_79_25();
      v13 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_56_0();
      (*(v14 + 104))();
      swift_willThrow();
      sub_1D554B9B4(v10, &qword_1EC7EA608);
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v9, v15);
      goto LABEL_3;
    case 7:
      v43 = v0[34];
      v44 = v0[32];
      OUTLINED_FUNCTION_4_157();
      OUTLINED_FUNCTION_159();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAEF8, &qword_1D561DCC8);
      v45 = OUTLINED_FUNCTION_58_39();
      v0[48] = v45;
      OUTLINED_FUNCTION_33_59(v45, xmmword_1D561C050);
      OUTLINED_FUNCTION_183_7();
      OUTLINED_FUNCTION_27_0(&unk_1D5671918);
      v31 = swift_task_alloc();
      v0[49] = v31;
      *v31 = v0;
      v32 = sub_1D553E5F4;
      goto LABEL_15;
    case 8:
      v21 = v0[29];
      v22 = v0[26];
      v23 = v0[27];
      OUTLINED_FUNCTION_62_40();
      v0[52] = v24;
      v0[53] = v25;
      v26 = OUTLINED_FUNCTION_76_1();
      v27(v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E0, &qword_1D5671908);
      v28 = OUTLINED_FUNCTION_48_43();
      v0[54] = v28;
      v29 = OUTLINED_FUNCTION_30_71(v28, xmmword_1D561C050);
      v30(v29);
      OUTLINED_FUNCTION_27_0(&unk_1D5671910);
      v31 = swift_task_alloc();
      v0[55] = v31;
      *v31 = v0;
      v32 = sub_1D553E8E0;
      goto LABEL_15;
    case 9:
      v46 = v0[24];
      v47 = v0[21];
      v48 = v0[22];
      OUTLINED_FUNCTION_62_40();
      v0[58] = v49;
      v0[59] = v50;
      v51 = OUTLINED_FUNCTION_76_1();
      v52(v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82D8, &qword_1D56718F8);
      v53 = OUTLINED_FUNCTION_48_43();
      v0[60] = v53;
      v54 = OUTLINED_FUNCTION_30_71(v53, xmmword_1D561C050);
      v55(v54);
      OUTLINED_FUNCTION_27_0(&unk_1D5671900);
      v31 = swift_task_alloc();
      v0[61] = v31;
      *v31 = v0;
      v32 = sub_1D553EBC4;
      goto LABEL_15;
    case 14:
      v67 = v0[19];
      v68 = v0[16];
      v0[64] = *(v0[17] + 32);
      OUTLINED_FUNCTION_114_10();
      v0[65] = v69;
      v70 = OUTLINED_FUNCTION_76_1();
      v71(v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACE0, &qword_1D561DAC0);
      v72 = OUTLINED_FUNCTION_48_43();
      v0[66] = v72;
      v73 = OUTLINED_FUNCTION_30_71(v72, xmmword_1D561C050);
      v74(v73);
      OUTLINED_FUNCTION_27_0(&unk_1D56718F0);
      v31 = swift_task_alloc();
      v0[67] = v31;
      *v31 = v0;
      v32 = sub_1D553EEA8;
      goto LABEL_15;
    case 16:
      v75 = v0[14];
      v76 = v0[12];
      OUTLINED_FUNCTION_2_196();
      OUTLINED_FUNCTION_159();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF08, &qword_1D561DCD8);
      v77 = OUTLINED_FUNCTION_58_39();
      v0[70] = v77;
      OUTLINED_FUNCTION_31_58(v77, xmmword_1D561C050);
      OUTLINED_FUNCTION_183_7();
      OUTLINED_FUNCTION_27_0(&unk_1D56718E8);
      v31 = swift_task_alloc();
      v0[71] = v31;
      *v31 = v0;
      v32 = sub_1D553F190;
      goto LABEL_15;
    case 17:
      v56 = v0[9];
      v57 = v0[7];
      OUTLINED_FUNCTION_3_203();
      OUTLINED_FUNCTION_159();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD90, &qword_1D561DB78);
      v58 = OUTLINED_FUNCTION_58_39();
      v0[74] = v58;
      OUTLINED_FUNCTION_32_64(v58, xmmword_1D561C050);
      OUTLINED_FUNCTION_183_7();
      OUTLINED_FUNCTION_27_0(&unk_1D56718E0);
      v31 = swift_task_alloc();
      v0[75] = v31;
      *v31 = v0;
      v32 = sub_1D553F47C;
      goto LABEL_15;
    case 21:
      v59 = v0[2];
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v9, v60);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v61, v62);
      v63 = OUTLINED_FUNCTION_12_57();
      OUTLINED_FUNCTION_194_9(v63, v64);
      v65 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_43_8();
      (*(v66 + 104))();
      swift_willThrow();
      sub_1D554B9B4(v59, &qword_1EC7EA608);
LABEL_3:
      OUTLINED_FUNCTION_24_73();
      v16 = v0[28];
      v17 = v0[24];
      v18 = v0[25];
      OUTLINED_FUNCTION_7_144();
      v80 = v0[8];
      v81 = v0[5];

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_97();

      __asm { BRAA            X1, X16 }

      return;
    default:
      v33 = v0[39];
      v34 = v0[36];
      v35 = v0[37];
      OUTLINED_FUNCTION_62_40();
      v0[42] = v36;
      v0[43] = v37;
      v38 = OUTLINED_FUNCTION_76_1();
      v39(v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E8, &qword_1D5671920);
      v40 = OUTLINED_FUNCTION_48_43();
      v0[44] = v40;
      v41 = OUTLINED_FUNCTION_30_71(v40, xmmword_1D561C050);
      v42(v41);
      OUTLINED_FUNCTION_27_0(&unk_1D5671928);
      v31 = swift_task_alloc();
      v0[45] = v31;
      *v31 = v0;
      v32 = sub_1D553E310;
LABEL_15:
      v31[1] = v32;
      OUTLINED_FUNCTION_189_7();
      OUTLINED_FUNCTION_97();

      __asm { BR              X1 }

      return;
  }
}

uint64_t sub_1D553E310()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 360);
  v8 = *(v6 + 352);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v4 + 368) = v0;

  if (!v0)
  {
    *(v4 + 376) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D553E430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[47];
  v26 = v24[39];
  v27 = v24[36];
  v28 = v24[37];
  v29 = v24[35];
  v30 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA708(v30);

  v31 = OUTLINED_FUNCTION_75_27();
  v32(v31);
  OUTLINED_FUNCTION_39_7();
  if (v33)
  {
    sub_1D554B9B4(v24[35], &qword_1EC7EEC30);
  }

  else
  {
    v35 = v24[42];
    v34 = v24[43];
    v36 = v24[40];
    v37 = v24[38];
    v39 = v24[35];
    v38 = v24[36];
    sub_1D554B9B4(v24[2], &qword_1EC7EA608);
    v40 = OUTLINED_FUNCTION_15_82();
    v35(v40);
    v41 = OUTLINED_FUNCTION_64_35();
    v35(v41);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  v42 = v24[41];
  v44 = v24[38];
  v43 = v24[39];
  v46 = v24[34];
  v45 = v24[35];
  v47 = v24[33];
  v49 = v24[29];
  v48 = v24[30];
  v50 = v24[28];
  v51 = v24[24];
  v52 = v24[25];
  OUTLINED_FUNCTION_7_144();
  OUTLINED_FUNCTION_96_17();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553E5F4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 392);
  v8 = *(v6 + 384);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v4 + 400) = v0;

  if (!v0)
  {
    *(v4 + 408) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D553E714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[51];
  v26 = v24[34];
  v28 = v24[30];
  v27 = v24[31];
  v29 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA720(v29);

  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v26, v30);
  OUTLINED_FUNCTION_39_7();
  if (v31)
  {
    sub_1D554B9B4(v24[30], &qword_1EC7EA890);
  }

  else
  {
    v32 = v24[40];
    v33 = v24[33];
    v34 = v24[30];
    v35 = v24[2];
    sub_1D554B9B4(v35, &qword_1EC7EA608);
    OUTLINED_FUNCTION_130_15();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_81_0();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_109();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_99_17(v35);
  }

  v36 = v24[41];
  v38 = v24[38];
  v37 = v24[39];
  v40 = v24[34];
  v39 = v24[35];
  v41 = v24[33];
  v43 = v24[29];
  v42 = v24[30];
  v44 = v24[28];
  v45 = v24[24];
  v46 = v24[25];
  OUTLINED_FUNCTION_7_144();
  OUTLINED_FUNCTION_96_17();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553E8E0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 440);
  v8 = *(v6 + 432);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v4 + 448) = v0;

  if (!v0)
  {
    *(v4 + 456) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D553EA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[57];
  v26 = v24[29];
  v27 = v24[26];
  v28 = v24[27];
  v29 = v24[25];
  v30 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA74C(v30);

  v31 = OUTLINED_FUNCTION_75_27();
  v32(v31);
  OUTLINED_FUNCTION_39_7();
  if (v33)
  {
    sub_1D554B9B4(v24[25], &qword_1EC7EA990);
  }

  else
  {
    v35 = v24[52];
    v34 = v24[53];
    v36 = v24[40];
    v37 = v24[28];
    v39 = v24[25];
    v38 = v24[26];
    sub_1D554B9B4(v24[2], &qword_1EC7EA608);
    v40 = OUTLINED_FUNCTION_15_82();
    v35(v40);
    v41 = OUTLINED_FUNCTION_64_35();
    v35(v41);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  v42 = v24[41];
  v44 = v24[38];
  v43 = v24[39];
  v46 = v24[34];
  v45 = v24[35];
  v47 = v24[33];
  v49 = v24[29];
  v48 = v24[30];
  v50 = v24[28];
  v51 = v24[24];
  v52 = v24[25];
  OUTLINED_FUNCTION_7_144();
  OUTLINED_FUNCTION_96_17();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553EBC4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 488);
  v8 = *(v6 + 480);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v4 + 496) = v0;

  if (!v0)
  {
    *(v4 + 504) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D553ECE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[63];
  v26 = v24[24];
  v27 = v24[21];
  v28 = v24[22];
  v29 = v24[20];
  v30 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA764(v30);

  v31 = OUTLINED_FUNCTION_75_27();
  v32(v31);
  OUTLINED_FUNCTION_39_7();
  if (v33)
  {
    sub_1D554B9B4(v24[20], &unk_1EC7F1990);
  }

  else
  {
    v35 = v24[58];
    v34 = v24[59];
    v36 = v24[40];
    v37 = v24[23];
    v39 = v24[20];
    v38 = v24[21];
    sub_1D554B9B4(v24[2], &qword_1EC7EA608);
    v40 = OUTLINED_FUNCTION_15_82();
    v35(v40);
    v41 = OUTLINED_FUNCTION_64_35();
    v35(v41);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  v42 = v24[41];
  v44 = v24[38];
  v43 = v24[39];
  v46 = v24[34];
  v45 = v24[35];
  v47 = v24[33];
  v49 = v24[29];
  v48 = v24[30];
  v50 = v24[28];
  v51 = v24[24];
  v52 = v24[25];
  OUTLINED_FUNCTION_7_144();
  OUTLINED_FUNCTION_96_17();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553EEA8()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 536);
  v8 = *(v6 + 528);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v4 + 544) = v0;

  if (!v0)
  {
    *(v4 + 552) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D553EFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[69];
  v26 = v24[19];
  v27 = v24[16];
  v28 = v24[17];
  v29 = v24[15];
  v30 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA4A0(v30);

  v31 = OUTLINED_FUNCTION_75_27();
  v32(v31);
  OUTLINED_FUNCTION_39_7();
  if (v33)
  {
    sub_1D554B9B4(v24[15], &qword_1EC7EA978);
  }

  else
  {
    v34 = v24[65];
    v35 = v24[64];
    v36 = v24[40];
    v37 = v24[18];
    v39 = v24[15];
    v38 = v24[16];
    sub_1D554B9B4(v24[2], &qword_1EC7EA608);
    v40 = OUTLINED_FUNCTION_15_82();
    v35(v40);
    v41 = OUTLINED_FUNCTION_64_35();
    v35(v41);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  v42 = v24[41];
  v44 = v24[38];
  v43 = v24[39];
  v46 = v24[34];
  v45 = v24[35];
  v47 = v24[33];
  v49 = v24[29];
  v48 = v24[30];
  v50 = v24[28];
  v51 = v24[24];
  v52 = v24[25];
  OUTLINED_FUNCTION_7_144();
  OUTLINED_FUNCTION_96_17();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553F190()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 568);
  v8 = *(v6 + 560);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v4 + 576) = v0;

  if (!v0)
  {
    *(v4 + 584) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D553F2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[73];
  v26 = v24[14];
  v28 = v24[10];
  v27 = v24[11];
  v29 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA80C(v29);

  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v26, v30);
  OUTLINED_FUNCTION_39_7();
  if (v31)
  {
    sub_1D554B9B4(v24[10], &qword_1EC7EA880);
  }

  else
  {
    v32 = v24[40];
    v33 = v24[13];
    v34 = v24[10];
    v35 = v24[2];
    sub_1D554B9B4(v35, &qword_1EC7EA608);
    OUTLINED_FUNCTION_128_12();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_81_0();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_109();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_99_17(v35);
  }

  v36 = v24[41];
  v38 = v24[38];
  v37 = v24[39];
  v40 = v24[34];
  v39 = v24[35];
  v41 = v24[33];
  v43 = v24[29];
  v42 = v24[30];
  v44 = v24[28];
  v45 = v24[24];
  v46 = v24[25];
  OUTLINED_FUNCTION_7_144();
  OUTLINED_FUNCTION_96_17();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553F47C()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 600);
  v8 = *(v6 + 592);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v4 + 608) = v0;

  if (!v0)
  {
    *(v4 + 616) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D553F59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[77];
  v26 = v24[9];
  v28 = v24[5];
  v27 = v24[6];
  v29 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA838(v29);

  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v26, v30);
  OUTLINED_FUNCTION_39_7();
  if (v31)
  {
    sub_1D554B9B4(v24[5], &qword_1EC7EA878);
  }

  else
  {
    v32 = v24[40];
    v33 = v24[8];
    v34 = v24[5];
    v35 = v24[2];
    sub_1D554B9B4(v35, &qword_1EC7EA608);
    OUTLINED_FUNCTION_129_9();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_81_0();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_109();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_99_17(v35);
  }

  v36 = v24[41];
  v38 = v24[38];
  v37 = v24[39];
  v40 = v24[34];
  v39 = v24[35];
  v41 = v24[33];
  v43 = v24[29];
  v42 = v24[30];
  v44 = v24[28];
  v45 = v24[24];
  v46 = v24[25];
  OUTLINED_FUNCTION_7_144();
  OUTLINED_FUNCTION_96_17();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553F768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v26 = v25[39];
  v27 = v25[36];
  OUTLINED_FUNCTION_188_8(v25[37]);
  v28();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_11_125(v25[46]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553F8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[34];
  v26 = v24[2];
  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v27, v28);
  sub_1D554B9B4(v26, &qword_1EC7EA608);
  OUTLINED_FUNCTION_11_125(v24[50]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553F9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v26 = v25[29];
  v27 = v25[26];
  OUTLINED_FUNCTION_188_8(v25[27]);
  v28();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_11_125(v25[56]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553FB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v26 = v25[24];
  v27 = v25[21];
  OUTLINED_FUNCTION_188_8(v25[22]);
  v28();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_11_125(v25[62]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553FC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v26 = v25[19];
  v27 = v25[16];
  OUTLINED_FUNCTION_188_8(v25[17]);
  v28();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_11_125(v25[68]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553FD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[14];
  v26 = v24[2];
  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v27, v28);
  sub_1D554B9B4(v26, &qword_1EC7EA608);
  OUTLINED_FUNCTION_11_125(v24[72]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553FEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[9];
  v26 = v24[2];
  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v27, v28);
  sub_1D554B9B4(v26, &qword_1EC7EA608);
  OUTLINED_FUNCTION_11_125(v24[76]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D553FFD8()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D5540030()
{
  OUTLINED_FUNCTION_69_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_14(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v0;
}

uint64_t sub_1D5540088(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t MusicLibrary.add<A, B>(_:referralItem:relatedItems:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_177_8(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  v0[18] = OUTLINED_FUNCTION_127();
  v12 = type metadata accessor for TVSeason();
  v0[19] = v12;
  OUTLINED_FUNCTION_69(v12);
  v0[20] = v13;
  v15 = *(v14 + 64);
  v0[21] = OUTLINED_FUNCTION_167();
  v0[22] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  v0[23] = OUTLINED_FUNCTION_127();
  v19 = type metadata accessor for TVEpisode();
  v0[24] = v19;
  OUTLINED_FUNCTION_69(v19);
  v0[25] = v20;
  v22 = *(v21 + 64);
  v0[26] = OUTLINED_FUNCTION_167();
  v0[27] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  v0[28] = OUTLINED_FUNCTION_127();
  v26 = sub_1D5613838();
  v0[29] = v26;
  OUTLINED_FUNCTION_69(v26);
  v0[30] = v27;
  v29 = *(v28 + 64);
  v0[31] = OUTLINED_FUNCTION_167();
  v0[32] = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  v0[33] = OUTLINED_FUNCTION_127();
  v33 = sub_1D5614898();
  v0[34] = v33;
  OUTLINED_FUNCTION_69(v33);
  v0[35] = v34;
  v36 = *(v35 + 64);
  v0[36] = OUTLINED_FUNCTION_167();
  v0[37] = swift_task_alloc();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  v0[38] = OUTLINED_FUNCTION_127();
  v40 = sub_1D560EEA8();
  v0[39] = v40;
  OUTLINED_FUNCTION_69(v40);
  v0[40] = v41;
  v43 = *(v42 + 64);
  v0[41] = OUTLINED_FUNCTION_167();
  v0[42] = swift_task_alloc();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  v0[43] = OUTLINED_FUNCTION_127();
  v47 = type metadata accessor for MusicMovie();
  v0[44] = v47;
  OUTLINED_FUNCTION_69(v47);
  v0[45] = v48;
  v50 = *(v49 + 64);
  v0[46] = OUTLINED_FUNCTION_167();
  v0[47] = swift_task_alloc();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v51);
  v53 = *(v52 + 64);
  v0[48] = OUTLINED_FUNCTION_127();
  v54 = sub_1D5613AF8();
  v0[49] = v54;
  OUTLINED_FUNCTION_69(v54);
  v0[50] = v55;
  v57 = *(v56 + 64);
  v0[51] = OUTLINED_FUNCTION_167();
  v0[52] = swift_task_alloc();
  v58 = type metadata accessor for GenericMusicItem();
  v0[53] = v58;
  OUTLINED_FUNCTION_22(v58);
  v60 = *(v59 + 64);
  v0[54] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v61, v62, v63);
}

uint64_t sub_1D55404FC()
{
  OUTLINED_FUNCTION_98_15();
  v1 = v0;
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[9];
  v5 = v0[10];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  OUTLINED_FUNCTION_5_151();
  OUTLINED_FUNCTION_196_5();
  OUTLINED_FUNCTION_159();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x14u:
      v9 = v0[54];
      v10 = v0[9];
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v11, v12);
      OUTLINED_FUNCTION_79_25();
      v13 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_56_0();
      (*(v14 + 104))();
      swift_willThrow();
      sub_1D554B9B4(v10, &qword_1EC7EA608);
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v9, v15);
      goto LABEL_3;
    case 7u:
      v55 = v0[54];
      v56 = v0[47];
      v57 = v0[45];
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAEF8, &qword_1D561DCC8);
      OUTLINED_FUNCTION_51_37();
      v58 = OUTLINED_FUNCTION_135_11();
      v1[61] = v58;
      OUTLINED_FUNCTION_33_59(v58, xmmword_1D561C050);
      OUTLINED_FUNCTION_182_5();
      v1[7] = v58;
      v59 = swift_task_alloc();
      v1[62] = v59;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EDD52880);
      OUTLINED_FUNCTION_21_82();
      sub_1D554B4BC(v60, v61);
      OUTLINED_FUNCTION_118_15();
      *v59 = v62;
      v59[1] = sub_1D554112C;
      v63 = v1[44];
      goto LABEL_15;
    case 8u:
      v27 = v0[54];
      v28 = v0[42];
      v29 = v0[39];
      v30 = v0[40];
      OUTLINED_FUNCTION_81();
      v1[65] = v31;
      OUTLINED_FUNCTION_114_10();
      v1[66] = v32;
      v33 = OUTLINED_FUNCTION_96_2();
      v34(v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E0, &qword_1D5671908);
      v35 = OUTLINED_FUNCTION_47_49();
      v1[67] = v35;
      v36 = OUTLINED_FUNCTION_29_63(v35, xmmword_1D561C050);
      v37(v36);
      v1[6] = v35;
      v38 = swift_task_alloc();
      v1[68] = v38;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F8318);
      OUTLINED_FUNCTION_73_26();
      *v38 = v39;
      v38[1] = sub_1D55413EC;
      v40 = v1[39];
      OUTLINED_FUNCTION_28_71();
      goto LABEL_13;
    case 9u:
      v64 = v0[54];
      v65 = v0[37];
      v66 = v0[34];
      v67 = v0[35];
      OUTLINED_FUNCTION_81();
      v1[71] = v68;
      OUTLINED_FUNCTION_114_10();
      v1[72] = v69;
      v70 = OUTLINED_FUNCTION_96_2();
      v71(v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82D8, &qword_1D56718F8);
      v72 = OUTLINED_FUNCTION_47_49();
      v1[73] = v72;
      v73 = OUTLINED_FUNCTION_29_63(v72, xmmword_1D561C050);
      v74(v73);
      v1[5] = v72;
      v75 = swift_task_alloc();
      v1[74] = v75;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F8308);
      OUTLINED_FUNCTION_73_26();
      *v75 = v76;
      v75[1] = sub_1D55416A8;
      v77 = v1[34];
      OUTLINED_FUNCTION_28_71();
      goto LABEL_13;
    case 0xEu:
      v97 = v0[54];
      v98 = v0[32];
      v99 = v0[29];
      v100 = v0[30];
      OUTLINED_FUNCTION_81();
      v1[77] = v101;
      OUTLINED_FUNCTION_114_10();
      v1[78] = v102;
      v103 = OUTLINED_FUNCTION_96_2();
      v104(v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACE0, &qword_1D561DAC0);
      v105 = OUTLINED_FUNCTION_47_49();
      v1[79] = v105;
      v106 = OUTLINED_FUNCTION_29_63(v105, xmmword_1D561C050);
      v107(v106);
      v1[4] = v105;
      v108 = swift_task_alloc();
      v1[80] = v108;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F71B8);
      OUTLINED_FUNCTION_73_26();
      *v108 = v109;
      v108[1] = sub_1D5541964;
      v110 = v1[29];
      OUTLINED_FUNCTION_28_71();
      goto LABEL_13;
    case 0x10u:
      v111 = v0[54];
      v112 = v0[27];
      v113 = v0[25];
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF08, &qword_1D561DCD8);
      OUTLINED_FUNCTION_51_37();
      v114 = OUTLINED_FUNCTION_135_11();
      v1[83] = v114;
      OUTLINED_FUNCTION_31_58(v114, xmmword_1D561C050);
      OUTLINED_FUNCTION_182_5();
      v1[3] = v114;
      v115 = swift_task_alloc();
      v1[84] = v115;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EDD527F8);
      OUTLINED_FUNCTION_19_88();
      sub_1D554B4BC(v116, v117);
      OUTLINED_FUNCTION_118_15();
      *v115 = v118;
      v115[1] = sub_1D5541C20;
      v119 = v1[24];
      goto LABEL_15;
    case 0x11u:
      v78 = v0[54];
      v79 = v0[22];
      v80 = v0[20];
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD90, &qword_1D561DB78);
      OUTLINED_FUNCTION_51_37();
      v81 = OUTLINED_FUNCTION_135_11();
      v1[87] = v81;
      OUTLINED_FUNCTION_32_64(v81, xmmword_1D561C050);
      OUTLINED_FUNCTION_182_5();
      v1[2] = v81;
      v82 = swift_task_alloc();
      v1[88] = v82;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7EFC90);
      OUTLINED_FUNCTION_20_97();
      sub_1D554B4BC(v83, v84);
      OUTLINED_FUNCTION_118_15();
      *v82 = v85;
      v82[1] = sub_1D5541EE0;
      v86 = v1[19];
LABEL_15:
      OUTLINED_FUNCTION_41_55();
      OUTLINED_FUNCTION_137_15();
      goto LABEL_16;
    case 0x15u:
      v87 = v0[54];
      v88 = v0[9];
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v89, v90);
      v91 = sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v92, v93);
      OUTLINED_FUNCTION_69_4();
      v94 = swift_allocError();
      v96 = OUTLINED_FUNCTION_194_9(v94, v95);
      (*(*(v91 - 8) + 104))(v96, *MEMORY[0x1E6975570], v91);
      swift_willThrow();
      sub_1D554B9B4(v88, &qword_1EC7EA608);
LABEL_3:
      v16 = v0[54];
      v18 = v0[51];
      v17 = v0[52];
      v20 = v0[47];
      v19 = v0[48];
      v21 = v0[46];
      v23 = v0[42];
      v22 = v0[43];
      v24 = v0[41];
      OUTLINED_FUNCTION_14_96();

      OUTLINED_FUNCTION_49();

      return v25();
    default:
      v41 = v0[54];
      v42 = v0[52];
      v43 = v0[49];
      v44 = v0[50];
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_114_10();
      v1[55] = v45;
      v1[56] = v46;
      v47 = OUTLINED_FUNCTION_96_2();
      v48(v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E8, &qword_1D5671920);
      v49 = OUTLINED_FUNCTION_47_49();
      v1[57] = v49;
      v50 = OUTLINED_FUNCTION_29_63(v49, xmmword_1D561C050);
      v51(v50);
      v1[8] = v49;
      v52 = swift_task_alloc();
      v1[58] = v52;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F8330);
      OUTLINED_FUNCTION_73_26();
      *v52 = v53;
      v52[1] = sub_1D5540E74;
      v54 = v1[49];
      OUTLINED_FUNCTION_28_71();
LABEL_13:
      OUTLINED_FUNCTION_137_15();
LABEL_16:
      OUTLINED_FUNCTION_42_21();

      return MusicLibrary.add<A, B, C, D>(_:referralItem:relatedItems:)();
  }
}

uint64_t sub_1D5540E74()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 464);
  v8 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  v4[59] = v0;

  v10 = v4[57];

  if (!v0)
  {
    v4[60] = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5540F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[60];
  v26 = v24[52];
  v27 = v24[49];
  v28 = v24[50];
  v29 = v24[48];
  v30 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA708(v30);

  v31 = OUTLINED_FUNCTION_75_27();
  v32(v31);
  OUTLINED_FUNCTION_39_7();
  if (v33)
  {
    sub_1D554B9B4(v24[48], &qword_1EC7EEC30);
  }

  else
  {
    v35 = v24[55];
    v34 = v24[56];
    v36 = v24[53];
    v37 = v24[51];
    v39 = v24[48];
    v38 = v24[49];
    sub_1D554B9B4(v24[9], &qword_1EC7EA608);
    v40 = OUTLINED_FUNCTION_15_82();
    v35(v40);
    v41 = OUTLINED_FUNCTION_64_35();
    v35(v41);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  OUTLINED_FUNCTION_13_100();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D554112C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 496);
  v8 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  v4[63] = v0;

  v10 = v4[61];

  if (!v0)
  {
    v4[64] = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5541240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[64];
  v26 = v24[47];
  v28 = v24[43];
  v27 = v24[44];
  v29 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA720(v29);

  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v26, v30);
  OUTLINED_FUNCTION_39_7();
  if (v31)
  {
    sub_1D554B9B4(v24[43], &qword_1EC7EA890);
  }

  else
  {
    v32 = v24[53];
    v33 = v24[46];
    v34 = v24[43];
    v35 = v24[9];
    sub_1D554B9B4(v35, &qword_1EC7EA608);
    OUTLINED_FUNCTION_130_15();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_81_0();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_109();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_99_17(v35);
  }

  OUTLINED_FUNCTION_13_100();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D55413EC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 544);
  v8 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  v4[69] = v0;

  v10 = v4[67];

  if (!v0)
  {
    v4[70] = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5541500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[70];
  v26 = v24[42];
  v27 = v24[39];
  v28 = v24[40];
  v29 = v24[38];
  v30 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA74C(v30);

  v31 = OUTLINED_FUNCTION_75_27();
  v32(v31);
  OUTLINED_FUNCTION_39_7();
  if (v33)
  {
    sub_1D554B9B4(v24[38], &qword_1EC7EA990);
  }

  else
  {
    v34 = v24[66];
    v35 = v24[65];
    v36 = v24[53];
    v37 = v24[41];
    v39 = v24[38];
    v38 = v24[39];
    sub_1D554B9B4(v24[9], &qword_1EC7EA608);
    v40 = OUTLINED_FUNCTION_15_82();
    v35(v40);
    v41 = OUTLINED_FUNCTION_64_35();
    v35(v41);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  OUTLINED_FUNCTION_13_100();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D55416A8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 592);
  v8 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  v4[75] = v0;

  v10 = v4[73];

  if (!v0)
  {
    v4[76] = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D55417BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[76];
  v26 = v24[37];
  v27 = v24[34];
  v28 = v24[35];
  v29 = v24[33];
  v30 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA764(v30);

  v31 = OUTLINED_FUNCTION_75_27();
  v32(v31);
  OUTLINED_FUNCTION_39_7();
  if (v33)
  {
    sub_1D554B9B4(v24[33], &unk_1EC7F1990);
  }

  else
  {
    v34 = v24[72];
    v35 = v24[71];
    v36 = v24[53];
    v37 = v24[36];
    v39 = v24[33];
    v38 = v24[34];
    sub_1D554B9B4(v24[9], &qword_1EC7EA608);
    v40 = OUTLINED_FUNCTION_15_82();
    v35(v40);
    v41 = OUTLINED_FUNCTION_64_35();
    v35(v41);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  OUTLINED_FUNCTION_13_100();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D5541964()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 640);
  v8 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  v4[81] = v0;

  v10 = v4[79];

  if (!v0)
  {
    v4[82] = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5541A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[82];
  v26 = v24[32];
  v27 = v24[29];
  v28 = v24[30];
  v29 = v24[28];
  v30 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA4A0(v30);

  v31 = OUTLINED_FUNCTION_75_27();
  v32(v31);
  OUTLINED_FUNCTION_39_7();
  if (v33)
  {
    sub_1D554B9B4(v24[28], &qword_1EC7EA978);
  }

  else
  {
    v34 = v24[78];
    v35 = v24[77];
    v36 = v24[53];
    v37 = v24[31];
    v39 = v24[28];
    v38 = v24[29];
    sub_1D554B9B4(v24[9], &qword_1EC7EA608);
    v40 = OUTLINED_FUNCTION_15_82();
    v35(v40);
    v41 = OUTLINED_FUNCTION_64_35();
    v35(v41);
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_90_22();
  }

  OUTLINED_FUNCTION_13_100();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D5541C20()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 672);
  v8 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  v4[85] = v0;

  v10 = v4[83];

  if (!v0)
  {
    v4[86] = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5541D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[86];
  v26 = v24[27];
  v28 = v24[23];
  v27 = v24[24];
  v29 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA80C(v29);

  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v26, v30);
  OUTLINED_FUNCTION_39_7();
  if (v31)
  {
    sub_1D554B9B4(v24[23], &qword_1EC7EA880);
  }

  else
  {
    v32 = v24[53];
    v33 = v24[26];
    v34 = v24[23];
    v35 = v24[9];
    sub_1D554B9B4(v35, &qword_1EC7EA608);
    OUTLINED_FUNCTION_128_12();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_81_0();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_109();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_99_17(v35);
  }

  OUTLINED_FUNCTION_13_100();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D5541EE0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 704);
  v8 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  v4[89] = v0;

  v10 = v4[87];

  if (!v0)
  {
    v4[90] = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5541FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[90];
  v26 = v24[22];
  v28 = v24[18];
  v27 = v24[19];
  v29 = OUTLINED_FUNCTION_120_12();
  sub_1D4ECA838(v29);

  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v26, v30);
  OUTLINED_FUNCTION_39_7();
  if (v31)
  {
    sub_1D554B9B4(v24[18], &qword_1EC7EA878);
  }

  else
  {
    v32 = v24[53];
    v33 = v24[21];
    v34 = v24[18];
    v35 = v24[9];
    sub_1D554B9B4(v35, &qword_1EC7EA608);
    OUTLINED_FUNCTION_129_9();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_81_0();
    sub_1D553FFD8();
    OUTLINED_FUNCTION_109();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_99_17(v35);
  }

  OUTLINED_FUNCTION_13_100();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_42_21();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D55421A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v26 = v25[52];
  v27 = v25[49];
  OUTLINED_FUNCTION_191_6(v25[50]);
  v28();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_12_106(v25[59]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D55422D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[47];
  v26 = v24[9];
  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v27, v28);
  sub_1D554B9B4(v26, &qword_1EC7EA608);
  OUTLINED_FUNCTION_12_106(v24[63]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D5542408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v26 = v25[42];
  v27 = v25[39];
  OUTLINED_FUNCTION_191_6(v25[40]);
  v28();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_12_106(v25[69]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D5542540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v26 = v25[37];
  v27 = v25[34];
  OUTLINED_FUNCTION_191_6(v25[35]);
  v28();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_12_106(v25[75]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D5542678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v26 = v25[32];
  v27 = v25[29];
  OUTLINED_FUNCTION_191_6(v25[30]);
  v28();
  sub_1D554B9B4(v24, &qword_1EC7EA608);
  OUTLINED_FUNCTION_12_106(v25[81]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D55427B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[27];
  v26 = v24[9];
  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v27, v28);
  sub_1D554B9B4(v26, &qword_1EC7EA608);
  OUTLINED_FUNCTION_12_106(v24[85]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1D55428E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_289();
  OUTLINED_FUNCTION_98_15();
  v25 = v24[22];
  v26 = v24[9];
  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v27, v28);
  sub_1D554B9B4(v26, &qword_1EC7EA608);
  OUTLINED_FUNCTION_12_106(v24[89]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_42_21();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t MusicLibrary.import(_:)()
{
  OUTLINED_FUNCTION_60();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_127();
  v7 = type metadata accessor for TVSeason();
  v1[6] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_167();
  v1[9] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_176_5(v14);
  v15 = type metadata accessor for TVEpisode();
  v1[11] = v15;
  OUTLINED_FUNCTION_69(v15);
  v1[12] = v16;
  v18 = *(v17 + 64);
  v1[13] = OUTLINED_FUNCTION_167();
  v1[14] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  v1[15] = OUTLINED_FUNCTION_127();
  v22 = sub_1D5613838();
  v1[16] = v22;
  OUTLINED_FUNCTION_69(v22);
  v1[17] = v23;
  v25 = *(v24 + 64);
  v1[18] = OUTLINED_FUNCTION_167();
  v1[19] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v26);
  v28 = *(v27 + 64);
  v1[20] = OUTLINED_FUNCTION_127();
  v29 = sub_1D5614898();
  v1[21] = v29;
  OUTLINED_FUNCTION_69(v29);
  v1[22] = v30;
  v32 = *(v31 + 64);
  v1[23] = OUTLINED_FUNCTION_167();
  v1[24] = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  v1[25] = OUTLINED_FUNCTION_127();
  v36 = sub_1D560EEA8();
  v1[26] = v36;
  OUTLINED_FUNCTION_69(v36);
  v1[27] = v37;
  v39 = *(v38 + 64);
  v1[28] = OUTLINED_FUNCTION_167();
  v1[29] = swift_task_alloc();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  OUTLINED_FUNCTION_22(v40);
  v42 = *(v41 + 64);
  v1[30] = OUTLINED_FUNCTION_127();
  v43 = type metadata accessor for MusicMovie();
  v1[31] = v43;
  OUTLINED_FUNCTION_69(v43);
  v1[32] = v44;
  v46 = *(v45 + 64);
  v1[33] = OUTLINED_FUNCTION_167();
  v1[34] = swift_task_alloc();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v47);
  v49 = *(v48 + 64);
  v1[35] = OUTLINED_FUNCTION_127();
  v50 = sub_1D5613AF8();
  v1[36] = v50;
  OUTLINED_FUNCTION_69(v50);
  v1[37] = v51;
  v53 = *(v52 + 64);
  v1[38] = OUTLINED_FUNCTION_167();
  v1[39] = swift_task_alloc();
  v54 = type metadata accessor for GenericMusicItem();
  v1[40] = v54;
  OUTLINED_FUNCTION_22(v54);
  v56 = *(v55 + 64);
  v1[41] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v57, v58, v59);
}

void sub_1D5542E2C()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v1);
  OUTLINED_FUNCTION_5_151();
  OUTLINED_FUNCTION_196_5();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = v0[41];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      v10 = v0[2];
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v11, v12);
      OUTLINED_FUNCTION_79_25();
      v13 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_56_0();
      (*(v14 + 104))();
      swift_willThrow();
      sub_1D554B9B4(v10, &qword_1EC7EA608);
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v9, v15);
      goto LABEL_3;
    case 7:
      v43 = v0[34];
      v44 = v0[32];
      OUTLINED_FUNCTION_4_157();
      OUTLINED_FUNCTION_159();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAEF8, &qword_1D561DCC8);
      v45 = OUTLINED_FUNCTION_58_39();
      v0[48] = v45;
      OUTLINED_FUNCTION_33_59(v45, xmmword_1D561C050);
      OUTLINED_FUNCTION_183_7();
      OUTLINED_FUNCTION_27_0(&unk_1D5671980);
      v31 = swift_task_alloc();
      v0[49] = v31;
      *v31 = v0;
      v32 = sub_1D5543674;
      goto LABEL_15;
    case 8:
      v21 = v0[29];
      v22 = v0[26];
      v23 = v0[27];
      OUTLINED_FUNCTION_62_40();
      v0[52] = v24;
      v0[53] = v25;
      v26 = OUTLINED_FUNCTION_76_1();
      v27(v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E0, &qword_1D5671908);
      v28 = OUTLINED_FUNCTION_48_43();
      v0[54] = v28;
      v29 = OUTLINED_FUNCTION_30_71(v28, xmmword_1D561C050);
      v30(v29);
      OUTLINED_FUNCTION_27_0(&unk_1D5671978);
      v31 = swift_task_alloc();
      v0[55] = v31;
      *v31 = v0;
      v32 = sub_1D5543794;
      goto LABEL_15;
    case 9:
      v46 = v0[24];
      v47 = v0[21];
      v48 = v0[22];
      OUTLINED_FUNCTION_62_40();
      v0[58] = v49;
      v0[59] = v50;
      v51 = OUTLINED_FUNCTION_76_1();
      v52(v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82D8, &qword_1D56718F8);
      v53 = OUTLINED_FUNCTION_48_43();
      v0[60] = v53;
      v54 = OUTLINED_FUNCTION_30_71(v53, xmmword_1D561C050);
      v55(v54);
      OUTLINED_FUNCTION_27_0(&unk_1D5671970);
      v31 = swift_task_alloc();
      v0[61] = v31;
      *v31 = v0;
      v32 = sub_1D55438B4;
      goto LABEL_15;
    case 14:
      v67 = v0[19];
      v68 = v0[16];
      v0[64] = *(v0[17] + 32);
      OUTLINED_FUNCTION_114_10();
      v0[65] = v69;
      v70 = OUTLINED_FUNCTION_76_1();
      v71(v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACE0, &qword_1D561DAC0);
      v72 = OUTLINED_FUNCTION_48_43();
      v0[66] = v72;
      v73 = OUTLINED_FUNCTION_30_71(v72, xmmword_1D561C050);
      v74(v73);
      OUTLINED_FUNCTION_27_0(&unk_1D5671968);
      v31 = swift_task_alloc();
      v0[67] = v31;
      *v31 = v0;
      v32 = sub_1D55439D4;
      goto LABEL_15;
    case 16:
      v75 = v0[14];
      v76 = v0[12];
      OUTLINED_FUNCTION_2_196();
      OUTLINED_FUNCTION_159();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF08, &qword_1D561DCD8);
      v77 = OUTLINED_FUNCTION_58_39();
      v0[70] = v77;
      OUTLINED_FUNCTION_31_58(v77, xmmword_1D561C050);
      OUTLINED_FUNCTION_183_7();
      OUTLINED_FUNCTION_27_0(&unk_1D5671960);
      v31 = swift_task_alloc();
      v0[71] = v31;
      *v31 = v0;
      v32 = sub_1D5543AF4;
      goto LABEL_15;
    case 17:
      v56 = v0[9];
      v57 = v0[7];
      OUTLINED_FUNCTION_3_203();
      OUTLINED_FUNCTION_159();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD90, &qword_1D561DB78);
      v58 = OUTLINED_FUNCTION_58_39();
      v0[74] = v58;
      OUTLINED_FUNCTION_32_64(v58, xmmword_1D561C050);
      OUTLINED_FUNCTION_183_7();
      OUTLINED_FUNCTION_27_0(&unk_1D5671958);
      v31 = swift_task_alloc();
      v0[75] = v31;
      *v31 = v0;
      v32 = sub_1D5543C14;
      goto LABEL_15;
    case 21:
      v59 = v0[2];
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v9, v60);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v61, v62);
      v63 = OUTLINED_FUNCTION_12_57();
      OUTLINED_FUNCTION_194_9(v63, v64);
      v65 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_43_8();
      (*(v66 + 104))();
      swift_willThrow();
      sub_1D554B9B4(v59, &qword_1EC7EA608);
LABEL_3:
      OUTLINED_FUNCTION_24_73();
      v16 = v0[28];
      v17 = v0[24];
      v18 = v0[25];
      OUTLINED_FUNCTION_7_144();
      v80 = v0[8];
      v81 = v0[5];

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_97();

      __asm { BRAA            X1, X16 }

      return;
    default:
      v33 = v0[39];
      v34 = v0[36];
      v35 = v0[37];
      OUTLINED_FUNCTION_62_40();
      v0[42] = v36;
      v0[43] = v37;
      v38 = OUTLINED_FUNCTION_76_1();
      v39(v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E8, &qword_1D5671920);
      v40 = OUTLINED_FUNCTION_48_43();
      v0[44] = v40;
      v41 = OUTLINED_FUNCTION_30_71(v40, xmmword_1D561C050);
      v42(v41);
      OUTLINED_FUNCTION_27_0(&unk_1D5671988);
      v31 = swift_task_alloc();
      v0[45] = v31;
      *v31 = v0;
      v32 = sub_1D5543554;
LABEL_15:
      v31[1] = v32;
      OUTLINED_FUNCTION_189_7();
      OUTLINED_FUNCTION_97();

      __asm { BR              X1 }

      return;
  }
}

uint64_t sub_1D5543554()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 360);
  v8 = *(v6 + 352);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v4 + 368) = v0;

  if (!v0)
  {
    *(v4 + 376) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5543674()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 392);
  v8 = *(v6 + 384);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v4 + 400) = v0;

  if (!v0)
  {
    *(v4 + 408) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5543794()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 440);
  v8 = *(v6 + 432);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v4 + 448) = v0;

  if (!v0)
  {
    *(v4 + 456) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D55438B4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 488);
  v8 = *(v6 + 480);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v4 + 496) = v0;

  if (!v0)
  {
    *(v4 + 504) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D55439D4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 536);
  v8 = *(v6 + 528);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v4 + 544) = v0;

  if (!v0)
  {
    *(v4 + 552) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5543AF4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 568);
  v8 = *(v6 + 560);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v4 + 576) = v0;

  if (!v0)
  {
    *(v4 + 584) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5543C14()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 600);
  v8 = *(v6 + 592);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v4 + 608) = v0;

  if (!v0)
  {
    *(v4 + 616) = v1;
  }

  OUTLINED_FUNCTION_73_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t MusicLibrary.import<A, B>(_:referralItem:relatedItems:)()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_177_8(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  v0[18] = OUTLINED_FUNCTION_127();
  v12 = type metadata accessor for TVSeason();
  v0[19] = v12;
  OUTLINED_FUNCTION_69(v12);
  v0[20] = v13;
  v15 = *(v14 + 64);
  v0[21] = OUTLINED_FUNCTION_167();
  v0[22] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  v0[23] = OUTLINED_FUNCTION_127();
  v19 = type metadata accessor for TVEpisode();
  v0[24] = v19;
  OUTLINED_FUNCTION_69(v19);
  v0[25] = v20;
  v22 = *(v21 + 64);
  v0[26] = OUTLINED_FUNCTION_167();
  v0[27] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v23);
  v25 = *(v24 + 64);
  v0[28] = OUTLINED_FUNCTION_127();
  v26 = sub_1D5613838();
  v0[29] = v26;
  OUTLINED_FUNCTION_69(v26);
  v0[30] = v27;
  v29 = *(v28 + 64);
  v0[31] = OUTLINED_FUNCTION_167();
  v0[32] = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v30);
  v32 = *(v31 + 64);
  v0[33] = OUTLINED_FUNCTION_127();
  v33 = sub_1D5614898();
  v0[34] = v33;
  OUTLINED_FUNCTION_69(v33);
  v0[35] = v34;
  v36 = *(v35 + 64);
  v0[36] = OUTLINED_FUNCTION_167();
  v0[37] = swift_task_alloc();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  OUTLINED_FUNCTION_22(v37);
  v39 = *(v38 + 64);
  v0[38] = OUTLINED_FUNCTION_127();
  v40 = sub_1D560EEA8();
  v0[39] = v40;
  OUTLINED_FUNCTION_69(v40);
  v0[40] = v41;
  v43 = *(v42 + 64);
  v0[41] = OUTLINED_FUNCTION_167();
  v0[42] = swift_task_alloc();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  OUTLINED_FUNCTION_22(v44);
  v46 = *(v45 + 64);
  v0[43] = OUTLINED_FUNCTION_127();
  v47 = type metadata accessor for MusicMovie();
  v0[44] = v47;
  OUTLINED_FUNCTION_69(v47);
  v0[45] = v48;
  v50 = *(v49 + 64);
  v0[46] = OUTLINED_FUNCTION_167();
  v0[47] = swift_task_alloc();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v51);
  v53 = *(v52 + 64);
  v0[48] = OUTLINED_FUNCTION_127();
  v54 = sub_1D5613AF8();
  v0[49] = v54;
  OUTLINED_FUNCTION_69(v54);
  v0[50] = v55;
  v57 = *(v56 + 64);
  v0[51] = OUTLINED_FUNCTION_167();
  v0[52] = swift_task_alloc();
  v58 = type metadata accessor for GenericMusicItem();
  v0[53] = v58;
  OUTLINED_FUNCTION_22(v58);
  v60 = *(v59 + 64);
  v0[54] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v61, v62, v63);
}

uint64_t sub_1D5544150()
{
  OUTLINED_FUNCTION_98_15();
  v1 = v0;
  v2 = v0[53];
  v3 = v0[54];
  v4 = v0[9];
  v5 = v0[10];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  OUTLINED_FUNCTION_5_151();
  OUTLINED_FUNCTION_196_5();
  OUTLINED_FUNCTION_159();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x14u:
      v9 = v0[54];
      v10 = v0[9];
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v11, v12);
      OUTLINED_FUNCTION_79_25();
      v13 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_56_0();
      (*(v14 + 104))();
      swift_willThrow();
      sub_1D554B9B4(v10, &qword_1EC7EA608);
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v9, v15);
      goto LABEL_3;
    case 7u:
      v55 = v0[54];
      v56 = v0[47];
      v57 = v0[45];
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAEF8, &qword_1D561DCC8);
      OUTLINED_FUNCTION_51_37();
      v58 = OUTLINED_FUNCTION_135_11();
      v1[61] = v58;
      OUTLINED_FUNCTION_33_59(v58, xmmword_1D561C050);
      OUTLINED_FUNCTION_182_5();
      v1[7] = v58;
      v59 = swift_task_alloc();
      v1[62] = v59;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EDD52880);
      OUTLINED_FUNCTION_21_82();
      sub_1D554B4BC(v60, v61);
      OUTLINED_FUNCTION_118_15();
      *v59 = v62;
      v59[1] = sub_1D5544BDC;
      v63 = v1[44];
      goto LABEL_15;
    case 8u:
      v27 = v0[54];
      v28 = v0[42];
      v29 = v0[39];
      v30 = v0[40];
      OUTLINED_FUNCTION_81();
      v1[65] = v31;
      OUTLINED_FUNCTION_114_10();
      v1[66] = v32;
      v33 = OUTLINED_FUNCTION_96_2();
      v34(v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E0, &qword_1D5671908);
      v35 = OUTLINED_FUNCTION_47_49();
      v1[67] = v35;
      v36 = OUTLINED_FUNCTION_29_63(v35, xmmword_1D561C050);
      v37(v36);
      v1[6] = v35;
      v38 = swift_task_alloc();
      v1[68] = v38;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F8318);
      OUTLINED_FUNCTION_73_26();
      *v38 = v39;
      v38[1] = sub_1D5544CF0;
      v40 = v1[39];
      OUTLINED_FUNCTION_28_71();
      goto LABEL_13;
    case 9u:
      v64 = v0[54];
      v65 = v0[37];
      v66 = v0[34];
      v67 = v0[35];
      OUTLINED_FUNCTION_81();
      v1[71] = v68;
      OUTLINED_FUNCTION_114_10();
      v1[72] = v69;
      v70 = OUTLINED_FUNCTION_96_2();
      v71(v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82D8, &qword_1D56718F8);
      v72 = OUTLINED_FUNCTION_47_49();
      v1[73] = v72;
      v73 = OUTLINED_FUNCTION_29_63(v72, xmmword_1D561C050);
      v74(v73);
      v1[5] = v72;
      v75 = swift_task_alloc();
      v1[74] = v75;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F8308);
      OUTLINED_FUNCTION_73_26();
      *v75 = v76;
      v75[1] = sub_1D5544E04;
      v77 = v1[34];
      OUTLINED_FUNCTION_28_71();
      goto LABEL_13;
    case 0xEu:
      v97 = v0[54];
      v98 = v0[32];
      v99 = v0[29];
      v100 = v0[30];
      OUTLINED_FUNCTION_81();
      v1[77] = v101;
      OUTLINED_FUNCTION_114_10();
      v1[78] = v102;
      v103 = OUTLINED_FUNCTION_96_2();
      v104(v103);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACE0, &qword_1D561DAC0);
      v105 = OUTLINED_FUNCTION_47_49();
      v1[79] = v105;
      v106 = OUTLINED_FUNCTION_29_63(v105, xmmword_1D561C050);
      v107(v106);
      v1[4] = v105;
      v108 = swift_task_alloc();
      v1[80] = v108;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F71B8);
      OUTLINED_FUNCTION_73_26();
      *v108 = v109;
      v108[1] = sub_1D5544F18;
      v110 = v1[29];
      OUTLINED_FUNCTION_28_71();
      goto LABEL_13;
    case 0x10u:
      v111 = v0[54];
      v112 = v0[27];
      v113 = v0[25];
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF08, &qword_1D561DCD8);
      OUTLINED_FUNCTION_51_37();
      v114 = OUTLINED_FUNCTION_135_11();
      v1[83] = v114;
      OUTLINED_FUNCTION_31_58(v114, xmmword_1D561C050);
      OUTLINED_FUNCTION_182_5();
      v1[3] = v114;
      v115 = swift_task_alloc();
      v1[84] = v115;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EDD527F8);
      OUTLINED_FUNCTION_19_88();
      sub_1D554B4BC(v116, v117);
      OUTLINED_FUNCTION_118_15();
      *v115 = v118;
      v115[1] = sub_1D554502C;
      v119 = v1[24];
      goto LABEL_15;
    case 0x11u:
      v78 = v0[54];
      v79 = v0[22];
      v80 = v0[20];
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAD90, &qword_1D561DB78);
      OUTLINED_FUNCTION_51_37();
      v81 = OUTLINED_FUNCTION_135_11();
      v1[87] = v81;
      OUTLINED_FUNCTION_32_64(v81, xmmword_1D561C050);
      OUTLINED_FUNCTION_182_5();
      v1[2] = v81;
      v82 = swift_task_alloc();
      v1[88] = v82;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7EFC90);
      OUTLINED_FUNCTION_20_97();
      sub_1D554B4BC(v83, v84);
      OUTLINED_FUNCTION_118_15();
      *v82 = v85;
      v82[1] = sub_1D5545140;
      v86 = v1[19];
LABEL_15:
      OUTLINED_FUNCTION_41_55();
      OUTLINED_FUNCTION_137_15();
      goto LABEL_16;
    case 0x15u:
      v87 = v0[54];
      v88 = v0[9];
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v89, v90);
      v91 = sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v92, v93);
      OUTLINED_FUNCTION_69_4();
      v94 = swift_allocError();
      v96 = OUTLINED_FUNCTION_194_9(v94, v95);
      (*(*(v91 - 8) + 104))(v96, *MEMORY[0x1E6975570], v91);
      swift_willThrow();
      sub_1D554B9B4(v88, &qword_1EC7EA608);
LABEL_3:
      v16 = v0[54];
      v18 = v0[51];
      v17 = v0[52];
      v20 = v0[47];
      v19 = v0[48];
      v21 = v0[46];
      v23 = v0[42];
      v22 = v0[43];
      v24 = v0[41];
      OUTLINED_FUNCTION_14_96();

      OUTLINED_FUNCTION_49();

      return v25();
    default:
      v41 = v0[54];
      v42 = v0[52];
      v43 = v0[49];
      v44 = v0[50];
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_114_10();
      v1[55] = v45;
      v1[56] = v46;
      v47 = OUTLINED_FUNCTION_96_2();
      v48(v47);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F82E8, &qword_1D5671920);
      v49 = OUTLINED_FUNCTION_47_49();
      v1[57] = v49;
      v50 = OUTLINED_FUNCTION_29_63(v49, xmmword_1D561C050);
      v51(v50);
      v1[8] = v49;
      v52 = swift_task_alloc();
      v1[58] = v52;
      OUTLINED_FUNCTION_168_8();
      OUTLINED_FUNCTION_8_135(&qword_1EC7F8330);
      OUTLINED_FUNCTION_73_26();
      *v52 = v53;
      v52[1] = sub_1D5544AC8;
      v54 = v1[49];
      OUTLINED_FUNCTION_28_71();
LABEL_13:
      OUTLINED_FUNCTION_137_15();
LABEL_16:
      OUTLINED_FUNCTION_42_21();

      return MusicLibrary.import<A, B, C, D>(_:referralItem:relatedItems:)();
  }
}

uint64_t sub_1D5544AC8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 464);
  v8 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  v4[59] = v0;

  v10 = v4[57];

  if (!v0)
  {
    v4[60] = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5544BDC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 496);
  v8 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  v4[63] = v0;

  v10 = v4[61];

  if (!v0)
  {
    v4[64] = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5544CF0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 544);
  v8 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  v4[69] = v0;

  v10 = v4[67];

  if (!v0)
  {
    v4[70] = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5544E04()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 592);
  v8 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  v4[75] = v0;

  v10 = v4[73];

  if (!v0)
  {
    v4[76] = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5544F18()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 640);
  v8 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  v4[81] = v0;

  v10 = v4[79];

  if (!v0)
  {
    v4[82] = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D554502C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 672);
  v8 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  v4[85] = v0;

  v10 = v4[83];

  if (!v0)
  {
    v4[86] = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D5545140()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_20_13();
  v4 = v3;
  OUTLINED_FUNCTION_44();
  *v5 = v4;
  v7 = *(v6 + 704);
  v8 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  v4[89] = v0;

  v10 = v4[87];

  if (!v0)
  {
    v4[90] = v1;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t MusicLibrary.download(_:)()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_27_0(&unk_1D56719A0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;
  v2 = OUTLINED_FUNCTION_174_7();

  return v3(v2);
}

uint64_t sub_1D55452F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for TVSeason() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for TVEpisode() - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1D5613838();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = sub_1D5614898();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = sub_1D560EEA8();
  v3[13] = v12;
  v13 = *(v12 - 8);
  v3[14] = v13;
  v14 = *(v13 + 64) + 15;
  v3[15] = swift_task_alloc();
  v15 = *(*(type metadata accessor for MusicMovie() - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_1D5613AF8();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();
  v19 = type metadata accessor for GenericMusicItem();
  v3[20] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5545580, 0, 0);
}

uint64_t sub_1D5545580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[20];
  v14 = v12[21];
  v15 = v12[2];
  OUTLINED_FUNCTION_5_151();
  sub_1D5540030();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = v12[21];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v18, v19);
      v20 = OUTLINED_FUNCTION_79_25();
      OUTLINED_FUNCTION_125_15(v20, v21);
      v22 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_56_0();
      (*(v23 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v17, v24);
      goto LABEL_3;
    case 7:
      v46 = v12[16];
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C60);
      v81 = v47;
      v48 = swift_task_alloc();
      v12[24] = v48;
      *v48 = v12;
      OUTLINED_FUNCTION_170_8(v48);
      goto LABEL_14;
    case 8:
      v36 = v12[15];
      v37 = v12[13];
      OUTLINED_FUNCTION_100_16(v12[14]);
      v38();
      OUTLINED_FUNCTION_27_0(&unk_1D5672A20);
      v81 = v39;
      v40 = swift_task_alloc();
      v12[26] = v40;
      *v40 = v12;
      v40[1] = sub_1D5545C3C;
      v41 = v12[15];
      goto LABEL_14;
    case 9:
      v49 = v12[12];
      v50 = v12[10];
      OUTLINED_FUNCTION_100_16(v12[11]);
      v51();
      OUTLINED_FUNCTION_27_0(&unk_1D5672930);
      v81 = v52;
      v53 = swift_task_alloc();
      v12[28] = v53;
      *v53 = v12;
      v53[1] = sub_1D5545D34;
      v41 = v12[12];
      goto LABEL_14;
    case 14:
      v63 = v12[9];
      v64 = v12[7];
      OUTLINED_FUNCTION_100_16(v12[8]);
      v65();
      OUTLINED_FUNCTION_27_0(&unk_1D5672B10);
      v81 = v66;
      v67 = swift_task_alloc();
      v12[30] = v67;
      *v67 = v12;
      v67[1] = sub_1D5545E2C;
      v41 = v12[9];
      goto LABEL_14;
    case 16:
      v68 = v12[6];
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C68);
      v81 = v69;
      v70 = swift_task_alloc();
      v12[32] = v70;
      *v70 = v12;
      v70[1] = sub_1D5545F24;
      v41 = v12[6];
      goto LABEL_14;
    case 17:
      v54 = v12[5];
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(dword_1D5672C70);
      v81 = v55;
      v56 = swift_task_alloc();
      v12[34] = v56;
      *v56 = v12;
      v56[1] = sub_1D554601C;
      v41 = v12[5];
      goto LABEL_14;
    case 21:
      sub_1D5540088(v12[21], type metadata accessor for GenericMusicItem);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v57, v58);
      v59 = OUTLINED_FUNCTION_12_57();
      OUTLINED_FUNCTION_125_15(v59, v60);
      v61 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_43_8();
      (*(v62 + 104))();
      swift_willThrow();
LABEL_3:
      v25 = v12[21];
      v26 = v12[19];
      OUTLINED_FUNCTION_74_30();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_134();

      return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
    default:
      v42 = OUTLINED_FUNCTION_61_37();
      v43(v42);
      OUTLINED_FUNCTION_27_0(&unk_1D5672C00);
      v81 = v44;
      v45 = swift_task_alloc();
      v12[22] = v45;
      *v45 = v12;
      OUTLINED_FUNCTION_169_5(v45);
LABEL_14:
      v71 = v12[3];
      v72 = v12[4];
      OUTLINED_FUNCTION_93_0(v41);
      OUTLINED_FUNCTION_134();

      return v75(v73, v74, v75, v76, v77, v78, v79, v80, v81, a10, a11, a12);
  }
}

uint64_t sub_1D5545A4C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5545B44()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5545C3C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5545D34()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5545E2C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5545F24()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 264) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D554601C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 280) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t MusicLibrary.download<A>(_:relatedItems:)()
{
  OUTLINED_FUNCTION_60();
  v5 = OUTLINED_FUNCTION_155_6(v1, v2, v3, v4);
  v0[7] = v5;
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  v0[8] = OUTLINED_FUNCTION_127();
  v8 = type metadata accessor for TVEpisode();
  v0[9] = v8;
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_176_5(v11);
  v12 = sub_1D5613838();
  v0[11] = v12;
  OUTLINED_FUNCTION_69(v12);
  v0[12] = v13;
  v15 = *(v14 + 64);
  v0[13] = OUTLINED_FUNCTION_127();
  v16 = sub_1D5614898();
  v0[14] = v16;
  OUTLINED_FUNCTION_69(v16);
  v0[15] = v17;
  v19 = *(v18 + 64);
  v0[16] = OUTLINED_FUNCTION_127();
  v20 = sub_1D560EEA8();
  v0[17] = v20;
  OUTLINED_FUNCTION_69(v20);
  v0[18] = v21;
  v23 = *(v22 + 64);
  v0[19] = OUTLINED_FUNCTION_127();
  v24 = type metadata accessor for MusicMovie();
  v0[20] = v24;
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  v0[21] = OUTLINED_FUNCTION_127();
  v27 = sub_1D5613AF8();
  v0[22] = v27;
  OUTLINED_FUNCTION_69(v27);
  v0[23] = v28;
  v30 = *(v29 + 64);
  v0[24] = OUTLINED_FUNCTION_127();
  v31 = type metadata accessor for GenericMusicItem();
  v0[25] = v31;
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  v0[26] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v34, v35, v36);
}

uint64_t sub_1D5546324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[25];
  v14 = v12[26];
  v15 = v12[2];
  OUTLINED_FUNCTION_5_151();
  sub_1D5540030();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = v12[26];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v18, v19);
      v20 = OUTLINED_FUNCTION_79_25();
      OUTLINED_FUNCTION_125_15(v20, v21);
      v22 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_56_0();
      (*(v23 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v17, v24);
      goto LABEL_3;
    case 7:
      v47 = v12[21];
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      v48 = swift_task_alloc();
      v12[29] = v48;
      OUTLINED_FUNCTION_21_82();
      sub_1D554B4BC(v49, v50);
      OUTLINED_FUNCTION_72_31();
      *v48 = v51;
      v48[1] = sub_1D5546978;
      v53 = v12[20];
      v52 = v12[21];
      goto LABEL_15;
    case 8:
      v36 = OUTLINED_FUNCTION_61_37();
      v37(v36);
      v38 = swift_task_alloc();
      v12[31] = v38;
      *v38 = v12;
      OUTLINED_FUNCTION_169_5(v38);
      v39 = v12[17];
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 9:
      v54 = v12[16];
      v55 = v12[14];
      OUTLINED_FUNCTION_100_16(v12[15]);
      v56();
      v57 = swift_task_alloc();
      v12[33] = v57;
      *v57 = v12;
      OUTLINED_FUNCTION_170_8(v57);
      v58 = v12[14];
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 14:
      v72 = v12[13];
      v73 = v12[11];
      OUTLINED_FUNCTION_100_16(v12[12]);
      v74();
      v75 = swift_task_alloc();
      v12[35] = v75;
      *v75 = v12;
      v75[1] = sub_1D5546C60;
      v76 = v12[13];
      v77 = v12[11];
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 16:
      v78 = v12[10];
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      v79 = swift_task_alloc();
      v12[37] = v79;
      OUTLINED_FUNCTION_19_88();
      sub_1D554B4BC(v80, v81);
      OUTLINED_FUNCTION_72_31();
      *v79 = v82;
      v79[1] = sub_1D5546D58;
      v84 = v12[9];
      v83 = v12[10];
      goto LABEL_15;
    case 17:
      v59 = v12[8];
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      v60 = swift_task_alloc();
      v12[39] = v60;
      OUTLINED_FUNCTION_20_97();
      sub_1D554B4BC(v61, v62);
      OUTLINED_FUNCTION_72_31();
      *v60 = v63;
      v60[1] = sub_1D5546E50;
      v65 = v12[7];
      v64 = v12[8];
LABEL_15:
      OUTLINED_FUNCTION_117_15();
      goto LABEL_16;
    case 21:
      sub_1D5540088(v12[26], type metadata accessor for GenericMusicItem);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v66, v67);
      v68 = OUTLINED_FUNCTION_12_57();
      OUTLINED_FUNCTION_125_15(v68, v69);
      v70 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_43_8();
      (*(v71 + 104))();
      swift_willThrow();
LABEL_3:
      v25 = v12[26];
      v26 = v12[24];
      OUTLINED_FUNCTION_44_44();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_134();

      return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
    default:
      v41 = v12[24];
      v42 = v12[22];
      OUTLINED_FUNCTION_100_16(v12[23]);
      v43();
      v44 = swift_task_alloc();
      v12[27] = v44;
      *v44 = v12;
      v44[1] = sub_1D5546880;
      v45 = v12[24];
      v46 = v12[22];
      OUTLINED_FUNCTION_117_15();
LABEL_13:
      OUTLINED_FUNCTION_93_0(v40);
LABEL_16:
      OUTLINED_FUNCTION_134();

      return MusicLibrary.download<A, B>(_:relatedItems:)();
  }
}

uint64_t sub_1D5546880()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5546978()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 240) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5546A70()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5546B68()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5546C60()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 288) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5546D58()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 304) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5546E50()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5546FE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for TVSeason() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for TVEpisode() - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1D5613838();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = sub_1D5614898();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = sub_1D560EEA8();
  v3[13] = v12;
  v13 = *(v12 - 8);
  v3[14] = v13;
  v14 = *(v13 + 64) + 15;
  v3[15] = swift_task_alloc();
  v15 = *(*(type metadata accessor for MusicMovie() - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_1D5613AF8();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();
  v19 = type metadata accessor for GenericMusicItem();
  v3[20] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5547274, 0, 0);
}

uint64_t sub_1D5547274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[20];
  v14 = v12[21];
  v15 = v12[2];
  OUTLINED_FUNCTION_5_151();
  sub_1D5540030();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = v12[21];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v18, v19);
      v20 = OUTLINED_FUNCTION_79_25();
      OUTLINED_FUNCTION_125_15(v20, v21);
      v22 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_56_0();
      (*(v23 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v17, v24);
      goto LABEL_3;
    case 7:
      v46 = v12[16];
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C48);
      v81 = v47;
      v48 = swift_task_alloc();
      v12[24] = v48;
      *v48 = v12;
      OUTLINED_FUNCTION_170_8(v48);
      goto LABEL_14;
    case 8:
      v36 = v12[15];
      v37 = v12[13];
      OUTLINED_FUNCTION_100_16(v12[14]);
      v38();
      OUTLINED_FUNCTION_27_0(&unk_1D5672A30);
      v81 = v39;
      v40 = swift_task_alloc();
      v12[26] = v40;
      *v40 = v12;
      v40[1] = sub_1D5545C3C;
      v41 = v12[15];
      goto LABEL_14;
    case 9:
      v49 = v12[12];
      v50 = v12[10];
      OUTLINED_FUNCTION_100_16(v12[11]);
      v51();
      OUTLINED_FUNCTION_27_0(&unk_1D5672940);
      v81 = v52;
      v53 = swift_task_alloc();
      v12[28] = v53;
      *v53 = v12;
      v53[1] = sub_1D5545D34;
      v41 = v12[12];
      goto LABEL_14;
    case 14:
      v63 = v12[9];
      v64 = v12[7];
      OUTLINED_FUNCTION_100_16(v12[8]);
      v65();
      OUTLINED_FUNCTION_27_0(&unk_1D5672B20);
      v81 = v66;
      v67 = swift_task_alloc();
      v12[30] = v67;
      *v67 = v12;
      v67[1] = sub_1D5545E2C;
      v41 = v12[9];
      goto LABEL_14;
    case 16:
      v68 = v12[6];
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C50);
      v81 = v69;
      v70 = swift_task_alloc();
      v12[32] = v70;
      *v70 = v12;
      v70[1] = sub_1D5545F24;
      v41 = v12[6];
      goto LABEL_14;
    case 17:
      v54 = v12[5];
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C58);
      v81 = v55;
      v56 = swift_task_alloc();
      v12[34] = v56;
      *v56 = v12;
      v56[1] = sub_1D554601C;
      v41 = v12[5];
      goto LABEL_14;
    case 21:
      sub_1D5540088(v12[21], type metadata accessor for GenericMusicItem);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v57, v58);
      v59 = OUTLINED_FUNCTION_12_57();
      OUTLINED_FUNCTION_125_15(v59, v60);
      v61 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_43_8();
      (*(v62 + 104))();
      swift_willThrow();
LABEL_3:
      v25 = v12[21];
      v26 = v12[19];
      OUTLINED_FUNCTION_74_30();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_134();

      return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
    default:
      v42 = OUTLINED_FUNCTION_61_37();
      v43(v42);
      OUTLINED_FUNCTION_27_0(&unk_1D5672C10);
      v81 = v44;
      v45 = swift_task_alloc();
      v12[22] = v45;
      *v45 = v12;
      OUTLINED_FUNCTION_169_5(v45);
LABEL_14:
      v71 = v12[3];
      v72 = v12[4];
      OUTLINED_FUNCTION_93_0(v41);
      OUTLINED_FUNCTION_134();

      return v75(v73, v74, v75, v76, v77, v78, v79, v80, v81, a10, a11, a12);
  }
}

uint64_t MusicLibrary.remove<A>(_:relatedItems:)()
{
  OUTLINED_FUNCTION_60();
  v5 = OUTLINED_FUNCTION_155_6(v1, v2, v3, v4);
  v0[7] = v5;
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  v0[8] = OUTLINED_FUNCTION_127();
  v8 = type metadata accessor for TVEpisode();
  v0[9] = v8;
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_176_5(v11);
  v12 = sub_1D5613838();
  v0[11] = v12;
  OUTLINED_FUNCTION_69(v12);
  v0[12] = v13;
  v15 = *(v14 + 64);
  v0[13] = OUTLINED_FUNCTION_127();
  v16 = sub_1D5614898();
  v0[14] = v16;
  OUTLINED_FUNCTION_69(v16);
  v0[15] = v17;
  v19 = *(v18 + 64);
  v0[16] = OUTLINED_FUNCTION_127();
  v20 = sub_1D560EEA8();
  v0[17] = v20;
  OUTLINED_FUNCTION_69(v20);
  v0[18] = v21;
  v23 = *(v22 + 64);
  v0[19] = OUTLINED_FUNCTION_127();
  v24 = type metadata accessor for MusicMovie();
  v0[20] = v24;
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  v0[21] = OUTLINED_FUNCTION_127();
  v27 = sub_1D5613AF8();
  v0[22] = v27;
  OUTLINED_FUNCTION_69(v27);
  v0[23] = v28;
  v30 = *(v29 + 64);
  v0[24] = OUTLINED_FUNCTION_127();
  v31 = type metadata accessor for GenericMusicItem();
  v0[25] = v31;
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  v0[26] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v34, v35, v36);
}

uint64_t sub_1D5547950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[25];
  v14 = v12[26];
  v15 = v12[2];
  OUTLINED_FUNCTION_5_151();
  sub_1D5540030();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = v12[26];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v18, v19);
      v20 = OUTLINED_FUNCTION_79_25();
      OUTLINED_FUNCTION_125_15(v20, v21);
      v22 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_56_0();
      (*(v23 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v17, v24);
      goto LABEL_3;
    case 7:
      v47 = v12[21];
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      v48 = swift_task_alloc();
      v12[29] = v48;
      OUTLINED_FUNCTION_21_82();
      sub_1D554B4BC(v49, v50);
      OUTLINED_FUNCTION_72_31();
      *v48 = v51;
      v48[1] = sub_1D5546978;
      v53 = v12[20];
      v52 = v12[21];
      goto LABEL_15;
    case 8:
      v36 = OUTLINED_FUNCTION_61_37();
      v37(v36);
      v38 = swift_task_alloc();
      v12[31] = v38;
      *v38 = v12;
      OUTLINED_FUNCTION_169_5(v38);
      v39 = v12[17];
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 9:
      v54 = v12[16];
      v55 = v12[14];
      OUTLINED_FUNCTION_100_16(v12[15]);
      v56();
      v57 = swift_task_alloc();
      v12[33] = v57;
      *v57 = v12;
      OUTLINED_FUNCTION_170_8(v57);
      v58 = v12[14];
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 14:
      v72 = v12[13];
      v73 = v12[11];
      OUTLINED_FUNCTION_100_16(v12[12]);
      v74();
      v75 = swift_task_alloc();
      v12[35] = v75;
      *v75 = v12;
      v75[1] = sub_1D5546C60;
      v76 = v12[13];
      v77 = v12[11];
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 16:
      v78 = v12[10];
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      v79 = swift_task_alloc();
      v12[37] = v79;
      OUTLINED_FUNCTION_19_88();
      sub_1D554B4BC(v80, v81);
      OUTLINED_FUNCTION_72_31();
      *v79 = v82;
      v79[1] = sub_1D5546D58;
      v84 = v12[9];
      v83 = v12[10];
      goto LABEL_15;
    case 17:
      v59 = v12[8];
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      v60 = swift_task_alloc();
      v12[39] = v60;
      OUTLINED_FUNCTION_20_97();
      sub_1D554B4BC(v61, v62);
      OUTLINED_FUNCTION_72_31();
      *v60 = v63;
      v60[1] = sub_1D5546E50;
      v65 = v12[7];
      v64 = v12[8];
LABEL_15:
      OUTLINED_FUNCTION_117_15();
      goto LABEL_16;
    case 21:
      sub_1D5540088(v12[26], type metadata accessor for GenericMusicItem);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v66, v67);
      v68 = OUTLINED_FUNCTION_12_57();
      OUTLINED_FUNCTION_125_15(v68, v69);
      v70 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_43_8();
      (*(v71 + 104))();
      swift_willThrow();
LABEL_3:
      v25 = v12[26];
      v26 = v12[24];
      OUTLINED_FUNCTION_44_44();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_134();

      return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
    default:
      v41 = v12[24];
      v42 = v12[22];
      OUTLINED_FUNCTION_100_16(v12[23]);
      v43();
      v44 = swift_task_alloc();
      v12[27] = v44;
      *v44 = v12;
      v44[1] = sub_1D5546880;
      v45 = v12[24];
      v46 = v12[22];
      OUTLINED_FUNCTION_117_15();
LABEL_13:
      OUTLINED_FUNCTION_93_0(v40);
LABEL_16:
      OUTLINED_FUNCTION_134();

      return MusicLibrary.remove<A, B>(_:relatedItems:)();
  }
}

uint64_t MusicLibrary.removeDownload(_:)()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_27_0(&unk_1D56719D0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E6ED20;
  v2 = OUTLINED_FUNCTION_174_7();

  return v3(v2);
}

uint64_t sub_1D5547F4C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for TVSeason() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for TVEpisode() - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1D5613838();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = sub_1D5614898();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = sub_1D560EEA8();
  v3[13] = v12;
  v13 = *(v12 - 8);
  v3[14] = v13;
  v14 = *(v13 + 64) + 15;
  v3[15] = swift_task_alloc();
  v15 = *(*(type metadata accessor for MusicMovie() - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_1D5613AF8();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();
  v19 = type metadata accessor for GenericMusicItem();
  v3[20] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D55481D8, 0, 0);
}

uint64_t sub_1D55481D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[20];
  v14 = v12[21];
  v15 = v12[2];
  OUTLINED_FUNCTION_5_151();
  sub_1D5540030();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = v12[21];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v18, v19);
      v20 = OUTLINED_FUNCTION_79_25();
      OUTLINED_FUNCTION_125_15(v20, v21);
      v22 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_56_0();
      (*(v23 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v17, v24);
      goto LABEL_3;
    case 7:
      v46 = v12[16];
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C18);
      v81 = v47;
      v48 = swift_task_alloc();
      v12[24] = v48;
      *v48 = v12;
      OUTLINED_FUNCTION_170_8(v48);
      goto LABEL_14;
    case 8:
      v36 = v12[15];
      v37 = v12[13];
      OUTLINED_FUNCTION_100_16(v12[14]);
      v38();
      OUTLINED_FUNCTION_27_0(&unk_1D5672A10);
      v81 = v39;
      v40 = swift_task_alloc();
      v12[26] = v40;
      *v40 = v12;
      v40[1] = sub_1D5548894;
      v41 = v12[15];
      goto LABEL_14;
    case 9:
      v49 = v12[12];
      v50 = v12[10];
      OUTLINED_FUNCTION_100_16(v12[11]);
      v51();
      OUTLINED_FUNCTION_27_0(&unk_1D5672920);
      v81 = v52;
      v53 = swift_task_alloc();
      v12[28] = v53;
      *v53 = v12;
      v53[1] = sub_1D554898C;
      v41 = v12[12];
      goto LABEL_14;
    case 14:
      v63 = v12[9];
      v64 = v12[7];
      OUTLINED_FUNCTION_100_16(v12[8]);
      v65();
      OUTLINED_FUNCTION_27_0(&unk_1D5672B00);
      v81 = v66;
      v67 = swift_task_alloc();
      v12[30] = v67;
      *v67 = v12;
      v67[1] = sub_1D5548A84;
      v41 = v12[9];
      goto LABEL_14;
    case 16:
      v68 = v12[6];
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C28);
      v81 = v69;
      v70 = swift_task_alloc();
      v12[32] = v70;
      *v70 = v12;
      v70[1] = sub_1D5548B7C;
      v41 = v12[6];
      goto LABEL_14;
    case 17:
      v54 = v12[5];
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_27_0(&unk_1D5672C38);
      v81 = v55;
      v56 = swift_task_alloc();
      v12[34] = v56;
      *v56 = v12;
      v56[1] = sub_1D5548C74;
      v41 = v12[5];
      goto LABEL_14;
    case 21:
      sub_1D5540088(v12[21], type metadata accessor for GenericMusicItem);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v57, v58);
      v59 = OUTLINED_FUNCTION_12_57();
      OUTLINED_FUNCTION_125_15(v59, v60);
      v61 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_43_8();
      (*(v62 + 104))();
      swift_willThrow();
LABEL_3:
      v25 = v12[21];
      v26 = v12[19];
      OUTLINED_FUNCTION_74_30();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_134();

      return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
    default:
      v42 = OUTLINED_FUNCTION_61_37();
      v43(v42);
      OUTLINED_FUNCTION_27_0(&unk_1D5672BF0);
      v81 = v44;
      v45 = swift_task_alloc();
      v12[22] = v45;
      *v45 = v12;
      OUTLINED_FUNCTION_169_5(v45);
LABEL_14:
      v71 = v12[3];
      v72 = v12[4];
      OUTLINED_FUNCTION_93_0(v41);
      OUTLINED_FUNCTION_134();

      return v75(v73, v74, v75, v76, v77, v78, v79, v80, v81, a10, a11, a12);
  }
}

uint64_t sub_1D55486A4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D554879C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5548894()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D554898C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5548A84()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 248) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5548B7C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 256);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 264) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5548C74()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 272);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 280) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5548D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v10 = OUTLINED_FUNCTION_136_13();
  v11(v10);
  OUTLINED_FUNCTION_55_37();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D5548E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v11 = OUTLINED_FUNCTION_136_13();
  v12(v11);
  v13 = *(v10 + 184);
  OUTLINED_FUNCTION_56_39();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D5548EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 128);
  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v12, v13);
  OUTLINED_FUNCTION_55_37();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D5548F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 128);
  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v12, v13);
  v14 = *(v10 + 200);
  OUTLINED_FUNCTION_56_39();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1D5548FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  (*(v10[14] + 8))(v10[15], v10[13]);
  OUTLINED_FUNCTION_55_37();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D55490A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  (*(v10[14] + 8))(v10[15], v10[13]);
  v11 = v10[27];
  OUTLINED_FUNCTION_56_39();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D5549158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  (*(v10[11] + 8))(v10[12], v10[10]);
  OUTLINED_FUNCTION_55_37();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D5549204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  (*(v10[11] + 8))(v10[12], v10[10]);
  v11 = v10[29];
  OUTLINED_FUNCTION_56_39();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D55492B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  (*(v10[8] + 8))(v10[9], v10[7]);
  OUTLINED_FUNCTION_55_37();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D5549360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  (*(v10[8] + 8))(v10[9], v10[7]);
  v11 = v10[31];
  OUTLINED_FUNCTION_56_39();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D5549410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 48);
  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v12, v13);
  OUTLINED_FUNCTION_55_37();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D55494B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 48);
  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v12, v13);
  v14 = *(v10 + 264);
  OUTLINED_FUNCTION_56_39();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1D5549554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 40);
  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v12, v13);
  OUTLINED_FUNCTION_55_37();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D55495F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 40);
  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v12, v13);
  v14 = *(v10 + 280);
  OUTLINED_FUNCTION_56_39();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t MusicLibrary.removeDownload<A>(_:relatedItems:)()
{
  OUTLINED_FUNCTION_60();
  v5 = OUTLINED_FUNCTION_155_6(v1, v2, v3, v4);
  v0[7] = v5;
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  v0[8] = OUTLINED_FUNCTION_127();
  v8 = type metadata accessor for TVEpisode();
  v0[9] = v8;
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_176_5(v11);
  v12 = sub_1D5613838();
  v0[11] = v12;
  OUTLINED_FUNCTION_69(v12);
  v0[12] = v13;
  v15 = *(v14 + 64);
  v0[13] = OUTLINED_FUNCTION_127();
  v16 = sub_1D5614898();
  v0[14] = v16;
  OUTLINED_FUNCTION_69(v16);
  v0[15] = v17;
  v19 = *(v18 + 64);
  v0[16] = OUTLINED_FUNCTION_127();
  v20 = sub_1D560EEA8();
  v0[17] = v20;
  OUTLINED_FUNCTION_69(v20);
  v0[18] = v21;
  v23 = *(v22 + 64);
  v0[19] = OUTLINED_FUNCTION_127();
  v24 = type metadata accessor for MusicMovie();
  v0[20] = v24;
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  v0[21] = OUTLINED_FUNCTION_127();
  v27 = sub_1D5613AF8();
  v0[22] = v27;
  OUTLINED_FUNCTION_69(v27);
  v0[23] = v28;
  v30 = *(v29 + 64);
  v0[24] = OUTLINED_FUNCTION_127();
  v31 = type metadata accessor for GenericMusicItem();
  v0[25] = v31;
  OUTLINED_FUNCTION_22(v31);
  v33 = *(v32 + 64);
  v0[26] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v34, v35, v36);
}

uint64_t sub_1D55498A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[25];
  v14 = v12[26];
  v15 = v12[2];
  OUTLINED_FUNCTION_5_151();
  sub_1D5540030();
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = v12[26];
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 10:
    case 11:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v18, v19);
      v20 = OUTLINED_FUNCTION_79_25();
      OUTLINED_FUNCTION_125_15(v20, v21);
      v22 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_56_0();
      (*(v23 + 104))();
      swift_willThrow();
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v17, v24);
      goto LABEL_3;
    case 7:
      v47 = v12[21];
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      v48 = swift_task_alloc();
      v12[29] = v48;
      OUTLINED_FUNCTION_21_82();
      sub_1D554B4BC(v49, v50);
      OUTLINED_FUNCTION_72_31();
      *v48 = v51;
      v48[1] = sub_1D5549FA8;
      v53 = v12[20];
      v52 = v12[21];
      goto LABEL_15;
    case 8:
      v36 = OUTLINED_FUNCTION_61_37();
      v37(v36);
      v38 = swift_task_alloc();
      v12[31] = v38;
      *v38 = v12;
      OUTLINED_FUNCTION_169_5(v38);
      v39 = v12[17];
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 9:
      v54 = v12[16];
      v55 = v12[14];
      OUTLINED_FUNCTION_100_16(v12[15]);
      v56();
      v57 = swift_task_alloc();
      v12[33] = v57;
      *v57 = v12;
      OUTLINED_FUNCTION_170_8(v57);
      v58 = v12[14];
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 14:
      v72 = v12[13];
      v73 = v12[11];
      OUTLINED_FUNCTION_100_16(v12[12]);
      v74();
      v75 = swift_task_alloc();
      v12[35] = v75;
      *v75 = v12;
      v75[1] = sub_1D554A480;
      v76 = v12[13];
      v77 = v12[11];
      OUTLINED_FUNCTION_117_15();
      goto LABEL_13;
    case 16:
      v78 = v12[10];
      OUTLINED_FUNCTION_2_196();
      sub_1D553FFD8();
      v79 = swift_task_alloc();
      v12[37] = v79;
      OUTLINED_FUNCTION_19_88();
      sub_1D554B4BC(v80, v81);
      OUTLINED_FUNCTION_72_31();
      *v79 = v82;
      v79[1] = sub_1D554A624;
      v84 = v12[9];
      v83 = v12[10];
      goto LABEL_15;
    case 17:
      v59 = v12[8];
      OUTLINED_FUNCTION_3_203();
      sub_1D553FFD8();
      v60 = swift_task_alloc();
      v12[39] = v60;
      OUTLINED_FUNCTION_20_97();
      sub_1D554B4BC(v61, v62);
      OUTLINED_FUNCTION_72_31();
      *v60 = v63;
      v60[1] = sub_1D554A7BC;
      v65 = v12[7];
      v64 = v12[8];
LABEL_15:
      OUTLINED_FUNCTION_117_15();
      goto LABEL_16;
    case 21:
      sub_1D5540088(v12[26], type metadata accessor for GenericMusicItem);
      sub_1D560F078();
      OUTLINED_FUNCTION_0_265();
      sub_1D554B4BC(v66, v67);
      v68 = OUTLINED_FUNCTION_12_57();
      OUTLINED_FUNCTION_125_15(v68, v69);
      v70 = *MEMORY[0x1E6975570];
      OUTLINED_FUNCTION_43_8();
      (*(v71 + 104))();
      swift_willThrow();
LABEL_3:
      v25 = v12[26];
      v26 = v12[24];
      OUTLINED_FUNCTION_44_44();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_134();

      return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
    default:
      v41 = v12[24];
      v42 = v12[22];
      OUTLINED_FUNCTION_100_16(v12[23]);
      v43();
      v44 = swift_task_alloc();
      v12[27] = v44;
      *v44 = v12;
      v44[1] = sub_1D5549E04;
      v45 = v12[24];
      v46 = v12[22];
      OUTLINED_FUNCTION_117_15();
LABEL_13:
      OUTLINED_FUNCTION_93_0(v40);
LABEL_16:
      OUTLINED_FUNCTION_134();

      return MusicLibrary.removeDownload<A, B>(_:relatedItems:)();
  }
}

uint64_t sub_1D5549E04()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 216);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 224) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5549EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  (*(v10[23] + 8))(v10[24], v10[22]);
  OUTLINED_FUNCTION_37_52();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D5549FA8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 240) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D554A0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 168);
  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v12, v13);
  OUTLINED_FUNCTION_37_52();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D554A140()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 256) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D554A238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v10 = OUTLINED_FUNCTION_136_13();
  v11(v10);
  OUTLINED_FUNCTION_37_52();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D554A2DC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D554A3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  (*(v10[15] + 8))(v10[16], v10[14]);
  OUTLINED_FUNCTION_37_52();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D554A480()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 288) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D554A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  (*(v10[12] + 8))(v10[13], v10[11]);
  OUTLINED_FUNCTION_37_52();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_1D554A624()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 304) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D554A71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v12, v13);
  OUTLINED_FUNCTION_37_52();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D554A7BC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 320) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D554A8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v12, v13);
  OUTLINED_FUNCTION_37_52();

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D554A954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  (*(v10[23] + 8))(v10[24], v10[22]);
  v11 = v10[28];
  OUTLINED_FUNCTION_36_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D554AA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 168);
  OUTLINED_FUNCTION_6_157();
  sub_1D5540088(v12, v13);
  v14 = *(v10 + 240);
  OUTLINED_FUNCTION_36_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1D554AAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v11 = OUTLINED_FUNCTION_136_13();
  v12(v11);
  v13 = *(v10 + 256);
  OUTLINED_FUNCTION_36_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D554AB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  (*(v10[15] + 8))(v10[16], v10[14]);
  v11 = v10[34];
  OUTLINED_FUNCTION_36_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D554AC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  (*(v10[12] + 8))(v10[13], v10[11]);
  v11 = v10[36];
  OUTLINED_FUNCTION_36_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1D554ACB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_9_131();
  sub_1D5540088(v12, v13);
  v14 = *(v10 + 304);
  OUTLINED_FUNCTION_36_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1D554AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10_129();
  sub_1D5540088(v12, v13);
  v14 = *(v10 + 320);
  OUTLINED_FUNCTION_36_64();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_348_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t MusicLibrary.supportedStatus<A>(for:action:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, NSObject *a4@<X8>)
{
  v108 = type metadata accessor for TVSeason();
  v4 = OUTLINED_FUNCTION_14(v108);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v107 = (v8 - v7);
  OUTLINED_FUNCTION_70_0();
  v106 = type metadata accessor for TVEpisode();
  v9 = OUTLINED_FUNCTION_14(v106);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v105 = (v13 - v12);
  OUTLINED_FUNCTION_70_0();
  v14 = sub_1D5613838();
  v15 = OUTLINED_FUNCTION_4(v14);
  v103 = v16;
  v104 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v102 = (v20 - v19);
  OUTLINED_FUNCTION_70_0();
  v21 = sub_1D5614898();
  v22 = OUTLINED_FUNCTION_4(v21);
  v100 = v23;
  v101 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v99 = (v27 - v26);
  OUTLINED_FUNCTION_70_0();
  v96 = sub_1D560EEA8();
  v28 = OUTLINED_FUNCTION_4(v96);
  v98 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v34 = (v33 - v32);
  v35 = type metadata accessor for MusicMovie();
  v36 = OUTLINED_FUNCTION_14(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v41 = (v40 - v39);
  v42 = sub_1D5613EF8();
  v43 = OUTLINED_FUNCTION_4(v42);
  v97 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5();
  v49 = (v48 - v47);
  v50 = sub_1D5613AF8();
  v51 = OUTLINED_FUNCTION_4(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5();
  v58 = (v57 - v56);
  v59 = type metadata accessor for GenericMusicItem();
  v60 = OUTLINED_FUNCTION_14(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5();
  v65 = v64 - v63;
  OUTLINED_FUNCTION_5_151();
  sub_1D5540030();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_33_1();
      v76(v49, v65, v42);
      MusicLibrary.supportedStatus<A, B>(for:action:)(v49, a1, v42, a2, &protocol witness table for Artist, a3, a4);
      v77 = *(v97 + 8);
      v78 = v49;
      return v77(v78, v42);
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xFu:
    case 0x12u:
    case 0x13u:
    case 0x14u:
      OUTLINED_FUNCTION_184_5();
      v66 = OUTLINED_FUNCTION_195_6();
      v67 = OUTLINED_FUNCTION_173_6(v66);
      v68(v67);
      OUTLINED_FUNCTION_99_17(&protocol requirements base descriptor for MusicLibraryAction);
      OUTLINED_FUNCTION_1_200();
      v70 = v65;
      goto LABEL_3;
    case 7u:
      OUTLINED_FUNCTION_4_157();
      sub_1D553FFD8();
      OUTLINED_FUNCTION_21_82();
      v74 = sub_1D554B4BC(v72, v73);
      MusicLibrary.supportedStatus<A, B>(for:action:)(v41, a1, v35, a2, v74, a3, a4);
      OUTLINED_FUNCTION_6_157();
      v70 = v41;
      goto LABEL_3;
    case 8u:
      (*(v98 + 32))(v34, v65, v96);
      MusicLibrary.supportedStatus<A, B>(for:action:)(v34, a1, v96, a2, &protocol witness table for MusicVideo, a3, a4);
      return (*(v98 + 8))(v34, v96);
    case 9u:
      v80 = v99;
      v79 = v100;
      OUTLINED_FUNCTION_33_1();
      v42 = v101;
      v81(v99, v65, v101);
      v82 = &protocol witness table for Playlist;
      goto LABEL_13;
    case 0xEu:
      v80 = v102;
      v79 = v103;
      OUTLINED_FUNCTION_33_1();
      v42 = v104;
      v92(v102, v65, v104);
      v82 = &protocol witness table for Song;
LABEL_13:
      MusicLibrary.supportedStatus<A, B>(for:action:)(v80, a1, v42, a2, v82, a3, a4);
      v77 = *(v79 + 8);
      v78 = v80;
      return v77(v78, v42);
    case 0x10u:
      OUTLINED_FUNCTION_2_196();
      v83 = v105;
      sub_1D553FFD8();
      OUTLINED_FUNCTION_19_88();
      v95 = sub_1D554B4BC(v93, v94);
      MusicLibrary.supportedStatus<A, B>(for:action:)(v105, a1, v106, a2, v95, a3, a4);
      v87 = type metadata accessor for TVEpisode;
      goto LABEL_17;
    case 0x11u:
      OUTLINED_FUNCTION_3_203();
      v83 = v107;
      sub_1D553FFD8();
      OUTLINED_FUNCTION_20_97();
      v86 = sub_1D554B4BC(v84, v85);
      MusicLibrary.supportedStatus<A, B>(for:action:)(v107, a1, v108, a2, v86, a3, a4);
      v87 = type metadata accessor for TVSeason;
LABEL_17:
      v69 = v87;
      v70 = v83;
LABEL_3:
      result = sub_1D5540088(v70, v69);
      break;
    case 0x15u:
      OUTLINED_FUNCTION_1_200();
      sub_1D5540088(v65, v88);
      OUTLINED_FUNCTION_184_5();
      v89 = OUTLINED_FUNCTION_195_6();
      v90 = OUTLINED_FUNCTION_173_6(v89);
      v91(v90);
      result = OUTLINED_FUNCTION_99_17(&protocol requirements base descriptor for MusicLibraryAction);
      break;
    default:
      OUTLINED_FUNCTION_33_1();
      v75(v58, v65, v50);
      MusicLibrary.supportedStatus<A, B>(for:action:)(v58, a1, v50, a2, &protocol witness table for Album, a3, a4);
      result = (*(v53 + 8))(v58, v50);
      break;
  }

  return result;
}

uint64_t sub_1D554B4BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D554B504()
{
  OUTLINED_FUNCTION_80();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8338, &qword_1D56719E0);
  OUTLINED_FUNCTION_22(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_149_6();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_54_41(v4);

  return sub_1D553D720(v6, v7);
}

uint64_t sub_1D554B5CC()
{
  OUTLINED_FUNCTION_80();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8340, &qword_1D5671A00);
  OUTLINED_FUNCTION_22(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_149_6();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_54_41(v4);

  return sub_1D553D674(v6, v7);
}

uint64_t sub_1D554B694()
{
  OUTLINED_FUNCTION_80();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8348, &qword_1D5671A20);
  OUTLINED_FUNCTION_22(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_149_6();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_54_41(v4);

  return sub_1D553D4CC(v6, v7);
}

uint64_t sub_1D554B75C()
{
  OUTLINED_FUNCTION_80();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8350, &qword_1D5671A40);
  OUTLINED_FUNCTION_22(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_149_6();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_54_41(v4);

  return sub_1D553D420(v6, v7);
}

uint64_t sub_1D554B824()
{
  OUTLINED_FUNCTION_80();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8358, &qword_1D5671A60);
  OUTLINED_FUNCTION_22(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_149_6();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_54_41(v4);

  return sub_1D553D374(v6, v7);
}

uint64_t sub_1D554B8EC()
{
  OUTLINED_FUNCTION_80();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8360, &qword_1D5671A80);
  OUTLINED_FUNCTION_22(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_149_6();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_54_41(v4);

  return sub_1D553D2C8(v6, v7);
}

uint64_t sub_1D554B9B4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_125_15(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 8))(v2);
  return v2;
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(*(v3 - 1) + 64);
  v5 = (v2 + ((*(*(v3 - 1) + 80) + 16) & ~*(*(v3 - 1) + 80)));
  v6 = *v5;

  v7 = v3[17];
  v8 = sub_1D5613838();
  if (!__swift_getEnumTagSinglePayload(&v5[v7], 1, v8))
  {
    OUTLINED_FUNCTION_56_0();
    (*(v9 + 8))(&v5[v7], v8);
  }

  v10 = *&v5[v3[18]];

  return swift_deallocObject();
}

uint64_t sub_1D554BB20()
{
  OUTLINED_FUNCTION_80();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8368, &qword_1D5671AA0);
  OUTLINED_FUNCTION_22(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_149_6();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_54_41(v4);

  return sub_1D553D21C(v6, v7);
}

uint64_t OUTLINED_FUNCTION_25_69(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 40);
  return *(v2 + 48);
}

void OUTLINED_FUNCTION_28_71()
{
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];
  *(v1 + 32) = v0[16];
}

uint64_t OUTLINED_FUNCTION_37_52()
{
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[8];
}

uint64_t OUTLINED_FUNCTION_46_44()
{
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];

  return sub_1D560C358();
}

uint64_t OUTLINED_FUNCTION_47_49()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_61_37()
{
  result = v0[19];
  v2 = v0[17];
  v3 = *(v0[18] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_66_28(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v10 = a1;

  return sub_1D4E6835C(v12, v11, &a10);
}

uint64_t OUTLINED_FUNCTION_67_35()
{
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[4];

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_68_29(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_71_27()
{

  return sub_1D4FB8058();
}

uint64_t OUTLINED_FUNCTION_74_30()
{
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[12];
  v5 = v0[9];
  v7 = v0[5];
  v6 = v0[6];
}

uint64_t OUTLINED_FUNCTION_76_21(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_103_17()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_106_16()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_117_15()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
}

uint64_t OUTLINED_FUNCTION_131_7()
{
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[18];
  v7 = v0[19];
}

uint64_t OUTLINED_FUNCTION_132_12()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

id OUTLINED_FUNCTION_133_10(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id OUTLINED_FUNCTION_134_10(uint64_t a1)
{
  v3 = *(a1 + 24);
  *(v1 + 200) = v3;

  return v3;
}

uint64_t OUTLINED_FUNCTION_135_11()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_136_13()
{
  result = v0[19];
  v2 = v0[17];
  v3 = *(v0[18] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_155_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;

  return type metadata accessor for TVSeason();
}

uint64_t OUTLINED_FUNCTION_156_8()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 32);
}

uint64_t OUTLINED_FUNCTION_157_9(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1D4E6835C(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_160_10()
{
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[4];
}

uint64_t OUTLINED_FUNCTION_162_11()
{
}

uint64_t OUTLINED_FUNCTION_163_9()
{
  v2 = *(v0 + 32);

  return sub_1D560C758();
}

uint64_t OUTLINED_FUNCTION_164_7(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1D4E6835C(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_165_8()
{

  return sub_1D5614DB8();
}

uint64_t OUTLINED_FUNCTION_167_6()
{

  return sub_1D4FB8150();
}

uint64_t OUTLINED_FUNCTION_168_8()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_169_5(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_170_8(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_173_6(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(v2 - 104);
  return v1;
}

uint64_t OUTLINED_FUNCTION_177_8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[16] = a8;
  v9[17] = v8;
  v9[14] = a6;
  v9[15] = a7;
  v9[12] = a4;
  v9[13] = a5;
  v9[10] = a2;
  v9[11] = a3;
  v9[9] = result;
  return result;
}

void OUTLINED_FUNCTION_179_9()
{

  sub_1D4FDC9B8();
}

uint64_t OUTLINED_FUNCTION_180_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_181_7()
{
}

uint64_t OUTLINED_FUNCTION_182_5()
{

  return sub_1D5540030();
}

uint64_t OUTLINED_FUNCTION_184_5()
{
  v3 = *(v0 - 120);
  v2 = *(v0 - 112);

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_195_6()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_196_5()
{

  return sub_1D5540030();
}

uint64_t InternalMusicPlayer.Queue.Entry.Item.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v189 = a4;
  v191 = a3;
  v193 = a5;
  v7 = type metadata accessor for TVEpisode();
  v8 = OUTLINED_FUNCTION_22(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v11);
  v172 = sub_1D5613838();
  v12 = OUTLINED_FUNCTION_4(v172);
  v171 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v16);
  v17 = type metadata accessor for UploadedAudio();
  v18 = OUTLINED_FUNCTION_22(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v21);
  v170 = sub_1D560EEA8();
  v22 = OUTLINED_FUNCTION_4(v170);
  v169[2] = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v26);
  v27 = type metadata accessor for UploadedVideo();
  v28 = OUTLINED_FUNCTION_22(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v31);
  v183 = sub_1D5613598();
  v32 = OUTLINED_FUNCTION_4(v183);
  v179 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_59_0();
  v181 = (v36 - v37);
  MEMORY[0x1EEE9AC00](v38);
  v182 = v169 - v39;
  OUTLINED_FUNCTION_70_0();
  v175 = sub_1D5614828();
  v40 = OUTLINED_FUNCTION_4(v175);
  v174 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v44);
  v186 = sub_1D560D9A8();
  v45 = OUTLINED_FUNCTION_4(v186);
  v178 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v49);
  v50 = type metadata accessor for MusicMovie();
  v51 = OUTLINED_FUNCTION_22(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5();
  v56 = v55 - v54;
  v57 = sub_1D560E728();
  v58 = OUTLINED_FUNCTION_4(v57);
  v184 = v59;
  v185 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5();
  v188 = sub_1D560D838();
  v62 = OUTLINED_FUNCTION_4(v188);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_59_0();
  v180 = v67 - v68;
  v70 = MEMORY[0x1EEE9AC00](v69);
  v72 = v169 - v71;
  MEMORY[0x1EEE9AC00](v70);
  v187 = v169 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v75 = OUTLINED_FUNCTION_22(v74);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v79 = v169 - v78;
  sub_1D560F7E8();
  sub_1D4F165C4();
  v80 = sub_1D5614C68();

  v82 = sub_1D4FBE524(v81);
  v190 = a2;
  if (sub_1D560F7B8())
  {
    if (v82 == 15)
    {
      v83 = 11;
    }

    else
    {
      v83 = v82;
    }

    v194 = v79;
    v192 = a1;
    sub_1D560D4F8();
    switch(v83)
    {
      case 6:

        v84 = v177;
        sub_1D560D898();
        v85 = v192;
        sub_1D560D588();
        OUTLINED_FUNCTION_20_98();
        v86 = OUTLINED_FUNCTION_18_95();
        v87(v86);
        (*(v178 + 8))(v84, v186);
        v88 = OUTLINED_FUNCTION_22_78();
        v89 = v188;
        v90(v88, v79, v188);
        v91 = v191;
        sub_1D4EC76A8(v191, v197);
        v92 = v173;
        sub_1D5614718();
        swift_unknownObjectRelease();
        sub_1D4E50004(v91, &qword_1EC7EEC40, &unk_1D561C070);
        v93 = *(v64 + 8);
        v93(v85, v89);
        v93(v79, v89);
        sub_1D4E50004(v80, &unk_1EC7EBF30, &qword_1D561C8C0);
        v94 = OUTLINED_FUNCTION_34_4(&v204);
        v95(v94, v92, v175);
        goto LABEL_13;
      case 7:

        v107 = v188;
        if (qword_1EDD53D48 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v186, qword_1EDD53D50);
        v108 = v192;
        sub_1D560D588();
        v109 = v187;
        v110 = v194;
        sub_1D560F7D8();
        v111 = OUTLINED_FUNCTION_18_95();
        v112(v111);
        v113 = OUTLINED_FUNCTION_22_78();
        v114(v113, v109, v107);
        v115 = v191;
        sub_1D4EC76A8(v191, v197);
        MusicMovie.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)();
        swift_unknownObjectRelease();
        sub_1D4E50004(v115, &qword_1EC7EEC40, &unk_1D561C070);
        v116 = *(v64 + 8);
        v116(v108, v107);
        v116(v109, v107);
        sub_1D4E50004(v110, &unk_1EC7EBF30, &qword_1D561C8C0);
        OUTLINED_FUNCTION_4_158();
        OUTLINED_FUNCTION_29_64(v56, v117, v118);
        goto LABEL_13;
      case 11:

        v120 = sub_1D560F7E8();
        v121 = *(v179 + 104);
        v121(v182, *MEMORY[0x1E6976B00], v183);
        v122 = sub_1D5613588();
        sub_1D4E494C8(v122, v123, v120);

        v124 = v188;
        if (v200)
        {
          if (OUTLINED_FUNCTION_28_72())
          {
            LODWORD(v176) = v196;
            goto LABEL_19;
          }
        }

        else
        {
          sub_1D4E50004(v197, &qword_1EC7E9F98, &qword_1D561C420);
        }

        LODWORD(v176) = 0;
LABEL_19:
        v121(v181, *MEMORY[0x1E6976AB0], v183);
        v125 = sub_1D5613588();
        sub_1D4E494C8(v125, v126, v120);

        if (v200)
        {
          v127 = OUTLINED_FUNCTION_28_72();
          v128 = v187;
          if (v127)
          {
            v129 = v196;
          }

          else
          {
            v129 = 0;
          }
        }

        else
        {
          sub_1D4E50004(v197, &qword_1EC7E9F98, &qword_1D561C420);
          v129 = 0;
          v128 = v187;
        }

        v130 = v177;
        sub_1D560D8E8();
        sub_1D560D588();
        v131 = v180;
        sub_1D560F7D8();
        v132 = OUTLINED_FUNCTION_18_95();
        v133(v132);
        (*(v178 + 8))(v130, v186);
        v134 = (*(v64 + 16))(v128, v131, v124);
        v135 = (v64 + 8);
        if (v176)
        {
          OUTLINED_FUNCTION_30_72(v134, v197);
          if (v129)
          {
            v136 = OUTLINED_FUNCTION_7_145(v197);
            UploadedVideo.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v136, v137, v138, v139, v140);
            swift_unknownObjectRelease();
            sub_1D4E50004(v124, &qword_1EC7EEC40, &unk_1D561C070);
            v141 = OUTLINED_FUNCTION_17_93();
            v124(v141);
            v142 = OUTLINED_FUNCTION_19_89();
            v124(v142);
            v143 = OUTLINED_FUNCTION_8_136();
            v135(v143);
            v144 = OUTLINED_FUNCTION_27_75();
            v135(v144);
            sub_1D4E50004(v194, &unk_1EC7EBF30, &qword_1D561C8C0);
            OUTLINED_FUNCTION_13_101();
            OUTLINED_FUNCTION_29_64(v129, v145, v146);
          }

          else
          {
            OUTLINED_FUNCTION_7_145(v198);
            sub_1D560ED38();
            swift_unknownObjectRelease();
            sub_1D4E50004(v124, &qword_1EC7EEC40, &unk_1D561C070);
            v157 = OUTLINED_FUNCTION_17_93();
            v124(v157);
            v158 = OUTLINED_FUNCTION_19_89();
            v124(v158);
            v159 = OUTLINED_FUNCTION_8_136();
            v135(v159);
            v160 = OUTLINED_FUNCTION_27_75();
            v135(v160);
            sub_1D4E50004(v194, &unk_1EC7EBF30, &qword_1D561C8C0);
            v161 = OUTLINED_FUNCTION_34_4(v199);
            v162(v161, v129, v170);
          }
        }

        else
        {
          OUTLINED_FUNCTION_30_72(v134, v197);
          if (v129)
          {
            v147 = OUTLINED_FUNCTION_7_145(v201);
            UploadedAudio.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v147, v148, v149, v150);
            swift_unknownObjectRelease();
            sub_1D4E50004(v124, &qword_1EC7EEC40, &unk_1D561C070);
            v151 = OUTLINED_FUNCTION_17_93();
            v124(v151);
            v152 = OUTLINED_FUNCTION_19_89();
            v124(v152);
            v153 = OUTLINED_FUNCTION_8_136();
            v135(v153);
            v154 = OUTLINED_FUNCTION_27_75();
            v135(v154);
            sub_1D4E50004(v194, &unk_1EC7EBF30, &qword_1D561C8C0);
            OUTLINED_FUNCTION_12_107();
            OUTLINED_FUNCTION_29_64(v129, v155, v156);
          }

          else
          {
            OUTLINED_FUNCTION_7_145(v202);
            sub_1D5613638();
            swift_unknownObjectRelease();
            sub_1D4E50004(v124, &qword_1EC7EEC40, &unk_1D561C070);
            v163 = OUTLINED_FUNCTION_17_93();
            v124(v163);
            v164 = OUTLINED_FUNCTION_19_89();
            v124(v164);
            v165 = OUTLINED_FUNCTION_8_136();
            v135(v165);
            v166 = OUTLINED_FUNCTION_27_75();
            v135(v166);
            sub_1D4E50004(v194, &unk_1EC7EBF30, &qword_1D561C8C0);
            v167 = OUTLINED_FUNCTION_34_4(&v203);
            v168(v167, v129, v172);
          }
        }

LABEL_13:
        type metadata accessor for InternalMusicPlayer.Queue.Entry.Item();
        result = swift_storeEnumTagMultiPayload();
        break;
      case 12:

        v96 = v188;
        if (qword_1EDD53C38 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v186, qword_1EDD53C40);
        v97 = v192;
        sub_1D560D588();
        OUTLINED_FUNCTION_20_98();
        v98 = OUTLINED_FUNCTION_18_95();
        v99(v98);
        v100 = OUTLINED_FUNCTION_22_78();
        v101(v100, v79, v96);
        v102 = v191;
        sub_1D4EC76A8(v191, v197);
        v103 = v176;
        TVEpisode.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v72, v190, v197, v189, v176);
        swift_unknownObjectRelease();
        sub_1D4E50004(v102, &qword_1EC7EEC40, &unk_1D561C070);
        v104 = *(v64 + 8);
        v104(v97, v96);
        v104(v79, v96);
        sub_1D4E50004(v80, &unk_1EC7EBF30, &qword_1D561C8C0);
        OUTLINED_FUNCTION_14_97();
        OUTLINED_FUNCTION_29_64(v103, v105, v106);
        goto LABEL_13;
      default:
        goto LABEL_31;
    }
  }

  else
  {
LABEL_31:
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t InternalMusicPlayer.Queue.Entry.Item.init(propertyProvider:underlyingLegacyModelObjectType:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_1D5613838();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v8 = sub_1D5614828();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v12);
  v13 = sub_1D560EEA8();
  v14 = OUTLINED_FUNCTION_4(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v17 = sub_1D560D838();
  v18 = OUTLINED_FUNCTION_4(v17);
  v77 = v19;
  v78 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v24 = (v23 - v22);
  v76 = type metadata accessor for MusicMovie();
  v25 = OUTLINED_FUNCTION_14(v76);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  v79 = v28;
  OUTLINED_FUNCTION_70_0();
  v29 = sub_1D5610088();
  v30 = OUTLINED_FUNCTION_4(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_59_0();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v82 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item();
  v39 = OUTLINED_FUNCTION_14(v82);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  v81 = v42;
  v43 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CF8();
  sub_1D560FE28();
  OUTLINED_FUNCTION_11_126();
  sub_1D4E5E5A4(v45, v46);
  LOBYTE(a1) = OUTLINED_FUNCTION_6_158();
  v47 = *(v32 + 8);
  v47(v37, v29);
  if (a1)
  {
    v48 = OUTLINED_FUNCTION_161();
    (v47)(v48);
    sub_1D4E628D4(v44, v84);
    __swift_project_boxed_opaque_existential_1(v84, v85);
    sub_1D5610CD8();
    v49 = sub_1D560D708();
    v51 = v50;
    (*(v77 + 8))(v24, v78);
    *v79 = v49;
    v79[1] = v51;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    v52 = v79 + *(v76 + 20);
    sub_1D5610D28();
    v53 = sub_1D5613158();
    OUTLINED_FUNCTION_14(v53);
    (*(v54 + 8))(a2);
    __swift_destroy_boxed_opaque_existential_1(v84);
    OUTLINED_FUNCTION_4_158();
    sub_1D554D928(v79, v81, v55);
    v24 = v44;
    v44 = v81;
LABEL_6:
    swift_storeEnumTagMultiPayload();
    sub_1D554D928(v44, a3, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  sub_1D560FE38();
  OUTLINED_FUNCTION_6_158();
  v56 = OUTLINED_FUNCTION_10_130();
  (v47)(v56);
  if (v24)
  {
    v58 = OUTLINED_FUNCTION_161();
    (v47)(v58);
    OUTLINED_FUNCTION_25_70();
    sub_1D560EDD8();
    v59 = sub_1D5613158();
    OUTLINED_FUNCTION_14(v59);
    (*(v60 + 8))(a2);
    v61 = OUTLINED_FUNCTION_15_97();
    v62(v61);
    goto LABEL_6;
  }

  sub_1D560FDF8();
  OUTLINED_FUNCTION_6_158();
  v57 = OUTLINED_FUNCTION_10_130();
  (v47)(v57);
  sub_1D560FF08();
  OUTLINED_FUNCTION_6_158();
  v64 = OUTLINED_FUNCTION_10_130();
  (v47)(v64);
  if (v24)
  {
    v65 = OUTLINED_FUNCTION_161();
    (v47)(v65);
    OUTLINED_FUNCTION_25_70();
    sub_1D5614768();
    v66 = sub_1D5613158();
    OUTLINED_FUNCTION_14(v66);
    (*(v67 + 8))(a2);
    v68 = OUTLINED_FUNCTION_15_97();
    v69(v68);
    goto LABEL_6;
  }

  sub_1D560FFA8();
  OUTLINED_FUNCTION_6_158();
  v70 = OUTLINED_FUNCTION_10_130();
  (v47)(v70);
  sub_1D560FE48();
  OUTLINED_FUNCTION_6_158();
  v71 = OUTLINED_FUNCTION_10_130();
  (v47)(v71);
  v84[0] = 0;
  v84[1] = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000037, 0x80000001D567E9D0);
  v72 = v44[4];
  __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  sub_1D5610CF8();
  OUTLINED_FUNCTION_11_126();
  sub_1D4E5E5A4(v73, v74);
  v75 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v75);

  v47(v37, v29);
  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D554D928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t InternalMusicPlayer.Queue.Entry.Item.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item();
  v4 = OUTLINED_FUNCTION_14(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1D5003E98(v1, v8 - v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = sub_1D5613158();
  OUTLINED_FUNCTION_14(v11);
  (*(v12 + 104))(a1, **(&unk_1E84C57C0 + EnumCaseMultiPayload));
  return sub_1D554E150(v9, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item);
}

uint64_t InternalMusicPlayer.Queue.Entry.Item.convertToRawDictionary(for:)()
{
  v72 = type metadata accessor for UploadedVideo();
  v0 = OUTLINED_FUNCTION_14(v72);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5_0();
  v71 = v3;
  OUTLINED_FUNCTION_70_0();
  v70 = type metadata accessor for UploadedAudio();
  v4 = OUTLINED_FUNCTION_14(v70);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v69 = v7;
  OUTLINED_FUNCTION_70_0();
  v68 = type metadata accessor for TVEpisode();
  v8 = OUTLINED_FUNCTION_14(v68);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v67 = v11;
  OUTLINED_FUNCTION_70_0();
  v12 = sub_1D5613838();
  v13 = OUTLINED_FUNCTION_4(v12);
  v66 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = sub_1D5614828();
  v21 = OUTLINED_FUNCTION_4(v20);
  v65 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = sub_1D560EEA8();
  v29 = OUTLINED_FUNCTION_4(v28);
  v64 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5();
  v35 = v34 - v33;
  v36 = type metadata accessor for MusicMovie();
  v37 = OUTLINED_FUNCTION_14(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  v42 = v41 - v40;
  v43 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item();
  v44 = OUTLINED_FUNCTION_14(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5();
  v49 = v48 - v47;
  sub_1D5003E98(v73, v48 - v47);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v64 + 32))(v35, v49, v28);
      sub_1D4E5E5A4(&qword_1EC7EA728, MEMORY[0x1E69754E8]);
      v51 = sub_1D56132F8();
      v60 = *(v64 + 8);
      v58 = v35;
      v59 = v28;
      goto LABEL_7;
    case 2u:
      (*(v65 + 32))(v27, v49, v20);
      sub_1D4E5E5A4(&qword_1EC7F8370, MEMORY[0x1E6977318]);
      v51 = sub_1D56132F8();
      (*(v65 + 8))(v27, v20);
      return v51;
    case 3u:
      (*(v66 + 32))(v19, v49, v12);
      sub_1D4E5E5A4(&qword_1EC7EA730, MEMORY[0x1E6976BE8]);
      v51 = sub_1D56132F8();
      v57 = *(v66 + 8);
      v58 = OUTLINED_FUNCTION_161();
LABEL_7:
      v60(v58, v59);
      return v51;
    case 4u:
      OUTLINED_FUNCTION_14_97();
      v54 = v67;
      sub_1D554D928(v49, v67, v55);
      sub_1D4E5E5A4(&qword_1EC7EA720, type metadata accessor for TVEpisode);
      OUTLINED_FUNCTION_31_59(&qword_1EC7EA578);
      OUTLINED_FUNCTION_26_80();
      v51 = sub_1D56132F8();
      v56 = type metadata accessor for TVEpisode;
      goto LABEL_10;
    case 5u:
      OUTLINED_FUNCTION_12_107();
      v54 = v69;
      sub_1D554D928(v49, v69, v61);
      sub_1D4E5E5A4(&qword_1EC7EA718, type metadata accessor for UploadedAudio);
      OUTLINED_FUNCTION_31_59(&qword_1EC7EA588);
      OUTLINED_FUNCTION_26_80();
      v51 = sub_1D56132F8();
      v56 = type metadata accessor for UploadedAudio;
      goto LABEL_10;
    case 6u:
      OUTLINED_FUNCTION_13_101();
      v54 = v71;
      sub_1D554D928(v49, v71, v62);
      sub_1D4E5E5A4(&qword_1EC7EA710, type metadata accessor for UploadedVideo);
      OUTLINED_FUNCTION_31_59(&qword_1EC7EA590);
      OUTLINED_FUNCTION_26_80();
      v51 = sub_1D56132F8();
      v56 = type metadata accessor for UploadedVideo;
LABEL_10:
      v52 = v56;
      v53 = v54;
      break;
    default:
      OUTLINED_FUNCTION_4_158();
      sub_1D554D928(v49, v42, v50);
      sub_1D4E5E5A4(&qword_1EDD592F8, type metadata accessor for MusicMovie);
      OUTLINED_FUNCTION_31_59(&qword_1EC7EA580);
      OUTLINED_FUNCTION_26_80();
      v51 = sub_1D56132F8();
      v52 = type metadata accessor for MusicMovie;
      v53 = v42;
      break;
  }

  sub_1D554E150(v53, v52);
  return v51;
}

uint64_t sub_1D554E150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_20_98()
{
  v2 = *(v0 - 208);
  v3 = *(v0 - 152);
  v4 = *(v0 - 144);

  return sub_1D560F7D8();
}

uint64_t OUTLINED_FUNCTION_25_70()
{

  return sub_1D4E628D4(v0, v1 - 128);
}

uint64_t OUTLINED_FUNCTION_28_72()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_31_59(unint64_t *a1)
{

  return sub_1D4E5E5A4(a1, v1);
}

uint64_t CreditArtist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v117 = a4;
  v118 = a5;
  v116 = sub_1D5612B88();
  v8 = OUTLINED_FUNCTION_4(v116);
  v115 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v13 - v12);
  v14 = sub_1D5610088();
  v15 = OUTLINED_FUNCTION_4(v14);
  v107 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v20 - v19);
  v21 = sub_1D560D838();
  v22 = OUTLINED_FUNCTION_4(v21);
  v120 = v23;
  v121 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v105 = v27 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F69D8, &qword_1D5665BC0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_48(&v104 - v32);
  v124 = type metadata accessor for CreditArtistPropertyProvider();
  OUTLINED_FUNCTION_24_0(v124);
  v34 = *(v33 + 64);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v104 = &v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v104 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v41 = OUTLINED_FUNCTION_22(v40);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v104 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v104 - v47;
  v113 = sub_1D5612478();
  v49 = OUTLINED_FUNCTION_4(v113);
  v112 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5();
  v55 = v54 - v53;
  v122 = a2;
  sub_1D560F7E8();
  v109 = sub_1D554ED80();
  v110 = sub_1D5614C68();

  sub_1D560FE88();
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v14);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v14);
  v123 = a1;
  sub_1D560D4D8();
  sub_1D4E7661C(v46, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v48, &qword_1EC7EA358, &unk_1D561DF50);
  v119 = a3;
  sub_1D4EC76A8(a3, v125);
  v111 = v55;
  if (!v126)
  {
    sub_1D4E7661C(v125, &qword_1EC7EEC40, &unk_1D561C070);
    v127 = 0u;
    v128 = 0u;
    v129 = 0;
LABEL_8:
    v59 = v124;
    v60 = v39;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v129 = 0;
    v127 = 0u;
    v128 = 0u;
    goto LABEL_8;
  }

  v59 = v124;
  v60 = v39;
  if (!*(&v128 + 1))
  {
LABEL_9:
    sub_1D4E7661C(&v127, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_10;
  }

  sub_1D4E48324(&v127, &v130);
  __swift_project_boxed_opaque_existential_1(&v130, v131);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v61 = v108;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v59);
    v62 = v104;
    sub_1D544938C(v61, v104);
    sub_1D4F1C3A0(v62, v39);
    v63 = v62 + v59[9];
    v64 = v105;
    sub_1D560D718();
    (*(v120 + 40))(&v39[v59[9]], v64, v121);
    v65 = v106;
    sub_1D5612468();
    (*(v107 + 40))(&v39[v59[10]], v65, v14);
    v66 = sub_1D5612458();
    v68 = v67;
    sub_1D4F1C404(v62);
    v69 = &v39[v59[11]];
    v70 = v69[1];

    *v69 = v66;
    v69[1] = v68;
    __swift_destroy_boxed_opaque_existential_1(&v130);
    v71 = v39;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v59);
  sub_1D4E7661C(v61, &qword_1EC7F69D8, &qword_1D5665BC0);
  __swift_destroy_boxed_opaque_existential_1(&v130);
LABEL_10:
  sub_1D56140F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  v76 = v59[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
  (*(v120 + 16))(&v60[v59[9]], v123, v121);
  v81 = &v60[v59[10]];
  sub_1D5612468();
  v108 = sub_1D5612458();
  v83 = v82;
  sub_1D5614A88();
  v84 = v60;
  OUTLINED_FUNCTION_2_197();
  v85 = sub_1D5614BD8();
  OUTLINED_FUNCTION_2_197();
  v86 = sub_1D5614BD8();
  OUTLINED_FUNCTION_2_197();
  v87 = sub_1D5614BD8();
  OUTLINED_FUNCTION_2_197();
  v88 = v124;
  v89 = sub_1D5614BD8();
  v90 = &v84[v88[5]];
  *v90 = 0;
  *(v90 + 1) = 0;
  *&v84[v88[6]] = 0;
  if (qword_1EC7E9690 != -1)
  {
    swift_once();
  }

  v91 = qword_1EC87C670;
  if (qword_1EC87C670 >> 62)
  {
    sub_1D560CDE8();

    v88 = v124;
    v103 = sub_1D5615E18();

    v91 = v103;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v71 = v39;
  *&v39[v88[8]] = v91;
  v92 = &v39[v88[11]];
  *v92 = v108;
  v92[1] = v83;
  *&v39[v88[12]] = v85;
  *&v39[v88[13]] = v86;
  *&v39[v88[14]] = v87;
  *&v39[v88[15]] = v89;
LABEL_15:
  swift_getKeyPath();
  LOBYTE(v130) = 0;
  LODWORD(v108) = *MEMORY[0x1E6976670];
  v93 = v115;
  v107 = *(v115 + 104);
  v94 = v114;
  v95 = v116;
  (v107)(v114);
  v96 = sub_1D554F888(&qword_1EC7EB5D0, type metadata accessor for CreditArtistPropertyProvider);
  sub_1D5610D98();

  v97 = *(v93 + 8);
  v97(v94, v95);
  swift_getKeyPath();
  LOBYTE(v130) = 1;
  (v107)(v94, v108, v95);
  sub_1D5610D68();

  v97(v94, v95);
  swift_getKeyPath();
  LOBYTE(v130) = 2;
  type metadata accessor for CreditArtist();
  if (qword_1EC7E9070 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  sub_1D554F888(&qword_1EC7EB600, type metadata accessor for CreditArtist);
  sub_1D5610DC8();

  v131 = v124;
  v132 = v96;
  v98 = __swift_allocate_boxed_opaque_existential_0(&v130);
  sub_1D4F1C3A0(v71, v98);
  CreditArtist.init(propertyProvider:)(&v130, v118);
  swift_unknownObjectRelease();
  sub_1D4E7661C(v119, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v120 + 8))(v123, v121);
  (*(v112 + 8))(v111, v113);
  return sub_1D4F1C404(v71);
}

unint64_t sub_1D554ED80()
{
  result = qword_1EC7F8390;
  if (!qword_1EC7F8390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8390);
  }

  return result;
}

uint64_t sub_1D554EDD4()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7F8378);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F8378);
  v2 = *MEMORY[0x1E69767B8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static CreditArtist.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E97D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7F8378);
  OUTLINED_FUNCTION_24_0(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t CreditArtist.convertToLegacyModelStorageDictionary(for:)(uint64_t a1)
{
  v51 = a1;
  v1 = sub_1D5613EF8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v52 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v50 = v7 - v6;
  v8 = sub_1D56131C8();
  v9 = OUTLINED_FUNCTION_4(v8);
  v48 = v10;
  v49 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EC7EB5B0, &unk_1D5632170);
  OUTLINED_FUNCTION_22(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  OUTLINED_FUNCTION_22(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v47 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v47 - v32;
  sub_1D4ECADF0();
  v55 = sub_1D5614BD8();
  if (qword_1EC7E9058 != -1)
  {
    swift_once();
  }

  v34 = sub_1D56140F8();
  sub_1D554F888(&qword_1EC7EB600, type metadata accessor for CreditArtist);
  sub_1D554F888(&qword_1EC7EB608, type metadata accessor for CreditArtist);
  OUTLINED_FUNCTION_7_146();
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    sub_1D4E7661C(v33, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v53 = 0u;
    v54 = 0u;
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0(v34);
    (*(v35 + 8))(v33, v34);
  }

  sub_1D4EC8E88(&v53, 0);
  v36 = CreditArtist.name.getter();
  *(&v54 + 1) = MEMORY[0x1E69E6158];
  *&v53 = v36;
  *(&v53 + 1) = v37;
  sub_1D4EC8E88(&v53, 1);
  if (qword_1EC7E9070 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_7_146();
  if (__swift_getEnumTagSinglePayload(v21, 1, v38) == 1)
  {
    v39 = &off_1EC7EB5B0;
    v40 = &unk_1D5632170;
    v41 = v21;
  }

  else
  {
    sub_1D4EC9EB4(v27);
    OUTLINED_FUNCTION_24_0(v38);
    (*(v42 + 8))(v21, v38);
    if (__swift_getEnumTagSinglePayload(v27, 1, v1) != 1)
    {
      (*(v48 + 16))(v15, v51, v49);
      v43 = v52;
      (*(v52 + 16))(v50, v27, v1);
      sub_1D4ECC064();
      v45 = v44;
      (*(v43 + 8))(v27, v1);
      *(&v54 + 1) = sub_1D4F688F0();
      *&v53 = v45;
      goto LABEL_14;
    }

    v39 = &qword_1EC7EA8A8;
    v40 = &qword_1D561CF10;
    v41 = v27;
  }

  sub_1D4E7661C(v41, v39, v40);
  v53 = 0u;
  v54 = 0u;
LABEL_14:
  sub_1D4EC8E88(&v53, 2);
  return v55;
}

uint64_t CreditArtist.LegacyModelCreditArtistPropertyKey.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D5615EF8();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t CreditArtist.LegacyModelCreditArtistPropertyKey.rawValue.getter()
{
  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000023;
  }

  *v0;
  return result;
}

uint64_t sub_1D554F4C8@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return CreditArtist.LegacyModelCreditArtistPropertyKey.init(rawValue:)(a1);
}

unint64_t sub_1D554F4D4@<X0>(unint64_t *a1@<X8>)
{
  result = CreditArtist.LegacyModelCreditArtistPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CreditArtist.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69767B8];
  v3 = sub_1D5613158();
  OUTLINED_FUNCTION_24_0(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t sub_1D554F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D554F888(&qword_1EC7F83A8, type metadata accessor for CreditArtist);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D554F624()
{
  sub_1D554F888(&qword_1EC7EF998, type metadata accessor for CreditArtist);

  return sub_1D56132F8();
}

unint64_t sub_1D554F6B0()
{
  result = qword_1EC7F8398;
  if (!qword_1EC7F8398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F8398);
  }

  return result;
}

unint64_t sub_1D554F70C()
{
  result = qword_1EC7F83A0;
  if (!qword_1EC7F83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F83A0);
  }

  return result;
}

_BYTE *_s34LegacyModelCreditArtistPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D554F888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D554F8D0()
{
  v0 = sub_1D5615EF8();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t *sub_1D554F91C()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v4 = OUTLINED_FUNCTION_22(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_124_13();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_59_0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  v20 = type metadata accessor for MusicShareableItem();
  v21 = OUTLINED_FUNCTION_14(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15_98();
  v24 = OUTLINED_FUNCTION_86_0();
  sub_1D53570B8(v24, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F78, &qword_1D56502F0);
    v2 = &qword_1D56250F0;
    sub_1D4F39A1C(v0 + *(v32 + 48), v9, &unk_1EC7F2BE0, &qword_1D56250F0);
    v33 = OUTLINED_FUNCTION_116();
    sub_1D4F39AB0(v33, v34, &unk_1EC7F2BE0, &qword_1D56250F0);
    v35 = sub_1D5614828();
    v36 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v36, v37, v35);
    if (v29)
    {
      v38 = OUTLINED_FUNCTION_61();
      sub_1D4E50004(v38, v39, &qword_1D56250F0);
      v40 = OUTLINED_FUNCTION_222();
      sub_1D4E50004(v40, v41, &qword_1D56250F0);
      v2 = 0;
    }

    else
    {
      sub_1D5614788();
      OUTLINED_FUNCTION_22_34();
      sub_1D4E50004(v9, &unk_1EC7F2BE0, &qword_1D56250F0);
      OUTLINED_FUNCTION_24_0(v35);
      v49 = *(v48 + 8);
      v50 = OUTLINED_FUNCTION_222();
      v51(v50);
    }

    v47 = sub_1D5614898();
    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F80, &qword_1D564AE90);
    sub_1D4F39A1C(v0 + *(v27 + 48), v19, &qword_1EC7EA888, &qword_1D563B8C0);
    sub_1D4F39AB0(v19, v16, &qword_1EC7EA888, &qword_1D563B8C0);
    v28 = sub_1D5613D28();
    OUTLINED_FUNCTION_57(v16, 1, v28);
    if (v29)
    {
      sub_1D4E50004(v19, &qword_1EC7EA888, &qword_1D563B8C0);
      v30 = OUTLINED_FUNCTION_63_1();
      sub_1D4E50004(v30, v31, &qword_1D563B8C0);
      v2 = 0;
    }

    else
    {
      _s16MusicKitInternal0A18SuggestedPivotSeedV2id0aB00A6ItemIDVvg_0();
      OUTLINED_FUNCTION_22_34();
      sub_1D4E50004(v19, &qword_1EC7EA888, &qword_1D563B8C0);
      OUTLINED_FUNCTION_24_0(v28);
      v44 = *(v43 + 8);
      v45 = OUTLINED_FUNCTION_46_1();
      v46(v45);
    }

    v47 = sub_1D5613AF8();
LABEL_12:
    OUTLINED_FUNCTION_14(v47);
    (*(v52 + 8))(v0);
    return v2;
  }

  OUTLINED_FUNCTION_7_147();
  sub_1D5551868(v0, v42);
  return 0;
}

uint64_t sub_1D554FC90@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:

      return sub_1D560D938();
    case 2:

      return sub_1D560D948();
    case 3:
      if (qword_1EDD53D48 != -1)
      {
        swift_once();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53D50;
      goto LABEL_35;
    case 4:

      return sub_1D560D878();
    case 5:
    case 6:

      return sub_1D560D968();
    case 7:
      if (qword_1EDD53D08 != -1)
      {
        swift_once();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53D10;
      goto LABEL_35;
    case 8:

      return sub_1D560D888();
    case 9:

      return sub_1D560D8E8();
    case 10:

      return sub_1D560D958();
    case 11:
      if (qword_1EDD53C38 != -1)
      {
        swift_once();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53C40;
      goto LABEL_35;
    case 12:
      if (qword_1EC7E95E8 != -1)
      {
        swift_once();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EC7F5D98;
      goto LABEL_35;
    case 13:
      if (qword_1EDD53CE8 != -1)
      {
        swift_once();
      }

      v4 = sub_1D560D9A8();
      v5 = v4;
      v6 = qword_1EDD53CF0;
LABEL_35:
      __swift_project_value_buffer(v4, v6);
      OUTLINED_FUNCTION_24_0(v5);
      v8 = *(v7 + 16);

      result = v8(a2);
      break;
    default:

      result = sub_1D560D908();
      break;
  }

  return result;
}

void static MusicShareableItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v432 = v24;
  v399 = type metadata accessor for UploadedVideo();
  v25 = OUTLINED_FUNCTION_14(v399);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v28);
  v398 = type metadata accessor for TVShow();
  v29 = OUTLINED_FUNCTION_14(v398);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v32);
  v397 = type metadata accessor for TVEpisode();
  v33 = OUTLINED_FUNCTION_14(v397);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v36);
  v37 = sub_1D5614408();
  v38 = OUTLINED_FUNCTION_4(v37);
  v421 = v39;
  v422 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v42);
  v419 = sub_1D5613838();
  v43 = OUTLINED_FUNCTION_4(v419);
  v417 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v47);
  v396 = type metadata accessor for SocialProfile();
  v48 = OUTLINED_FUNCTION_14(v396);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v51);
  v52 = sub_1D560F8B8();
  v53 = OUTLINED_FUNCTION_4(v52);
  v415 = v54;
  v416 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v57);
  v58 = sub_1D5614B68();
  v59 = OUTLINED_FUNCTION_4(v58);
  v413 = v60;
  v414 = v59;
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v63);
  v64 = sub_1D5614828();
  v65 = OUTLINED_FUNCTION_12_0(v64, &v410);
  v387 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v69);
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED570, &unk_1D5671D30);
  v70 = OUTLINED_FUNCTION_14(v392);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_11_3(&v383 - v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v75 = OUTLINED_FUNCTION_22(v74);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v80);
  v420 = sub_1D5614898();
  v81 = OUTLINED_FUNCTION_4(v420);
  v418 = v82;
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v85);
  v412 = sub_1D560EEA8();
  v86 = OUTLINED_FUNCTION_4(v412);
  v411 = v87;
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v90);
  v395 = type metadata accessor for MusicMovie();
  v91 = OUTLINED_FUNCTION_14(v395);
  v93 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v94);
  v95 = sub_1D5613C48();
  v96 = OUTLINED_FUNCTION_12_0(v95, &a15);
  v409[1] = v97;
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v100);
  v101 = sub_1D56141F8();
  v102 = OUTLINED_FUNCTION_12_0(v101, &a13);
  v408[2] = v103;
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v106);
  v107 = sub_1D5613EF8();
  v108 = OUTLINED_FUNCTION_12_0(v107, &a11);
  v408[0] = v109;
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v112);
  v113 = sub_1D5613D28();
  v114 = OUTLINED_FUNCTION_12_0(v113, v409);
  v386 = v115;
  v117 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v118);
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F83B0, &unk_1D5671D40);
  v119 = OUTLINED_FUNCTION_14(v388);
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_11_3(&v383 - v122);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  v124 = OUTLINED_FUNCTION_22(v123);
  v126 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v124);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v129);
  v130 = sub_1D5613AF8();
  v131 = OUTLINED_FUNCTION_12_0(v130, &a17);
  v409[3] = v132;
  v134 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v135);
  v136 = type metadata accessor for MusicShareableItem();
  v137 = OUTLINED_FUNCTION_14(v136);
  v139 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_59_0();
  v431 = v140 - v141;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_135();
  v430 = v143;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_135();
  v429 = v145;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_135();
  v427 = v147;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v148);
  OUTLINED_FUNCTION_135();
  v425 = v149;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_135();
  v428 = v151;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_135();
  v423 = v153;
  OUTLINED_FUNCTION_23();
  v155 = MEMORY[0x1EEE9AC00](v154);
  v157 = &v383 - v156;
  MEMORY[0x1EEE9AC00](v155);
  OUTLINED_FUNCTION_135();
  v424 = v158;
  OUTLINED_FUNCTION_23();
  v160 = MEMORY[0x1EEE9AC00](v159);
  v162 = &v383 - v161;
  MEMORY[0x1EEE9AC00](v160);
  OUTLINED_FUNCTION_135();
  v426 = v163;
  OUTLINED_FUNCTION_23();
  v165 = MEMORY[0x1EEE9AC00](v164);
  v167 = &v383 - v166;
  v168 = MEMORY[0x1EEE9AC00](v165);
  v170 = &v383 - v169;
  v171 = MEMORY[0x1EEE9AC00](v168);
  v173 = &v383 - v172;
  MEMORY[0x1EEE9AC00](v171);
  v175 = &v383 - v174;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F83B8, &unk_1D5671D50);
  v177 = OUTLINED_FUNCTION_22(v176);
  v179 = *(v178 + 64);
  v180 = MEMORY[0x1EEE9AC00](v177);
  v182 = &v383 - v181;
  v183 = (&v383 + *(v180 + 56) - v181);
  sub_1D53570B8(v432, &v383 - v181);
  v184 = v23;
  v185 = v183;
  sub_1D53570B8(v184, v183);
  v186 = v182;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D53570B8(v182, v173);
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_35_0(&a10);
        v234 = OUTLINED_FUNCTION_61_38();
        v235 = v408[1];
        v236(v234);
        sub_1D5613EA8();
        v237 = OUTLINED_FUNCTION_92_17();
        v185(v237, v235);
        v231 = OUTLINED_FUNCTION_63_1();
        goto LABEL_67;
      }

      OUTLINED_FUNCTION_136(&a10);
      v190 = v173;
      v191 = &a11;
      goto LABEL_81;
    case 2u:
      sub_1D53570B8(v182, v170);
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_69_2(&a12);
        OUTLINED_FUNCTION_159();
        OUTLINED_FUNCTION_133();
        v225();
        OUTLINED_FUNCTION_116();
        sub_1D56141A8();
        v226 = *(v162 + 1);
        v227 = OUTLINED_FUNCTION_222();
        v226(v227);
        v228 = OUTLINED_FUNCTION_61();
        v226(v228);
        goto LABEL_68;
      }

      OUTLINED_FUNCTION_136(&a12);
      v190 = v170;
      v191 = &a13;
      goto LABEL_81;
    case 3u:
      sub_1D53570B8(v182, v167);
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        OUTLINED_FUNCTION_35_0(&a14);
        OUTLINED_FUNCTION_61_38();
        OUTLINED_FUNCTION_133();
        v229();
        sub_1D5613BF8();
        v230 = OUTLINED_FUNCTION_92_17();
        v185(v230, v173);
        v231 = v167;
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_136(&a14);
      v190 = v167;
      v191 = &a15;
      goto LABEL_81;
    case 4u:
      v192 = v426;
      sub_1D53570B8(v182, v426);
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v299 = type metadata accessor for MusicMovie;
        goto LABEL_84;
      }

      OUTLINED_FUNCTION_2_198();
      OUTLINED_FUNCTION_117_0(&v422);
      sub_1D55518C0(v204, v205, v206);
      OUTLINED_FUNCTION_158();
      v209 = v198 && v207 == v208;
      if (v209 || (sub_1D5616168() & 1) != 0)
      {
        v210 = OUTLINED_FUNCTION_48_12(&v411);
        OUTLINED_FUNCTION_86_26();
        if (v210)
        {
          v200 = type metadata accessor for MusicMovie;
          goto LABEL_109;
        }
      }

      else
      {
        OUTLINED_FUNCTION_86_26();
      }

      v200 = type metadata accessor for MusicMovie;
      goto LABEL_109;
    case 5u:
      v239 = v182;
      sub_1D53570B8(v182, v162);
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v240 = v411;
        v241 = v402;
        v242 = v412;
        (*(v411 + 32))(v402, v185, v412);
        sub_1D560EE28();
        v243 = *(v240 + 8);
        v243(v241, v242);
        v243(v162, v242);
        OUTLINED_FUNCTION_7_147();
        v245 = v239;
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_136(&a18);
      v302(v162, v412);
      goto LABEL_90;
    case 6u:
      v253 = v424;
      sub_1D53570B8(v182, v424);
      v254 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F78, &qword_1D56502F0) + 48);
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        sub_1D4E50004(v253 + v254, &unk_1EC7F2BE0, &qword_1D56250F0);
        (*(v418 + 8))(v253, v420);
        goto LABEL_90;
      }

      v255 = v418;
      OUTLINED_FUNCTION_40_3();
      v256 = v407;
      v257 = v420;
      v258(v407, v185, v420);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39A1C(v259, v260, v261, v262);
      v263 = v405;
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39A1C(v264, v265, v266, v267);
      v268 = _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
      v269 = *(v255 + 8);
      v269(v253, v257);
      if ((v268 & 1) == 0)
      {
        OUTLINED_FUNCTION_119_1(v263);
        v335 = OUTLINED_FUNCTION_143();
        sub_1D4E50004(v335, v336, &qword_1D56250F0);
        v269(v256, v257);
        goto LABEL_110;
      }

      v270 = v263;
      v271 = *(v392 + 48);
      v272 = v393;
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v273, v274, v275, v276);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v277, v278, v279, v280);
      v281 = v394;
      OUTLINED_FUNCTION_57(v272, 1, v394);
      if (v198)
      {
        sub_1D4E50004(v270, &unk_1EC7F2BE0, &qword_1D56250F0);
        v282 = OUTLINED_FUNCTION_143();
        sub_1D4E50004(v282, v283, &qword_1D56250F0);
        v284 = OUTLINED_FUNCTION_120_13();
        (v269)(v284);
        v285 = OUTLINED_FUNCTION_118_13();
        OUTLINED_FUNCTION_57(v285, v286, v281);
        if (v198)
        {
          v287 = &unk_1EC7F2BE0;
          v288 = &qword_1D56250F0;
          goto LABEL_120;
        }
      }

      else
      {
        v338 = v391;
        sub_1D4F39AB0(v272, v391, &unk_1EC7F2BE0, &qword_1D56250F0);
        v339 = OUTLINED_FUNCTION_118_13();
        OUTLINED_FUNCTION_57(v339, v340, v281);
        if (!v341)
        {
          OUTLINED_FUNCTION_148_2(v408);
          v360(v385, v272 + v271, v281);
          OUTLINED_FUNCTION_35_64();
          sub_1D55597C4(v361, v362);
          OUTLINED_FUNCTION_128();
          LODWORD(v432) = sub_1D5614D18();
          v363 = *(v338 + 8);
          v364 = OUTLINED_FUNCTION_63_1();
          v363(v364);
          sub_1D4E50004(v405, &unk_1EC7F2BE0, &qword_1D56250F0);
          sub_1D4E50004(v406, &unk_1EC7F2BE0, &qword_1D56250F0);
          v365 = OUTLINED_FUNCTION_120_13();
          (v269)(v365);
          (v363)(v391, v281);
          sub_1D4E50004(v272, &unk_1EC7F2BE0, &qword_1D56250F0);
          goto LABEL_110;
        }

        OUTLINED_FUNCTION_64_29();
        sub_1D4E50004(v342, v343, v344);
        OUTLINED_FUNCTION_64_29();
        sub_1D4E50004(v345, v346, v347);
        v348 = OUTLINED_FUNCTION_120_13();
        (v269)(v348);
        OUTLINED_FUNCTION_136(v408);
        v349(v338, v281);
      }

      v287 = &unk_1EC7ED570;
      v288 = &unk_1D5671D30;
      goto LABEL_120;
    case 7u:
      sub_1D53570B8(v182, v157);
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v173 = v414;
        OUTLINED_FUNCTION_81();
        OUTLINED_FUNCTION_78();
        OUTLINED_FUNCTION_64_29();
        v232();
        OUTLINED_FUNCTION_209();
        sub_1D5614B18();
        v233 = OUTLINED_FUNCTION_92_17();
        v185(v233, v173);
        v231 = v157;
        goto LABEL_66;
      }

      v301 = v413;
      v300 = v414;
      goto LABEL_88;
    case 8u:
      v157 = v423;
      sub_1D53570B8(v182, v423);
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v294 = v415;
        v293 = v416;
        OUTLINED_FUNCTION_40_3();
        v295 = v403;
        v296(v403, v185, v293);
        sub_1D560F878();
        v297 = *(v294 + 8);
        v297(v295, v293);
        v298 = OUTLINED_FUNCTION_26_27();
        (v297)(v298);
        goto LABEL_68;
      }

      v301 = v415;
      v300 = v416;
LABEL_88:
      v189 = *(v301 + 8);
      v190 = v157;
      goto LABEL_89;
    case 9u:
      v192 = v428;
      sub_1D53570B8(v182, v428);
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v299 = type metadata accessor for SocialProfile;
        goto LABEL_84;
      }

      OUTLINED_FUNCTION_4_159();
      OUTLINED_FUNCTION_117_0(&v426);
      sub_1D55518C0(v218, v219, v220);
      OUTLINED_FUNCTION_158();
      v223 = v198 && v221 == v222;
      if (v223 || (sub_1D5616168() & 1) != 0)
      {
        v224 = OUTLINED_FUNCTION_48_12(&v412);
        OUTLINED_FUNCTION_84_21();
        if (v224)
        {
          v200 = type metadata accessor for SocialProfile;
          goto LABEL_109;
        }
      }

      else
      {
        OUTLINED_FUNCTION_84_21();
      }

      v200 = type metadata accessor for SocialProfile;
      goto LABEL_109;
    case 0xAu:
      v289 = v182;
      v202 = v425;
      sub_1D53570B8(v289, v425);
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        OUTLINED_FUNCTION_81();
        v290 = OUTLINED_FUNCTION_61_38();
        v173 = v419;
        v291(v290);
        sub_1D56137A8();
        goto LABEL_65;
      }

      (*(v417 + 8))(v202, v419);
      goto LABEL_90;
    case 0xBu:
      v201 = v182;
      v202 = v427;
      sub_1D53570B8(v201, v427);
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        (*(v421 + 8))(v202, v422);
        goto LABEL_90;
      }

      v173 = v422;
      OUTLINED_FUNCTION_81();
      OUTLINED_FUNCTION_78();
      OUTLINED_FUNCTION_64_29();
      v203();
      sub_1D5614368();
LABEL_65:
      v292 = OUTLINED_FUNCTION_92_17();
      v185(v292, v173);
      v231 = v202;
LABEL_66:
      v238 = v173;
LABEL_67:
      v185(v231, v238);
LABEL_68:
      OUTLINED_FUNCTION_7_147();
      v245 = v186;
LABEL_69:
      sub_1D5551868(v245, v244);
      goto LABEL_111;
    case 0xCu:
      v192 = v429;
      sub_1D53570B8(v182, v429);
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        v299 = type metadata accessor for TVEpisode;
        goto LABEL_84;
      }

      OUTLINED_FUNCTION_1_201();
      OUTLINED_FUNCTION_117_0(&v428);
      sub_1D55518C0(v211, v212, v213);
      OUTLINED_FUNCTION_158();
      v216 = v198 && v214 == v215;
      if (v216 || (sub_1D5616168() & 1) != 0)
      {
        v217 = OUTLINED_FUNCTION_48_12(&v413);
        OUTLINED_FUNCTION_85_25();
        if (v217)
        {
          v200 = type metadata accessor for TVEpisode;
          goto LABEL_109;
        }
      }

      else
      {
        OUTLINED_FUNCTION_85_25();
      }

      v200 = type metadata accessor for TVEpisode;
      goto LABEL_109;
    case 0xDu:
      v192 = v430;
      sub_1D53570B8(v182, v430);
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        v299 = type metadata accessor for TVShow;
        goto LABEL_84;
      }

      OUTLINED_FUNCTION_0_266();
      OUTLINED_FUNCTION_117_0(&v429);
      sub_1D55518C0(v246, v247, v248);
      OUTLINED_FUNCTION_158();
      v251 = v198 && v249 == v250;
      if (v251 || (sub_1D5616168() & 1) != 0)
      {
        v252 = OUTLINED_FUNCTION_48_12(&v414);
        OUTLINED_FUNCTION_83_26();
        if (v252)
        {
          v200 = type metadata accessor for TVShow;
          goto LABEL_109;
        }
      }

      else
      {
        OUTLINED_FUNCTION_83_26();
      }

      v200 = type metadata accessor for TVShow;
      goto LABEL_109;
    case 0xEu:
      v192 = v431;
      sub_1D53570B8(v182, v431);
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        OUTLINED_FUNCTION_3_204();
        OUTLINED_FUNCTION_117_0(&v430);
        sub_1D55518C0(v193, v194, v195);
        OUTLINED_FUNCTION_158();
        v198 = v198 && v196 == v197;
        if (v198 || (sub_1D5616168() & 1) != 0)
        {
          v199 = OUTLINED_FUNCTION_48_12(&v415);
          OUTLINED_FUNCTION_87_22();
          if (v199)
          {
            v200 = type metadata accessor for UploadedVideo;
LABEL_109:
            sub_1D5551868(v192, v200);
            goto LABEL_110;
          }
        }

        else
        {
          OUTLINED_FUNCTION_87_22();
        }

        v200 = type metadata accessor for UploadedVideo;
        goto LABEL_109;
      }

      v299 = type metadata accessor for UploadedVideo;
LABEL_84:
      sub_1D5551868(v192, v299);
      goto LABEL_90;
    default:
      sub_1D53570B8(v182, v175);
      v187 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F80, &qword_1D564AE90) + 48);
      v188 = v185;
      OUTLINED_FUNCTION_71();
      if (!swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_69_2(&a16);
        v303 = v404;
        v304 = OUTLINED_FUNCTION_26_27();
        v305 = v410;
        v306(v304);
        v307 = v401;
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39A1C(v308, v309, v310, v311);
        OUTLINED_FUNCTION_132_13(&v416);
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39A1C(v312, v313, v314, v315);
        v316 = sub_1D5613A68();
        v317 = *(v162 + 1);
        v317(v175, v305);
        if ((v316 & 1) == 0)
        {
          OUTLINED_FUNCTION_119_1(v188);
          OUTLINED_FUNCTION_119_1(v307);
          v317(v303, v305);
LABEL_110:
          OUTLINED_FUNCTION_7_147();
          sub_1D5551868(v186, v337);
          goto LABEL_111;
        }

        v432 = v317;
        v318 = *(v388 + 48);
        v272 = v389;
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39AB0(v319, v320, v321, v322);
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39AB0(v323, v324, v325, v326);
        v327 = v307;
        v328 = v390;
        OUTLINED_FUNCTION_57(v272, 1, v390);
        if (v198)
        {
          OUTLINED_FUNCTION_119_1(v188);
          v329 = OUTLINED_FUNCTION_143();
          sub_1D4E50004(v329, v330, &qword_1D563B8C0);
          v331 = OUTLINED_FUNCTION_88_21();
          v332(v331);
          v333 = OUTLINED_FUNCTION_118_13();
          OUTLINED_FUNCTION_57(v333, v334, v328);
          if (v198)
          {
            v287 = &qword_1EC7EA888;
            v288 = &qword_1D563B8C0;
LABEL_120:
            sub_1D4E50004(v272, v287, v288);
            goto LABEL_110;
          }
        }

        else
        {
          OUTLINED_FUNCTION_132_13(&v407);
          sub_1D4F39AB0(v350, v351, v352, v353);
          v354 = OUTLINED_FUNCTION_118_13();
          OUTLINED_FUNCTION_57(v354, v355, v328);
          if (!v356)
          {
            OUTLINED_FUNCTION_148_2(&v406);
            v366 = v272 + v318;
            v367 = v384;
            v368(v384, v366, v328);
            OUTLINED_FUNCTION_34_65();
            sub_1D55597C4(v369, v370);
            OUTLINED_FUNCTION_61();
            LODWORD(v431) = sub_1D5614D18();
            v371 = *(v327 + 8);
            v371(v367, v328);
            OUTLINED_FUNCTION_6_58();
            sub_1D4E50004(v372, v373, v374);
            OUTLINED_FUNCTION_6_58();
            sub_1D4E50004(v375, v376, v377);
            v378 = OUTLINED_FUNCTION_88_21();
            v379(v378);
            v371(v188, v328);
            OUTLINED_FUNCTION_6_58();
            sub_1D4E50004(v380, v381, v382);
            goto LABEL_110;
          }

          OUTLINED_FUNCTION_119_1(v400);
          OUTLINED_FUNCTION_119_1(v401);
          v357 = OUTLINED_FUNCTION_88_21();
          v358(v357);
          OUTLINED_FUNCTION_136(&v406);
          v359(v188, v328);
        }

        v287 = &qword_1EC7F83B0;
        v288 = &unk_1D5671D40;
        goto LABEL_120;
      }

      sub_1D4E50004(&v175[v187], &qword_1EC7EA888, &qword_1D563B8C0);
      OUTLINED_FUNCTION_136(&a16);
      v190 = v175;
      v191 = &a17;
LABEL_81:
      v300 = *(v191 - 32);
LABEL_89:
      v189(v190, v300);
LABEL_90:
      sub_1D4E50004(v186, &qword_1EC7F83B8, &unk_1D5671D50);
LABEL_111:
      OUTLINED_FUNCTION_46();
      return;
  }
}